; ModuleID = 'coreutils-8.27/src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.base64_decode_context = type { i32, [4 x i8] }
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
@.str.6 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
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
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !92
@b64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !98
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !109
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !114
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !118
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !125
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !131
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !159
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !166
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !179
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !184
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !191
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !181
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !193
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !199
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.121 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !208
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !622 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !626, metadata !627), !dbg !628
  %2 = icmp eq i32 %0, 0, !dbg !629
  br i1 %2, label %8, label %3, !dbg !631

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !632, !tbaa !635
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !632
  %6 = load i8*, i8** @program_name, align 8, !dbg !632, !tbaa !635
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !639
  br label %44, !dbg !641

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !643
  %10 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !635
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i32 64) #11, !dbg !645
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !647
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !635
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !652
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !654
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !635
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !657
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !659
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !635
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !660
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !661
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !635
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !662
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !663
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !635
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !664
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !665
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !666
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !51, metadata !627) #11, !dbg !667
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !51, metadata !627) #11, !dbg !667
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !669
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !670
  %31 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !672
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !62, metadata !627) #11, !dbg !673
  %32 = icmp eq i8* %31, null, !dbg !674
  br i1 %32, label %39, label %33, !dbg !675

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !676
  %35 = icmp eq i32 %34, 0, !dbg !676
  br i1 %35, label %39, label %36, !dbg !678

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !680
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !682
  br label %39, !dbg !684

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !685
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !686
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !687
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !688
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #15, !dbg !689
  unreachable, !dbg !689
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !690 {
  %3 = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !776, metadata !627), !dbg !809
  %4 = alloca [3072 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [3072 x i8]* %4, metadata !784, metadata !627), !dbg !812
  %5 = alloca %struct.base64_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !813, metadata !627), !dbg !832
  %8 = alloca [40960 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [40960 x i8]* %8, metadata !822, metadata !627), !dbg !834
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !695, metadata !627), !dbg !835
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !696, metadata !627), !dbg !836
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !754, metadata !627), !dbg !837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !755, metadata !627), !dbg !838
  tail call void @llvm.dbg.value(metadata i64 76, i64 0, metadata !756, metadata !627), !dbg !839
  %9 = load i8*, i8** %1, align 8, !dbg !840, !tbaa !635
  tail call void @set_program_name(i8* %9) #11, !dbg !841
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !842
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !843
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !844
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !845
  br label %14, !dbg !846

; <label>:14:                                     ; preds = %25, %2
  %15 = phi i64 [ %28, %25 ], [ 76, %2 ]
  %16 = phi i8 [ %20, %25 ], [ 0, %2 ]
  %17 = phi i8 [ %23, %25 ], [ 0, %2 ]
  br label %19, !dbg !837

; <label>:18:                                     ; preds = %22
  br label %19, !dbg !837

; <label>:19:                                     ; preds = %18, %14
  %20 = phi i8 [ %16, %14 ], [ 1, %18 ]
  %21 = phi i8 [ %17, %14 ], [ %23, %18 ]
  br label %22, !dbg !837

; <label>:22:                                     ; preds = %19, %22
  %23 = phi i8 [ 1, %22 ], [ %21, %19 ]
  tail call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !754, metadata !627), !dbg !837
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !755, metadata !627), !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !756, metadata !627), !dbg !839
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !847
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !697, metadata !627), !dbg !849
  switch i32 %24, label %33 [
    i32 -1, label %34
    i32 100, label %22
    i32 119, label %25
    i32 105, label %18
    i32 -130, label %29
    i32 -131, label %30
  ], !dbg !850, !llvm.loop !851

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** @optarg, align 8, !dbg !853, !tbaa !635
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !855
  %28 = tail call i64 @xdectoumax(i8* %26, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %27, i32 0) #11, !dbg !856
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !756, metadata !627), !dbg !839
  br label %14, !dbg !857, !llvm.loop !851

; <label>:29:                                     ; preds = %22
  tail call void @usage(i32 0) #16, !dbg !858
  unreachable, !dbg !858

; <label>:30:                                     ; preds = %22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !859, !tbaa !635
  %32 = load i8*, i8** @Version, align 8, !dbg !859, !tbaa !635
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !859
  tail call void @exit(i32 0) #15, !dbg !860
  unreachable, !dbg !859

; <label>:33:                                     ; preds = %22
  tail call void @usage(i32 1) #16, !dbg !862
  unreachable, !dbg !862

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* @optind, align 4, !dbg !863, !tbaa !865
  %36 = sub nsw i32 %0, %35, !dbg !867
  %37 = icmp sgt i32 %36, 1, !dbg !868
  br i1 %37, label %38, label %45, !dbg !869

; <label>:38:                                     ; preds = %34
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !870
  %40 = load i32, i32* @optind, align 4, !dbg !872, !tbaa !865
  %41 = sext i32 %40 to i64, !dbg !873
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !873
  %43 = load i8*, i8** %42, align 8, !dbg !873, !tbaa !635
  %44 = tail call i8* @quote(i8* %43) #11, !dbg !874
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39, i8* %44) #11, !dbg !876
  tail call void @usage(i32 1) #16, !dbg !878
  unreachable, !dbg !878

; <label>:45:                                     ; preds = %34
  %46 = icmp slt i32 %35, %0, !dbg !879
  br i1 %46, label %47, label %51, !dbg !881

; <label>:47:                                     ; preds = %45
  %48 = sext i32 %35 to i64, !dbg !882
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !882
  %50 = load i8*, i8** %49, align 8, !dbg !882, !tbaa !635
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !753, metadata !627), !dbg !883
  br label %51, !dbg !884

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %45 ]
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !753, metadata !627), !dbg !883
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !763, metadata !627), !dbg !885
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !764, metadata !627), !dbg !886
  %53 = load i8, i8* %52, align 1, !dbg !887, !tbaa !889
  %54 = icmp eq i8 %53, 45, !dbg !890
  br i1 %54, label %55, label %61, !dbg !893

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !895
  %57 = load i8, i8* %56, align 1, !dbg !895, !tbaa !889
  %58 = icmp eq i8 %57, 0, !dbg !898
  br i1 %58, label %59, label %61, !dbg !900

; <label>:59:                                     ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !902, !tbaa !635
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, i64 0, metadata !698, metadata !627), !dbg !904
  br label %68, !dbg !905

; <label>:61:                                     ; preds = %51, %55
  %62 = tail call %struct._IO_FILE* @fopen(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !906
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, i64 0, metadata !698, metadata !627), !dbg !904
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !908
  br i1 %63, label %64, label %68, !dbg !910

; <label>:64:                                     ; preds = %61
  %65 = tail call i32* @__errno_location() #1, !dbg !911
  %66 = load i32, i32* %65, align 4, !dbg !911, !tbaa !865
  %67 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %52) #11, !dbg !912
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %67) #11, !dbg !914
  unreachable, !dbg !911

; <label>:68:                                     ; preds = %61, %59
  %69 = phi %struct._IO_FILE* [ %60, %59 ], [ %62, %61 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !698, metadata !627), !dbg !904
  tail call void @fadvise(%struct._IO_FILE* %69, i32 2) #11, !dbg !916
  %70 = icmp eq i8 %23, 0, !dbg !917
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !635
  br i1 %70, label %161, label %72, !dbg !918

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i8 %20, 0, !dbg !919
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !781, metadata !627) #11, !dbg !920
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !782, metadata !627) #11, !dbg !921
  tail call void @llvm.dbg.value(metadata i1 %73, i64 0, metadata !783, metadata !922) #11, !dbg !923
  %74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !924
  call void @llvm.lifetime.start(i64 4096, i8* nonnull %74) #11, !dbg !924
  %75 = getelementptr inbounds [3072 x i8], [3072 x i8]* %4, i64 0, i64 0, !dbg !925
  call void @llvm.lifetime.start(i64 3072, i8* nonnull %75) #11, !dbg !925
  %76 = bitcast %struct.base64_decode_context* %5 to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 8, i8* nonnull %76) #11, !dbg !926
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, i64 0, metadata !789, metadata !927) #11, !dbg !928
  call void @base64_decode_ctx_init(%struct.base64_decode_context* nonnull %5) #11, !dbg !929
  %77 = bitcast i64* %6 to i8*
  %78 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 0
  %79 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %5, i64 0, i32 0
  br label %80, !dbg !930, !llvm.loop !931

; <label>:80:                                     ; preds = %156, %72
  call void @llvm.lifetime.start(i64 8, i8* nonnull %77) #11, !dbg !934
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !788, metadata !627) #11, !dbg !935
  br label %81, !dbg !936, !llvm.loop !937

; <label>:81:                                     ; preds = %121, %80
  %82 = phi i64 [ 0, %80 ], [ %113, %121 ]
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !788, metadata !627) #11, !dbg !935
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %82, !dbg !940
  %84 = sub i64 4096, %82, !dbg !940
  %85 = call i64 @fread_unlocked(i8* %83, i64 1, i64 %84, %struct._IO_FILE* %69) #11, !dbg !940
  call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !800, metadata !627) #11, !dbg !941
  store i64 %85, i64* %6, align 8, !dbg !942, !tbaa !943
  br i1 %73, label %111, label %86, !dbg !945

; <label>:86:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !802, metadata !627) #11, !dbg !946
  call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %87 = icmp eq i64 %85, 0, !dbg !947
  br i1 %87, label %111, label %88, !dbg !951

; <label>:88:                                     ; preds = %86
  br label %89

; <label>:89:                                     ; preds = %88, %102
  %90 = phi i64 [ %97, %102 ], [ %85, %88 ]
  %91 = phi i64 [ %103, %102 ], [ 0, %88 ]
  %92 = add i64 %91, %82
  %93 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %92
  %94 = getelementptr inbounds i8, i8* %83, i64 %91
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  br label %96, !dbg !951

; <label>:96:                                     ; preds = %105, %89
  %97 = phi i64 [ %90, %89 ], [ %106, %105 ], !dbg !953
  %98 = load i8, i8* %93, align 1, !dbg !954, !tbaa !889
  %99 = call zeroext i1 @isbase64(i8 signext %98) #1, !dbg !956
  %100 = icmp eq i8 %98, 61, !dbg !957
  %101 = or i1 %99, %100, !dbg !959
  br i1 %101, label %102, label %105, !dbg !959

; <label>:102:                                    ; preds = %96
  %103 = add i64 %91, 1, !dbg !960
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !802, metadata !627) #11, !dbg !946
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !802, metadata !627) #11, !dbg !946
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %104 = icmp ult i64 %103, %97, !dbg !947
  br i1 %104, label %89, label %110, !dbg !951, !llvm.loop !961

; <label>:105:                                    ; preds = %96
  %106 = add i64 %97, -1, !dbg !964
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !800, metadata !627) #11, !dbg !941
  store i64 %106, i64* %6, align 8, !dbg !964, !tbaa !943
  %107 = sub i64 %106, %91, !dbg !965
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %94, i8* nonnull %95, i64 %107, i32 1, i1 false) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !802, metadata !627) #11, !dbg !946
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %108 = icmp ugt i64 %106, %91, !dbg !947
  br i1 %108, label %96, label %109, !dbg !951, !llvm.loop !961

; <label>:109:                                    ; preds = %105
  br label %111, !dbg !941

; <label>:110:                                    ; preds = %102
  br label %111, !dbg !941

; <label>:111:                                    ; preds = %110, %109, %81, %86
  %112 = phi i64 [ 0, %86 ], [ %85, %81 ], [ %106, %109 ], [ %97, %110 ], !dbg !967
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %113 = add i64 %112, %82, !dbg !968
  call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !788, metadata !627) #11, !dbg !935
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !969, metadata !627) #11, !dbg !975
  %114 = load i32, i32* %78, align 8, !dbg !978, !tbaa !979
  %115 = and i32 %114, 32, !dbg !978
  %116 = icmp eq i32 %115, 0, !dbg !982
  br i1 %116, label %121, label %117, !dbg !983

; <label>:117:                                    ; preds = %111
  %118 = tail call i32* @__errno_location() #1, !dbg !984
  %119 = load i32, i32* %118, align 4, !dbg !984, !tbaa !865
  %120 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !985
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %119, i8* %120) #11, !dbg !987
  unreachable, !dbg !984

; <label>:121:                                    ; preds = %111
  %122 = icmp ult i64 %113, 4096, !dbg !989
  %123 = and i32 %114, 16, !dbg !990
  %124 = icmp eq i32 %123, 0, !dbg !996
  %125 = and i1 %122, %124, !dbg !997
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !993, metadata !627) #11, !dbg !998
  br i1 %125, label %81, label %126, !dbg !997, !llvm.loop !937

; <label>:126:                                    ; preds = %121
  br label %133, !dbg !999

; <label>:127:                                    ; preds = %152
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !801, metadata !627) #11, !dbg !1004
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !993, metadata !627) #11, !dbg !1005
  %128 = load i32, i32* %78, align 8, !dbg !1008, !tbaa !979
  %129 = lshr i32 %128, 4, !dbg !1009
  %130 = and i32 %129, 1, !dbg !1009
  %131 = add nuw nsw i32 %130, 1, !dbg !1009
  %132 = icmp ult i32 %153, %131, !dbg !1010
  br i1 %132, label %133, label %156, !dbg !1011, !llvm.loop !1013

; <label>:133:                                    ; preds = %126, %127
  %134 = phi i32 [ %128, %127 ], [ %114, %126 ]
  %135 = phi i32 [ %153, %127 ], [ 0, %126 ]
  %136 = icmp eq i32 %135, 1, !dbg !999
  %137 = load i32, i32* %79, align 4, !dbg !1016
  %138 = icmp eq i32 %137, 0, !dbg !1018
  %139 = and i1 %136, %138, !dbg !1019
  br i1 %139, label %156, label %140, !dbg !1019

; <label>:140:                                    ; preds = %133
  call void @llvm.dbg.value(metadata i64 3072, i64 0, metadata !800, metadata !627) #11, !dbg !941
  store i64 3072, i64* %6, align 8, !dbg !1020, !tbaa !943
  %141 = icmp eq i32 %135, 0, !dbg !1021
  %142 = select i1 %141, i64 %113, i64 0, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, i64 0, metadata !789, metadata !927) #11, !dbg !928
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !800, metadata !927) #11, !dbg !941
  %143 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* nonnull %5, i8* nonnull %74, i64 %142, i8* nonnull %75, i64* nonnull %6) #11, !dbg !1023
  %144 = load i64, i64* %6, align 8, !dbg !1025, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %145 = call i64 @fwrite_unlocked(i8* nonnull %75, i64 1, i64 %144, %struct._IO_FILE* %71) #11, !dbg !1025
  %146 = load i64, i64* %6, align 8, !dbg !1027, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !800, metadata !627) #11, !dbg !941
  %147 = icmp ult i64 %145, %146, !dbg !1028
  br i1 %147, label %148, label %152, !dbg !1029

; <label>:148:                                    ; preds = %140
  %149 = tail call i32* @__errno_location() #1, !dbg !1030
  %150 = load i32, i32* %149, align 4, !dbg !1030, !tbaa !865
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1031
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %150, i8* %151) #11, !dbg !1033
  unreachable, !dbg !1030

; <label>:152:                                    ; preds = %140
  %153 = add i32 %135, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !801, metadata !627) #11, !dbg !1004
  br i1 %143, label %127, label %154, !dbg !1037

; <label>:154:                                    ; preds = %152
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1038
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %155) #11, !dbg !1040
  unreachable, !dbg !1038

; <label>:156:                                    ; preds = %133, %127
  %157 = phi i32 [ %134, %133 ], [ %128, %127 ], !dbg !1042
  call void @llvm.lifetime.end(i64 8, i8* nonnull %77) #11, !dbg !1044
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !993, metadata !627) #11, !dbg !1045
  %158 = and i32 %157, 16, !dbg !1042
  %159 = icmp eq i32 %158, 0, !dbg !1046
  br i1 %159, label %80, label %160, !dbg !1047, !llvm.loop !931

; <label>:160:                                    ; preds = %156
  call void @llvm.lifetime.end(i64 8, i8* nonnull %76) #11, !dbg !1048
  call void @llvm.lifetime.end(i64 3072, i8* nonnull %75) #11, !dbg !1048
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %74) #11, !dbg !1048
  br label %280, !dbg !1049

; <label>:161:                                    ; preds = %68
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !818, metadata !627) #11, !dbg !1050
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !819, metadata !627) #11, !dbg !1051
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !820, metadata !627) #11, !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !821, metadata !627) #11, !dbg !1053
  %162 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !1054
  call void @llvm.lifetime.start(i64 30720, i8* nonnull %162) #11, !dbg !1054
  %163 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 0, !dbg !1055
  call void @llvm.lifetime.start(i64 40960, i8* nonnull %163) #11, !dbg !1055
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 0
  %165 = icmp eq i64 %15, 0
  %166 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 5
  %167 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 6
  br label %168, !dbg !1056, !llvm.loop !1057

; <label>:168:                                    ; preds = %249, %161
  %169 = phi i64 [ 0, %161 ], [ %245, %249 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !826, metadata !627) #11, !dbg !1060
  br label %170, !dbg !1061, !llvm.loop !1062

; <label>:170:                                    ; preds = %179, %168
  %171 = phi i64 [ 0, %168 ], [ %175, %179 ]
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !826, metadata !627) #11, !dbg !1060
  %172 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %171, !dbg !1065
  %173 = sub i64 30720, %171, !dbg !1065
  %174 = call i64 @fread_unlocked(i8* %172, i64 1, i64 %173, %struct._IO_FILE* %69) #11, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %174, i64 0, metadata !827, metadata !627) #11, !dbg !1067
  %175 = add i64 %174, %171, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !826, metadata !627) #11, !dbg !1060
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !993, metadata !627) #11, !dbg !1069
  %176 = load i32, i32* %164, align 8, !dbg !1071, !tbaa !979
  %177 = and i32 %176, 16, !dbg !1071
  %178 = icmp eq i32 %177, 0, !dbg !1072
  br i1 %178, label %179, label %184, !dbg !1073

; <label>:179:                                    ; preds = %170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !969, metadata !627) #11, !dbg !1074
  %180 = and i32 %176, 32, !dbg !1077
  %181 = icmp eq i32 %180, 0, !dbg !1078
  %182 = icmp ult i64 %175, 30720, !dbg !1079
  %183 = and i1 %182, %181, !dbg !1081
  br i1 %183, label %170, label %184, !dbg !1081, !llvm.loop !1062

; <label>:184:                                    ; preds = %179, %170
  %185 = icmp eq i64 %175, 0, !dbg !1082
  br i1 %185, label %244, label %186, !dbg !1084

; <label>:186:                                    ; preds = %184
  %187 = add i64 %175, 2, !dbg !1085
  %188 = udiv i64 %187, 3, !dbg !1085
  %189 = shl i64 %188, 2, !dbg !1085
  call void @base64_encode(i8* nonnull %162, i64 %175, i8* nonnull %163, i64 %189) #11, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !1088, metadata !627) #11, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1093, metadata !627) #11, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1094, metadata !627) #11, !dbg !1107
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1096, metadata !627) #11, !dbg !1108
  br i1 %165, label %193, label %190, !dbg !1109

; <label>:190:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1097, metadata !627) #11, !dbg !1110
  %191 = icmp eq i64 %189, 0, !dbg !1111
  br i1 %191, label %244, label %192, !dbg !1113

; <label>:192:                                    ; preds = %190
  br label %231

; <label>:193:                                    ; preds = %186
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115, !tbaa !635
  %195 = call i64 @fwrite_unlocked(i8* nonnull %163, i64 1, i64 %189, %struct._IO_FILE* %194) #11, !dbg !1115
  %196 = icmp ult i64 %195, %189, !dbg !1118
  br i1 %196, label %197, label %244, !dbg !1119

; <label>:197:                                    ; preds = %193
  %198 = tail call i32* @__errno_location() #1, !dbg !1120
  %199 = load i32, i32* %198, align 4, !dbg !1120, !tbaa !865
  %200 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1121
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %199, i8* %200) #11, !dbg !1123
  unreachable, !dbg !1120

; <label>:201:                                    ; preds = %239, %210
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1125, metadata !627) #11, !dbg !1131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1130, metadata !627) #11, !dbg !1136
  %202 = load i8*, i8** %166, align 8, !dbg !1137, !tbaa !1138
  %203 = load i8*, i8** %167, align 8, !dbg !1137, !tbaa !1139
  %204 = icmp ult i8* %202, %203, !dbg !1137
  br i1 %204, label %205, label %207, !dbg !1137, !prof !1140

; <label>:205:                                    ; preds = %201
  %206 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1141
  store i8* %206, i8** %166, align 8, !dbg !1141, !tbaa !1138
  store i8 10, i8* %202, align 1, !dbg !1141, !tbaa !889
  br label %210, !dbg !1143

; <label>:207:                                    ; preds = %201
  %208 = call i32 @__overflow(%struct._IO_FILE* nonnull %71, i32 10) #11, !dbg !1144
  %209 = icmp eq i32 %208, -1, !dbg !1146
  br i1 %209, label %211, label %210, !dbg !1143

; <label>:210:                                    ; preds = %207, %205
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1098, metadata !627) #11, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1103, metadata !627) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1103, metadata !627) #11, !dbg !1148
  br i1 %242, label %201, label %215, !dbg !1149

; <label>:211:                                    ; preds = %207
  %212 = tail call i32* @__errno_location() #1, !dbg !1150
  %213 = load i32, i32* %212, align 4, !dbg !1150, !tbaa !865
  %214 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1151
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %213, i8* %214) #11, !dbg !1153
  unreachable, !dbg !1150

; <label>:215:                                    ; preds = %210
  br label %216, !dbg !1155

; <label>:216:                                    ; preds = %215, %231
  %217 = phi i64 [ %232, %231 ], [ 0, %215 ]
  %218 = phi i64 [ %237, %231 ], [ %241, %215 ]
  %219 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 %233, !dbg !1155
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155, !tbaa !635
  %221 = call i64 @fwrite_unlocked(i8* %219, i64 1, i64 %218, %struct._IO_FILE* %220) #11, !dbg !1155
  %222 = icmp ult i64 %221, %218, !dbg !1158
  br i1 %222, label %223, label %227, !dbg !1159

; <label>:223:                                    ; preds = %216
  %224 = tail call i32* @__errno_location() #1, !dbg !1160
  %225 = load i32, i32* %224, align 4, !dbg !1160, !tbaa !865
  %226 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1161
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %225, i8* %226) #11, !dbg !1163
  unreachable, !dbg !1160

; <label>:227:                                    ; preds = %216
  %228 = add i64 %218, %217, !dbg !1165
  %229 = add i64 %218, %233, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1097, metadata !627) #11, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1097, metadata !627) #11, !dbg !1110
  %230 = icmp ult i64 %229, %189, !dbg !1111
  br i1 %230, label %231, label %243, !dbg !1113, !llvm.loop !1167

; <label>:231:                                    ; preds = %192, %227
  %232 = phi i64 [ %228, %227 ], [ %169, %192 ]
  %233 = phi i64 [ %229, %227 ], [ 0, %192 ]
  %234 = sub i64 %189, %233
  %235 = sub i64 %15, %232, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1098, metadata !627) #11, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1103, metadata !627) #11, !dbg !1148
  %236 = icmp ult i64 %235, %234, !dbg !1171
  %237 = select i1 %236, i64 %235, i64 %234, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1103, metadata !627) #11, !dbg !1148
  %238 = icmp eq i64 %237, 0, !dbg !1174
  br i1 %238, label %239, label %216, !dbg !1149

; <label>:239:                                    ; preds = %231
  %240 = icmp ugt i64 %234, %15
  %241 = select i1 %240, i64 %15, i64 %234
  %242 = icmp eq i64 %241, 0
  br label %201, !dbg !1149

; <label>:243:                                    ; preds = %227
  br label %244, !dbg !1175

; <label>:244:                                    ; preds = %243, %193, %190, %184
  %245 = phi i64 [ %169, %184 ], [ %169, %193 ], [ %169, %190 ], [ %228, %243 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !993, metadata !627) #11, !dbg !1175
  %246 = load i32, i32* %164, align 8, !dbg !1177, !tbaa !979
  %247 = and i32 %246, 16, !dbg !1177
  %248 = icmp eq i32 %247, 0, !dbg !1178
  br i1 %248, label %249, label %254, !dbg !1179

; <label>:249:                                    ; preds = %244
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !969, metadata !627) #11, !dbg !1180
  %250 = and i32 %246, 32, !dbg !1183
  %251 = icmp eq i32 %250, 0, !dbg !1184
  %252 = icmp eq i64 %175, 30720, !dbg !1185
  %253 = and i1 %252, %251, !dbg !1187
  br i1 %253, label %168, label %254, !dbg !1187, !llvm.loop !1057

; <label>:254:                                    ; preds = %249, %244
  %255 = icmp ne i64 %15, 0, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !821, metadata !627) #11, !dbg !1053
  %256 = icmp ne i64 %245, 0, !dbg !1190
  %257 = and i1 %255, %256, !dbg !1192
  br i1 %257, label %258, label %271, !dbg !1192

; <label>:258:                                    ; preds = %254
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1125, metadata !627) #11, !dbg !1193
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1130, metadata !627) #11, !dbg !1196
  %259 = load i8*, i8** %166, align 8, !dbg !1197, !tbaa !1138
  %260 = load i8*, i8** %167, align 8, !dbg !1197, !tbaa !1139
  %261 = icmp ult i8* %259, %260, !dbg !1197
  br i1 %261, label %262, label %264, !dbg !1197, !prof !1140

; <label>:262:                                    ; preds = %258
  %263 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !1198
  store i8* %263, i8** %166, align 8, !dbg !1198, !tbaa !1138
  store i8 10, i8* %259, align 1, !dbg !1198, !tbaa !889
  br label %271, !dbg !1199

; <label>:264:                                    ; preds = %258
  %265 = call i32 @__overflow(%struct._IO_FILE* nonnull %71, i32 10) #11, !dbg !1200
  %266 = icmp eq i32 %265, -1, !dbg !1201
  br i1 %266, label %267, label %271, !dbg !1199

; <label>:267:                                    ; preds = %264
  %268 = tail call i32* @__errno_location() #1, !dbg !1202
  %269 = load i32, i32* %268, align 4, !dbg !1202, !tbaa !865
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1203
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %269, i8* %270) #11, !dbg !1204
  unreachable, !dbg !1202

; <label>:271:                                    ; preds = %264, %262, %254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !969, metadata !627) #11, !dbg !1205
  %272 = load i32, i32* %164, align 8, !dbg !1208, !tbaa !979
  %273 = and i32 %272, 32, !dbg !1208
  %274 = icmp eq i32 %273, 0, !dbg !1209
  br i1 %274, label %279, label %275, !dbg !1210

; <label>:275:                                    ; preds = %271
  %276 = tail call i32* @__errno_location() #1, !dbg !1211
  %277 = load i32, i32* %276, align 4, !dbg !1211, !tbaa !865
  %278 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1212
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %277, i8* %278) #11, !dbg !1214
  unreachable, !dbg !1211

; <label>:279:                                    ; preds = %271
  call void @llvm.lifetime.end(i64 40960, i8* nonnull %163) #11, !dbg !1216
  call void @llvm.lifetime.end(i64 30720, i8* nonnull %162) #11, !dbg !1216
  br label %280

; <label>:280:                                    ; preds = %279, %160
  %281 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %69) #11, !dbg !1217
  %282 = icmp eq i32 %281, -1, !dbg !1218
  br i1 %282, label %283, label %300, !dbg !1219

; <label>:283:                                    ; preds = %280
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !772, metadata !627), !dbg !1220
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !773, metadata !627), !dbg !1221
  %284 = load i8, i8* %52, align 1, !dbg !1222, !tbaa !889
  %285 = icmp eq i8 %284, 45, !dbg !1224
  br i1 %285, label %289, label %286, !dbg !1227

; <label>:286:                                    ; preds = %283
  %287 = tail call i32* @__errno_location() #1, !dbg !1229
  %288 = load i32, i32* %287, align 4, !tbaa !865
  br label %297, !dbg !1230

; <label>:289:                                    ; preds = %283
  %290 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1232
  %291 = load i8, i8* %290, align 1, !dbg !1232, !tbaa !889
  %292 = icmp eq i8 %291, 0, !dbg !1235
  %293 = tail call i32* @__errno_location() #1, !dbg !1229
  %294 = load i32, i32* %293, align 4, !tbaa !865
  br i1 %292, label %295, label %297, !dbg !1230

; <label>:295:                                    ; preds = %289
  %296 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1237
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %294, i8* %296) #11, !dbg !1239
  unreachable, !dbg !1229

; <label>:297:                                    ; preds = %286, %289
  %298 = phi i32 [ %288, %286 ], [ %294, %289 ]
  %299 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %52) #11, !dbg !1241
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %299) #11, !dbg !1242
  unreachable, !dbg !1243

; <label>:300:                                    ; preds = %280
  ret i32 0, !dbg !1244
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
define void @base64_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #6 !dbg !1245 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1251, metadata !627), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1252, metadata !627), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1253, metadata !627), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1254, metadata !627), !dbg !1258
  %5 = and i64 %3, 3, !dbg !1259
  %6 = icmp eq i64 %5, 0, !dbg !1261
  br i1 %6, label %12, label %7, !dbg !1262

; <label>:7:                                      ; preds = %12, %4
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1254, metadata !627), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1253, metadata !627), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1252, metadata !627), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1251, metadata !627), !dbg !1255
  %8 = icmp ne i64 %1, 0, !dbg !1263
  %9 = icmp ne i64 %3, 0, !dbg !1265
  %10 = and i1 %8, %9, !dbg !1267
  br i1 %10, label %11, label %136, !dbg !1268

; <label>:11:                                     ; preds = %7
  br label %60, !dbg !1270

; <label>:12:                                     ; preds = %4
  %13 = lshr i64 %3, 2, !dbg !1272
  %14 = mul nuw i64 %13, 3, !dbg !1274
  %15 = icmp eq i64 %14, %1, !dbg !1275
  br i1 %15, label %16, label %7, !dbg !1276

; <label>:16:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1277, metadata !627), !dbg !1284
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1282, metadata !627), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1283, metadata !627), !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1283, metadata !627), !dbg !1288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1282, metadata !627), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1277, metadata !627), !dbg !1284
  %17 = icmp eq i64 %1, 0, !dbg !1289
  br i1 %17, label %143, label %18, !dbg !1289

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1291

; <label>:19:                                     ; preds = %18, %19
  %20 = phi i8* [ %56, %19 ], [ %2, %18 ]
  %21 = phi i64 [ %57, %19 ], [ %1, %18 ]
  %22 = phi i8* [ %58, %19 ], [ %0, %18 ]
  %23 = load i8, i8* %22, align 1, !dbg !1291, !tbaa !889, !alias.scope !1293, !noalias !1296
  %24 = zext i8 %23 to i64, !dbg !1298
  %25 = lshr i64 %24, 2, !dbg !1299
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %25, !dbg !1300
  %27 = load i8, i8* %26, align 1, !dbg !1300, !tbaa !889, !noalias !1301
  %28 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1302
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1283, metadata !627), !dbg !1288
  store i8 %27, i8* %20, align 1, !dbg !1303, !tbaa !889, !alias.scope !1296, !noalias !1293
  %29 = zext i8 %23 to i32, !dbg !1304
  %30 = shl nuw nsw i32 %29, 4, !dbg !1305
  %31 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1306
  %32 = load i8, i8* %31, align 1, !dbg !1306, !tbaa !889, !alias.scope !1293, !noalias !1296
  %33 = zext i8 %32 to i32, !dbg !1307
  %34 = lshr i32 %33, 4, !dbg !1308
  %35 = and i32 %30, 48, !dbg !1309
  %36 = or i32 %34, %35, !dbg !1309
  %37 = zext i32 %36 to i64, !dbg !1310
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %37, !dbg !1310
  %39 = load i8, i8* %38, align 1, !dbg !1310, !tbaa !889, !noalias !1301
  %40 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1283, metadata !627), !dbg !1288
  store i8 %39, i8* %28, align 1, !dbg !1312, !tbaa !889, !alias.scope !1296, !noalias !1293
  %41 = shl nuw nsw i32 %33, 2, !dbg !1313
  %42 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !1314
  %43 = load i8, i8* %42, align 1, !dbg !1314, !tbaa !889, !alias.scope !1293, !noalias !1296
  %44 = zext i8 %43 to i32, !dbg !1315
  %45 = lshr i32 %44, 6, !dbg !1316
  %46 = and i32 %41, 60, !dbg !1317
  %47 = or i32 %45, %46, !dbg !1317
  %48 = zext i32 %47 to i64, !dbg !1318
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %48, !dbg !1318
  %50 = load i8, i8* %49, align 1, !dbg !1318, !tbaa !889, !noalias !1301
  %51 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !1319
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1283, metadata !627), !dbg !1288
  store i8 %50, i8* %40, align 1, !dbg !1320, !tbaa !889, !alias.scope !1296, !noalias !1293
  %52 = and i8 %43, 63, !dbg !1321
  %53 = zext i8 %52 to i64, !dbg !1322
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %53, !dbg !1322
  %55 = load i8, i8* %54, align 1, !dbg !1322, !tbaa !889, !noalias !1301
  %56 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1323
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1283, metadata !627), !dbg !1288
  store i8 %55, i8* %51, align 1, !dbg !1324, !tbaa !889, !alias.scope !1296, !noalias !1293
  %57 = add i64 %21, -3, !dbg !1325
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1282, metadata !627), !dbg !1287
  %58 = getelementptr inbounds i8, i8* %22, i64 3, !dbg !1326
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1277, metadata !627), !dbg !1284
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1283, metadata !627), !dbg !1288
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1282, metadata !627), !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1277, metadata !627), !dbg !1284
  %59 = icmp eq i64 %57, 0, !dbg !1289
  br i1 %59, label %141, label %19, !dbg !1289, !llvm.loop !1327

; <label>:60:                                     ; preds = %11, %129
  %61 = phi i64 [ %127, %129 ], [ %3, %11 ]
  %62 = phi i8* [ %130, %129 ], [ %2, %11 ]
  %63 = phi i64 [ %131, %129 ], [ %1, %11 ]
  %64 = phi i8* [ %135, %129 ], [ %0, %11 ]
  %65 = load i8, i8* %64, align 1, !dbg !1270, !tbaa !889
  %66 = zext i8 %65 to i64, !dbg !1330
  %67 = lshr i64 %66, 2, !dbg !1331
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %67, !dbg !1332
  %69 = load i8, i8* %68, align 1, !dbg !1332, !tbaa !889
  %70 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1253, metadata !627), !dbg !1257
  store i8 %69, i8* %62, align 1, !dbg !1334, !tbaa !889
  %71 = icmp eq i64 %61, 1, !dbg !1335
  br i1 %71, label %142, label %72, !dbg !1337

; <label>:72:                                     ; preds = %60
  %73 = load i8, i8* %64, align 1, !dbg !1338, !tbaa !889
  %74 = zext i8 %73 to i32, !dbg !1339
  %75 = shl nuw nsw i32 %74, 4, !dbg !1340
  %76 = icmp ne i64 %63, 1, !dbg !1341
  br i1 %76, label %77, label %82, !dbg !1341

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1342
  %79 = load i8, i8* %78, align 1, !dbg !1342, !tbaa !889
  %80 = zext i8 %79 to i32, !dbg !1344
  %81 = lshr i32 %80, 4, !dbg !1345
  br label %82, !dbg !1346

; <label>:82:                                     ; preds = %72, %77
  %83 = phi i32 [ %81, %77 ], [ 0, %72 ], !dbg !1347
  %84 = add nuw nsw i32 %83, %75, !dbg !1349
  %85 = and i32 %84, 63, !dbg !1350
  %86 = zext i32 %85 to i64, !dbg !1351
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %86, !dbg !1351
  %88 = load i8, i8* %87, align 1, !dbg !1351, !tbaa !889
  %89 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !1352
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1253, metadata !627), !dbg !1257
  store i8 %88, i8* %70, align 1, !dbg !1353, !tbaa !889
  %90 = icmp eq i64 %61, 2, !dbg !1354
  br i1 %90, label %142, label %91, !dbg !1356

; <label>:91:                                     ; preds = %82
  br i1 %76, label %92, label %111, !dbg !1357

; <label>:92:                                     ; preds = %91
  %93 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1358
  %94 = load i8, i8* %93, align 1, !dbg !1358, !tbaa !889
  %95 = zext i8 %94 to i32, !dbg !1359
  %96 = shl nuw nsw i32 %95, 2, !dbg !1360
  %97 = add i64 %63, -2, !dbg !1361
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1252, metadata !627), !dbg !1256
  %98 = icmp eq i64 %97, 0, !dbg !1361
  br i1 %98, label %104, label %99, !dbg !1361

; <label>:99:                                     ; preds = %92
  %100 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !1362
  %101 = load i8, i8* %100, align 1, !dbg !1362, !tbaa !889
  %102 = zext i8 %101 to i32, !dbg !1363
  %103 = lshr i32 %102, 6, !dbg !1364
  br label %104, !dbg !1365

; <label>:104:                                    ; preds = %92, %99
  %105 = phi i32 [ %103, %99 ], [ 0, %92 ], !dbg !1366
  %106 = add nuw nsw i32 %105, %96, !dbg !1367
  %107 = and i32 %106, 63, !dbg !1368
  %108 = zext i32 %107 to i64, !dbg !1369
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %108, !dbg !1369
  %110 = load i8, i8* %109, align 1, !dbg !1369, !tbaa !889
  br label %111, !dbg !1370

; <label>:111:                                    ; preds = %91, %104
  %112 = phi i64 [ %97, %104 ], [ 0, %91 ]
  %113 = phi i8 [ %110, %104 ], [ 61, %91 ], !dbg !1371
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1252, metadata !627), !dbg !1256
  %114 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !1372
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1253, metadata !627), !dbg !1257
  store i8 %113, i8* %89, align 1, !dbg !1373, !tbaa !889
  %115 = icmp eq i64 %61, 3, !dbg !1374
  br i1 %115, label %142, label %116, !dbg !1376

; <label>:116:                                    ; preds = %111
  %117 = icmp ne i64 %112, 0, !dbg !1377
  br i1 %117, label %118, label %125, !dbg !1377

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !1378
  %120 = load i8, i8* %119, align 1, !dbg !1378, !tbaa !889
  %121 = and i8 %120, 63, !dbg !1379
  %122 = zext i8 %121 to i64, !dbg !1380
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %122, !dbg !1380
  %124 = load i8, i8* %123, align 1, !dbg !1380, !tbaa !889
  br label %125, !dbg !1381

; <label>:125:                                    ; preds = %116, %118
  %126 = phi i8 [ %124, %118 ], [ 61, %116 ], !dbg !1382
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1253, metadata !627), !dbg !1257
  store i8 %126, i8* %114, align 1, !dbg !1383, !tbaa !889
  %127 = add i64 %61, -4, !dbg !1384
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1254, metadata !627), !dbg !1258
  %128 = icmp eq i64 %127, 0, !dbg !1384
  br i1 %128, label %142, label %129, !dbg !1386

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !1387
  %131 = add i64 %112, -1, !dbg !1388
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1252, metadata !627), !dbg !1256
  %132 = icmp eq i64 %131, 0, !dbg !1390
  %133 = xor i1 %117, true, !dbg !1390
  %134 = or i1 %132, %133, !dbg !1390
  %135 = getelementptr inbounds i8, i8* %64, i64 3, !dbg !1392
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1251, metadata !627), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1254, metadata !627), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1253, metadata !627), !dbg !1257
  br i1 %134, label %138, label %60, !dbg !1268

; <label>:136:                                    ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1254, metadata !627), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1253, metadata !627), !dbg !1257
  %137 = icmp eq i64 %3, 0, !dbg !1393
  br i1 %137, label %143, label %139, !dbg !1395

; <label>:138:                                    ; preds = %129
  br label %139, !dbg !1396

; <label>:139:                                    ; preds = %138, %136
  %140 = phi i8* [ %2, %136 ], [ %130, %138 ]
  store i8 0, i8* %140, align 1, !dbg !1396, !tbaa !889
  br label %143, !dbg !1397

; <label>:141:                                    ; preds = %19
  br label %143, !dbg !1398

; <label>:142:                                    ; preds = %125, %111, %82, %60
  br label %143, !dbg !1398

; <label>:143:                                    ; preds = %142, %141, %16, %136, %139
  ret void, !dbg !1398
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @base64_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #6 !dbg !1399 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1403, metadata !627), !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1404, metadata !627), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1405, metadata !627), !dbg !1409
  %4 = add i64 %1, 2, !dbg !1410
  %5 = udiv i64 %4, 3, !dbg !1410
  %6 = shl i64 %5, 2, !dbg !1410
  %7 = or i64 %6, 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1406, metadata !627), !dbg !1412
  %8 = icmp ult i64 %7, %1, !dbg !1413
  br i1 %8, label %9, label %10, !dbg !1415

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1416, !tbaa !635
  br label %14, !dbg !1418

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1419
  store i8* %11, i8** %2, align 8, !dbg !1420, !tbaa !635
  %12 = icmp eq i8* %11, null, !dbg !1421
  br i1 %12, label %14, label %13, !dbg !1423

; <label>:13:                                     ; preds = %10
  tail call void @base64_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1424
  br label %14, !dbg !1425

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ]
  ret i64 %15, !dbg !1426
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define zeroext i1 @isbase64(i8 signext) local_unnamed_addr #9 !dbg !1427 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !1431, metadata !627), !dbg !1432
  %2 = zext i8 %0 to i64, !dbg !1433
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %2, !dbg !1433
  %4 = load i8, i8* %3, align 1, !dbg !1433, !tbaa !889
  %5 = icmp sgt i8 %4, -1, !dbg !1434
  ret i1 %5, !dbg !1435
}

; Function Attrs: nounwind sspstrong uwtable
define void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture) local_unnamed_addr #6 !dbg !1436 {
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1445, metadata !627), !dbg !1446
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1447
  store i32 0, i32* %2, align 4, !dbg !1448, !tbaa !1449
  ret void, !dbg !1451
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base64_decode_ctx(%struct.base64_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #6 !dbg !1452 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1456, metadata !627), !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1457, metadata !627), !dbg !1471
  %8 = ptrtoint i8* %1 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1458, metadata !627), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1459, metadata !627), !dbg !1473
  store i8* %3, i8** %6, align 8, !tbaa !635
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1460, metadata !627), !dbg !1474
  %9 = bitcast i64* %7 to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11, !dbg !1475
  %10 = load i64, i64* %4, align 8, !dbg !1476, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1461, metadata !627), !dbg !1477
  store i64 %10, i64* %7, align 8, !dbg !1477, !tbaa !943
  %11 = icmp ne %struct.base64_decode_context* %0, null, !dbg !1478
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1463, metadata !627), !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1464, metadata !627), !dbg !1480
  %12 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0
  br i1 %11, label %13, label %17, !dbg !1481

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %12, align 4, !dbg !1482, !tbaa !1449
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1464, metadata !627), !dbg !1480
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1458, metadata !627), !dbg !1472
  %15 = icmp eq i32 %14, 0, !dbg !1485
  %16 = icmp ne i64 %2, 0, !dbg !1485
  br label %17, !dbg !1485

; <label>:17:                                     ; preds = %5, %13
  %18 = phi i1 [ %15, %13 ], [ true, %5 ]
  %19 = phi i1 [ %16, %13 ], [ true, %5 ]
  %20 = and i1 %18, %19
  %21 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0
  %22 = xor i1 %11, true
  br label %23, !dbg !1479

; <label>:23:                                     ; preds = %56, %17
  %24 = phi i64 [ %10, %17 ], [ %59, %56 ], !dbg !1486
  %25 = phi i64 [ %8, %17 ], [ %57, %56 ]
  %26 = phi i64 [ %2, %17 ], [ %58, %56 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1461, metadata !627), !dbg !1477
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1465, metadata !627), !dbg !1490
  br i1 %20, label %27, label %40, !dbg !1491

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1461, metadata !627), !dbg !1477
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1465, metadata !627), !dbg !1490
  %28 = inttoptr i64 %25 to i8*, !dbg !1492
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1457, metadata !627), !dbg !1471
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1458, metadata !627), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1459, metadata !927), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1461, metadata !927), !dbg !1477
  %29 = call fastcc zeroext i1 @decode_4(i8* %28, i64 %26, i8** nonnull %6, i64* nonnull %7), !dbg !1494
  br i1 %29, label %30, label %40, !dbg !1495

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !1471

; <label>:31:                                     ; preds = %30, %31
  %32 = phi i8* [ %34, %31 ], [ %28, %30 ]
  %33 = phi i64 [ %35, %31 ], [ %26, %30 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1457, metadata !627), !dbg !1471
  %34 = getelementptr inbounds i8, i8* %32, i64 4, !dbg !1496
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1457, metadata !627), !dbg !1471
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1458, metadata !627), !dbg !1472
  %35 = add i64 %33, -4, !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1458, metadata !627), !dbg !1472
  %36 = load i64, i64* %7, align 8, !dbg !1486, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1461, metadata !627), !dbg !1477
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1465, metadata !627), !dbg !1490
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1457, metadata !627), !dbg !1471
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1458, metadata !627), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1459, metadata !927), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1461, metadata !927), !dbg !1477
  %37 = call fastcc zeroext i1 @decode_4(i8* %34, i64 %35, i8** nonnull %6, i64* nonnull %7), !dbg !1494
  br i1 %37, label %31, label %38, !dbg !1495, !llvm.loop !1498

; <label>:38:                                     ; preds = %31
  %39 = ptrtoint i8* %34 to i64, !dbg !1496
  br label %40, !dbg !1490

; <label>:40:                                     ; preds = %38, %27, %23
  %41 = phi i64 [ %25, %23 ], [ %25, %27 ], [ %39, %38 ]
  %42 = phi i64 [ %26, %23 ], [ %26, %27 ], [ %35, %38 ]
  %43 = phi i64 [ %24, %23 ], [ %24, %27 ], [ %36, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1465, metadata !627), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1458, metadata !627), !dbg !1472
  %44 = icmp eq i64 %42, 0, !dbg !1501
  %45 = and i1 %19, %44, !dbg !1503
  br i1 %45, label %124, label %46, !dbg !1503

; <label>:46:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1458, metadata !627), !dbg !1472
  %47 = inttoptr i64 %41 to i8*
  br i1 %44, label %60, label %48, !dbg !1504

; <label>:48:                                     ; preds = %46
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1457, metadata !627), !dbg !1471
  %49 = load i8, i8* %47, align 1, !dbg !1506, !tbaa !889
  %50 = icmp ne i8 %49, 10, !dbg !1508
  %51 = or i1 %50, %22, !dbg !1508
  br i1 %51, label %60, label %52, !dbg !1508

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1457, metadata !627), !dbg !1471
  %54 = ptrtoint i8* %53 to i64, !dbg !1509
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1458, metadata !627), !dbg !1472
  %55 = add i64 %42, -1, !dbg !1511
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1458, metadata !627), !dbg !1472
  br label %56

; <label>:56:                                     ; preds = %52, %121
  %57 = phi i64 [ %117, %121 ], [ %54, %52 ]
  %58 = phi i64 [ %123, %121 ], [ %55, %52 ]
  %59 = load i64, i64* %7, align 8, !tbaa !943
  br label %23, !dbg !1512

; <label>:60:                                     ; preds = %46, %48
  %61 = load i64, i64* %7, align 8, !dbg !1513, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1461, metadata !627), !dbg !1477
  %62 = load i8*, i8** %6, align 8, !dbg !1514, !tbaa !635
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1459, metadata !627), !dbg !1473
  %63 = sub i64 %61, %43, !dbg !1514
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !1514
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1459, metadata !627), !dbg !1473
  store i8* %64, i8** %6, align 8, !dbg !1514, !tbaa !635
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1461, metadata !627), !dbg !1477
  store i64 %43, i64* %7, align 8, !dbg !1515, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1457, metadata !627), !dbg !1471
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1458, metadata !627), !dbg !1472
  %65 = getelementptr inbounds i8, i8* %47, i64 %42, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1467, metadata !627), !dbg !1517
  br i1 %11, label %66, label %107, !dbg !1518

; <label>:66:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1457, metadata !927), !dbg !1471
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1519, metadata !627) #11, !dbg !1535
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1525, metadata !627) #11, !dbg !1538
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1526, metadata !627) #11, !dbg !1539
  %67 = load i32, i32* %12, align 4, !dbg !1540, !tbaa !1449, !noalias !1542
  switch i32 %67, label %79 [
    i32 4, label %68
    i32 0, label %69
  ], !dbg !1545

; <label>:68:                                     ; preds = %66
  store i32 0, i32* %12, align 4, !dbg !1546, !tbaa !1449, !noalias !1542
  br label %69, !dbg !1547

; <label>:69:                                     ; preds = %68, %66
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1528, metadata !627) #11, !dbg !1548
  %70 = ptrtoint i8* %65 to i64, !dbg !1549
  %71 = sub i64 %70, %41, !dbg !1549
  %72 = icmp sgt i64 %71, 3, !dbg !1551
  br i1 %72, label %73, label %79, !dbg !1552

; <label>:73:                                     ; preds = %69
  %74 = tail call i8* @memchr(i8* %47, i32 10, i64 4) #14, !dbg !1553
  %75 = icmp eq i8* %74, null, !dbg !1555
  br i1 %75, label %76, label %79, !dbg !1556

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds i8, i8* %47, i64 4, !dbg !1558
  %78 = ptrtoint i8* %77 to i64, !dbg !1558
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1469, metadata !627), !dbg !1560
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1458, metadata !627), !dbg !1472
  br label %116, !dbg !1561

; <label>:79:                                     ; preds = %66, %73, %69
  %80 = phi i32 [ 0, %73 ], [ 0, %69 ], [ %67, %66 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  %81 = icmp sgt i64 %42, 0, !dbg !1565
  br i1 %81, label %82, label %102, !dbg !1567

; <label>:82:                                     ; preds = %79
  br label %83, !dbg !1568

; <label>:83:                                     ; preds = %82, %93
  %84 = phi i32 [ %94, %93 ], [ %80, %82 ]
  %85 = phi i8* [ %88, %93 ], [ %47, %82 ]
  br label %86, !dbg !1568

; <label>:86:                                     ; preds = %91, %83
  %87 = phi i8* [ %88, %91 ], [ %85, %83 ]
  %88 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1568
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  %89 = load i8, i8* %87, align 1, !dbg !1569, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !1533, metadata !627) #11, !dbg !1570
  %90 = icmp eq i8 %89, 10, !dbg !1571
  br i1 %90, label %91, label %93, !dbg !1573

; <label>:91:                                     ; preds = %86
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  %92 = icmp ult i8* %88, %65, !dbg !1565
  br i1 %92, label %86, label %100, !dbg !1567

; <label>:93:                                     ; preds = %86
  %94 = add i32 %84, 1, !dbg !1574
  store i32 %94, i32* %12, align 4, !dbg !1574, !tbaa !1449, !noalias !1542
  %95 = zext i32 %84 to i64, !dbg !1576
  %96 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %95, !dbg !1576
  store i8 %89, i8* %96, align 1, !dbg !1577, !tbaa !889, !noalias !1542
  %97 = icmp ne i32 %94, 4, !dbg !1578
  %98 = icmp ult i8* %88, %65, !dbg !1565
  %99 = and i1 %97, %98, !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  br i1 %99, label %83, label %101, !dbg !1580

; <label>:100:                                    ; preds = %91
  br label %102, !dbg !1564

; <label>:101:                                    ; preds = %93
  br label %102, !dbg !1564

; <label>:102:                                    ; preds = %101, %100, %79
  %103 = phi i32 [ %80, %79 ], [ %84, %100 ], [ %94, %101 ], !dbg !1581
  %104 = phi i8* [ %47, %79 ], [ %88, %100 ], [ %88, %101 ]
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1531, metadata !627) #11, !dbg !1564
  %105 = ptrtoint i8* %104 to i64, !dbg !1582
  %106 = zext i32 %103 to i64, !dbg !1583
  br label %107

; <label>:107:                                    ; preds = %102, %60
  %108 = phi i64 [ %41, %60 ], [ %105, %102 ]
  %109 = phi i64 [ %42, %60 ], [ %106, %102 ]
  %110 = phi i8* [ %47, %60 ], [ %21, %102 ]
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1469, metadata !627), !dbg !1560
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1458, metadata !627), !dbg !1472
  %111 = icmp eq i64 %109, 0, !dbg !1584
  br i1 %111, label %124, label %112, !dbg !1585

; <label>:112:                                    ; preds = %107
  %113 = icmp ult i64 %109, 4, !dbg !1586
  %114 = and i1 %19, %113, !dbg !1561
  %115 = and i1 %11, %114, !dbg !1561
  br i1 %115, label %124, label %116, !dbg !1561

; <label>:116:                                    ; preds = %112, %76
  %117 = phi i64 [ %78, %76 ], [ %108, %112 ]
  %118 = phi i64 [ 4, %76 ], [ %109, %112 ]
  %119 = phi i8* [ %47, %76 ], [ %110, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1458, metadata !627), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1459, metadata !927), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1461, metadata !927), !dbg !1477
  %120 = call fastcc zeroext i1 @decode_4(i8* %119, i64 %118, i8** nonnull %6, i64* nonnull %7), !dbg !1587
  br i1 %120, label %121, label %124, !dbg !1589

; <label>:121:                                    ; preds = %116
  %122 = ptrtoint i8* %65 to i64, !dbg !1590
  %123 = sub i64 %122, %117, !dbg !1590
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1458, metadata !627), !dbg !1472
  br label %56

; <label>:124:                                    ; preds = %112, %107, %116, %40
  %125 = phi i64 [ 0, %40 ], [ 0, %107 ], [ 0, %112 ], [ %118, %116 ]
  %126 = load i64, i64* %7, align 8, !dbg !1591, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1461, metadata !627), !dbg !1477
  %127 = load i64, i64* %4, align 8, !dbg !1592, !tbaa !943
  %128 = sub i64 %127, %126, !dbg !1592
  store i64 %128, i64* %4, align 8, !dbg !1592, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1458, metadata !627), !dbg !1472
  %129 = icmp eq i64 %125, 0, !dbg !1593
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11, !dbg !1594
  ret i1 %129, !dbg !1595
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_4(i8* noalias nocapture readonly, i64, i8** nocapture, i64* nocapture) unnamed_addr #6 !dbg !1596 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1601, metadata !627), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1602, metadata !627), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1603, metadata !627), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !1604, metadata !627), !dbg !1609
  %5 = load i8*, i8** %2, align 8, !dbg !1610, !tbaa !635
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1605, metadata !627), !dbg !1611
  %6 = icmp ult i64 %1, 2, !dbg !1612
  br i1 %6, label %96, label %7, !dbg !1614

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1615, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !1431, metadata !627), !dbg !1617
  %9 = zext i8 %8 to i64, !dbg !1619
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %9, !dbg !1619
  %11 = load i8, i8* %10, align 1, !dbg !1619, !tbaa !889
  %12 = icmp sgt i8 %11, -1, !dbg !1620
  br i1 %12, label %13, label %96, !dbg !1621

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1622
  %15 = load i8, i8* %14, align 1, !dbg !1622, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1431, metadata !627), !dbg !1624
  %16 = zext i8 %15 to i64, !dbg !1626
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %16, !dbg !1626
  %18 = load i8, i8* %17, align 1, !dbg !1626, !tbaa !889
  %19 = icmp sgt i8 %18, -1, !dbg !1627
  br i1 %19, label %20, label %96, !dbg !1628

; <label>:20:                                     ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1630, !tbaa !943
  %22 = icmp eq i64 %21, 0, !dbg !1630
  br i1 %22, label %33, label %23, !dbg !1632

; <label>:23:                                     ; preds = %20
  %24 = sext i8 %11 to i32, !dbg !1633
  %25 = shl nsw i32 %24, 2, !dbg !1635
  %26 = sext i8 %18 to i32, !dbg !1636
  %27 = lshr i32 %26, 4, !dbg !1637
  %28 = or i32 %27, %25, !dbg !1638
  %29 = trunc i32 %28 to i8, !dbg !1639
  %30 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1640
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1605, metadata !627), !dbg !1611
  store i8 %29, i8* %5, align 1, !dbg !1641, !tbaa !889
  %31 = load i64, i64* %3, align 8, !dbg !1642, !tbaa !943
  %32 = add i64 %31, -1, !dbg !1642
  store i64 %32, i64* %3, align 8, !dbg !1642, !tbaa !943
  br label %33, !dbg !1643

; <label>:33:                                     ; preds = %20, %23
  %34 = phi i64 [ %32, %23 ], [ 0, %20 ], !dbg !1644
  %35 = phi i8* [ %30, %23 ], [ %5, %20 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1605, metadata !627), !dbg !1611
  %36 = icmp eq i64 %1, 2, !dbg !1648
  br i1 %36, label %37, label %38, !dbg !1650

; <label>:37:                                     ; preds = %33
  store i8* %35, i8** %2, align 8, !dbg !1651, !tbaa !635
  br label %96, !dbg !1651

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1654
  %40 = load i8, i8* %39, align 1, !dbg !1654, !tbaa !889
  %41 = icmp eq i8 %40, 61, !dbg !1655
  br i1 %41, label %42, label %50, !dbg !1656

; <label>:42:                                     ; preds = %38
  %43 = icmp eq i64 %1, 4, !dbg !1657
  br i1 %43, label %45, label %44, !dbg !1660

; <label>:44:                                     ; preds = %42
  store i8* %35, i8** %2, align 8, !dbg !1661, !tbaa !635
  br label %96, !dbg !1661

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1664
  %47 = load i8, i8* %46, align 1, !dbg !1664, !tbaa !889
  %48 = icmp eq i8 %47, 61, !dbg !1666
  br i1 %48, label %94, label %49, !dbg !1667

; <label>:49:                                     ; preds = %45
  store i8* %35, i8** %2, align 8, !dbg !1668, !tbaa !635
  br label %96, !dbg !1668

; <label>:50:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !1431, metadata !627), !dbg !1671
  %51 = zext i8 %40 to i64, !dbg !1674
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %51, !dbg !1674
  %53 = load i8, i8* %52, align 1, !dbg !1674, !tbaa !889
  %54 = icmp sgt i8 %53, -1, !dbg !1675
  br i1 %54, label %56, label %55, !dbg !1676

; <label>:55:                                     ; preds = %50
  store i8* %35, i8** %2, align 8, !dbg !1677, !tbaa !635
  br label %96, !dbg !1677

; <label>:56:                                     ; preds = %50
  %57 = icmp eq i64 %34, 0, !dbg !1644
  br i1 %57, label %68, label %58, !dbg !1680

; <label>:58:                                     ; preds = %56
  %59 = sext i8 %18 to i32, !dbg !1681
  %60 = shl nsw i32 %59, 4, !dbg !1683
  %61 = sext i8 %53 to i32, !dbg !1684
  %62 = lshr i32 %61, 2, !dbg !1685
  %63 = or i32 %60, %62, !dbg !1686
  %64 = trunc i32 %63 to i8, !dbg !1687
  %65 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1688
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1605, metadata !627), !dbg !1611
  store i8 %64, i8* %35, align 1, !dbg !1689, !tbaa !889
  %66 = load i64, i64* %3, align 8, !dbg !1690, !tbaa !943
  %67 = add i64 %66, -1, !dbg !1690
  store i64 %67, i64* %3, align 8, !dbg !1690, !tbaa !943
  br label %68, !dbg !1691

; <label>:68:                                     ; preds = %56, %58
  %69 = phi i64 [ %67, %58 ], [ 0, %56 ], !dbg !1692
  %70 = phi i8* [ %65, %58 ], [ %35, %56 ]
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1605, metadata !627), !dbg !1611
  %71 = icmp eq i64 %1, 3, !dbg !1696
  br i1 %71, label %72, label %73, !dbg !1698

; <label>:72:                                     ; preds = %68
  store i8* %70, i8** %2, align 8, !dbg !1699, !tbaa !635
  br label %96, !dbg !1699

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1702
  %75 = load i8, i8* %74, align 1, !dbg !1702, !tbaa !889
  %76 = icmp eq i8 %75, 61, !dbg !1703
  br i1 %76, label %77, label %80, !dbg !1704

; <label>:77:                                     ; preds = %73
  %78 = icmp eq i64 %1, 4, !dbg !1705
  br i1 %78, label %94, label %79, !dbg !1708

; <label>:79:                                     ; preds = %77
  store i8* %70, i8** %2, align 8, !dbg !1709, !tbaa !635
  br label %96, !dbg !1709

; <label>:80:                                     ; preds = %73
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !1431, metadata !627), !dbg !1712
  %81 = zext i8 %75 to i64, !dbg !1715
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %81, !dbg !1715
  %83 = load i8, i8* %82, align 1, !dbg !1715, !tbaa !889
  %84 = icmp sgt i8 %83, -1, !dbg !1716
  br i1 %84, label %86, label %85, !dbg !1717

; <label>:85:                                     ; preds = %80
  store i8* %70, i8** %2, align 8, !dbg !1718, !tbaa !635
  br label %96, !dbg !1718

; <label>:86:                                     ; preds = %80
  %87 = icmp eq i64 %69, 0, !dbg !1692
  br i1 %87, label %94, label %88, !dbg !1721

; <label>:88:                                     ; preds = %86
  %89 = shl i8 %53, 6, !dbg !1722
  %90 = or i8 %89, %83, !dbg !1724
  %91 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1725
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1605, metadata !627), !dbg !1611
  store i8 %90, i8* %70, align 1, !dbg !1726, !tbaa !889
  %92 = load i64, i64* %3, align 8, !dbg !1727, !tbaa !943
  %93 = add i64 %92, -1, !dbg !1727
  store i64 %93, i64* %3, align 8, !dbg !1727, !tbaa !943
  br label %94, !dbg !1728

; <label>:94:                                     ; preds = %45, %77, %86, %88
  %95 = phi i8* [ %35, %45 ], [ %70, %77 ], [ %91, %88 ], [ %70, %86 ]
  tail call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !1605, metadata !627), !dbg !1611
  store i8* %95, i8** %2, align 8, !dbg !1729, !tbaa !635
  br label %96, !dbg !1730

; <label>:96:                                     ; preds = %7, %13, %4, %94, %85, %79, %72, %55, %49, %44, %37
  %97 = phi i1 [ false, %37 ], [ false, %44 ], [ false, %49 ], [ true, %94 ], [ false, %72 ], [ false, %79 ], [ false, %85 ], [ false, %55 ], [ false, %4 ], [ false, %13 ], [ false, %7 ]
  ret i1 %97, !dbg !1731
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base64_decode_alloc_ctx(%struct.base64_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #6 !dbg !1732 {
  %6 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1736, metadata !627), !dbg !1742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1737, metadata !627), !dbg !1743
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1738, metadata !627), !dbg !1744
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1739, metadata !627), !dbg !1745
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1740, metadata !627), !dbg !1746
  %7 = bitcast i64* %6 to i8*, !dbg !1747
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !1747
  %8 = lshr i64 %2, 2, !dbg !1748
  %9 = mul nuw i64 %8, 3, !dbg !1749
  %10 = add i64 %9, 3, !dbg !1750
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1741, metadata !627), !dbg !1751
  store i64 %10, i64* %6, align 8, !dbg !1751, !tbaa !943
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1752
  store i8* %11, i8** %3, align 8, !dbg !1753, !tbaa !635
  %12 = icmp eq i8* %11, null, !dbg !1754
  br i1 %12, label %21, label %13, !dbg !1756

; <label>:13:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !1741, metadata !927), !dbg !1751
  %14 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1757
  br i1 %14, label %17, label %15, !dbg !1759

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1760, !tbaa !635
  tail call void @free(i8* %16) #11, !dbg !1762
  store i8* null, i8** %3, align 8, !dbg !1763, !tbaa !635
  br label %21, !dbg !1764

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1765
  br i1 %18, label %21, label %19, !dbg !1767

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1768, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1741, metadata !627), !dbg !1751
  store i64 %20, i64* %4, align 8, !dbg !1769, !tbaa !943
  br label %21, !dbg !1770

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !1771
  ret i1 %22, !dbg !1771
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1772 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1774, metadata !627), !dbg !1775
  store i8* %0, i8** @file_name, align 8, !dbg !1776, !tbaa !635
  ret void, !dbg !1777
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1778 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1782, metadata !922), !dbg !1783
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1784, !tbaa !1785
  ret void, !dbg !1787
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1788 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1793, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1794
  %3 = icmp eq i32 %2, 0, !dbg !1795
  br i1 %3, label %21, label %4, !dbg !1796

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1797, !tbaa !1785, !range !1799
  %6 = icmp eq i8 %5, 0, !dbg !1797
  %7 = tail call i32* @__errno_location() #1, !dbg !1800
  br i1 %6, label %11, label %8, !dbg !1802

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1803, !tbaa !865
  %10 = icmp eq i32 %9, 32, !dbg !1805
  br i1 %10, label %21, label %11, !dbg !1806

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !1808
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1790, metadata !627), !dbg !1809
  %13 = load i8*, i8** @file_name, align 8, !dbg !1810, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !1810
  %15 = load i32, i32* %7, align 4, !tbaa !865
  br i1 %14, label %18, label %16, !dbg !1811

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1812
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1814
  br label %19, !dbg !1816

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #11, !dbg !1817
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1818, !tbaa !865
  tail call void @_exit(i32 %20) #15, !dbg !1819
  unreachable, !dbg !1819

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1820, !tbaa !635
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1822
  %24 = icmp eq i32 %23, 0, !dbg !1823
  br i1 %24, label %27, label %25, !dbg !1824

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1825, !tbaa !865
  tail call void @_exit(i32 %26) #15, !dbg !1826
  unreachable, !dbg !1826

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1827
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1828 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1835, metadata !627), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1836, metadata !627), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1837, metadata !627), !dbg !1843
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1838, metadata !627), !dbg !1844
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1839, metadata !627), !dbg !1845
  ret void, !dbg !1846
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1891, metadata !627), !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1892, metadata !627), !dbg !1894
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1895
  br i1 %3, label %7, label %4, !dbg !1897

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1835, metadata !627) #11, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1836, metadata !627) #11, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1837, metadata !627) #11, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1838, metadata !627) #11, !dbg !1904
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1839, metadata !627) #11, !dbg !1905
  br label %7, !dbg !1906

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1907
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1908 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1910, metadata !627), !dbg !1913
  %2 = icmp eq i8* %0, null, !dbg !1914
  br i1 %2, label %3, label %6, !dbg !1916

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1917, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !1919
  tail call void @abort() #15, !dbg !1920
  unreachable, !dbg !1920

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1921
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1911, metadata !627), !dbg !1922
  %8 = icmp ne i8* %7, null, !dbg !1923
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1924
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1926
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1912, metadata !627), !dbg !1927
  %11 = ptrtoint i8* %10 to i64, !dbg !1928
  %12 = ptrtoint i8* %0 to i64, !dbg !1928
  %13 = sub i64 %11, %12, !dbg !1928
  %14 = icmp sgt i64 %13, 6, !dbg !1930
  br i1 %14, label %15, label %24, !dbg !1931

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1932
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #14, !dbg !1932
  %18 = icmp eq i32 %17, 0, !dbg !1934
  br i1 %18, label %19, label %24, !dbg !1935

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1910, metadata !627), !dbg !1913
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #14, !dbg !1936
  %21 = icmp eq i32 %20, 0, !dbg !1939
  br i1 %21, label %22, label %24, !dbg !1940

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1941
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1910, metadata !627), !dbg !1913
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1943, !tbaa !635
  br label %24, !dbg !1944

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1910, metadata !627), !dbg !1913
  store i8* %25, i8** @program_name, align 8, !dbg !1945, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1946, !tbaa !635
  ret void, !dbg !1947
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1948 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1953, metadata !627), !dbg !1956
  %2 = tail call i32* @__errno_location() #1, !dbg !1957
  %3 = load i32, i32* %2, align 4, !dbg !1957, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1954, metadata !627), !dbg !1958
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1959
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1960
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1960
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1962
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1962
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1955, metadata !627), !dbg !1963
  store i32 %3, i32* %2, align 4, !dbg !1964, !tbaa !865
  ret %struct.quoting_options* %8, !dbg !1965
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1966 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1972, metadata !627), !dbg !1973
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1974
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1974
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1975
  %5 = load i32, i32* %4, align 8, !dbg !1975, !tbaa !1977
  ret i32 %5, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1984, metadata !627), !dbg !1986
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !627), !dbg !1987
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1988
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1988
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1989
  store i32 %1, i32* %5, align 8, !dbg !1991, !tbaa !1977
  ret void, !dbg !1992
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1993 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1997, metadata !627), !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1998, metadata !627), !dbg !2006
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1999, metadata !627), !dbg !2007
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2000, metadata !627), !dbg !2008
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2009
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2009
  %6 = lshr i8 %1, 5, !dbg !2010
  %7 = zext i8 %6 to i64, !dbg !2010
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2012
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2001, metadata !627), !dbg !2013
  %9 = and i8 %1, 31, !dbg !2014
  %10 = zext i8 %9 to i32, !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2003, metadata !627), !dbg !2016
  %11 = load i32, i32* %8, align 4, !dbg !2017, !tbaa !865
  %12 = lshr i32 %11, %10, !dbg !2018
  %13 = and i32 %12, 1, !dbg !2019
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2004, metadata !627), !dbg !2020
  %14 = and i32 %2, 1, !dbg !2021
  %15 = xor i32 %13, %14, !dbg !2022
  %16 = shl i32 %15, %10, !dbg !2023
  %17 = xor i32 %16, %11, !dbg !2024
  store i32 %17, i32* %8, align 4, !dbg !2024, !tbaa !865
  ret i32 %13, !dbg !2025
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2026 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2030, metadata !627), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2031, metadata !627), !dbg !2034
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2030, metadata !627), !dbg !2033
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2030, metadata !627), !dbg !2033
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2038
  %6 = load i32, i32* %5, align 4, !dbg !2038, !tbaa !2039
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2032, metadata !627), !dbg !2040
  store i32 %1, i32* %5, align 4, !dbg !2041, !tbaa !2039
  ret i32 %6, !dbg !2042
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2043 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2047, metadata !627), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2048, metadata !627), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2049, metadata !627), !dbg !2052
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2047, metadata !627), !dbg !2050
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2055
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2047, metadata !627), !dbg !2050
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2056
  store i32 10, i32* %6, align 8, !dbg !2057, !tbaa !1977
  %7 = icmp ne i8* %1, null, !dbg !2058
  %8 = icmp ne i8* %2, null, !dbg !2060
  %9 = and i1 %7, %8, !dbg !2062
  br i1 %9, label %11, label %10, !dbg !2062

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2063
  unreachable, !dbg !2063

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2064
  store i8* %1, i8** %12, align 8, !dbg !2065, !tbaa !2066
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2067
  store i8* %2, i8** %13, align 8, !dbg !2068, !tbaa !2069
  ret void, !dbg !2070
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2071 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2075, metadata !627), !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2076, metadata !627), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2077, metadata !627), !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2078, metadata !627), !dbg !2086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2079, metadata !627), !dbg !2087
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2088
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2080, metadata !627), !dbg !2089
  %8 = tail call i32* @__errno_location() #1, !dbg !2090
  %9 = load i32, i32* %8, align 4, !dbg !2090, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2081, metadata !627), !dbg !2091
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2092
  %11 = load i32, i32* %10, align 8, !dbg !2092, !tbaa !1977
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2093
  %13 = load i32, i32* %12, align 4, !dbg !2093, !tbaa !2039
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2094
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2095
  %16 = load i8*, i8** %15, align 8, !dbg !2095, !tbaa !2066
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2096
  %18 = load i8*, i8** %17, align 8, !dbg !2096, !tbaa !2069
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2082, metadata !627), !dbg !2098
  store i32 %9, i32* %8, align 4, !dbg !2099, !tbaa !865
  ret i64 %19, !dbg !2100
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2101 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2107, metadata !627), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2108, metadata !627), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2109, metadata !627), !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2110, metadata !627), !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2111, metadata !627), !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2112, metadata !627), !dbg !2172
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2113, metadata !627), !dbg !2173
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2114, metadata !627), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2115, metadata !627), !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2117, metadata !627), !dbg !2176
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2118, metadata !627), !dbg !2177
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2119, metadata !627), !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2120, metadata !627), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2121, metadata !627), !dbg !2180
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2181
  %14 = icmp eq i64 %13, 1, !dbg !2182
  %15 = lshr i32 %5, 1, !dbg !2183
  %16 = trunc i32 %15 to i8, !dbg !2183
  %17 = and i8 %16, 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2123, metadata !627), !dbg !2183
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !627), !dbg !2184
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2125, metadata !627), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2126, metadata !627), !dbg !2186
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2187

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2126, metadata !627), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2121, metadata !627), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2120, metadata !627), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2115, metadata !627), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2114, metadata !627), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2111, metadata !627), !dbg !2171
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
  ], !dbg !2188

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2111, metadata !627), !dbg !2171
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2111, metadata !627), !dbg !2171
  br label %95, !dbg !2189

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2111, metadata !627), !dbg !2171
  %43 = and i8 %36, 1, !dbg !2191
  %44 = icmp eq i8 %43, 0, !dbg !2191
  br i1 %44, label %45, label %95, !dbg !2189

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2193
  br i1 %46, label %95, label %47, !dbg !2197

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2199, !tbaa !889
  br label %95, !dbg !2199

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !2201
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2114, metadata !627), !dbg !2174
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !2205
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2115, metadata !627), !dbg !2175
  br label %51, !dbg !2206

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2115, metadata !627), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2114, metadata !627), !dbg !2174
  %54 = and i8 %36, 1, !dbg !2207
  %55 = icmp eq i8 %54, 0, !dbg !2207
  br i1 %55, label %56, label %73, !dbg !2209

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2117, metadata !627), !dbg !2176
  %57 = load i8, i8* %52, align 1, !dbg !2210, !tbaa !889
  %58 = icmp eq i8 %57, 0, !dbg !2214
  br i1 %58, label %73, label %59, !dbg !2214

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2216

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2216
  br i1 %64, label %65, label %67, !dbg !2220

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2222
  store i8 %61, i8* %66, align 1, !dbg !2222, !tbaa !889
  br label %67, !dbg !2222

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2117, metadata !627), !dbg !2176
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2117, metadata !627), !dbg !2176
  %70 = load i8, i8* %69, align 1, !dbg !2210, !tbaa !889
  %71 = icmp eq i8 %70, 0, !dbg !2214
  br i1 %71, label %72, label %60, !dbg !2214, !llvm.loop !2228

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2176

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !627), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2119, metadata !627), !dbg !2178
  %75 = call i64 @strlen(i8* %53) #14, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2120, metadata !627), !dbg !2179
  br label %95, !dbg !2232

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !627), !dbg !2180
  br label %77, !dbg !2233

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2121, metadata !627), !dbg !2180
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2123, metadata !627), !dbg !2183
  br label %79, !dbg !2234

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2121, metadata !627), !dbg !2180
  %82 = and i8 %81, 1, !dbg !2235
  %83 = icmp eq i8 %82, 0, !dbg !2235
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2121, metadata !627), !dbg !2180
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2237
  br label %85, !dbg !2237

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2121, metadata !627), !dbg !2180
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2111, metadata !627), !dbg !2171
  %88 = and i8 %87, 1, !dbg !2238
  %89 = icmp eq i8 %88, 0, !dbg !2238
  br i1 %89, label %90, label %95, !dbg !2240

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2241
  br i1 %91, label %95, label %92, !dbg !2245

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2247, !tbaa !889
  br label %95, !dbg !2247

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2123, metadata !627), !dbg !2183
  br label %95, !dbg !2249

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !2250
  unreachable, !dbg !2250

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2123, metadata !627), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2121, metadata !627), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2120, metadata !627), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2115, metadata !627), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2114, metadata !627), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2111, metadata !627), !dbg !2171
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2116, metadata !627), !dbg !2251
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
  br label %123, !dbg !2252

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2126, metadata !627), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2116, metadata !627), !dbg !2251
  %132 = icmp eq i64 %127, -1, !dbg !2253
  br i1 %132, label %135, label %133, !dbg !2255

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2256
  br i1 %134, label %597, label %139, !dbg !2258

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2260
  %137 = load i8, i8* %136, align 1, !dbg !2260, !tbaa !889
  %138 = icmp eq i8 %137, 0, !dbg !2262
  br i1 %138, label %597, label %139, !dbg !2258

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2132, metadata !627), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2134, metadata !627), !dbg !2265
  br i1 %109, label %140, label %155, !dbg !2266

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2268
  %142 = and i1 %110, %132, !dbg !2270
  br i1 %142, label %143, label %145, !dbg !2270

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2110, metadata !627), !dbg !2170
  br label %145, !dbg !2272

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2110, metadata !627), !dbg !2170
  %147 = icmp ugt i64 %141, %146, !dbg !2274
  br i1 %147, label %155, label %148, !dbg !2276

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2277
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !2278
  %151 = icmp ne i32 %150, 0, !dbg !2279
  %152 = or i1 %151, %112, !dbg !2279
  %153 = xor i1 %151, true, !dbg !2279
  %154 = zext i1 %153 to i8, !dbg !2279
  br i1 %152, label %155, label %644, !dbg !2279

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2132, metadata !627), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2110, metadata !627), !dbg !2170
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2281
  %159 = load i8, i8* %158, align 1, !dbg !2281, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2127, metadata !627), !dbg !2282
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
  ], !dbg !2283

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2284

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2285

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2133, metadata !627), !dbg !2264
  %163 = and i8 %128, 1, !dbg !2290
  %164 = icmp eq i8 %163, 0, !dbg !2290
  %165 = and i1 %114, %164, !dbg !2293
  br i1 %165, label %166, label %182, !dbg !2293

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2295
  br i1 %167, label %168, label %170, !dbg !2300

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2302
  store i8 39, i8* %169, align 1, !dbg !2302, !tbaa !889
  br label %170, !dbg !2302

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2117, metadata !627), !dbg !2176
  %172 = icmp ult i64 %171, %131, !dbg !2306
  br i1 %172, label %173, label %175, !dbg !2310

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2312
  store i8 36, i8* %174, align 1, !dbg !2312, !tbaa !889
  br label %175, !dbg !2312

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2117, metadata !627), !dbg !2176
  %177 = icmp ult i64 %176, %131, !dbg !2316
  br i1 %177, label %178, label %180, !dbg !2320

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2322
  store i8 39, i8* %179, align 1, !dbg !2322, !tbaa !889
  br label %180, !dbg !2322

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %182, !dbg !2326

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2117, metadata !627), !dbg !2176
  %185 = icmp ult i64 %183, %131, !dbg !2328
  br i1 %185, label %186, label %188, !dbg !2332

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2334
  store i8 92, i8* %187, align 1, !dbg !2334, !tbaa !889
  br label %188, !dbg !2334

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2117, metadata !627), !dbg !2176
  br i1 %106, label %190, label %476, !dbg !2338

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2340
  %192 = icmp ult i64 %191, %156, !dbg !2342
  br i1 %192, label %193, label %476, !dbg !2343

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2344
  %195 = load i8, i8* %194, align 1, !dbg !2344, !tbaa !889
  %196 = add i8 %195, -48, !dbg !2346
  %197 = icmp ult i8 %196, 10, !dbg !2346
  br i1 %197, label %198, label %476, !dbg !2346

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2347
  br i1 %199, label %200, label %202, !dbg !2352

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2354
  store i8 48, i8* %201, align 1, !dbg !2354, !tbaa !889
  br label %202, !dbg !2354

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2117, metadata !627), !dbg !2176
  %204 = icmp ult i64 %203, %131, !dbg !2358
  br i1 %204, label %205, label %207, !dbg !2362

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2364
  store i8 48, i8* %206, align 1, !dbg !2364, !tbaa !889
  br label %207, !dbg !2364

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2117, metadata !627), !dbg !2176
  br label %476, !dbg !2368

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2369

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2370

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2371

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2373

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2375
  %215 = icmp ult i64 %214, %156, !dbg !2377
  br i1 %215, label %216, label %476, !dbg !2378

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2379
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2381
  %219 = load i8, i8* %218, align 1, !dbg !2381, !tbaa !889
  %220 = icmp eq i8 %219, 63, !dbg !2382
  br i1 %220, label %221, label %476, !dbg !2383

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2385
  %223 = load i8, i8* %222, align 1, !dbg !2385, !tbaa !889
  %224 = sext i8 %223 to i32, !dbg !2385
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
  ], !dbg !2386

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2387

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2116, metadata !627), !dbg !2251
  %227 = icmp ult i64 %125, %131, !dbg !2389
  br i1 %227, label %228, label %230, !dbg !2393

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2395
  store i8 63, i8* %229, align 1, !dbg !2395, !tbaa !889
  br label %230, !dbg !2395

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2117, metadata !627), !dbg !2176
  %232 = icmp ult i64 %231, %131, !dbg !2399
  br i1 %232, label %233, label %235, !dbg !2403

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2405
  store i8 34, i8* %234, align 1, !dbg !2405, !tbaa !889
  br label %235, !dbg !2405

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2117, metadata !627), !dbg !2176
  %237 = icmp ult i64 %236, %131, !dbg !2409
  br i1 %237, label %238, label %240, !dbg !2413

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2415
  store i8 34, i8* %239, align 1, !dbg !2415, !tbaa !889
  br label %240, !dbg !2415

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2117, metadata !627), !dbg !2176
  %242 = icmp ult i64 %241, %131, !dbg !2419
  br i1 %242, label %243, label %245, !dbg !2423

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2425
  store i8 63, i8* %244, align 1, !dbg !2425, !tbaa !889
  br label %245, !dbg !2425

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2117, metadata !627), !dbg !2176
  br label %476, !dbg !2429

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2131, metadata !627), !dbg !2430
  br label %257, !dbg !2431

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2131, metadata !627), !dbg !2430
  br label %257, !dbg !2432

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2131, metadata !627), !dbg !2430
  br label %255, !dbg !2433

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2131, metadata !627), !dbg !2430
  br label %255, !dbg !2434

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2131, metadata !627), !dbg !2430
  br label %257, !dbg !2435

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2131, metadata !627), !dbg !2430
  br i1 %114, label %253, label %254, !dbg !2436

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2437

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2440

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2131, metadata !627), !dbg !2430
  br i1 %118, label %257, label %644, !dbg !2442

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2131, metadata !627), !dbg !2430
  br i1 %105, label %503, label %476, !dbg !2444

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2445
  br i1 %260, label %261, label %266, !dbg !2447

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2448, !tbaa !889
  %263 = icmp ne i8 %262, 0, !dbg !2450
  %264 = icmp ne i64 %124, 0, !dbg !2451
  %265 = or i1 %264, %263, !dbg !2453
  br i1 %265, label %476, label %272, !dbg !2453

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2454
  %268 = icmp ne i64 %124, 0, !dbg !2451
  %269 = or i1 %268, %267, !dbg !2456
  br i1 %269, label %476, label %272, !dbg !2456

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2451
  br i1 %271, label %272, label %476, !dbg !2458

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2134, metadata !627), !dbg !2265
  br label %273, !dbg !2459

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2134, metadata !627), !dbg !2265
  br i1 %118, label %476, label %644, !dbg !2460

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2134, metadata !627), !dbg !2265
  br i1 %114, label %276, label %476, !dbg !2462

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2463

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2466
  %279 = icmp ne i64 %126, 0, !dbg !2468
  %280 = or i1 %279, %278, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2108, metadata !627), !dbg !2168
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2470
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2118, metadata !627), !dbg !2177
  %283 = icmp ult i64 %125, %282, !dbg !2471
  br i1 %283, label %284, label %286, !dbg !2475

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2477
  store i8 39, i8* %285, align 1, !dbg !2477, !tbaa !889
  br label %286, !dbg !2477

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2117, metadata !627), !dbg !2176
  %288 = icmp ult i64 %287, %282, !dbg !2481
  br i1 %288, label %289, label %291, !dbg !2485

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2487
  store i8 92, i8* %290, align 1, !dbg !2487, !tbaa !889
  br label %291, !dbg !2487

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2117, metadata !627), !dbg !2176
  %293 = icmp ult i64 %292, %282, !dbg !2491
  br i1 %293, label %294, label %296, !dbg !2495

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2497
  store i8 39, i8* %295, align 1, !dbg !2497, !tbaa !889
  br label %296, !dbg !2497

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %476, !dbg !2501

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2502

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2135, metadata !627), !dbg !2503
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2504
  %301 = load i16*, i16** %300, align 8, !dbg !2504, !tbaa !635
  %302 = zext i8 %159 to i64, !dbg !2504
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2504
  %304 = load i16, i16* %303, align 2, !dbg !2504, !tbaa !2506
  %305 = lshr i16 %304, 14, !dbg !2507
  %306 = trunc i16 %305 to i8, !dbg !2507
  %307 = and i8 %306, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2138, metadata !627), !dbg !2508
  br label %368, !dbg !2509

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2510
  store i64 0, i64* %10, align 8, !dbg !2511
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2138, metadata !627), !dbg !2508
  %309 = icmp eq i64 %156, -1, !dbg !2512
  br i1 %309, label %310, label %312, !dbg !2514, !llvm.loop !2515

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2110, metadata !627), !dbg !2170
  br label %312, !dbg !2519, !llvm.loop !2515

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2508

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2138, metadata !627), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2520
  %317 = add i64 %315, %124, !dbg !2521
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2522
  %319 = sub i64 %313, %317, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2139, metadata !927), !dbg !2524
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2153, metadata !927), !dbg !2525
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2156, metadata !627), !dbg !2527
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2528

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2135, metadata !627), !dbg !2503
  %322 = icmp ugt i64 %313, %317, !dbg !2529
  br i1 %322, label %323, label %351, !dbg !2532

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2533

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2533
  %328 = load i8, i8* %327, align 1, !dbg !2533, !tbaa !889
  %329 = icmp eq i8 %328, 0, !dbg !2535
  br i1 %329, label %348, label %330, !dbg !2536

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2135, metadata !627), !dbg !2503
  %332 = add i64 %331, %124, !dbg !2539
  %333 = icmp ult i64 %332, %313, !dbg !2529
  br i1 %333, label %324, label %348, !dbg !2532, !llvm.loop !2540

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2542
  %336 = and i1 %116, %335, !dbg !2546
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2157, metadata !627), !dbg !2547
  br i1 %336, label %337, label %355, !dbg !2546

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2548

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2548
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2549
  %342 = load i8, i8* %341, align 1, !dbg !2549, !tbaa !889
  %343 = sext i8 %342 to i32, !dbg !2549
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2550

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2157, metadata !627), !dbg !2547
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2157, metadata !627), !dbg !2547
  %346 = icmp ult i64 %345, %320, !dbg !2542
  br i1 %346, label %338, label %354, !dbg !2553, !llvm.loop !2555

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2508

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2508

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2508

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2138, metadata !627), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2558
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2559

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2559, !tbaa !865
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2153, metadata !627), !dbg !2525
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2561
  %358 = icmp eq i32 %357, 0, !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2138, metadata !627), !dbg !2508
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2562
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2138, metadata !627), !dbg !2508
  %360 = add i64 %320, %315, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2138, metadata !627), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2139, metadata !927), !dbg !2524
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2564
  %362 = icmp eq i32 %361, 0, !dbg !2565
  br i1 %362, label %314, label %363, !dbg !2566, !llvm.loop !2515

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2568

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2568
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2138, metadata !627), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2558
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2568
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2138, metadata !627), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2135, metadata !627), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2110, metadata !627), !dbg !2170
  %372 = and i8 %371, 1, !dbg !2569
  %373 = icmp ne i8 %372, 0, !dbg !2569
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2134, metadata !627), !dbg !2265
  %374 = icmp ult i64 %370, 2, !dbg !2570
  %375 = or i1 %373, %113, !dbg !2571
  %376 = and i1 %374, %375, !dbg !2573
  br i1 %376, label %476, label %377, !dbg !2573

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2164, metadata !627), !dbg !2575
  br label %379, !dbg !2576

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2132, metadata !627), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2116, metadata !627), !dbg !2251
  br i1 %375, label %432, label %386, !dbg !2577

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2582

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2133, metadata !627), !dbg !2264
  %388 = and i8 %382, 1, !dbg !2586
  %389 = icmp eq i8 %388, 0, !dbg !2586
  %390 = and i1 %114, %389, !dbg !2589
  br i1 %390, label %391, label %407, !dbg !2589

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2591
  br i1 %392, label %393, label %395, !dbg !2596

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2598
  store i8 39, i8* %394, align 1, !dbg !2598, !tbaa !889
  br label %395, !dbg !2598

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2117, metadata !627), !dbg !2176
  %397 = icmp ult i64 %396, %131, !dbg !2602
  br i1 %397, label %398, label %400, !dbg !2606

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2608
  store i8 36, i8* %399, align 1, !dbg !2608, !tbaa !889
  br label %400, !dbg !2608

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2117, metadata !627), !dbg !2176
  %402 = icmp ult i64 %401, %131, !dbg !2612
  br i1 %402, label %403, label %405, !dbg !2616

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2618
  store i8 39, i8* %404, align 1, !dbg !2618, !tbaa !889
  br label %405, !dbg !2618

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %407, !dbg !2622

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2117, metadata !627), !dbg !2176
  %410 = icmp ult i64 %408, %131, !dbg !2624
  br i1 %410, label %411, label %413, !dbg !2628

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2630
  store i8 92, i8* %412, align 1, !dbg !2630, !tbaa !889
  br label %413, !dbg !2630

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2117, metadata !627), !dbg !2176
  %415 = icmp ult i64 %414, %131, !dbg !2634
  br i1 %415, label %416, label %420, !dbg !2638

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2640
  %418 = or i8 %417, 48, !dbg !2640
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2640
  store i8 %418, i8* %419, align 1, !dbg !2640, !tbaa !889
  br label %420, !dbg !2640

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2117, metadata !627), !dbg !2176
  %422 = icmp ult i64 %421, %131, !dbg !2644
  br i1 %422, label %423, label %428, !dbg !2648

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2650
  %425 = and i8 %424, 7, !dbg !2650
  %426 = or i8 %425, 48, !dbg !2650
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2650
  store i8 %426, i8* %427, align 1, !dbg !2650, !tbaa !889
  br label %428, !dbg !2650

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2117, metadata !627), !dbg !2176
  %430 = and i8 %383, 7, !dbg !2654
  %431 = or i8 %430, 48, !dbg !2655
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2127, metadata !627), !dbg !2282
  br label %441, !dbg !2656

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2657
  %434 = icmp eq i8 %433, 0, !dbg !2657
  br i1 %434, label %441, label %435, !dbg !2659

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2660
  br i1 %436, label %437, label %439, !dbg !2665

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2667
  store i8 92, i8* %438, align 1, !dbg !2667, !tbaa !889
  br label %439, !dbg !2667

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2132, metadata !627), !dbg !2263
  br label %441, !dbg !2671

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2132, metadata !627), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2117, metadata !627), !dbg !2176
  %447 = add i64 %380, 1, !dbg !2672
  %448 = icmp ugt i64 %378, %447, !dbg !2674
  br i1 %448, label %449, label %541, !dbg !2675

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2676
  %451 = icmp ne i8 %450, 0, !dbg !2676
  %452 = and i8 %446, 1, !dbg !2680
  %453 = icmp eq i8 %452, 0, !dbg !2680
  %454 = and i1 %451, %453, !dbg !2676
  br i1 %454, label %455, label %466, !dbg !2676

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2682
  br i1 %456, label %457, label %459, !dbg !2687

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2689
  store i8 39, i8* %458, align 1, !dbg !2689, !tbaa !889
  br label %459, !dbg !2689

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2117, metadata !627), !dbg !2176
  %461 = icmp ult i64 %460, %131, !dbg !2693
  br i1 %461, label %462, label %464, !dbg !2697

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2699
  store i8 39, i8* %463, align 1, !dbg !2699, !tbaa !889
  br label %464, !dbg !2699

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %466, !dbg !2703

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2117, metadata !627), !dbg !2176
  %469 = icmp ult i64 %467, %131, !dbg !2705
  br i1 %469, label %470, label %472, !dbg !2709

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2711
  store i8 %444, i8* %471, align 1, !dbg !2711, !tbaa !889
  br label %472, !dbg !2711

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2116, metadata !627), !dbg !2251
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2715
  %475 = load i8, i8* %474, align 1, !dbg !2715, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2127, metadata !627), !dbg !2282
  br label %379, !dbg !2716, !llvm.loop !2718

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2134, metadata !627), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2132, metadata !627), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2116, metadata !627), !dbg !2251
  br i1 %107, label %488, label %487, !dbg !2721

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2723

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2724

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2725
  %491 = zext i8 %490 to i64, !dbg !2725
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2727
  %493 = load i32, i32* %492, align 4, !dbg !2727, !tbaa !865
  %494 = and i8 %483, 31, !dbg !2728
  %495 = zext i8 %494 to i32, !dbg !2729
  %496 = shl i32 1, %495, !dbg !2730
  %497 = and i32 %493, %496, !dbg !2730
  %498 = icmp eq i32 %497, 0, !dbg !2730
  %499 = icmp eq i8 %157, 0, !dbg !2731
  %500 = and i1 %499, %498, !dbg !2732
  br i1 %500, label %542, label %503, !dbg !2732

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2731
  br i1 %502, label %542, label %503, !dbg !2733

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2134, metadata !627), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2116, metadata !627), !dbg !2251
  br i1 %112, label %513, label %644, !dbg !2735

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2133, metadata !627), !dbg !2264
  %514 = and i8 %508, 1, !dbg !2738
  %515 = icmp eq i8 %514, 0, !dbg !2738
  %516 = and i1 %114, %515, !dbg !2741
  br i1 %516, label %517, label %533, !dbg !2741

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2743
  br i1 %518, label %519, label %521, !dbg !2748

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2750
  store i8 39, i8* %520, align 1, !dbg !2750, !tbaa !889
  br label %521, !dbg !2750

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2117, metadata !627), !dbg !2176
  %523 = icmp ult i64 %522, %512, !dbg !2754
  br i1 %523, label %524, label %526, !dbg !2758

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2760
  store i8 36, i8* %525, align 1, !dbg !2760, !tbaa !889
  br label %526, !dbg !2760

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2117, metadata !627), !dbg !2176
  %528 = icmp ult i64 %527, %512, !dbg !2764
  br i1 %528, label %529, label %531, !dbg !2768

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2770
  store i8 39, i8* %530, align 1, !dbg !2770, !tbaa !889
  br label %531, !dbg !2770

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %533, !dbg !2774

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2117, metadata !627), !dbg !2176
  %536 = icmp ult i64 %534, %512, !dbg !2776
  br i1 %536, label %537, label %539, !dbg !2780

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2782
  store i8 92, i8* %538, align 1, !dbg !2782, !tbaa !889
  br label %539, !dbg !2782

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2134, metadata !627), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2116, metadata !627), !dbg !2251
  br label %569, !dbg !2786

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2168

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2134, metadata !627), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2133, metadata !627), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2127, metadata !627), !dbg !2282
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2125, metadata !627), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2110, metadata !627), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2118, metadata !627), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2116, metadata !627), !dbg !2251
  %553 = and i8 %547, 1, !dbg !2786
  %554 = icmp ne i8 %553, 0, !dbg !2786
  %555 = and i8 %550, 1, !dbg !2790
  %556 = icmp eq i8 %555, 0, !dbg !2790
  %557 = and i1 %554, %556, !dbg !2786
  br i1 %557, label %558, label %569, !dbg !2786

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2792
  br i1 %559, label %560, label %562, !dbg !2797

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2799
  store i8 39, i8* %561, align 1, !dbg !2799, !tbaa !889
  br label %562, !dbg !2799

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2117, metadata !627), !dbg !2176
  %564 = icmp ult i64 %563, %552, !dbg !2803
  br i1 %564, label %565, label %567, !dbg !2807

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2809
  store i8 39, i8* %566, align 1, !dbg !2809, !tbaa !889
  br label %567, !dbg !2809

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2117, metadata !627), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2124, metadata !627), !dbg !2184
  br label %569, !dbg !2813

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2124, metadata !627), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2117, metadata !627), !dbg !2176
  %579 = icmp ult i64 %577, %570, !dbg !2815
  br i1 %579, label %580, label %582, !dbg !2819

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2821
  store i8 %572, i8* %581, align 1, !dbg !2821, !tbaa !889
  br label %582, !dbg !2821

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2117, metadata !627), !dbg !2176
  %584 = and i8 %571, 1, !dbg !2825
  %585 = icmp eq i8 %584, 0, !dbg !2825
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2126, metadata !627), !dbg !2186
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2827
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2126, metadata !627), !dbg !2186
  br label %587, !dbg !2828

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2116, metadata !627), !dbg !2251
  br label %123, !dbg !2831, !llvm.loop !2832

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2835
  %600 = and i1 %114, %599, !dbg !2837
  %601 = xor i1 %600, true, !dbg !2837
  %602 = or i1 %112, %601, !dbg !2837
  br i1 %602, label %603, label %648, !dbg !2837

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2838
  %605 = xor i1 %604, true, !dbg !2838
  %606 = and i8 %129, 1, !dbg !2840
  %607 = icmp eq i8 %606, 0, !dbg !2840
  %608 = or i1 %607, %605, !dbg !2838
  br i1 %608, label %618, label %609, !dbg !2838

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2842
  %611 = icmp eq i8 %610, 0, !dbg !2842
  br i1 %611, label %614, label %612, !dbg !2845

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2846
  br label %659, !dbg !2847

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2848
  %616 = icmp ne i64 %126, 0, !dbg !2850
  %617 = and i1 %616, %615, !dbg !2852
  br i1 %617, label %27, label %618, !dbg !2852

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2853
  %620 = and i1 %619, %112, !dbg !2855
  br i1 %620, label %621, label %638, !dbg !2855

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2117, metadata !627), !dbg !2176
  %622 = load i8, i8* %100, align 1, !dbg !2856, !tbaa !889
  %623 = icmp eq i8 %622, 0, !dbg !2860
  br i1 %623, label %638, label %624, !dbg !2860

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2862

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2862
  br i1 %629, label %630, label %632, !dbg !2866

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2868
  store i8 %626, i8* %631, align 1, !dbg !2868, !tbaa !889
  br label %632, !dbg !2868

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2117, metadata !627), !dbg !2176
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2119, metadata !627), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2117, metadata !627), !dbg !2176
  %635 = load i8, i8* %634, align 1, !dbg !2856, !tbaa !889
  %636 = icmp eq i8 %635, 0, !dbg !2860
  br i1 %636, label %637, label %625, !dbg !2860, !llvm.loop !2874

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2176

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2117, metadata !627), !dbg !2176
  %640 = icmp ult i64 %639, %131, !dbg !2877
  br i1 %640, label %641, label %659, !dbg !2879

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2880
  store i8 0, i8* %642, align 1, !dbg !2881, !tbaa !889
  br label %659, !dbg !2880

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2168

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2168

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2168

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2108, metadata !627), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2110, metadata !627), !dbg !2170
  %653 = icmp ne i32 %650, 2, !dbg !2882
  %654 = icmp eq i8 %104, 0, !dbg !2884
  %655 = or i1 %653, %654, !dbg !2886
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2111, metadata !627), !dbg !2171
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2111, metadata !627), !dbg !2171
  %657 = and i32 %5, -3, !dbg !2887
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2888
  br label %659, !dbg !2889

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2890
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2891 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2895, metadata !627), !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2896, metadata !627), !dbg !2900
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2897, metadata !627), !dbg !2902
  %4 = icmp eq i8* %3, %0, !dbg !2903
  br i1 %4, label %5, label %75, !dbg !2905

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2898, metadata !627), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2908, metadata !627), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2922, metadata !627), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2923, metadata !627), !dbg !2928
  %7 = load i8, i8* %6, align 1, !tbaa !889
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2929
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2929

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2932, metadata !627), !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2944, metadata !627), !dbg !2950
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2945, metadata !627), !dbg !2951
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !889
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2952
  %15 = icmp eq i32 %14, 84, !dbg !2952
  br i1 %15, label %16, label %72, !dbg !2952

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2955, metadata !627), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2966, metadata !627), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2967, metadata !627), !dbg !2973
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !889
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2974
  %21 = icmp eq i32 %20, 70, !dbg !2974
  br i1 %21, label %22, label %72, !dbg !2974

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2977, metadata !627), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2987, metadata !627), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2988, metadata !627), !dbg !2994
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !889
  %25 = icmp eq i8 %24, 45, !dbg !2995
  br i1 %25, label %26, label %72, !dbg !2998

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3000, metadata !627), !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3009, metadata !627), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3010, metadata !627), !dbg !3016
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !889
  %29 = icmp eq i8 %28, 56, !dbg !3017
  br i1 %29, label %30, label %72, !dbg !3020

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3022, metadata !627), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3030, metadata !627), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3031, metadata !627), !dbg !3037
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !889
  %33 = icmp eq i8 %32, 0, !dbg !3038
  br i1 %33, label %34, label %72, !dbg !3041

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3043, !tbaa !889
  %36 = icmp eq i8 %35, 96, !dbg !3044
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !3043
  br label %75, !dbg !3045

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2932, metadata !627), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2944, metadata !627), !dbg !3050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2945, metadata !627), !dbg !3051
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !889
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3052
  %43 = icmp eq i32 %42, 66, !dbg !3052
  br i1 %43, label %44, label %72, !dbg !3052

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2955, metadata !627), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2966, metadata !627), !dbg !3055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2967, metadata !627), !dbg !3056
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !889
  %47 = icmp eq i8 %46, 49, !dbg !3057
  br i1 %47, label %48, label %72, !dbg !3059

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2977, metadata !627), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2987, metadata !627), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2988, metadata !627), !dbg !3064
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !889
  %51 = icmp eq i8 %50, 56, !dbg !3065
  br i1 %51, label %52, label %72, !dbg !3066

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3000, metadata !627), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3009, metadata !627), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3010, metadata !627), !dbg !3070
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !889
  %55 = icmp eq i8 %54, 48, !dbg !3071
  br i1 %55, label %56, label %72, !dbg !3072

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3022, metadata !627), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3030, metadata !627), !dbg !3075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3031, metadata !627), !dbg !3076
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !889
  %59 = icmp eq i8 %58, 51, !dbg !3077
  br i1 %59, label %60, label %72, !dbg !3078

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3079, metadata !627), !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3086, metadata !627), !dbg !3092
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3087, metadata !627), !dbg !3093
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !889
  %63 = icmp eq i8 %62, 48, !dbg !3094
  br i1 %63, label %64, label %72, !dbg !3097

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3099, metadata !627), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3105, metadata !627), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3106, metadata !627), !dbg !3112
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !889
  %67 = icmp eq i8 %66, 0, !dbg !3113
  br i1 %67, label %68, label %72, !dbg !3116

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3117, !tbaa !889
  %70 = icmp eq i8 %69, 96, !dbg !3118
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !3117
  br label %75, !dbg !3119

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3120
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !3121
  br label %75, !dbg !3122

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3123
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3124 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3128, metadata !627), !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3129, metadata !627), !dbg !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3130, metadata !627), !dbg !3133
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3134, metadata !627) #11, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3139, metadata !627) #11, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3140, metadata !627) #11, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3141, metadata !627) #11, !dbg !3151
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3152
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3142, metadata !627) #11, !dbg !3153
  %6 = tail call i32* @__errno_location() #1, !dbg !3154
  %7 = load i32, i32* %6, align 4, !dbg !3154, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3143, metadata !627) #11, !dbg !3155
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3156
  %9 = load i32, i32* %8, align 4, !dbg !3156, !tbaa !2039
  %10 = or i32 %9, 1, !dbg !3157
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3144, metadata !627) #11, !dbg !3158
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3159
  %12 = load i32, i32* %11, align 8, !dbg !3159, !tbaa !1977
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3160
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3161
  %15 = load i8*, i8** %14, align 8, !dbg !3161, !tbaa !2066
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3162
  %17 = load i8*, i8** %16, align 8, !dbg !3162, !tbaa !2069
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3163
  %19 = add i64 %18, 1, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3145, metadata !627) #11, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3166, metadata !627) #11, !dbg !3171
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3146, metadata !627) #11, !dbg !3174
  %21 = load i32, i32* %11, align 8, !dbg !3175, !tbaa !1977
  %22 = load i8*, i8** %14, align 8, !dbg !3176, !tbaa !2066
  %23 = load i8*, i8** %16, align 8, !dbg !3177, !tbaa !2069
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3178
  store i32 %7, i32* %6, align 4, !dbg !3179, !tbaa !865
  ret i8* %20, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3135 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3134, metadata !627), !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3139, metadata !627), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3140, metadata !627), !dbg !3183
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3141, metadata !627), !dbg !3184
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3185
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3185
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3142, metadata !627), !dbg !3186
  %7 = tail call i32* @__errno_location() #1, !dbg !3187
  %8 = load i32, i32* %7, align 4, !dbg !3187, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3143, metadata !627), !dbg !3188
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3189
  %10 = load i32, i32* %9, align 4, !dbg !3189, !tbaa !2039
  %11 = icmp ne i64* %2, null, !dbg !3190
  %12 = xor i1 %11, true, !dbg !3190
  %13 = zext i1 %12 to i32, !dbg !3190
  %14 = or i32 %10, %13, !dbg !3191
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3144, metadata !627), !dbg !3192
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3193
  %16 = load i32, i32* %15, align 8, !dbg !3193, !tbaa !1977
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3194
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3195
  %19 = load i8*, i8** %18, align 8, !dbg !3195, !tbaa !2066
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3196
  %21 = load i8*, i8** %20, align 8, !dbg !3196, !tbaa !2069
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3197
  %23 = add i64 %22, 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3145, metadata !627), !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3166, metadata !627) #11, !dbg !3200
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3146, metadata !627), !dbg !3203
  %25 = load i32, i32* %15, align 8, !dbg !3204, !tbaa !1977
  %26 = load i8*, i8** %18, align 8, !dbg !3205, !tbaa !2066
  %27 = load i8*, i8** %20, align 8, !dbg !3206, !tbaa !2069
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3207
  store i32 %8, i32* %7, align 4, !dbg !3208, !tbaa !865
  br i1 %11, label %29, label %30, !dbg !3209

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3210, !tbaa !943
  br label %30, !dbg !3212

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3214 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3218, !tbaa !635
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3216, metadata !627), !dbg !3219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3217, metadata !627), !dbg !3220
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3217, metadata !627), !dbg !3220
  %2 = load i32, i32* @nslots, align 4, !dbg !3221, !tbaa !865
  %3 = icmp sgt i32 %2, 1, !dbg !3225
  br i1 %3, label %4, label %14, !dbg !3226

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3228

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3228
  %8 = load i8*, i8** %7, align 8, !dbg !3228, !tbaa !3229
  tail call void @free(i8* %8) #11, !dbg !3231
  %9 = add nuw i64 %6, 1, !dbg !3232
  %10 = load i32, i32* @nslots, align 4, !dbg !3221, !tbaa !865
  %11 = sext i32 %10 to i64, !dbg !3225
  %12 = icmp slt i64 %9, %11, !dbg !3225
  br i1 %12, label %5, label %13, !dbg !3226, !llvm.loop !3234

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3237

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3237
  %16 = load i8*, i8** %15, align 8, !dbg !3237, !tbaa !3229
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3239
  br i1 %17, label %19, label %18, !dbg !3240

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3241
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3243, !tbaa !3244
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3245, !tbaa !3229
  br label %19, !dbg !3246

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3247
  br i1 %20, label %23, label %21, !dbg !3249

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3250
  tail call void @free(i8* %22) #11, !dbg !3252
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3253, !tbaa !635
  br label %23, !dbg !3254

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3255, !tbaa !865
  ret void, !dbg !3256
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3257 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3261, metadata !627), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3262, metadata !627), !dbg !3264
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3265
  ret i8* %3, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3271, metadata !627), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3272, metadata !627), !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3273, metadata !627), !dbg !3287
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3274, metadata !627), !dbg !3288
  %5 = tail call i32* @__errno_location() #1, !dbg !3289
  %6 = load i32, i32* %5, align 4, !dbg !3289, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3275, metadata !627), !dbg !3290
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3291, !tbaa !635
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3276, metadata !627), !dbg !3292
  %8 = icmp slt i32 %0, 0, !dbg !3293
  br i1 %8, label %9, label %10, !dbg !3295

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3296
  unreachable, !dbg !3296

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3297, !tbaa !865
  %12 = icmp sgt i32 %11, %0, !dbg !3298
  br i1 %12, label %34, label %13, !dbg !3299

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3300
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3301
  br i1 %15, label %16, label %17, !dbg !3303

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3304
  unreachable, !dbg !3304

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3305
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3305
  %20 = add nsw i32 %0, 1, !dbg !3307
  %21 = sext i32 %20 to i64, !dbg !3308
  %22 = shl nsw i64 %21, 4, !dbg !3309
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3310
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3310
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3276, metadata !627), !dbg !3292
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3311, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !3312

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3313, !tbaa.struct !3315
  br label %26, !dbg !3316

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3317, !tbaa !865
  %28 = sext i32 %27 to i64, !dbg !3318
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3318
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3319
  %31 = sub nsw i32 %20, %27, !dbg !3320
  %32 = sext i32 %31 to i64, !dbg !3321
  %33 = shl nsw i64 %32, 4, !dbg !3322
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3319
  store i32 %20, i32* @nslots, align 4, !dbg !3323, !tbaa !865
  br label %34, !dbg !3324

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3276, metadata !627), !dbg !3292
  %36 = sext i32 %0 to i64, !dbg !3325
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3326
  %38 = load i64, i64* %37, align 8, !dbg !3326, !tbaa !3244
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3280, metadata !627), !dbg !3327
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3328
  %40 = load i8*, i8** %39, align 8, !dbg !3328, !tbaa !3229
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3282, metadata !627), !dbg !3329
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3330
  %42 = load i32, i32* %41, align 4, !dbg !3330, !tbaa !2039
  %43 = or i32 %42, 1, !dbg !3331
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3283, metadata !627), !dbg !3332
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3333
  %45 = load i32, i32* %44, align 8, !dbg !3333, !tbaa !1977
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3334
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3335
  %48 = load i8*, i8** %47, align 8, !dbg !3335, !tbaa !2066
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3336
  %50 = load i8*, i8** %49, align 8, !dbg !3336, !tbaa !2069
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3284, metadata !627), !dbg !3338
  %52 = icmp ugt i64 %38, %51, !dbg !3339
  br i1 %52, label %63, label %53, !dbg !3341

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3280, metadata !627), !dbg !3327
  store i64 %54, i64* %37, align 8, !dbg !3344, !tbaa !3244
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3345
  br i1 %55, label %57, label %56, !dbg !3347

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3348
  br label %57, !dbg !3348

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3166, metadata !627) #11, !dbg !3349
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3282, metadata !627), !dbg !3329
  store i8* %58, i8** %39, align 8, !dbg !3352, !tbaa !3229
  %59 = load i32, i32* %44, align 8, !dbg !3353, !tbaa !1977
  %60 = load i8*, i8** %47, align 8, !dbg !3354, !tbaa !2066
  %61 = load i8*, i8** %49, align 8, !dbg !3355, !tbaa !2069
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3356
  br label %63, !dbg !3357

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3282, metadata !627), !dbg !3329
  store i32 %6, i32* %5, align 4, !dbg !3358, !tbaa !865
  ret i8* %64, !dbg !3359
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3364, metadata !627), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3365, metadata !627), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3366, metadata !627), !dbg !3369
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3370
  ret i8* %4, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3372 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3376, metadata !627), !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3261, metadata !627) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3262, metadata !627) #11, !dbg !3380
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3381
  ret i8* %2, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3387, metadata !627), !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3388, metadata !627), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3364, metadata !627) #11, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3365, metadata !627) #11, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3366, metadata !627) #11, !dbg !3394
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3395
  ret i8* %3, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3397 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3405, metadata !3411), !dbg !3412
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3401, metadata !627), !dbg !3414
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3402, metadata !627), !dbg !3415
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3403, metadata !627), !dbg !3416
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3417
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3404, metadata !927), !dbg !3418
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3410, metadata !627) #11, !dbg !3419
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3420
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3420
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3405, metadata !627) #11, !dbg !3412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3412
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3412
  %8 = icmp eq i32 %1, 10, !dbg !3422
  br i1 %8, label %9, label %10, !dbg !3424

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3425, !noalias !3426
  unreachable, !dbg !3425

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3405, metadata !3421) #11, !dbg !3412
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3429
  store i32 %1, i32* %11, align 8, !dbg !3429, !alias.scope !3426
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3429
  %13 = bitcast i32* %12 to i8*, !dbg !3429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3429
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3404, metadata !927), !dbg !3418
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3431
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3432
  ret i8* %14, !dbg !3433
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3434 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3405, metadata !3411), !dbg !3443
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3438, metadata !627), !dbg !3445
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3439, metadata !627), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3440, metadata !627), !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3441, metadata !627), !dbg !3448
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3442, metadata !927), !dbg !3450
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3410, metadata !627) #11, !dbg !3451
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3452
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3452
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3405, metadata !627) #11, !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3443
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3443
  %9 = icmp eq i32 %1, 10, !dbg !3453
  br i1 %9, label %10, label %11, !dbg !3454

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3455, !noalias !3456
  unreachable, !dbg !3455

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3405, metadata !3421) #11, !dbg !3443
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3459
  store i32 %1, i32* %12, align 8, !dbg !3459, !alias.scope !3456
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3459
  %14 = bitcast i32* %13 to i8*, !dbg !3459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3459
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3460
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3442, metadata !927), !dbg !3450
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3461
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3462
  ret i8* %15, !dbg !3463
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3464 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3405, metadata !3411), !dbg !3470
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3468, metadata !627), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3469, metadata !627), !dbg !3474
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3401, metadata !627) #11, !dbg !3475
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3402, metadata !627) #11, !dbg !3476
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3403, metadata !627) #11, !dbg !3477
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3478
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3404, metadata !927) #11, !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3410, metadata !627) #11, !dbg !3480
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3481
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3481
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3405, metadata !627) #11, !dbg !3470
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3470
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3470
  %7 = icmp eq i32 %0, 10, !dbg !3482
  br i1 %7, label %8, label %9, !dbg !3483

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3484, !noalias !3485
  unreachable, !dbg !3484

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3470
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3488
  store i32 %0, i32* %10, align 8, !dbg !3488, !alias.scope !3485
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3488
  %12 = bitcast i32* %11 to i8*, !dbg !3488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3488
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3489
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3404, metadata !927) #11, !dbg !3479
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3490
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3491
  ret i8* %13, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3493 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3405, metadata !3411), !dbg !3500
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3497, metadata !627), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3498, metadata !627), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3499, metadata !627), !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3438, metadata !627) #11, !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3439, metadata !627) #11, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3440, metadata !627) #11, !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3441, metadata !627) #11, !dbg !3509
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3510
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3510
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3442, metadata !927) #11, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3410, metadata !627) #11, !dbg !3512
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3513
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3513
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3405, metadata !627) #11, !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3500
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3500
  %8 = icmp eq i32 %0, 10, !dbg !3514
  br i1 %8, label %9, label %10, !dbg !3515

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3516, !noalias !3517
  unreachable, !dbg !3516

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3500
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3520
  store i32 %0, i32* %11, align 8, !dbg !3520, !alias.scope !3517
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3520
  %13 = bitcast i32* %12 to i8*, !dbg !3520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3520
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3521
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3442, metadata !927) #11, !dbg !3511
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3522
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3523
  ret i8* %14, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3525 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !627), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3530, metadata !627), !dbg !3534
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3531, metadata !627), !dbg !3535
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3536
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3537, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3532, metadata !927), !dbg !3539
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1997, metadata !627), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1998, metadata !627), !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1999, metadata !627), !dbg !3543
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2000, metadata !627), !dbg !3544
  %6 = lshr i8 %2, 5, !dbg !3545
  %7 = zext i8 %6 to i64, !dbg !3545
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3546
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2001, metadata !627), !dbg !3547
  %9 = and i8 %2, 31, !dbg !3548
  %10 = zext i8 %9 to i32, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2003, metadata !627), !dbg !3550
  %11 = load i32, i32* %8, align 4, !dbg !3551, !tbaa !865
  %12 = lshr i32 %11, %10, !dbg !3552
  %13 = and i32 %12, 1, !dbg !3553
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2004, metadata !627), !dbg !3554
  %14 = xor i32 %13, 1, !dbg !3555
  %15 = shl i32 %14, %10, !dbg !3556
  %16 = xor i32 %15, %11, !dbg !3557
  store i32 %16, i32* %8, align 4, !dbg !3557, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3532, metadata !927), !dbg !3539
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3558
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3559
  ret i8* %17, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3561 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3565, metadata !627), !dbg !3567
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3566, metadata !627), !dbg !3568
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !627) #11, !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3530, metadata !627) #11, !dbg !3571
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3531, metadata !627) #11, !dbg !3572
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3574, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3532, metadata !927) #11, !dbg !3575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1997, metadata !627) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1998, metadata !627) #11, !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1999, metadata !627) #11, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2000, metadata !627) #11, !dbg !3580
  %5 = lshr i8 %1, 5, !dbg !3581
  %6 = zext i8 %5 to i64, !dbg !3581
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3582
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2001, metadata !627) #11, !dbg !3583
  %8 = and i8 %1, 31, !dbg !3584
  %9 = zext i8 %8 to i32, !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2003, metadata !627) #11, !dbg !3586
  %10 = load i32, i32* %7, align 4, !dbg !3587, !tbaa !865
  %11 = lshr i32 %10, %9, !dbg !3588
  %12 = and i32 %11, 1, !dbg !3589
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2004, metadata !627) #11, !dbg !3590
  %13 = xor i32 %12, 1, !dbg !3591
  %14 = shl i32 %13, %9, !dbg !3592
  %15 = xor i32 %14, %10, !dbg !3593
  store i32 %15, i32* %7, align 4, !dbg !3593, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3532, metadata !927) #11, !dbg !3575
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3594
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3595
  ret i8* %16, !dbg !3596
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3597 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3599, metadata !627), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3565, metadata !627) #11, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3566, metadata !627) #11, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !627) #11, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3530, metadata !627) #11, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3531, metadata !627) #11, !dbg !3607
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3608
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3609, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3532, metadata !927) #11, !dbg !3610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1997, metadata !627) #11, !dbg !3611
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1998, metadata !627) #11, !dbg !3613
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1999, metadata !627) #11, !dbg !3614
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2000, metadata !627) #11, !dbg !3615
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3616
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2001, metadata !627) #11, !dbg !3617
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2003, metadata !627) #11, !dbg !3618
  %5 = load i32, i32* %4, align 4, !dbg !3619, !tbaa !865
  %6 = or i32 %5, 67108864, !dbg !3620
  store i32 %6, i32* %4, align 4, !dbg !3620, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3532, metadata !927) #11, !dbg !3610
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3621
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3622
  ret i8* %7, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3624 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3626, metadata !627), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3627, metadata !627), !dbg !3629
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3529, metadata !627) #11, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3530, metadata !627) #11, !dbg !3632
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3531, metadata !627) #11, !dbg !3633
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3634
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3635, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3532, metadata !927) #11, !dbg !3636
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1997, metadata !627) #11, !dbg !3637
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1998, metadata !627) #11, !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1999, metadata !627) #11, !dbg !3640
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2000, metadata !627) #11, !dbg !3641
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3642
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2001, metadata !627) #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2003, metadata !627) #11, !dbg !3644
  %6 = load i32, i32* %5, align 4, !dbg !3645, !tbaa !865
  %7 = or i32 %6, 67108864, !dbg !3646
  store i32 %7, i32* %5, align 4, !dbg !3646, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3532, metadata !927) #11, !dbg !3636
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3647
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3648
  ret i8* %8, !dbg !3649
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3650 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3405, metadata !3411), !dbg !3656
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3652, metadata !627), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3653, metadata !627), !dbg !3659
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3654, metadata !627), !dbg !3660
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3661
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3410, metadata !627) #11, !dbg !3662
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3663
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3663
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3405, metadata !627) #11, !dbg !3656
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !3421) #11, !dbg !3656
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3656
  %9 = icmp eq i32 %1, 10, !dbg !3664
  br i1 %9, label %10, label %11, !dbg !3665

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3666, !noalias !3667
  unreachable, !dbg !3666

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3405, metadata !3421) #11, !dbg !3656
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3670
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3671
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3672
  store i32 %1, i32* %13, align 8, !dbg !3672
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3672
  %15 = bitcast i32* %14 to i8*, !dbg !3672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3655, metadata !927), !dbg !3673
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1997, metadata !627), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1998, metadata !627), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1999, metadata !627), !dbg !3677
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2000, metadata !627), !dbg !3678
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3679
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2001, metadata !627), !dbg !3680
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2003, metadata !627), !dbg !3681
  %17 = load i32, i32* %16, align 4, !dbg !3682, !tbaa !865
  %18 = or i32 %17, 67108864, !dbg !3683
  store i32 %18, i32* %16, align 4, !dbg !3683, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3655, metadata !927), !dbg !3673
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3684
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3685
  ret i8* %19, !dbg !3686
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3687 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3691, metadata !627), !dbg !3695
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3692, metadata !627), !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3693, metadata !627), !dbg !3697
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3694, metadata !627), !dbg !3698
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3699, metadata !627) #11, !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3704, metadata !627) #11, !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3705, metadata !627) #11, !dbg !3712
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3706, metadata !627) #11, !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3707, metadata !627) #11, !dbg !3714
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3715
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3716, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3708, metadata !927) #11, !dbg !3717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2047, metadata !627) #11, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2048, metadata !627) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2049, metadata !627) #11, !dbg !3721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2047, metadata !627) #11, !dbg !3718
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2047, metadata !627) #11, !dbg !3718
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3722
  store i32 10, i32* %7, align 8, !dbg !3723, !tbaa !1977
  %8 = icmp ne i8* %1, null, !dbg !3724
  %9 = icmp ne i8* %2, null, !dbg !3725
  %10 = and i1 %8, %9, !dbg !3726
  br i1 %10, label %12, label %11, !dbg !3726

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3727
  unreachable, !dbg !3727

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3728
  store i8* %1, i8** %13, align 8, !dbg !3729, !tbaa !2066
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3730
  store i8* %2, i8** %14, align 8, !dbg !3731, !tbaa !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3708, metadata !927) #11, !dbg !3717
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3732
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3733
  ret i8* %15, !dbg !3734
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3700 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3699, metadata !627), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3704, metadata !627), !dbg !3736
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3705, metadata !627), !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3706, metadata !627), !dbg !3738
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3707, metadata !627), !dbg !3739
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3740
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3741, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3708, metadata !927), !dbg !3742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2047, metadata !627) #11, !dbg !3743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2048, metadata !627) #11, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2049, metadata !627) #11, !dbg !3746
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2047, metadata !627) #11, !dbg !3743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2047, metadata !627) #11, !dbg !3743
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3747
  store i32 10, i32* %8, align 8, !dbg !3748, !tbaa !1977
  %9 = icmp ne i8* %1, null, !dbg !3749
  %10 = icmp ne i8* %2, null, !dbg !3750
  %11 = and i1 %9, %10, !dbg !3751
  br i1 %11, label %13, label %12, !dbg !3751

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3752
  unreachable, !dbg !3752

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3753
  store i8* %1, i8** %14, align 8, !dbg !3754, !tbaa !2066
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3755
  store i8* %2, i8** %15, align 8, !dbg !3756, !tbaa !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3708, metadata !927), !dbg !3742
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3757
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3758
  ret i8* %16, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3760 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3764, metadata !627), !dbg !3767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3765, metadata !627), !dbg !3768
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3766, metadata !627), !dbg !3769
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3691, metadata !627) #11, !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3692, metadata !627) #11, !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3693, metadata !627) #11, !dbg !3773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3694, metadata !627) #11, !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !627) #11, !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3704, metadata !627) #11, !dbg !3777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3705, metadata !627) #11, !dbg !3778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3706, metadata !627) #11, !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3707, metadata !627) #11, !dbg !3780
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3781
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3782, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3708, metadata !927) #11, !dbg !3783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2047, metadata !627) #11, !dbg !3784
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2048, metadata !627) #11, !dbg !3786
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2049, metadata !627) #11, !dbg !3787
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2047, metadata !627) #11, !dbg !3784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2047, metadata !627) #11, !dbg !3784
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3788
  store i32 10, i32* %6, align 8, !dbg !3789, !tbaa !1977
  %7 = icmp ne i8* %0, null, !dbg !3790
  %8 = icmp ne i8* %1, null, !dbg !3791
  %9 = and i1 %7, %8, !dbg !3792
  br i1 %9, label %11, label %10, !dbg !3792

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3793
  unreachable, !dbg !3793

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3794
  store i8* %0, i8** %12, align 8, !dbg !3795, !tbaa !2066
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3796
  store i8* %1, i8** %13, align 8, !dbg !3797, !tbaa !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3708, metadata !927) #11, !dbg !3783
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3798
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3799
  ret i8* %14, !dbg !3800
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3801 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3805, metadata !627), !dbg !3809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3806, metadata !627), !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3807, metadata !627), !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3808, metadata !627), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3699, metadata !627) #11, !dbg !3813
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3704, metadata !627) #11, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3705, metadata !627) #11, !dbg !3816
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3706, metadata !627) #11, !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3707, metadata !627) #11, !dbg !3818
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3819
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3820, !tbaa.struct !3538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3708, metadata !927) #11, !dbg !3821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2047, metadata !627) #11, !dbg !3822
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2048, metadata !627) #11, !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2049, metadata !627) #11, !dbg !3825
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2047, metadata !627) #11, !dbg !3822
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2047, metadata !627) #11, !dbg !3822
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3826
  store i32 10, i32* %7, align 8, !dbg !3827, !tbaa !1977
  %8 = icmp ne i8* %0, null, !dbg !3828
  %9 = icmp ne i8* %1, null, !dbg !3829
  %10 = and i1 %8, %9, !dbg !3830
  br i1 %10, label %12, label %11, !dbg !3830

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3831
  unreachable, !dbg !3831

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3832
  store i8* %0, i8** %13, align 8, !dbg !3833, !tbaa !2066
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3834
  store i8* %1, i8** %14, align 8, !dbg !3835, !tbaa !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3708, metadata !927) #11, !dbg !3821
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3836
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3837
  ret i8* %15, !dbg !3838
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3839 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3843, metadata !627), !dbg !3846
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3844, metadata !627), !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3845, metadata !627), !dbg !3848
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3849
  ret i8* %4, !dbg !3850
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3851 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3855, metadata !627), !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3856, metadata !627), !dbg !3858
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3843, metadata !627) #11, !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3844, metadata !627) #11, !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3845, metadata !627) #11, !dbg !3862
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3863
  ret i8* %3, !dbg !3864
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3869, metadata !627), !dbg !3871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3870, metadata !627), !dbg !3872
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3843, metadata !627) #11, !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3844, metadata !627) #11, !dbg !3875
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3845, metadata !627) #11, !dbg !3876
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3877
  ret i8* %3, !dbg !3878
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3879 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3883, metadata !627), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3869, metadata !627) #11, !dbg !3885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3870, metadata !627) #11, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3843, metadata !627) #11, !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3844, metadata !627) #11, !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3845, metadata !627) #11, !dbg !3891
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3892
  ret i8* %2, !dbg !3893
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3894 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3939, metadata !627), !dbg !3945
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3940, metadata !627), !dbg !3946
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3941, metadata !627), !dbg !3947
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3942, metadata !627), !dbg !3948
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3943, metadata !627), !dbg !3949
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3944, metadata !627), !dbg !3950
  %7 = icmp eq i8* %1, null, !dbg !3951
  br i1 %7, label %10, label %8, !dbg !3953

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3954
  br label %12, !dbg !3954

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3955
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #11, !dbg !3956
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3957
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #11, !dbg !3959
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3960
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
  ], !dbg !3961

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3962
  unreachable, !dbg !3962

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #11, !dbg !3964
  %20 = load i8*, i8** %4, align 8, !dbg !3964, !tbaa !635
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3965
  br label %146, !dbg !3967

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #11, !dbg !3968
  %24 = load i8*, i8** %4, align 8, !dbg !3968, !tbaa !635
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3968
  %26 = load i8*, i8** %25, align 8, !dbg !3968, !tbaa !635
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3969
  br label %146, !dbg !3970

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #11, !dbg !3971
  %30 = load i8*, i8** %4, align 8, !dbg !3971, !tbaa !635
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3971
  %32 = load i8*, i8** %31, align 8, !dbg !3971, !tbaa !635
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3971
  %34 = load i8*, i8** %33, align 8, !dbg !3971, !tbaa !635
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3972
  br label %146, !dbg !3973

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #11, !dbg !3974
  %38 = load i8*, i8** %4, align 8, !dbg !3974, !tbaa !635
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3974
  %40 = load i8*, i8** %39, align 8, !dbg !3974, !tbaa !635
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3974
  %42 = load i8*, i8** %41, align 8, !dbg !3974, !tbaa !635
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3974
  %44 = load i8*, i8** %43, align 8, !dbg !3974, !tbaa !635
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3975
  br label %146, !dbg !3976

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #11, !dbg !3977
  %48 = load i8*, i8** %4, align 8, !dbg !3977, !tbaa !635
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3977
  %50 = load i8*, i8** %49, align 8, !dbg !3977, !tbaa !635
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3977
  %52 = load i8*, i8** %51, align 8, !dbg !3977, !tbaa !635
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3977
  %54 = load i8*, i8** %53, align 8, !dbg !3977, !tbaa !635
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3977
  %56 = load i8*, i8** %55, align 8, !dbg !3977, !tbaa !635
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3978
  br label %146, !dbg !3979

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #11, !dbg !3980
  %60 = load i8*, i8** %4, align 8, !dbg !3980, !tbaa !635
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3980
  %62 = load i8*, i8** %61, align 8, !dbg !3980, !tbaa !635
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3980
  %64 = load i8*, i8** %63, align 8, !dbg !3980, !tbaa !635
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3980
  %66 = load i8*, i8** %65, align 8, !dbg !3980, !tbaa !635
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3980
  %68 = load i8*, i8** %67, align 8, !dbg !3980, !tbaa !635
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3980
  %70 = load i8*, i8** %69, align 8, !dbg !3980, !tbaa !635
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3981
  br label %146, !dbg !3982

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #11, !dbg !3983
  %74 = load i8*, i8** %4, align 8, !dbg !3983, !tbaa !635
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3983
  %76 = load i8*, i8** %75, align 8, !dbg !3983, !tbaa !635
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3983
  %78 = load i8*, i8** %77, align 8, !dbg !3983, !tbaa !635
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3983
  %80 = load i8*, i8** %79, align 8, !dbg !3983, !tbaa !635
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3983
  %82 = load i8*, i8** %81, align 8, !dbg !3983, !tbaa !635
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3983
  %84 = load i8*, i8** %83, align 8, !dbg !3983, !tbaa !635
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3983
  %86 = load i8*, i8** %85, align 8, !dbg !3983, !tbaa !635
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3984
  br label %146, !dbg !3985

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #11, !dbg !3986
  %90 = load i8*, i8** %4, align 8, !dbg !3986, !tbaa !635
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3986
  %92 = load i8*, i8** %91, align 8, !dbg !3986, !tbaa !635
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3986
  %94 = load i8*, i8** %93, align 8, !dbg !3986, !tbaa !635
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3986
  %96 = load i8*, i8** %95, align 8, !dbg !3986, !tbaa !635
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3986
  %98 = load i8*, i8** %97, align 8, !dbg !3986, !tbaa !635
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3986
  %100 = load i8*, i8** %99, align 8, !dbg !3986, !tbaa !635
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3986
  %102 = load i8*, i8** %101, align 8, !dbg !3986, !tbaa !635
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3986
  %104 = load i8*, i8** %103, align 8, !dbg !3986, !tbaa !635
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3987
  br label %146, !dbg !3988

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #11, !dbg !3989
  %108 = load i8*, i8** %4, align 8, !dbg !3989, !tbaa !635
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3989
  %110 = load i8*, i8** %109, align 8, !dbg !3989, !tbaa !635
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3989
  %112 = load i8*, i8** %111, align 8, !dbg !3989, !tbaa !635
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3989
  %114 = load i8*, i8** %113, align 8, !dbg !3989, !tbaa !635
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3989
  %116 = load i8*, i8** %115, align 8, !dbg !3989, !tbaa !635
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3989
  %118 = load i8*, i8** %117, align 8, !dbg !3989, !tbaa !635
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3989
  %120 = load i8*, i8** %119, align 8, !dbg !3989, !tbaa !635
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3989
  %122 = load i8*, i8** %121, align 8, !dbg !3989, !tbaa !635
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3989
  %124 = load i8*, i8** %123, align 8, !dbg !3989, !tbaa !635
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3990
  br label %146, !dbg !3991

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #11, !dbg !3992
  %128 = load i8*, i8** %4, align 8, !dbg !3992, !tbaa !635
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3992
  %130 = load i8*, i8** %129, align 8, !dbg !3992, !tbaa !635
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3992
  %132 = load i8*, i8** %131, align 8, !dbg !3992, !tbaa !635
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3992
  %134 = load i8*, i8** %133, align 8, !dbg !3992, !tbaa !635
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3992
  %136 = load i8*, i8** %135, align 8, !dbg !3992, !tbaa !635
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3992
  %138 = load i8*, i8** %137, align 8, !dbg !3992, !tbaa !635
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3992
  %140 = load i8*, i8** %139, align 8, !dbg !3992, !tbaa !635
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3992
  %142 = load i8*, i8** %141, align 8, !dbg !3992, !tbaa !635
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3992
  %144 = load i8*, i8** %143, align 8, !dbg !3992, !tbaa !635
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3993
  br label %146, !dbg !3994

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3996 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4000, metadata !627), !dbg !4006
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4001, metadata !627), !dbg !4007
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4002, metadata !627), !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4003, metadata !627), !dbg !4009
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4004, metadata !627), !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4005, metadata !627), !dbg !4011
  br label %6, !dbg !4012

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4005, metadata !627), !dbg !4011
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4014
  %9 = load i8*, i8** %8, align 8, !dbg !4014, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !4017
  %11 = add i64 %7, 1, !dbg !4019
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4005, metadata !627), !dbg !4011
  br i1 %10, label %12, label %6, !dbg !4017, !llvm.loop !4021

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4024
  ret void, !dbg !4025
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4026 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4037, metadata !627), !dbg !4045
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4038, metadata !627), !dbg !4046
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4039, metadata !627), !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4040, metadata !627), !dbg !4048
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4041, metadata !627), !dbg !4049
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4050
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4050
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4043, metadata !627), !dbg !4051
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4042, metadata !627), !dbg !4052
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4053
  %12 = icmp ult i32 %11, 41, !dbg !4053
  br i1 %12, label %13, label %18, !dbg !4053

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4057
  %15 = sext i32 %11 to i64, !dbg !4057
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4057
  %17 = add i32 %11, 8, !dbg !4057
  store i32 %17, i32* %8, align 8, !dbg !4057
  br label %21, !dbg !4057

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4059
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4059
  store i8* %20, i8** %10, align 8, !dbg !4059
  br label %21, !dbg !4059

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4053
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4061
  %25 = load i8*, i8** %24, align 8, !dbg !4061
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4063
  store i8* %25, i8** %26, align 16, !dbg !4064, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !4065
  br i1 %27, label %30, label %28, !dbg !4066

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %29 = icmp ult i32 %22, 41, !dbg !4053
  br i1 %29, label %35, label %32, !dbg !4053

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4068
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4069
  ret void, !dbg !4069

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4059
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4059
  store i8* %34, i8** %10, align 8, !dbg !4059
  br label %40, !dbg !4059

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4057
  %37 = sext i32 %22 to i64, !dbg !4057
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4057
  %39 = add i32 %22, 8, !dbg !4057
  store i32 %39, i32* %8, align 8, !dbg !4057
  br label %40, !dbg !4057

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4053
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4061
  %44 = load i8*, i8** %43, align 8, !dbg !4061
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4063
  store i8* %44, i8** %45, align 8, !dbg !4064, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !4065
  br i1 %46, label %30, label %47, !dbg !4066

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %48 = icmp ult i32 %41, 41, !dbg !4053
  br i1 %48, label %52, label %49, !dbg !4053

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4059
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4059
  store i8* %51, i8** %10, align 8, !dbg !4059
  br label %57, !dbg !4059

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4057
  %54 = sext i32 %41 to i64, !dbg !4057
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4057
  %56 = add i32 %41, 8, !dbg !4057
  store i32 %56, i32* %8, align 8, !dbg !4057
  br label %57, !dbg !4057

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4053
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4061
  %61 = load i8*, i8** %60, align 8, !dbg !4061
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4063
  store i8* %61, i8** %62, align 16, !dbg !4064, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !4065
  br i1 %63, label %30, label %64, !dbg !4066

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %65 = icmp ult i32 %58, 41, !dbg !4053
  br i1 %65, label %69, label %66, !dbg !4053

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4059
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4059
  store i8* %68, i8** %10, align 8, !dbg !4059
  br label %74, !dbg !4059

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4057
  %71 = sext i32 %58 to i64, !dbg !4057
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4057
  %73 = add i32 %58, 8, !dbg !4057
  store i32 %73, i32* %8, align 8, !dbg !4057
  br label %74, !dbg !4057

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4053
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4061
  %78 = load i8*, i8** %77, align 8, !dbg !4061
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4063
  store i8* %78, i8** %79, align 8, !dbg !4064, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !4065
  br i1 %80, label %30, label %81, !dbg !4066

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %82 = icmp ult i32 %75, 41, !dbg !4053
  br i1 %82, label %86, label %83, !dbg !4053

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4059
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4059
  store i8* %85, i8** %10, align 8, !dbg !4059
  br label %91, !dbg !4059

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4057
  %88 = sext i32 %75 to i64, !dbg !4057
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4057
  %90 = add i32 %75, 8, !dbg !4057
  store i32 %90, i32* %8, align 8, !dbg !4057
  br label %91, !dbg !4057

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4053
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4061
  %95 = load i8*, i8** %94, align 8, !dbg !4061
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4063
  store i8* %95, i8** %96, align 16, !dbg !4064, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !4065
  br i1 %97, label %30, label %98, !dbg !4066

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %99 = icmp ult i32 %92, 41, !dbg !4053
  br i1 %99, label %103, label %100, !dbg !4053

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4059
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4059
  store i8* %102, i8** %10, align 8, !dbg !4059
  br label %108, !dbg !4059

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4057
  %105 = sext i32 %92 to i64, !dbg !4057
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4057
  %107 = add i32 %92, 8, !dbg !4057
  store i32 %107, i32* %8, align 8, !dbg !4057
  br label %108, !dbg !4057

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4061
  %111 = load i8*, i8** %110, align 8, !dbg !4061
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4063
  store i8* %111, i8** %112, align 8, !dbg !4064, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !4065
  br i1 %113, label %30, label %114, !dbg !4066

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %115 = load i8*, i8** %10, align 8, !dbg !4059
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4059
  store i8* %116, i8** %10, align 8, !dbg !4059
  %117 = bitcast i8* %115 to i8**, !dbg !4061
  %118 = load i8*, i8** %117, align 8, !dbg !4061
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4063
  store i8* %118, i8** %119, align 16, !dbg !4064, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !4065
  br i1 %120, label %30, label %121, !dbg !4066

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %122 = load i8*, i8** %10, align 8, !dbg !4059
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4059
  store i8* %123, i8** %10, align 8, !dbg !4059
  %124 = bitcast i8* %122 to i8**, !dbg !4061
  %125 = load i8*, i8** %124, align 8, !dbg !4061
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4063
  store i8* %125, i8** %126, align 8, !dbg !4064, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !4065
  br i1 %127, label %30, label %128, !dbg !4066

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %129 = load i8*, i8** %10, align 8, !dbg !4059
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4059
  store i8* %130, i8** %10, align 8, !dbg !4059
  %131 = bitcast i8* %129 to i8**, !dbg !4061
  %132 = load i8*, i8** %131, align 8, !dbg !4061
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4063
  store i8* %132, i8** %133, align 16, !dbg !4064, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !4065
  br i1 %134, label %30, label %135, !dbg !4066

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %136 = load i8*, i8** %10, align 8, !dbg !4059
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4059
  store i8* %137, i8** %10, align 8, !dbg !4059
  %138 = bitcast i8* %136 to i8**, !dbg !4061
  %139 = load i8*, i8** %138, align 8, !dbg !4061
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4063
  store i8* %139, i8** %140, align 8, !dbg !4064, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !4065
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4042, metadata !627), !dbg !4052
  %142 = select i1 %141, i64 9, i64 10, !dbg !4066
  br label %30, !dbg !4066
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4070 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4074, metadata !627), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4075, metadata !627), !dbg !4085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4076, metadata !627), !dbg !4086
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4077, metadata !627), !dbg !4087
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4088
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4088
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4078, metadata !627), !dbg !4089
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4090
  call void @llvm.va_start(i8* nonnull %6), !dbg !4090
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4091
  call void @llvm.va_end(i8* nonnull %6), !dbg !4092
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4093
  ret void, !dbg !4093
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4094 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #11, !dbg !4095
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #11, !dbg !4096
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #11, !dbg !4098
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #11, !dbg !4099
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #11, !dbg !4100
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4100, !tbaa !635
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4101
  ret void, !dbg !4102
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4103 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4107, metadata !627), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4108, metadata !627), !dbg !4110
  %3 = udiv i64 9223372036854775807, %1, !dbg !4111
  %4 = icmp ult i64 %3, %0, !dbg !4111
  br i1 %4, label %5, label %6, !dbg !4113

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4114
  unreachable, !dbg !4114

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4116, metadata !627) #11, !dbg !4123
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4125
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4122, metadata !627) #11, !dbg !4126
  %9 = icmp eq i8* %8, null, !dbg !4127
  %10 = icmp ne i64 %7, 0, !dbg !4129
  %11 = and i1 %10, %9, !dbg !4131
  br i1 %11, label %12, label %13, !dbg !4131

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4132
  unreachable, !dbg !4132

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4133
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4117 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4116, metadata !627), !dbg !4134
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4135
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4122, metadata !627), !dbg !4136
  %3 = icmp eq i8* %2, null, !dbg !4137
  %4 = icmp ne i64 %0, 0, !dbg !4138
  %5 = and i1 %4, %3, !dbg !4139
  br i1 %5, label %6, label %7, !dbg !4139

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4140
  unreachable, !dbg !4140

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4141
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4142 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4146, metadata !627), !dbg !4149
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4147, metadata !627), !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4148, metadata !627), !dbg !4151
  %4 = udiv i64 9223372036854775807, %2, !dbg !4152
  %5 = icmp ult i64 %4, %1, !dbg !4152
  br i1 %5, label %6, label %7, !dbg !4154

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4155
  unreachable, !dbg !4155

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4156
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627) #11, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4162, metadata !627) #11, !dbg !4165
  %9 = icmp eq i64 %8, 0, !dbg !4166
  %10 = icmp ne i8* %0, null, !dbg !4168
  %11 = and i1 %10, %9, !dbg !4170
  br i1 %11, label %12, label %13, !dbg !4170

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4171
  br label %19, !dbg !4173

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4174
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4157, metadata !627) #11, !dbg !4163
  %15 = icmp eq i8* %14, null, !dbg !4175
  %16 = icmp ne i64 %8, 0, !dbg !4177
  %17 = and i1 %16, %15, !dbg !4179
  br i1 %17, label %18, label %19, !dbg !4179

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4180
  unreachable, !dbg !4180

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4181
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4158 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627), !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4162, metadata !627), !dbg !4183
  %3 = icmp eq i64 %1, 0, !dbg !4184
  %4 = icmp ne i8* %0, null, !dbg !4185
  %5 = and i1 %4, %3, !dbg !4186
  br i1 %5, label %6, label %7, !dbg !4186

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4187
  br label %13, !dbg !4188

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4189
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4157, metadata !627), !dbg !4182
  %9 = icmp eq i8* %8, null, !dbg !4190
  %10 = icmp ne i64 %1, 0, !dbg !4191
  %11 = and i1 %10, %9, !dbg !4192
  br i1 %11, label %12, label %13, !dbg !4192

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4193
  unreachable, !dbg !4193

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4194
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !572 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !577, metadata !627), !dbg !4195
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !578, metadata !627), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !579, metadata !627), !dbg !4197
  %4 = load i64, i64* %1, align 8, !dbg !4198, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !580, metadata !627), !dbg !4199
  %5 = icmp eq i8* %0, null, !dbg !4200
  br i1 %5, label %6, label %13, !dbg !4202

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4203
  br i1 %7, label %8, label %17, !dbg !4206

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !580, metadata !627), !dbg !4199
  %10 = icmp ugt i64 %2, 128, !dbg !4209
  %11 = zext i1 %10 to i64, !dbg !4209
  %12 = add nuw nsw i64 %9, %11, !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !580, metadata !627), !dbg !4199
  br label %17, !dbg !4211

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4212
  %15 = icmp ugt i64 %14, %4, !dbg !4215
  br i1 %15, label %20, label %16, !dbg !4216

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4217
  unreachable, !dbg !4217

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !580, metadata !627), !dbg !4199
  store i64 %18, i64* %1, align 8, !dbg !4218, !tbaa !943
  %19 = mul i64 %18, %2, !dbg !4219
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627) #11, !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4162, metadata !627) #11, !dbg !4222
  br label %27, !dbg !4223

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4224
  %22 = add i64 %4, 1, !dbg !4225
  %23 = add i64 %22, %21, !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !580, metadata !627), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !580, metadata !627), !dbg !4199
  store i64 %23, i64* %1, align 8, !dbg !4218, !tbaa !943
  %24 = mul i64 %23, %2, !dbg !4219
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627) #11, !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4162, metadata !627) #11, !dbg !4222
  %25 = icmp eq i64 %24, 0, !dbg !4227
  br i1 %25, label %26, label %27, !dbg !4223

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4228
  br label %34, !dbg !4229

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4230
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4157, metadata !627) #11, !dbg !4220
  %30 = icmp eq i8* %29, null, !dbg !4231
  %31 = icmp ne i64 %28, 0, !dbg !4232
  %32 = and i1 %31, %30, !dbg !4233
  br i1 %32, label %33, label %34, !dbg !4233

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4234
  unreachable, !dbg !4234

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4235
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4236 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4238, metadata !627), !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4116, metadata !627) #11, !dbg !4240
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4242
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4122, metadata !627) #11, !dbg !4243
  %3 = icmp eq i8* %2, null, !dbg !4244
  %4 = icmp ne i64 %0, 0, !dbg !4245
  %5 = and i1 %4, %3, !dbg !4246
  br i1 %5, label %6, label %7, !dbg !4246

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4247
  unreachable, !dbg !4247

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4248
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4249 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4253, metadata !627), !dbg !4255
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4254, metadata !627), !dbg !4256
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !577, metadata !627) #11, !dbg !4257
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !578, metadata !627) #11, !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !579, metadata !627) #11, !dbg !4260
  %3 = load i64, i64* %1, align 8, !dbg !4261, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  %4 = icmp eq i8* %0, null, !dbg !4263
  br i1 %4, label %5, label %8, !dbg !4264

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4265
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  store i64 %7, i64* %1, align 8, !dbg !4267, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627) #11, !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4162, metadata !627) #11, !dbg !4270
  br label %17, !dbg !4271

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4272
  br i1 %9, label %11, label %10, !dbg !4273

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4274
  unreachable, !dbg !4274

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4275
  %13 = add i64 %3, 1, !dbg !4276
  %14 = add i64 %13, %12, !dbg !4277
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !580, metadata !627) #11, !dbg !4262
  store i64 %14, i64* %1, align 8, !dbg !4267, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !627) #11, !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4162, metadata !627) #11, !dbg !4270
  %15 = icmp eq i64 %14, 0, !dbg !4278
  br i1 %15, label %16, label %17, !dbg !4271

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4279
  br label %24, !dbg !4280

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4281
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4157, metadata !627) #11, !dbg !4268
  %20 = icmp eq i8* %19, null, !dbg !4282
  %21 = icmp ne i64 %18, 0, !dbg !4283
  %22 = and i1 %21, %20, !dbg !4284
  br i1 %22, label %23, label %24, !dbg !4284

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4285
  unreachable, !dbg !4285

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4286
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4287 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4289, metadata !627), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4116, metadata !627) #11, !dbg !4291
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4293
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4122, metadata !627) #11, !dbg !4294
  %3 = icmp eq i8* %2, null, !dbg !4295
  %4 = icmp ne i64 %0, 0, !dbg !4296
  %5 = and i1 %4, %3, !dbg !4297
  br i1 %5, label %6, label %7, !dbg !4297

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4298
  unreachable, !dbg !4298

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4299
  ret i8* %2, !dbg !4300
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4301 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4303, metadata !627), !dbg !4306
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4304, metadata !627), !dbg !4307
  %3 = udiv i64 9223372036854775807, %1, !dbg !4308
  %4 = icmp ult i64 %3, %0, !dbg !4308
  br i1 %4, label %8, label %5, !dbg !4310

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4311
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4305, metadata !627), !dbg !4313
  %7 = icmp eq i8* %6, null, !dbg !4314
  br i1 %7, label %8, label %9, !dbg !4315

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4317
  unreachable, !dbg !4317

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4318
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4319 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4323, metadata !627), !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4324, metadata !627), !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4116, metadata !627) #11, !dbg !4327
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4122, metadata !627) #11, !dbg !4330
  %4 = icmp eq i8* %3, null, !dbg !4331
  %5 = icmp ne i64 %1, 0, !dbg !4332
  %6 = and i1 %5, %4, !dbg !4333
  br i1 %6, label %7, label %8, !dbg !4333

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4334
  unreachable, !dbg !4334

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4335
  ret i8* %3, !dbg !4336
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4337 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4339, metadata !627), !dbg !4340
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4341
  %3 = add i64 %2, 1, !dbg !4342
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4323, metadata !627) #11, !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4324, metadata !627) #11, !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4116, metadata !627) #11, !dbg !4347
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4349
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4122, metadata !627) #11, !dbg !4350
  %5 = icmp eq i8* %4, null, !dbg !4351
  %6 = icmp ne i64 %3, 0, !dbg !4352
  %7 = and i1 %6, %5, !dbg !4353
  br i1 %7, label %8, label %9, !dbg !4353

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4354
  unreachable, !dbg !4354

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4355
  ret i8* %4, !dbg !4356
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4357 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4359, !tbaa !865
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #11, !dbg !4360
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #11, !dbg !4361
  tail call void @abort() #15, !dbg !4363
  unreachable, !dbg !4363
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4364 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4369, metadata !627), !dbg !4379
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4370, metadata !627), !dbg !4380
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4371, metadata !627), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4372, metadata !627), !dbg !4382
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4373, metadata !627), !dbg !4383
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4374, metadata !627), !dbg !4384
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4375, metadata !627), !dbg !4385
  %9 = bitcast i64* %8 to i8*, !dbg !4386
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11, !dbg !4386
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4378, metadata !927), !dbg !4387
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4376, metadata !627), !dbg !4389
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4390

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !4391
  br label %26, !dbg !4390

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4395, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4378, metadata !627), !dbg !4387
  %15 = icmp ult i64 %14, %2, !dbg !4399
  %16 = icmp ugt i64 %14, %3, !dbg !4400
  %17 = or i1 %15, %16, !dbg !4402
  br i1 %17, label %18, label %35, !dbg !4402

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4376, metadata !627), !dbg !4389
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4378, metadata !627), !dbg !4387
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4403
  %20 = tail call i32* @__errno_location() #1, !dbg !4406
  %21 = select i1 %19, i32 75, i32 34, !dbg !4407
  store i32 %21, i32* %20, align 4, !tbaa !865
  br label %26, !dbg !4408

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !4409
  store i32 75, i32* %23, align 4, !dbg !4411, !tbaa !865
  br label %26, !dbg !4409

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !4412
  store i32 0, i32* %25, align 4, !dbg !4414, !tbaa !865
  br label %26, !dbg !4412

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4391
  %28 = icmp ne i32 %6, 0, !dbg !4415
  %29 = select i1 %28, i32 %6, i32 1, !dbg !4415
  %30 = load i32, i32* %27, align 4, !dbg !4391, !tbaa !865
  %31 = icmp eq i32 %30, 22, !dbg !4416
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4391
  %33 = call i8* @quote(i8* %0) #11, !dbg !4417
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %33) #11, !dbg !4418
  %34 = load i64, i64* %8, align 8, !tbaa !943
  br label %35, !dbg !4420

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4421
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4378, metadata !627), !dbg !4387
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11, !dbg !4422
  ret i64 %36, !dbg !4423
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4428, metadata !627), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4429, metadata !627), !dbg !4435
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4430, metadata !627), !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4431, metadata !627), !dbg !4437
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4432, metadata !627), !dbg !4438
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4433, metadata !627), !dbg !4439
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4440
  ret i64 %7, !dbg !4441
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4442 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4448, metadata !627), !dbg !4466
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4449, metadata !627), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4450, metadata !627), !dbg !4468
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4451, metadata !627), !dbg !4469
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4452, metadata !627), !dbg !4470
  %7 = bitcast i8** %6 to i8*, !dbg !4471
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4456, metadata !627), !dbg !4472
  %8 = icmp ult i32 %2, 37, !dbg !4473
  br i1 %8, label %10, label %9, !dbg !4473

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4476
  unreachable, !dbg !4476

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4478
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4454, metadata !627), !dbg !4479
  %12 = tail call i32* @__errno_location() #1, !dbg !4480
  store i32 0, i32* %12, align 4, !dbg !4481, !tbaa !865
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4457, metadata !627), !dbg !4482
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4483
  %14 = load i16*, i16** %13, align 8, !tbaa !635
  br label %15, !dbg !4485

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4460, metadata !627), !dbg !4486
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4457, metadata !627), !dbg !4482
  %18 = zext i8 %17 to i64, !dbg !4483
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4483
  %20 = load i16, i16* %19, align 2, !dbg !4483, !tbaa !2506
  %21 = and i16 %20, 8192, !dbg !4483
  %22 = icmp eq i16 %21, 0, !dbg !4487
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4488
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4457, metadata !627), !dbg !4482
  br i1 %22, label %24, label %15, !dbg !4487, !llvm.loop !4489

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4478
  %26 = icmp eq i8 %17, 45, !dbg !4491
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4493, metadata !627) #11, !dbg !4502
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4500, metadata !627) #11, !dbg !4502
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4501, metadata !627) #11, !dbg !4502
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4455, metadata !627), !dbg !4505
  %29 = load i8*, i8** %25, align 8, !dbg !4506, !tbaa !635
  %30 = icmp eq i8* %29, %0, !dbg !4508
  br i1 %30, label %31, label %40, !dbg !4509

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4510
  br i1 %32, label %265, label %33, !dbg !4513

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4514, !tbaa !889
  %35 = icmp eq i8 %34, 0, !dbg !4514
  br i1 %35, label %265, label %36, !dbg !4516

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4514
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !4517
  %39 = icmp eq i8* %38, null, !dbg !4517
  br i1 %39, label %265, label %47, !dbg !4519

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4521, !tbaa !865
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4523

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4456, metadata !627), !dbg !4472
  br label %43, !dbg !4524

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4456, metadata !627), !dbg !4472
  %45 = icmp eq i8* %4, null, !dbg !4526
  br i1 %45, label %46, label %47, !dbg !4528

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4455, metadata !627), !dbg !4505
  store i64 %28, i64* %3, align 8, !dbg !4529, !tbaa !943
  br label %265, !dbg !4531

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4532, !tbaa !889
  %51 = icmp eq i8 %50, 0, !dbg !4533
  br i1 %51, label %262, label %52, !dbg !4534

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4532
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4461, metadata !627), !dbg !4535
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4464, metadata !627), !dbg !4536
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !4537
  %55 = icmp eq i8* %54, null, !dbg !4537
  br i1 %55, label %56, label %58, !dbg !4540

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4455, metadata !627), !dbg !4505
  store i64 %49, i64* %3, align 8, !dbg !4542, !tbaa !943
  %57 = or i32 %48, 2, !dbg !4544
  br label %265, !dbg !4545

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
  ], !dbg !4546

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !4547
  %61 = icmp eq i8* %60, null, !dbg !4547
  br i1 %61, label %72, label %62, !dbg !4551

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4553
  %64 = load i8, i8* %63, align 1, !dbg !4553, !tbaa !889
  %65 = sext i8 %64 to i32, !dbg !4553
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4554

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4555
  %68 = load i8, i8* %67, align 1, !dbg !4555, !tbaa !889
  %69 = icmp eq i8 %68, 66, !dbg !4558
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4464, metadata !627), !dbg !4536
  %70 = select i1 %69, i64 3, i64 1, !dbg !4559
  br label %72, !dbg !4559

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4461, metadata !627), !dbg !4535
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4464, metadata !627), !dbg !4536
  br label %72, !dbg !4560

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
  ], !dbg !4561

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4562, metadata !627), !dbg !4568
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4571
  %77 = shl i64 %49, 9, !dbg !4573
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4574
  %79 = zext i1 %76 to i32, !dbg !4574
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4465, metadata !627), !dbg !4575
  br label %253, !dbg !4576

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4562, metadata !627), !dbg !4577
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4579
  %82 = shl i64 %49, 10, !dbg !4580
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4581
  %84 = zext i1 %81 to i32, !dbg !4581
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4465, metadata !627), !dbg !4575
  br label %253, !dbg !4582

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4593
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4591
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4594
  %88 = mul i64 %49, %73, !dbg !4596
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4597
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  %90 = icmp ult i64 %86, %89, !dbg !4594
  %91 = mul i64 %89, %73, !dbg !4596
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4597
  %93 = or i1 %90, %87, !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  %94 = icmp ult i64 %86, %92, !dbg !4594
  %95 = mul i64 %92, %73, !dbg !4596
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4597
  %97 = or i1 %94, %93, !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  %98 = icmp ult i64 %86, %96, !dbg !4594
  %99 = mul i64 %96, %73, !dbg !4596
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4597
  %101 = or i1 %98, %97, !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  %102 = icmp ult i64 %86, %100, !dbg !4594
  %103 = mul i64 %100, %73, !dbg !4596
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4597
  %105 = or i1 %102, %101, !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  %106 = icmp ult i64 %86, %104, !dbg !4594
  %107 = mul i64 %104, %73, !dbg !4596
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4597
  %109 = or i1 %106, %105, !dbg !4598
  %110 = zext i1 %109 to i32, !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4591
  br label %253, !dbg !4575

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4599
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4601
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4601
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4599
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4602
  %114 = mul i64 %49, %73, !dbg !4604
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4605
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  %116 = icmp ult i64 %112, %115, !dbg !4602
  %117 = mul i64 %115, %73, !dbg !4604
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4605
  %119 = or i1 %116, %113, !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  %120 = icmp ult i64 %112, %118, !dbg !4602
  %121 = mul i64 %118, %73, !dbg !4604
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4605
  %123 = or i1 %120, %119, !dbg !4606
  %124 = zext i1 %123 to i32, !dbg !4606
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4599
  br label %253, !dbg !4575

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4607
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4610
  %128 = mul i64 %49, %73, !dbg !4612
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4613
  %130 = zext i1 %127 to i32, !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4590, metadata !627), !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4590, metadata !627), !dbg !4609
  br label %253, !dbg !4575

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4616
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4616
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4583, metadata !627), !dbg !4614
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4617
  %134 = mul i64 %49, %73, !dbg !4619
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4620
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4614
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4614
  %136 = icmp ult i64 %132, %135, !dbg !4617
  %137 = mul i64 %135, %73, !dbg !4619
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4620
  %139 = or i1 %136, %133, !dbg !4621
  %140 = zext i1 %139 to i32, !dbg !4621
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4614
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4583, metadata !627), !dbg !4614
  br label %253, !dbg !4575

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4624
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4624
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4583, metadata !627), !dbg !4622
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4625
  %144 = mul i64 %49, %73, !dbg !4627
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4628
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  %146 = icmp ult i64 %142, %145, !dbg !4625
  %147 = mul i64 %145, %73, !dbg !4627
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4628
  %149 = or i1 %146, %143, !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  %150 = icmp ult i64 %142, %148, !dbg !4625
  %151 = mul i64 %148, %73, !dbg !4627
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4628
  %153 = or i1 %150, %149, !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  %154 = icmp ult i64 %142, %152, !dbg !4625
  %155 = mul i64 %152, %73, !dbg !4627
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4628
  %157 = or i1 %154, %153, !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  %158 = icmp ult i64 %142, %156, !dbg !4625
  %159 = mul i64 %156, %73, !dbg !4627
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4628
  %161 = or i1 %158, %157, !dbg !4629
  %162 = zext i1 %161 to i32, !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4622
  br label %253, !dbg !4575

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4632
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4632
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4583, metadata !627), !dbg !4630
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4633
  %166 = mul i64 %49, %73, !dbg !4635
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4636
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  %168 = icmp ult i64 %164, %167, !dbg !4633
  %169 = mul i64 %167, %73, !dbg !4635
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4636
  %171 = or i1 %168, %165, !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  %172 = icmp ult i64 %164, %170, !dbg !4633
  %173 = mul i64 %170, %73, !dbg !4635
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4636
  %175 = or i1 %172, %171, !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  %176 = icmp ult i64 %164, %174, !dbg !4633
  %177 = mul i64 %174, %73, !dbg !4635
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4636
  %179 = or i1 %176, %175, !dbg !4637
  %180 = zext i1 %179 to i32, !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4583, metadata !627), !dbg !4630
  br label %253, !dbg !4575

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4562, metadata !627), !dbg !4638
  %182 = icmp slt i64 %49, 0, !dbg !4640
  %183 = shl i64 %49, 1, !dbg !4641
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4642
  %185 = lshr i64 %49, 63, !dbg !4642
  %186 = trunc i64 %185 to i32, !dbg !4642
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4465, metadata !627), !dbg !4575
  br label %253, !dbg !4643

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4646
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4646
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4583, metadata !627), !dbg !4644
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4647
  %190 = mul i64 %49, %73, !dbg !4649
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4650
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %192 = icmp ult i64 %188, %191, !dbg !4647
  %193 = mul i64 %191, %73, !dbg !4649
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4650
  %195 = or i1 %192, %189, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %196 = icmp ult i64 %188, %194, !dbg !4647
  %197 = mul i64 %194, %73, !dbg !4649
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4650
  %199 = or i1 %196, %195, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %200 = icmp ult i64 %188, %198, !dbg !4647
  %201 = mul i64 %198, %73, !dbg !4649
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4650
  %203 = or i1 %200, %199, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %204 = icmp ult i64 %188, %202, !dbg !4647
  %205 = mul i64 %202, %73, !dbg !4649
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4650
  %207 = or i1 %204, %203, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %208 = icmp ult i64 %188, %206, !dbg !4647
  %209 = mul i64 %206, %73, !dbg !4649
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4650
  %211 = or i1 %208, %207, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %212 = icmp ult i64 %188, %210, !dbg !4647
  %213 = mul i64 %210, %73, !dbg !4649
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4650
  %215 = or i1 %212, %211, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  %216 = icmp ult i64 %188, %214, !dbg !4647
  %217 = mul i64 %214, %73, !dbg !4649
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4650
  %219 = or i1 %216, %215, !dbg !4651
  %220 = zext i1 %219 to i32, !dbg !4651
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4644
  br label %253, !dbg !4575

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4654
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4590, metadata !627), !dbg !4654
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4583, metadata !627), !dbg !4652
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4655
  %224 = mul i64 %49, %73, !dbg !4657
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4658
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %226 = icmp ult i64 %222, %225, !dbg !4655
  %227 = mul i64 %225, %73, !dbg !4657
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4658
  %229 = or i1 %226, %223, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %230 = icmp ult i64 %222, %228, !dbg !4655
  %231 = mul i64 %228, %73, !dbg !4657
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4658
  %233 = or i1 %230, %229, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %234 = icmp ult i64 %222, %232, !dbg !4655
  %235 = mul i64 %232, %73, !dbg !4657
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4658
  %237 = or i1 %234, %233, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %238 = icmp ult i64 %222, %236, !dbg !4655
  %239 = mul i64 %236, %73, !dbg !4657
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4658
  %241 = or i1 %238, %237, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %242 = icmp ult i64 %222, %240, !dbg !4655
  %243 = mul i64 %240, %73, !dbg !4657
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4658
  %245 = or i1 %242, %241, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  %246 = icmp ult i64 %222, %244, !dbg !4655
  %247 = mul i64 %244, %73, !dbg !4657
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4658
  %249 = or i1 %246, %245, !dbg !4659
  %250 = zext i1 %249 to i32, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4583, metadata !627), !dbg !4652
  br label %253, !dbg !4575

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4455, metadata !627), !dbg !4505
  store i64 %49, i64* %3, align 8, !dbg !4660, !tbaa !943
  %252 = or i32 %48, 2, !dbg !4661
  br label %265, !dbg !4662

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4465, metadata !627), !dbg !4575
  %256 = or i32 %255, %48, !dbg !4663
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4456, metadata !627), !dbg !4472
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4664
  store i8* %257, i8** %25, align 8, !dbg !4664, !tbaa !635
  %258 = load i8, i8* %257, align 1, !dbg !4665, !tbaa !889
  %259 = icmp eq i8 %258, 0, !dbg !4665
  %260 = or i32 %256, 2, !dbg !4667
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4456, metadata !627), !dbg !4472
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4668
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4456, metadata !627), !dbg !4472
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4456, metadata !627), !dbg !4472
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4456, metadata !627), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4455, metadata !627), !dbg !4505
  store i64 %263, i64* %3, align 8, !dbg !4669, !tbaa !943
  br label %265, !dbg !4670

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !4671
  ret i32 %266, !dbg !4671
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4672 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4675, metadata !627), !dbg !4681
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4676, metadata !627), !dbg !4682
  %3 = icmp eq i64 %0, 0, !dbg !4683
  %4 = icmp eq i64 %1, 0, !dbg !4684
  %5 = or i1 %3, %4, !dbg !4686
  br i1 %5, label %12, label %6, !dbg !4686

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4678, metadata !627), !dbg !4688
  %8 = udiv i64 %7, %1, !dbg !4689
  %9 = icmp eq i64 %8, %0, !dbg !4691
  br i1 %9, label %12, label %10, !dbg !4692

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4693
  store i32 12, i32* %11, align 4, !dbg !4695, !tbaa !865
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4675, metadata !627), !dbg !4681
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4676, metadata !627), !dbg !4682
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4696
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4677, metadata !627), !dbg !4697
  br label %16, !dbg !4698

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4699
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4700 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4745, metadata !627), !dbg !4749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4746, metadata !627), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4748, metadata !627), !dbg !4751
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4752
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4747, metadata !627), !dbg !4753
  %3 = icmp slt i32 %2, 0, !dbg !4754
  br i1 %3, label %4, label %6, !dbg !4756

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4757
  br label %24, !dbg !4758

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4759
  %8 = icmp eq i32 %7, 0, !dbg !4759
  br i1 %8, label %13, label %9, !dbg !4761

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4762
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4764
  %12 = icmp eq i64 %11, -1, !dbg !4766
  br i1 %12, label %16, label %13, !dbg !4767

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4768
  %15 = icmp eq i32 %14, 0, !dbg !4768
  br i1 %15, label %16, label %18, !dbg !4769

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4746, metadata !627), !dbg !4750
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4771
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4748, metadata !627), !dbg !4751
  br label %24, !dbg !4772

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4773
  %20 = load i32, i32* %19, align 4, !dbg !4773, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4746, metadata !627), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4746, metadata !627), !dbg !4750
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4771
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4748, metadata !627), !dbg !4751
  %22 = icmp eq i32 %20, 0, !dbg !4774
  br i1 %22, label %24, label %23, !dbg !4772

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4776, !tbaa !865
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4748, metadata !627), !dbg !4751
  br label %24, !dbg !4778

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4779
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4780 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4825, metadata !627), !dbg !4826
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4827
  br i1 %2, label %6, label %3, !dbg !4829

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4830
  %5 = icmp eq i32 %4, 0, !dbg !4830
  br i1 %5, label %6, label %8, !dbg !4832

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4834
  br label %17, !dbg !4835

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4836, metadata !627) #11, !dbg !4841
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4843
  %10 = load i32, i32* %9, align 8, !dbg !4843, !tbaa !979
  %11 = and i32 %10, 256, !dbg !4845
  %12 = icmp eq i32 %11, 0, !dbg !4845
  br i1 %12, label %15, label %13, !dbg !4846

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4847
  br label %15, !dbg !4847

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4848
  br label %17, !dbg !4849

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4850
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4851 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4896, metadata !627), !dbg !4902
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4897, metadata !627), !dbg !4903
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4898, metadata !627), !dbg !4904
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4905
  %5 = load i8*, i8** %4, align 8, !dbg !4905, !tbaa !4906
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4907
  %7 = load i8*, i8** %6, align 8, !dbg !4907, !tbaa !4908
  %8 = icmp eq i8* %5, %7, !dbg !4909
  br i1 %8, label %9, label %28, !dbg !4910

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4911
  %11 = load i8*, i8** %10, align 8, !dbg !4911, !tbaa !1138
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4913
  %13 = load i8*, i8** %12, align 8, !dbg !4913, !tbaa !4914
  %14 = icmp eq i8* %11, %13, !dbg !4915
  br i1 %14, label %15, label %28, !dbg !4916

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4917
  %17 = load i8*, i8** %16, align 8, !dbg !4917, !tbaa !4918
  %18 = icmp eq i8* %17, null, !dbg !4919
  br i1 %18, label %19, label %28, !dbg !4920

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4922
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4923
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4899, metadata !627), !dbg !4925
  %22 = icmp eq i64 %21, -1, !dbg !4926
  br i1 %22, label %30, label %23, !dbg !4928

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4929
  %25 = load i32, i32* %24, align 8, !dbg !4930, !tbaa !979
  %26 = and i32 %25, -17, !dbg !4930
  store i32 %26, i32* %24, align 8, !dbg !4930, !tbaa !979
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4931
  store i64 %21, i64* %27, align 8, !dbg !4932, !tbaa !4933
  br label %30, !dbg !4934

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4935
  br label %30, !dbg !4936

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4937
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4938 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4955, metadata !627), !dbg !4964
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4956, metadata !627), !dbg !4965
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4957, metadata !627), !dbg !4966
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4958, metadata !627), !dbg !4967
  %6 = bitcast i32* %5 to i8*, !dbg !4968
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4968
  %7 = icmp eq i32* %0, null, !dbg !4969
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4955, metadata !627), !dbg !4964
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4971
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4955, metadata !627), !dbg !4964
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4972
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4959, metadata !627), !dbg !4973
  %10 = icmp ugt i64 %9, -3, !dbg !4974
  %11 = icmp ne i64 %2, 0, !dbg !4975
  %12 = and i1 %11, %10, !dbg !4977
  br i1 %12, label %13, label %18, !dbg !4977

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4978
  br i1 %14, label %18, label %15, !dbg !4980

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4982, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4961, metadata !627), !dbg !4983
  %17 = zext i8 %16 to i32, !dbg !4984
  store i32 %17, i32* %8, align 4, !dbg !4985, !tbaa !865
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4986
  ret i64 %19, !dbg !4986
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4987 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5032, metadata !627), !dbg !5037
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5038
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5039, metadata !627), !dbg !5042
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5044
  %4 = load i32, i32* %3, align 8, !dbg !5044, !tbaa !979
  %5 = and i32 %4, 32, !dbg !5044
  %6 = icmp eq i32 %5, 0, !dbg !5045
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5046
  %8 = icmp ne i32 %7, 0, !dbg !5047
  br i1 %6, label %9, label %19, !dbg !5048

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5050
  %11 = icmp ne i64 %2, 0, !dbg !5050
  %12 = or i1 %11, %10, !dbg !5050
  %13 = sext i1 %8 to i32, !dbg !5050
  br i1 %12, label %22, label %14, !dbg !5050

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5052
  %16 = load i32, i32* %15, align 4, !dbg !5052, !tbaa !865
  %17 = icmp ne i32 %16, 9, !dbg !5054
  %18 = sext i1 %17 to i32, !dbg !5054
  br label %22, !dbg !5054

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5056

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5058
  store i32 0, i32* %21, align 4, !dbg !5060, !tbaa !865
  br label %22, !dbg !5058

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5061
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5062 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5067, metadata !627), !dbg !5087
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5068, metadata !627), !dbg !5088
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5089
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5069, metadata !627), !dbg !5090
  %3 = icmp eq i8* %2, null, !dbg !5091
  br i1 %3, label %15, label %4, !dbg !5092

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5077, metadata !627), !dbg !5093
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5078, metadata !627), !dbg !5094
  %5 = load i8, i8* %2, align 1, !dbg !5095, !tbaa !889
  %6 = icmp eq i8 %5, 67, !dbg !5097
  br i1 %6, label %7, label %11, !dbg !5100

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5102
  %9 = load i8, i8* %8, align 1, !dbg !5102, !tbaa !889
  %10 = icmp eq i8 %9, 0, !dbg !5105
  br i1 %10, label %14, label %11, !dbg !5107

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5083, metadata !627), !dbg !5109
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #11, !dbg !5110
  %13 = icmp eq i32 %12, 0, !dbg !5112
  br i1 %13, label %14, label %15, !dbg !5114

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5068, metadata !627), !dbg !5088
  br label %15, !dbg !5116

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5117
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5118 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5130, metadata !627), !dbg !5204
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5197, metadata !627), !dbg !5206
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5207
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5122, metadata !627), !dbg !5208
  %4 = icmp eq i8* %3, null, !dbg !5209
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !5211
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5122, metadata !627), !dbg !5208
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5212, !tbaa !635
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5144, metadata !627) #11, !dbg !5213
  %7 = icmp eq i8* %6, null, !dbg !5214
  br i1 %7, label %8, label %127, !dbg !5215

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #11, !dbg !5216
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5145, metadata !627) #11, !dbg !5217
  %10 = icmp eq i8* %9, null, !dbg !5218
  br i1 %10, label %14, label %11, !dbg !5220

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5221, !tbaa !889
  %13 = icmp eq i8 %12, 0, !dbg !5223
  br i1 %13, label %14, label %15, !dbg !5224

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5226

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5145, metadata !627) #11, !dbg !5217
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5227
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5148, metadata !627) #11, !dbg !5228
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5150, metadata !627) #11, !dbg !5229
  %18 = icmp eq i64 %17, 0, !dbg !5230
  br i1 %18, label %24, label %19, !dbg !5231

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5232
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5232
  %22 = load i8, i8* %21, align 1, !dbg !5232, !tbaa !889
  %23 = icmp ne i8 %22, 47, !dbg !5234
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5235
  %27 = add i64 %17, 14, !dbg !5236
  %28 = add i64 %27, %26, !dbg !5237
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5238
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5147, metadata !627) #11, !dbg !5239
  %30 = icmp eq i8* %29, null, !dbg !5240
  br i1 %30, label %125, label %31, !dbg !5240

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5241
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5244

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5245, !tbaa !889
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5247
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5248
  br label %37, !dbg !5249

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5247
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5248
  br label %37, !dbg !5249

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5250
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5152, metadata !627) #11, !dbg !5251
  %39 = icmp slt i32 %38, 0, !dbg !5252
  br i1 %39, label %123, label %40, !dbg !5253

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #11, !dbg !5254
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5153, metadata !627) #11, !dbg !5255
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5256
  br i1 %42, label %48, label %43, !dbg !5257

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5258

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5259
  br label %123, !dbg !5261

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5263
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5264
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5265, metadata !627) #11, !dbg !5270
  %53 = load i8*, i8** %46, align 8, !dbg !5272, !tbaa !4908
  %54 = load i8*, i8** %47, align 8, !dbg !5272, !tbaa !4906
  %55 = icmp ult i8* %53, %54, !dbg !5272
  br i1 %55, label %58, label %56, !dbg !5272, !prof !1140

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5273
  br label %62, !dbg !5273

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5275
  store i8* %59, i8** %46, align 8, !dbg !5275, !tbaa !4908
  %60 = load i8, i8* %53, align 1, !dbg !5275, !tbaa !889
  %61 = zext i8 %60 to i32, !dbg !5275
  br label %62, !dbg !5275

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5277
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5196, metadata !627) #11, !dbg !5279
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5280

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5281

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5265, metadata !627) #11, !dbg !5281
  %66 = load i8*, i8** %46, align 8, !dbg !5285, !tbaa !4908
  %67 = load i8*, i8** %47, align 8, !dbg !5285, !tbaa !4906
  %68 = icmp ult i8* %66, %67, !dbg !5285
  br i1 %68, label %71, label %69, !dbg !5285, !prof !1140

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5286
  br label %75, !dbg !5286

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5287
  store i8* %72, i8** %46, align 8, !dbg !5287, !tbaa !4908
  %73 = load i8, i8* %66, align 1, !dbg !5287, !tbaa !889
  %74 = zext i8 %73 to i32, !dbg !5287
  br label %75, !dbg !5287

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5288
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5196, metadata !627) #11, !dbg !5279
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5289, !llvm.loop !5291

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5294
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5295
  %80 = icmp slt i32 %79, 2, !dbg !5297
  br i1 %80, label %115, label %81, !dbg !5298

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !5299
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5201, metadata !627) #11, !dbg !5300
  %83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !5301
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5202, metadata !627) #11, !dbg !5302
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5203, metadata !627) #11, !dbg !5303
  %84 = icmp eq i64 %51, 0, !dbg !5304
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5306

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  %89 = add i64 %86, 2, !dbg !5307
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5309
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  br label %95, !dbg !5310

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5311
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  %93 = add i64 %92, 1, !dbg !5313
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5314
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  %98 = icmp eq i8* %97, null, !dbg !5315
  br i1 %98, label %99, label %100, !dbg !5317

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  call void @free(i8* %52) #11, !dbg !5318
  br label %116, !dbg !5320

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5321
  %102 = xor i64 %83, -1, !dbg !5322
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5322
  %104 = xor i64 %82, -1, !dbg !5323
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5323
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5324, metadata !627) #11, !dbg !5331
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5330, metadata !627) #11, !dbg !5331
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5333
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5334
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5324, metadata !627) #11, !dbg !5335
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5330, metadata !627) #11, !dbg !5335
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5337
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5338
  br label %111, !dbg !5339

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5258

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5339
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5339
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5258

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5258

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5194, metadata !627) #11, !dbg !5258
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5195, metadata !627) #11, !dbg !5262
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5339
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5339
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5340
  %120 = icmp eq i64 %117, 0, !dbg !5341
  br i1 %120, label %123, label %121, !dbg !5343

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5344
  store i8 0, i8* %122, align 1, !dbg !5346, !tbaa !889
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5144, metadata !627) #11, !dbg !5213
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5144, metadata !627) #11, !dbg !5213
  call void @free(i8* %29) #11, !dbg !5347
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5144, metadata !627) #11, !dbg !5213
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5348, !tbaa !635
  br label %127, !dbg !5349

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5123, metadata !627), !dbg !5350
  %129 = load i8, i8* %128, align 1, !dbg !5351, !tbaa !889
  %130 = icmp eq i8 %129, 0, !dbg !5352
  br i1 %130, label %157, label %131, !dbg !5353

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5355

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5355
  %136 = icmp eq i32 %135, 0, !dbg !5356
  br i1 %136, label %143, label %137, !dbg !5357

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5358
  br i1 %138, label %139, label %147, !dbg !5360

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5361
  %141 = load i8, i8* %140, align 1, !dbg !5361, !tbaa !889
  %142 = icmp eq i8 %141, 0, !dbg !5363
  br i1 %142, label %143, label %147, !dbg !5364

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14, !dbg !5366
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5368
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5369
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5122, metadata !627), !dbg !5208
  br label %157, !dbg !5370

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14, !dbg !5371
  %149 = add i64 %148, 1, !dbg !5372
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5373
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5123, metadata !627), !dbg !5350
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5374
  %152 = add i64 %151, 1, !dbg !5375
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5376
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5123, metadata !627), !dbg !5350
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5123, metadata !627), !dbg !5350
  %154 = load i8, i8* %153, align 1, !dbg !5351, !tbaa !889
  %155 = icmp eq i8 %154, 0, !dbg !5352
  br i1 %155, label %156, label %132, !dbg !5353, !llvm.loop !5377

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5208

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5122, metadata !627), !dbg !5208
  %159 = load i8, i8* %158, align 1, !dbg !5380, !tbaa !889
  %160 = icmp eq i8 %159, 0, !dbg !5382
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %158, !dbg !5383
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5122, metadata !627), !dbg !5208
  ret i8* %161, !dbg !5384
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

!llvm.dbg.cu = !{!2, !88, !94, !111, !120, !556, !127, !133, !559, !201, !567, !584, !586, !597, !601, !603, !605, !607, !609, !612, !614, !210}
!llvm.ident = !{!617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617}
!llvm.module.flags = !{!618, !619, !620, !621}

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
!93 = distinct !DIGlobalVariable(name: "b64c", scope: !94, file: !100, line: 62, type: !106, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !96, globals: !97)
!95 = !DIFile(filename: "./lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!31, !29}
!97 = !{!92, !98}
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "b64", scope: !94, file: !100, line: 252, type: !101, isLocal: true, isDefinition: true)
!100 = !DIFile(filename: "lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2048, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 64)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "file_name", scope: !111, file: !116, line: 36, type: !40, isLocal: true, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !113)
!112 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!109, !114}
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !111, file: !116, line: 46, type: !117, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "exit_failure", scope: !120, file: !123, line: 24, type: !124, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !122)
!121 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !{!118}
!123 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "program_name", scope: !127, file: !130, line: 33, type: !40, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !96, globals: !129)
!128 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !{!125}
!130 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !133, file: !161, line: 77, type: !195, isLocal: false, isDefinition: true)
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
!156 = !{!70, !157, !32, !29}
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !{!131, !159, !166, !179, !181, !184, !191, !193}
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
!169 = !{!170, !171, !172, !177, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !168, file: !161, line: 60, baseType: !5, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !161, line: 63, baseType: !70, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !168, file: !161, line: 67, baseType: !173, size: 256, offset: 64)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !175)
!174 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!175 = !{!176}
!176 = !DISubrange(count: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !168, file: !161, line: 70, baseType: !40, size: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !168, file: !161, line: 73, baseType: !40, size: 64, offset: 384)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !133, file: !161, line: 108, type: !168, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "slot0", scope: !133, file: !161, line: 834, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !104)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "slotvec", scope: !133, file: !161, line: 837, type: !186, isLocal: true, isDefinition: true)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !161, line: 826, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !161, line: 828, baseType: !32, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !187, file: !161, line: 829, baseType: !29, size: 64, offset: 64)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "nslots", scope: !133, file: !161, line: 835, type: !70, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "slotvec0", scope: !133, file: !161, line: 836, type: !187, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 704, elements: !197)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!197 = !{!198}
!198 = !DISubrange(count: 11)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !201, file: !204, line: 26, type: !205, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !203)
!202 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !{!199}
!204 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 47)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !210, file: !554, line: 120, type: !555, isLocal: true, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !212, retainedTypes: !551, globals: !553)
!211 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !{!213}
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !214, line: 41, size: 32, elements: !215)
!214 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!216 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!217 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!218 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!219 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!220 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!221 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!222 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!223 = !DIEnumerator(name: "DAY_1", value: 131079)
!224 = !DIEnumerator(name: "DAY_2", value: 131080)
!225 = !DIEnumerator(name: "DAY_3", value: 131081)
!226 = !DIEnumerator(name: "DAY_4", value: 131082)
!227 = !DIEnumerator(name: "DAY_5", value: 131083)
!228 = !DIEnumerator(name: "DAY_6", value: 131084)
!229 = !DIEnumerator(name: "DAY_7", value: 131085)
!230 = !DIEnumerator(name: "ABMON_1", value: 131086)
!231 = !DIEnumerator(name: "ABMON_2", value: 131087)
!232 = !DIEnumerator(name: "ABMON_3", value: 131088)
!233 = !DIEnumerator(name: "ABMON_4", value: 131089)
!234 = !DIEnumerator(name: "ABMON_5", value: 131090)
!235 = !DIEnumerator(name: "ABMON_6", value: 131091)
!236 = !DIEnumerator(name: "ABMON_7", value: 131092)
!237 = !DIEnumerator(name: "ABMON_8", value: 131093)
!238 = !DIEnumerator(name: "ABMON_9", value: 131094)
!239 = !DIEnumerator(name: "ABMON_10", value: 131095)
!240 = !DIEnumerator(name: "ABMON_11", value: 131096)
!241 = !DIEnumerator(name: "ABMON_12", value: 131097)
!242 = !DIEnumerator(name: "MON_1", value: 131098)
!243 = !DIEnumerator(name: "MON_2", value: 131099)
!244 = !DIEnumerator(name: "MON_3", value: 131100)
!245 = !DIEnumerator(name: "MON_4", value: 131101)
!246 = !DIEnumerator(name: "MON_5", value: 131102)
!247 = !DIEnumerator(name: "MON_6", value: 131103)
!248 = !DIEnumerator(name: "MON_7", value: 131104)
!249 = !DIEnumerator(name: "MON_8", value: 131105)
!250 = !DIEnumerator(name: "MON_9", value: 131106)
!251 = !DIEnumerator(name: "MON_10", value: 131107)
!252 = !DIEnumerator(name: "MON_11", value: 131108)
!253 = !DIEnumerator(name: "MON_12", value: 131109)
!254 = !DIEnumerator(name: "AM_STR", value: 131110)
!255 = !DIEnumerator(name: "PM_STR", value: 131111)
!256 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!257 = !DIEnumerator(name: "D_FMT", value: 131113)
!258 = !DIEnumerator(name: "T_FMT", value: 131114)
!259 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!260 = !DIEnumerator(name: "ERA", value: 131116)
!261 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!262 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!263 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!264 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!265 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!266 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!267 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!268 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!269 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!270 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!271 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!272 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!273 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!274 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!275 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!276 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!277 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!278 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!279 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!280 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!281 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!282 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!283 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!284 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!285 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!286 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!287 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!288 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!289 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!290 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!291 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!292 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!293 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!294 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!295 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!296 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!297 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!298 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!299 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!300 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!301 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!302 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!303 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!304 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!305 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!306 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!307 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!308 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!309 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!310 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!311 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!312 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!313 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!314 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!315 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!316 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!317 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!318 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!319 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!320 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!321 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!322 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!323 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!324 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!325 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!326 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!327 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!328 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!329 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!330 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!331 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!332 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!333 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!334 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!335 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!336 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!337 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!338 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!339 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!340 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!341 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!342 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!343 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!344 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!345 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!346 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!347 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!348 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!349 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!351 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!353 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!358 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!359 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!360 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!361 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!362 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!363 = !DIEnumerator(name: "CODESET", value: 14)
!364 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!365 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!366 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!367 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!419 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!420 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!435 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!436 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!437 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!438 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!439 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!440 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!441 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!442 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!443 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!444 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!445 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!446 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!447 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!448 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!449 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!450 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!451 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!452 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!453 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!454 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!455 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!456 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!457 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!474 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!475 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!478 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!479 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!480 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!481 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!482 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!483 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!484 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!485 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!486 = !DIEnumerator(name: "THOUSEP", value: 65537)
!487 = !DIEnumerator(name: "__GROUPING", value: 65538)
!488 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!489 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!490 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!491 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!492 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!493 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!494 = !DIEnumerator(name: "__YESSTR", value: 327682)
!495 = !DIEnumerator(name: "__NOSTR", value: 327683)
!496 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!497 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!498 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!499 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!500 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!501 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!506 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!507 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!508 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!509 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!510 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!518 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!519 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!520 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!521 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!522 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!523 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!527 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!528 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!529 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!530 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!531 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!532 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!549 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!550 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!551 = !{!31, !29, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!553 = !{!208}
!554 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !558)
!557 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!19}
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !566)
!560 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!562}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !563, line: 41, size: 32, elements: !564)
!563 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!565}
!565 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!566 = !{!31}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !569, retainedTypes: !583)
!568 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = !{!570}
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !572, file: !571, line: 192, size: 32, elements: !581)
!571 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = distinct !DISubprogram(name: "x2nrealloc", scope: !571, file: !571, line: 180, type: !573, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !576)
!573 = !DISubroutineType(types: !574)
!574 = !{!31, !31, !575, !32}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(name: "p", arg: 1, scope: !572, file: !571, line: 180, type: !31)
!578 = !DILocalVariable(name: "pn", arg: 2, scope: !572, file: !571, line: 180, type: !575)
!579 = !DILocalVariable(name: "s", arg: 3, scope: !572, file: !571, line: 180, type: !32)
!580 = !DILocalVariable(name: "n", scope: !572, file: !571, line: 182, type: !32)
!581 = !{!582}
!582 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!583 = !{!32, !29, !31}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!585 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !588)
!587 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !{!589}
!589 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !590, line: 26, size: 32, elements: !591)
!590 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!592, !593, !594, !595, !596}
!592 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!593 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!594 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!595 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!596 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !600)
!598 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!589, !141}
!600 = !{!70, !157, !29}
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !566)
!602 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!604 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !566)
!606 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !566)
!608 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !611)
!610 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!32}
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!613 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !616)
!615 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!32, !35, !37, !40}
!617 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!618 = !{i32 2, !"Dwarf Version", i32 4}
!619 = !{i32 2, !"Debug Info Version", i32 3}
!620 = !{i32 1, !"PIC Level", i32 2}
!621 = !{i32 1, !"PIE Level", i32 2}
!622 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !623, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !70}
!625 = !{!626}
!626 = !DILocalVariable(name: "status", arg: 1, scope: !622, file: !3, line: 59, type: !70)
!627 = !DIExpression()
!628 = !DILocation(line: 59, column: 12, scope: !622)
!629 = !DILocation(line: 61, column: 14, scope: !630)
!630 = distinct !DILexicalBlock(scope: !622, file: !3, line: 61, column: 7)
!631 = !DILocation(line: 61, column: 7, scope: !622)
!632 = !DILocation(line: 62, column: 5, scope: !633)
!633 = !DILexicalBlockFile(scope: !634, file: !3, discriminator: 1)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 62, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 62, column: 5, scope: !640)
!640 = !DILexicalBlockFile(scope: !634, file: !3, discriminator: 3)
!641 = !DILocation(line: 62, column: 5, scope: !642)
!642 = !DILexicalBlockFile(scope: !634, file: !3, discriminator: 2)
!643 = !DILocation(line: 65, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !630, file: !3, line: 64, column: 5)
!645 = !DILocation(line: 65, column: 7, scope: !646)
!646 = !DILexicalBlockFile(scope: !644, file: !3, discriminator: 1)
!647 = !DILocation(line: 580, column: 3, scope: !648, inlinedAt: !651)
!648 = distinct !DISubprogram(name: "emit_stdin_note", scope: !46, file: !46, line: 578, type: !649, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !90)
!649 = !DISubroutineType(types: !650)
!650 = !{null}
!651 = distinct !DILocation(line: 70, column: 7, scope: !644)
!652 = !DILocation(line: 580, column: 3, scope: !653, inlinedAt: !651)
!653 = !DILexicalBlockFile(scope: !648, file: !46, discriminator: 1)
!654 = !DILocation(line: 587, column: 3, scope: !655, inlinedAt: !656)
!655 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !46, file: !46, line: 585, type: !649, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !90)
!656 = distinct !DILocation(line: 71, column: 7, scope: !644)
!657 = !DILocation(line: 587, column: 3, scope: !658, inlinedAt: !656)
!658 = !DILexicalBlockFile(scope: !655, file: !46, discriminator: 1)
!659 = !DILocation(line: 73, column: 7, scope: !644)
!660 = !DILocation(line: 73, column: 7, scope: !646)
!661 = !DILocation(line: 80, column: 7, scope: !644)
!662 = !DILocation(line: 80, column: 7, scope: !646)
!663 = !DILocation(line: 81, column: 7, scope: !644)
!664 = !DILocation(line: 81, column: 7, scope: !646)
!665 = !DILocation(line: 82, column: 7, scope: !644)
!666 = !DILocation(line: 82, column: 7, scope: !646)
!667 = !DILocation(line: 642, column: 15, scope: !45, inlinedAt: !668)
!668 = distinct !DILocation(line: 89, column: 7, scope: !644)
!669 = !DILocation(line: 651, column: 3, scope: !45, inlinedAt: !668)
!670 = !DILocation(line: 651, column: 3, scope: !671, inlinedAt: !668)
!671 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 1)
!672 = !DILocation(line: 655, column: 29, scope: !45, inlinedAt: !668)
!673 = !DILocation(line: 655, column: 15, scope: !45, inlinedAt: !668)
!674 = !DILocation(line: 656, column: 7, scope: !65, inlinedAt: !668)
!675 = !DILocation(line: 656, column: 19, scope: !65, inlinedAt: !668)
!676 = !DILocation(line: 656, column: 22, scope: !677, inlinedAt: !668)
!677 = !DILexicalBlockFile(scope: !65, file: !46, discriminator: 16)
!678 = !DILocation(line: 656, column: 7, scope: !679, inlinedAt: !668)
!679 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 16)
!680 = !DILocation(line: 662, column: 7, scope: !681, inlinedAt: !668)
!681 = distinct !DILexicalBlock(scope: !65, file: !46, line: 657, column: 5)
!682 = !DILocation(line: 662, column: 7, scope: !683, inlinedAt: !668)
!683 = !DILexicalBlockFile(scope: !681, file: !46, discriminator: 1)
!684 = !DILocation(line: 664, column: 5, scope: !681, inlinedAt: !668)
!685 = !DILocation(line: 665, column: 3, scope: !45, inlinedAt: !668)
!686 = !DILocation(line: 665, column: 3, scope: !671, inlinedAt: !668)
!687 = !DILocation(line: 667, column: 3, scope: !45, inlinedAt: !668)
!688 = !DILocation(line: 667, column: 3, scope: !671, inlinedAt: !668)
!689 = !DILocation(line: 92, column: 3, scope: !622)
!690 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 264, type: !691, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !694)
!691 = !DISubroutineType(types: !692)
!692 = !{!70, !70, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!694 = !{!695, !696, !697, !698, !753, !754, !755, !756, !760, !763, !764, !766, !767, !772, !773, !775}
!695 = !DILocalVariable(name: "argc", arg: 1, scope: !690, file: !3, line: 264, type: !70)
!696 = !DILocalVariable(name: "argv", arg: 2, scope: !690, file: !3, line: 264, type: !693)
!697 = !DILocalVariable(name: "opt", scope: !690, file: !3, line: 266, type: !70)
!698 = !DILocalVariable(name: "input_fh", scope: !690, file: !3, line: 267, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !702)
!701 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !704)
!703 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !725, !726, !727, !728, !732, !733, !734, !738, !741, !743, !744, !745, !746, !747, !748, !749}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !702, file: !703, line: 242, baseType: !70, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !702, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !702, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !702, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !702, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !702, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !702, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !702, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !702, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !702, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !702, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !702, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !702, file: !703, line: 260, baseType: !718, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !720)
!720 = !{!721, !722, !724}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !719, file: !703, line: 157, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !719, file: !703, line: 158, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !719, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !702, file: !703, line: 262, baseType: !723, size: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !702, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !702, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !702, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !730, line: 140, baseType: !731)
!730 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!731 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !702, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !702, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !702, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 1)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !702, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !703, line: 150, baseType: null)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !702, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !730, line: 141, baseType: !731)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !702, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !702, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !702, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !702, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !702, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !702, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !702, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 20)
!753 = !DILocalVariable(name: "infile", scope: !690, file: !3, line: 268, type: !40)
!754 = !DILocalVariable(name: "decode", scope: !690, file: !3, line: 271, type: !117)
!755 = !DILocalVariable(name: "ignore_garbage", scope: !690, file: !3, line: 273, type: !117)
!756 = !DILocalVariable(name: "wrap_column", scope: !690, file: !3, line: 275, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !758, line: 136, baseType: !759)
!758 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !730, line: 62, baseType: !34)
!760 = !DILocalVariable(name: "__s1_len", scope: !761, file: !3, line: 321, type: !32)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 321, column: 7)
!762 = distinct !DILexicalBlock(scope: !690, file: !3, line: 321, column: 7)
!763 = !DILocalVariable(name: "__s2_len", scope: !761, file: !3, line: 321, type: !32)
!764 = !DILocalVariable(name: "__s2", scope: !765, file: !3, line: 321, type: !37)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 321, column: 7)
!766 = !DILocalVariable(name: "__result", scope: !765, file: !3, line: 321, type: !70)
!767 = !DILocalVariable(name: "__s1_len", scope: !768, file: !3, line: 342, type: !32)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 342, column: 11)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 342, column: 11)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 341, column: 5)
!771 = distinct !DILexicalBlock(scope: !690, file: !3, line: 340, column: 7)
!772 = !DILocalVariable(name: "__s2_len", scope: !768, file: !3, line: 342, type: !32)
!773 = !DILocalVariable(name: "__s2", scope: !774, file: !3, line: 342, type: !37)
!774 = distinct !DILexicalBlock(scope: !768, file: !3, line: 342, column: 11)
!775 = !DILocalVariable(name: "__result", scope: !774, file: !3, line: 342, type: !70)
!776 = !DILocalVariable(name: "inbuf", scope: !777, file: !3, line: 207, type: !806)
!777 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !778, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !699, !699, !117}
!780 = !{!781, !782, !783, !776, !784, !788, !789, !798, !800, !801, !802}
!781 = !DILocalVariable(name: "in", arg: 1, scope: !777, file: !3, line: 205, type: !699)
!782 = !DILocalVariable(name: "out", arg: 2, scope: !777, file: !3, line: 205, type: !699)
!783 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !777, file: !3, line: 205, type: !117)
!784 = !DILocalVariable(name: "outbuf", scope: !777, file: !3, line: 208, type: !785)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24576, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 3072)
!788 = !DILocalVariable(name: "sum", scope: !777, file: !3, line: 209, type: !32)
!789 = !DILocalVariable(name: "ctx", scope: !777, file: !3, line: 210, type: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !791, line: 35, size: 64, elements: !792)
!791 = !DIFile(filename: "./lib/base64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !790, file: !791, line: 37, baseType: !174, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !790, file: !791, line: 38, baseType: !795, size: 32, offset: 32)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 4)
!798 = !DILocalVariable(name: "ok", scope: !799, file: !3, line: 216, type: !117)
!799 = distinct !DILexicalBlock(scope: !777, file: !3, line: 215, column: 5)
!800 = !DILocalVariable(name: "n", scope: !799, file: !3, line: 217, type: !32)
!801 = !DILocalVariable(name: "k", scope: !799, file: !3, line: 218, type: !174)
!802 = !DILocalVariable(name: "i", scope: !803, file: !3, line: 227, type: !32)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 226, column: 13)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 225, column: 15)
!805 = distinct !DILexicalBlock(scope: !799, file: !3, line: 222, column: 9)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 4096)
!809 = !DILocation(line: 207, column: 8, scope: !777, inlinedAt: !810)
!810 = distinct !DILocation(line: 336, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !690, file: !3, line: 335, column: 7)
!812 = !DILocation(line: 208, column: 8, scope: !777, inlinedAt: !810)
!813 = !DILocalVariable(name: "inbuf", scope: !814, file: !3, line: 168, type: !829)
!814 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !815, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !699, !699, !757}
!817 = !{!818, !819, !820, !821, !813, !822, !826, !827}
!818 = !DILocalVariable(name: "in", arg: 1, scope: !814, file: !3, line: 165, type: !699)
!819 = !DILocalVariable(name: "out", arg: 2, scope: !814, file: !3, line: 165, type: !699)
!820 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !814, file: !3, line: 165, type: !757)
!821 = !DILocalVariable(name: "current_column", scope: !814, file: !3, line: 167, type: !32)
!822 = !DILocalVariable(name: "outbuf", scope: !814, file: !3, line: 169, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 327680, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 40960)
!826 = !DILocalVariable(name: "sum", scope: !814, file: !3, line: 170, type: !32)
!827 = !DILocalVariable(name: "n", scope: !828, file: !3, line: 174, type: !32)
!828 = distinct !DILexicalBlock(scope: !814, file: !3, line: 173, column: 5)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 245760, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 30720)
!832 = !DILocation(line: 168, column: 8, scope: !814, inlinedAt: !833)
!833 = distinct !DILocation(line: 338, column: 5, scope: !811)
!834 = !DILocation(line: 169, column: 8, scope: !814, inlinedAt: !833)
!835 = !DILocation(line: 264, column: 11, scope: !690)
!836 = !DILocation(line: 264, column: 24, scope: !690)
!837 = !DILocation(line: 271, column: 8, scope: !690)
!838 = !DILocation(line: 273, column: 8, scope: !690)
!839 = !DILocation(line: 275, column: 13, scope: !690)
!840 = !DILocation(line: 278, column: 21, scope: !690)
!841 = !DILocation(line: 278, column: 3, scope: !690)
!842 = !DILocation(line: 279, column: 3, scope: !690)
!843 = !DILocation(line: 280, column: 3, scope: !690)
!844 = !DILocation(line: 281, column: 3, scope: !690)
!845 = !DILocation(line: 283, column: 3, scope: !690)
!846 = !DILocation(line: 285, column: 3, scope: !690)
!847 = !DILocation(line: 285, column: 17, scope: !848)
!848 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!849 = !DILocation(line: 266, column: 7, scope: !690)
!850 = !DILocation(line: 285, column: 3, scope: !848)
!851 = distinct !{!851, !846, !852}
!852 = !DILocation(line: 308, column: 7, scope: !690)
!853 = !DILocation(line: 293, column: 35, scope: !854)
!854 = distinct !DILexicalBlock(scope: !690, file: !3, line: 287, column: 7)
!855 = !DILocation(line: 294, column: 35, scope: !854)
!856 = !DILocation(line: 293, column: 23, scope: !854)
!857 = !DILocation(line: 295, column: 9, scope: !854)
!858 = !DILocation(line: 301, column: 7, scope: !854)
!859 = !DILocation(line: 303, column: 7, scope: !854)
!860 = !DILocation(line: 303, column: 7, scope: !861)
!861 = !DILexicalBlockFile(scope: !854, file: !3, discriminator: 1)
!862 = !DILocation(line: 306, column: 9, scope: !854)
!863 = !DILocation(line: 310, column: 14, scope: !864)
!864 = distinct !DILexicalBlock(scope: !690, file: !3, line: 310, column: 7)
!865 = !{!866, !866, i64 0}
!866 = !{!"int", !637, i64 0}
!867 = !DILocation(line: 310, column: 12, scope: !864)
!868 = !DILocation(line: 310, column: 21, scope: !864)
!869 = !DILocation(line: 310, column: 7, scope: !690)
!870 = !DILocation(line: 312, column: 20, scope: !871)
!871 = distinct !DILexicalBlock(scope: !864, file: !3, line: 311, column: 5)
!872 = !DILocation(line: 312, column: 55, scope: !871)
!873 = !DILocation(line: 312, column: 50, scope: !871)
!874 = !DILocation(line: 312, column: 43, scope: !875)
!875 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 1)
!876 = !DILocation(line: 312, column: 7, scope: !877)
!877 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 2)
!878 = !DILocation(line: 313, column: 7, scope: !871)
!879 = !DILocation(line: 316, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !690, file: !3, line: 316, column: 7)
!881 = !DILocation(line: 316, column: 7, scope: !690)
!882 = !DILocation(line: 317, column: 14, scope: !880)
!883 = !DILocation(line: 268, column: 15, scope: !690)
!884 = !DILocation(line: 317, column: 5, scope: !880)
!885 = !DILocation(line: 321, column: 7, scope: !761)
!886 = !DILocation(line: 321, column: 7, scope: !765)
!887 = !DILocation(line: 321, column: 7, scope: !888)
!888 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 2)
!889 = !{!637, !637, i64 0}
!890 = !DILocation(line: 321, column: 7, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 3)
!892 = distinct !DILexicalBlock(scope: !765, file: !3, line: 321, column: 7)
!893 = !DILocation(line: 321, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 2)
!895 = !DILocation(line: 321, column: 7, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 4)
!897 = distinct !DILexicalBlock(scope: !892, file: !3, line: 321, column: 7)
!898 = !DILocation(line: 321, column: 7, scope: !899)
!899 = !DILexicalBlockFile(scope: !761, file: !3, discriminator: 11)
!900 = !DILocation(line: 321, column: 7, scope: !901)
!901 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 13)
!902 = !DILocation(line: 324, column: 18, scope: !903)
!903 = distinct !DILexicalBlock(scope: !762, file: !3, line: 322, column: 5)
!904 = !DILocation(line: 267, column: 9, scope: !690)
!905 = !DILocation(line: 325, column: 5, scope: !903)
!906 = !DILocation(line: 328, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !762, file: !3, line: 327, column: 5)
!908 = !DILocation(line: 329, column: 20, scope: !909)
!909 = distinct !DILexicalBlock(scope: !907, file: !3, line: 329, column: 11)
!910 = !DILocation(line: 329, column: 11, scope: !907)
!911 = !DILocation(line: 330, column: 9, scope: !909)
!912 = !DILocation(line: 330, column: 9, scope: !913)
!913 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 1)
!914 = !DILocation(line: 330, column: 9, scope: !915)
!915 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 2)
!916 = !DILocation(line: 333, column: 3, scope: !690)
!917 = !DILocation(line: 335, column: 7, scope: !811)
!918 = !DILocation(line: 335, column: 7, scope: !690)
!919 = !DILocation(line: 336, column: 34, scope: !811)
!920 = !DILocation(line: 205, column: 18, scope: !777, inlinedAt: !810)
!921 = !DILocation(line: 205, column: 28, scope: !777, inlinedAt: !810)
!922 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!923 = !DILocation(line: 205, column: 38, scope: !777, inlinedAt: !810)
!924 = !DILocation(line: 207, column: 3, scope: !777, inlinedAt: !810)
!925 = !DILocation(line: 208, column: 3, scope: !777, inlinedAt: !810)
!926 = !DILocation(line: 210, column: 3, scope: !777, inlinedAt: !810)
!927 = !DIExpression(DW_OP_deref)
!928 = !DILocation(line: 210, column: 30, scope: !777, inlinedAt: !810)
!929 = !DILocation(line: 212, column: 3, scope: !777, inlinedAt: !810)
!930 = !DILocation(line: 214, column: 3, scope: !777, inlinedAt: !810)
!931 = distinct !{!931, !932, !933}
!932 = !DILocation(line: 214, column: 3, scope: !777)
!933 = !DILocation(line: 260, column: 20, scope: !777)
!934 = !DILocation(line: 217, column: 7, scope: !799, inlinedAt: !810)
!935 = !DILocation(line: 209, column: 10, scope: !777, inlinedAt: !810)
!936 = !DILocation(line: 221, column: 7, scope: !799, inlinedAt: !810)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 221, column: 7, scope: !799)
!939 = !DILocation(line: 240, column: 61, scope: !799)
!940 = !DILocation(line: 223, column: 15, scope: !805, inlinedAt: !810)
!941 = !DILocation(line: 217, column: 14, scope: !799, inlinedAt: !810)
!942 = !DILocation(line: 223, column: 13, scope: !805, inlinedAt: !810)
!943 = !{!944, !944, i64 0}
!944 = !{!"long", !637, i64 0}
!945 = !DILocation(line: 225, column: 15, scope: !805, inlinedAt: !810)
!946 = !DILocation(line: 227, column: 22, scope: !803, inlinedAt: !810)
!947 = !DILocation(line: 228, column: 38, scope: !948, inlinedAt: !810)
!948 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 2)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 228, column: 15)
!950 = distinct !DILexicalBlock(scope: !803, file: !3, line: 228, column: 15)
!951 = !DILocation(line: 228, column: 33, scope: !952, inlinedAt: !810)
!952 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 1)
!953 = !DILocation(line: 228, column: 27, scope: !952, inlinedAt: !810)
!954 = !DILocation(line: 229, column: 29, scope: !955, inlinedAt: !810)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 229, column: 21)
!956 = !DILocation(line: 229, column: 21, scope: !955, inlinedAt: !810)
!957 = !DILocation(line: 229, column: 63, scope: !958, inlinedAt: !810)
!958 = !DILexicalBlockFile(scope: !955, file: !3, discriminator: 1)
!959 = !DILocation(line: 229, column: 45, scope: !955, inlinedAt: !810)
!960 = !DILocation(line: 230, column: 20, scope: !955, inlinedAt: !810)
!961 = distinct !{!961, !962, !963}
!962 = !DILocation(line: 228, column: 15, scope: !950)
!963 = !DILocation(line: 232, column: 73, scope: !950)
!964 = !DILocation(line: 232, column: 66, scope: !955, inlinedAt: !810)
!965 = !DILocation(line: 232, column: 70, scope: !955, inlinedAt: !810)
!966 = !DILocation(line: 232, column: 19, scope: !955, inlinedAt: !810)
!967 = !DILocation(line: 235, column: 18, scope: !805, inlinedAt: !810)
!968 = !DILocation(line: 235, column: 15, scope: !805, inlinedAt: !810)
!969 = !DILocalVariable(name: "__stream", arg: 1, scope: !970, file: !971, line: 132, type: !699)
!970 = distinct !DISubprogram(name: "ferror_unlocked", scope: !971, file: !971, line: 132, type: !972, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !974)
!971 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!972 = !DISubroutineType(types: !973)
!973 = !{!70, !699}
!974 = !{!969}
!975 = !DILocation(line: 132, column: 1, scope: !970, inlinedAt: !976)
!976 = distinct !DILocation(line: 237, column: 15, scope: !977, inlinedAt: !810)
!977 = distinct !DILexicalBlock(scope: !805, file: !3, line: 237, column: 15)
!978 = !DILocation(line: 134, column: 10, scope: !970, inlinedAt: !976)
!979 = !{!980, !866, i64 0}
!980 = !{!"_IO_FILE", !866, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !866, i64 112, !866, i64 116, !944, i64 120, !981, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !944, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !944, i64 184, !866, i64 192, !637, i64 196}
!981 = !{!"short", !637, i64 0}
!982 = !DILocation(line: 237, column: 15, scope: !977, inlinedAt: !810)
!983 = !DILocation(line: 237, column: 15, scope: !805, inlinedAt: !810)
!984 = !DILocation(line: 238, column: 13, scope: !977, inlinedAt: !810)
!985 = !DILocation(line: 238, column: 13, scope: !986, inlinedAt: !810)
!986 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 1)
!987 = !DILocation(line: 238, column: 13, scope: !988, inlinedAt: !810)
!988 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 2)
!989 = !DILocation(line: 240, column: 18, scope: !799, inlinedAt: !810)
!990 = !DILocation(line: 127, column: 10, scope: !991, inlinedAt: !994)
!991 = distinct !DISubprogram(name: "feof_unlocked", scope: !971, file: !971, line: 125, type: !972, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !992)
!992 = !{!993}
!993 = !DILocalVariable(name: "__stream", arg: 1, scope: !991, file: !971, line: 125, type: !699)
!994 = distinct !DILocation(line: 240, column: 52, scope: !995, inlinedAt: !810)
!995 = !DILexicalBlockFile(scope: !799, file: !3, discriminator: 1)
!996 = !DILocation(line: 240, column: 51, scope: !995, inlinedAt: !810)
!997 = !DILocation(line: 240, column: 48, scope: !799, inlinedAt: !810)
!998 = !DILocation(line: 125, column: 1, scope: !991, inlinedAt: !994)
!999 = !DILocation(line: 248, column: 17, scope: !1000, inlinedAt: !810)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 248, column: 15)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 247, column: 9)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 246, column: 7)
!1003 = distinct !DILexicalBlock(scope: !799, file: !3, line: 246, column: 7)
!1004 = !DILocation(line: 218, column: 20, scope: !799, inlinedAt: !810)
!1005 = !DILocation(line: 125, column: 1, scope: !991, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 246, column: 29, scope: !1007, inlinedAt: !810)
!1007 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 1)
!1008 = !DILocation(line: 127, column: 10, scope: !991, inlinedAt: !1006)
!1009 = !DILocation(line: 246, column: 25, scope: !1007, inlinedAt: !810)
!1010 = !DILocation(line: 246, column: 21, scope: !1007, inlinedAt: !810)
!1011 = !DILocation(line: 246, column: 7, scope: !1012, inlinedAt: !810)
!1012 = !DILexicalBlockFile(scope: !1003, file: !3, discriminator: 1)
!1013 = distinct !{!1013, !1014, !1015}
!1014 = !DILocation(line: 246, column: 7, scope: !1003)
!1015 = !DILocation(line: 258, column: 9, scope: !1003)
!1016 = !DILocation(line: 248, column: 29, scope: !1017, inlinedAt: !810)
!1017 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 1)
!1018 = !DILocation(line: 248, column: 31, scope: !1017, inlinedAt: !810)
!1019 = !DILocation(line: 248, column: 22, scope: !1000, inlinedAt: !810)
!1020 = !DILocation(line: 250, column: 13, scope: !1001, inlinedAt: !810)
!1021 = !DILocation(line: 251, column: 49, scope: !1001, inlinedAt: !810)
!1022 = !DILocation(line: 251, column: 47, scope: !1001, inlinedAt: !810)
!1023 = !DILocation(line: 251, column: 16, scope: !1024, inlinedAt: !810)
!1024 = !DILexicalBlockFile(scope: !1001, file: !3, discriminator: 3)
!1025 = !DILocation(line: 253, column: 15, scope: !1026, inlinedAt: !810)
!1026 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 253, column: 15)
!1027 = !DILocation(line: 253, column: 44, scope: !1026, inlinedAt: !810)
!1028 = !DILocation(line: 253, column: 42, scope: !1026, inlinedAt: !810)
!1029 = !DILocation(line: 253, column: 15, scope: !1001, inlinedAt: !810)
!1030 = !DILocation(line: 254, column: 13, scope: !1026, inlinedAt: !810)
!1031 = !DILocation(line: 254, column: 13, scope: !1032, inlinedAt: !810)
!1032 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1033 = !DILocation(line: 254, column: 13, scope: !1034, inlinedAt: !810)
!1034 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 2)
!1035 = !DILocation(line: 246, column: 41, scope: !1036, inlinedAt: !810)
!1036 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 2)
!1037 = !DILocation(line: 256, column: 15, scope: !1001, inlinedAt: !810)
!1038 = !DILocation(line: 257, column: 13, scope: !1039, inlinedAt: !810)
!1039 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 256, column: 15)
!1040 = !DILocation(line: 257, column: 13, scope: !1041, inlinedAt: !810)
!1041 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 1)
!1042 = !DILocation(line: 127, column: 10, scope: !991, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 260, column: 11, scope: !777, inlinedAt: !810)
!1044 = !DILocation(line: 259, column: 5, scope: !777, inlinedAt: !810)
!1045 = !DILocation(line: 125, column: 1, scope: !991, inlinedAt: !1043)
!1046 = !DILocation(line: 260, column: 10, scope: !777, inlinedAt: !810)
!1047 = !DILocation(line: 259, column: 5, scope: !995, inlinedAt: !810)
!1048 = !DILocation(line: 261, column: 1, scope: !777, inlinedAt: !810)
!1049 = !DILocation(line: 336, column: 5, scope: !811)
!1050 = !DILocation(line: 165, column: 18, scope: !814, inlinedAt: !833)
!1051 = !DILocation(line: 165, column: 28, scope: !814, inlinedAt: !833)
!1052 = !DILocation(line: 165, column: 43, scope: !814, inlinedAt: !833)
!1053 = !DILocation(line: 167, column: 10, scope: !814, inlinedAt: !833)
!1054 = !DILocation(line: 168, column: 3, scope: !814, inlinedAt: !833)
!1055 = !DILocation(line: 169, column: 3, scope: !814, inlinedAt: !833)
!1056 = !DILocation(line: 172, column: 3, scope: !814, inlinedAt: !833)
!1057 = distinct !{!1057, !1058, !1059}
!1058 = !DILocation(line: 172, column: 3, scope: !814)
!1059 = !DILocation(line: 194, column: 60, scope: !814)
!1060 = !DILocation(line: 170, column: 10, scope: !814, inlinedAt: !833)
!1061 = !DILocation(line: 177, column: 7, scope: !828, inlinedAt: !833)
!1062 = distinct !{!1062, !1063, !1064}
!1063 = !DILocation(line: 177, column: 7, scope: !828)
!1064 = !DILocation(line: 182, column: 63, scope: !828)
!1065 = !DILocation(line: 179, column: 15, scope: !1066, inlinedAt: !833)
!1066 = distinct !DILexicalBlock(scope: !828, file: !3, line: 178, column: 9)
!1067 = !DILocation(line: 174, column: 14, scope: !828, inlinedAt: !833)
!1068 = !DILocation(line: 180, column: 15, scope: !1066, inlinedAt: !833)
!1069 = !DILocation(line: 125, column: 1, scope: !991, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 182, column: 15, scope: !828, inlinedAt: !833)
!1071 = !DILocation(line: 127, column: 10, scope: !991, inlinedAt: !1070)
!1072 = !DILocation(line: 182, column: 15, scope: !828, inlinedAt: !833)
!1073 = !DILocation(line: 182, column: 25, scope: !828, inlinedAt: !833)
!1074 = !DILocation(line: 132, column: 1, scope: !970, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 182, column: 29, scope: !1076, inlinedAt: !833)
!1076 = !DILexicalBlockFile(scope: !828, file: !3, discriminator: 1)
!1077 = !DILocation(line: 134, column: 10, scope: !970, inlinedAt: !1075)
!1078 = !DILocation(line: 182, column: 29, scope: !1076, inlinedAt: !833)
!1079 = !DILocation(line: 182, column: 48, scope: !1080, inlinedAt: !833)
!1080 = !DILexicalBlockFile(scope: !828, file: !3, discriminator: 2)
!1081 = !DILocation(line: 182, column: 41, scope: !1076, inlinedAt: !833)
!1082 = !DILocation(line: 184, column: 15, scope: !1083, inlinedAt: !833)
!1083 = distinct !DILexicalBlock(scope: !828, file: !3, line: 184, column: 11)
!1084 = !DILocation(line: 184, column: 11, scope: !828, inlinedAt: !833)
!1085 = !DILocation(line: 188, column: 44, scope: !1086, inlinedAt: !833)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 185, column: 9)
!1087 = !DILocation(line: 188, column: 11, scope: !1086, inlinedAt: !833)
!1088 = !DILocalVariable(name: "buffer", arg: 1, scope: !1089, file: !3, line: 130, type: !40)
!1089 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !1090, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !40, !32, !757, !575, !699}
!1092 = !{!1088, !1093, !1094, !1095, !1096, !1097, !1098, !1103}
!1093 = !DILocalVariable(name: "len", arg: 2, scope: !1089, file: !3, line: 130, type: !32)
!1094 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1089, file: !3, line: 131, type: !757)
!1095 = !DILocalVariable(name: "current_column", arg: 4, scope: !1089, file: !3, line: 131, type: !575)
!1096 = !DILocalVariable(name: "out", arg: 5, scope: !1089, file: !3, line: 131, type: !699)
!1097 = !DILocalVariable(name: "written", scope: !1089, file: !3, line: 133, type: !32)
!1098 = !DILocalVariable(name: "cols_remaining", scope: !1099, file: !3, line: 144, type: !757)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 143, column: 7)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 142, column: 5)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 142, column: 5)
!1102 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 135, column: 7)
!1103 = !DILocalVariable(name: "to_write", scope: !1099, file: !3, line: 145, type: !32)
!1104 = !DILocation(line: 130, column: 25, scope: !1089, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 190, column: 11, scope: !1086, inlinedAt: !833)
!1106 = !DILocation(line: 130, column: 40, scope: !1089, inlinedAt: !1105)
!1107 = !DILocation(line: 131, column: 23, scope: !1089, inlinedAt: !1105)
!1108 = !DILocation(line: 131, column: 66, scope: !1089, inlinedAt: !1105)
!1109 = !DILocation(line: 135, column: 7, scope: !1089, inlinedAt: !1105)
!1110 = !DILocation(line: 133, column: 10, scope: !1089, inlinedAt: !1105)
!1111 = !DILocation(line: 142, column: 31, scope: !1112, inlinedAt: !1105)
!1112 = !DILexicalBlockFile(scope: !1100, file: !3, discriminator: 1)
!1113 = !DILocation(line: 142, column: 5, scope: !1114, inlinedAt: !1105)
!1114 = !DILexicalBlockFile(scope: !1101, file: !3, discriminator: 1)
!1115 = !DILocation(line: 138, column: 11, scope: !1116, inlinedAt: !1105)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 138, column: 11)
!1117 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 136, column: 5)
!1118 = !DILocation(line: 138, column: 43, scope: !1116, inlinedAt: !1105)
!1119 = !DILocation(line: 138, column: 11, scope: !1117, inlinedAt: !1105)
!1120 = !DILocation(line: 139, column: 9, scope: !1116, inlinedAt: !1105)
!1121 = !DILocation(line: 139, column: 9, scope: !1122, inlinedAt: !1105)
!1122 = !DILexicalBlockFile(scope: !1116, file: !3, discriminator: 1)
!1123 = !DILocation(line: 139, column: 9, scope: !1124, inlinedAt: !1105)
!1124 = !DILexicalBlockFile(scope: !1116, file: !3, discriminator: 2)
!1125 = !DILocalVariable(name: "__c", arg: 1, scope: !1126, file: !971, line: 88, type: !70)
!1126 = distinct !DISubprogram(name: "fputc_unlocked", scope: !971, file: !971, line: 88, type: !1127, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!70, !70, !699}
!1129 = !{!1125, !1130}
!1130 = !DILocalVariable(name: "__stream", arg: 2, scope: !1126, file: !971, line: 88, type: !699)
!1131 = !DILocation(line: 88, column: 21, scope: !1126, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 150, column: 17, scope: !1133, inlinedAt: !1105)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 150, column: 17)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 149, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 148, column: 13)
!1136 = !DILocation(line: 88, column: 32, scope: !1126, inlinedAt: !1132)
!1137 = !DILocation(line: 90, column: 10, scope: !1126, inlinedAt: !1132)
!1138 = !{!980, !636, i64 40}
!1139 = !{!980, !636, i64 48}
!1140 = !{!"branch_weights", i32 2000, i32 1}
!1141 = !DILocation(line: 90, column: 10, scope: !1142, inlinedAt: !1132)
!1142 = !DILexicalBlockFile(scope: !1126, file: !971, discriminator: 2)
!1143 = !DILocation(line: 150, column: 17, scope: !1134, inlinedAt: !1105)
!1144 = !DILocation(line: 90, column: 10, scope: !1145, inlinedAt: !1132)
!1145 = !DILexicalBlockFile(scope: !1126, file: !971, discriminator: 1)
!1146 = !DILocation(line: 150, column: 35, scope: !1133, inlinedAt: !1105)
!1147 = !DILocation(line: 144, column: 19, scope: !1099, inlinedAt: !1105)
!1148 = !DILocation(line: 145, column: 16, scope: !1099, inlinedAt: !1105)
!1149 = !DILocation(line: 148, column: 13, scope: !1099, inlinedAt: !1105)
!1150 = !DILocation(line: 151, column: 15, scope: !1133, inlinedAt: !1105)
!1151 = !DILocation(line: 151, column: 15, scope: !1152, inlinedAt: !1105)
!1152 = !DILexicalBlockFile(scope: !1133, file: !3, discriminator: 1)
!1153 = !DILocation(line: 151, column: 15, scope: !1154, inlinedAt: !1105)
!1154 = !DILexicalBlockFile(scope: !1133, file: !3, discriminator: 2)
!1155 = !DILocation(line: 156, column: 17, scope: !1156, inlinedAt: !1105)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 156, column: 17)
!1157 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 155, column: 11)
!1158 = !DILocation(line: 156, column: 64, scope: !1156, inlinedAt: !1105)
!1159 = !DILocation(line: 156, column: 17, scope: !1157, inlinedAt: !1105)
!1160 = !DILocation(line: 157, column: 15, scope: !1156, inlinedAt: !1105)
!1161 = !DILocation(line: 157, column: 15, scope: !1162, inlinedAt: !1105)
!1162 = !DILexicalBlockFile(scope: !1156, file: !3, discriminator: 1)
!1163 = !DILocation(line: 157, column: 15, scope: !1164, inlinedAt: !1105)
!1164 = !DILexicalBlockFile(scope: !1156, file: !3, discriminator: 2)
!1165 = !DILocation(line: 158, column: 29, scope: !1157, inlinedAt: !1105)
!1166 = !DILocation(line: 159, column: 21, scope: !1157, inlinedAt: !1105)
!1167 = distinct !{!1167, !1168, !1169}
!1168 = !DILocation(line: 142, column: 5, scope: !1101)
!1169 = !DILocation(line: 161, column: 7, scope: !1101)
!1170 = !DILocation(line: 144, column: 48, scope: !1099, inlinedAt: !1105)
!1171 = !DILocation(line: 146, column: 20, scope: !1099, inlinedAt: !1105)
!1172 = !DILocation(line: 146, column: 20, scope: !1173, inlinedAt: !1105)
!1173 = !DILexicalBlockFile(scope: !1099, file: !3, discriminator: 1)
!1174 = !DILocation(line: 148, column: 22, scope: !1135, inlinedAt: !1105)
!1175 = !DILocation(line: 125, column: 1, scope: !991, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 194, column: 11, scope: !814, inlinedAt: !833)
!1177 = !DILocation(line: 127, column: 10, scope: !991, inlinedAt: !1176)
!1178 = !DILocation(line: 194, column: 11, scope: !814, inlinedAt: !833)
!1179 = !DILocation(line: 194, column: 21, scope: !814, inlinedAt: !833)
!1180 = !DILocation(line: 132, column: 1, scope: !970, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 194, column: 25, scope: !1182, inlinedAt: !833)
!1182 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!1183 = !DILocation(line: 134, column: 10, scope: !970, inlinedAt: !1181)
!1184 = !DILocation(line: 194, column: 25, scope: !1182, inlinedAt: !833)
!1185 = !DILocation(line: 194, column: 44, scope: !1186, inlinedAt: !833)
!1186 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 2)
!1187 = !DILocation(line: 194, column: 37, scope: !1182, inlinedAt: !833)
!1188 = !DILocation(line: 197, column: 7, scope: !1189, inlinedAt: !833)
!1189 = distinct !DILexicalBlock(scope: !814, file: !3, line: 197, column: 7)
!1190 = !DILocation(line: 197, column: 37, scope: !1191, inlinedAt: !833)
!1191 = !DILexicalBlockFile(scope: !1189, file: !3, discriminator: 1)
!1192 = !DILocation(line: 197, column: 19, scope: !1189, inlinedAt: !833)
!1193 = !DILocation(line: 88, column: 21, scope: !1126, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 197, column: 44, scope: !1195, inlinedAt: !833)
!1195 = !DILexicalBlockFile(scope: !1189, file: !3, discriminator: 2)
!1196 = !DILocation(line: 88, column: 32, scope: !1126, inlinedAt: !1194)
!1197 = !DILocation(line: 90, column: 10, scope: !1126, inlinedAt: !1194)
!1198 = !DILocation(line: 90, column: 10, scope: !1142, inlinedAt: !1194)
!1199 = !DILocation(line: 197, column: 7, scope: !1186, inlinedAt: !833)
!1200 = !DILocation(line: 90, column: 10, scope: !1145, inlinedAt: !1194)
!1201 = !DILocation(line: 197, column: 62, scope: !1195, inlinedAt: !833)
!1202 = !DILocation(line: 198, column: 5, scope: !1189, inlinedAt: !833)
!1203 = !DILocation(line: 198, column: 5, scope: !1191, inlinedAt: !833)
!1204 = !DILocation(line: 198, column: 5, scope: !1195, inlinedAt: !833)
!1205 = !DILocation(line: 132, column: 1, scope: !970, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 200, column: 7, scope: !1207, inlinedAt: !833)
!1207 = distinct !DILexicalBlock(scope: !814, file: !3, line: 200, column: 7)
!1208 = !DILocation(line: 134, column: 10, scope: !970, inlinedAt: !1206)
!1209 = !DILocation(line: 200, column: 7, scope: !1207, inlinedAt: !833)
!1210 = !DILocation(line: 200, column: 7, scope: !814, inlinedAt: !833)
!1211 = !DILocation(line: 201, column: 5, scope: !1207, inlinedAt: !833)
!1212 = !DILocation(line: 201, column: 5, scope: !1213, inlinedAt: !833)
!1213 = !DILexicalBlockFile(scope: !1207, file: !3, discriminator: 1)
!1214 = !DILocation(line: 201, column: 5, scope: !1215, inlinedAt: !833)
!1215 = !DILexicalBlockFile(scope: !1207, file: !3, discriminator: 2)
!1216 = !DILocation(line: 202, column: 1, scope: !814, inlinedAt: !833)
!1217 = !DILocation(line: 340, column: 7, scope: !771)
!1218 = !DILocation(line: 340, column: 25, scope: !771)
!1219 = !DILocation(line: 340, column: 7, scope: !690)
!1220 = !DILocation(line: 342, column: 11, scope: !768)
!1221 = !DILocation(line: 342, column: 11, scope: !774)
!1222 = !DILocation(line: 342, column: 11, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 2)
!1224 = !DILocation(line: 342, column: 11, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !3, discriminator: 3)
!1226 = distinct !DILexicalBlock(scope: !774, file: !3, line: 342, column: 11)
!1227 = !DILocation(line: 342, column: 11, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1226, file: !3, discriminator: 2)
!1229 = !DILocation(line: 343, column: 9, scope: !769)
!1230 = !DILocation(line: 342, column: 11, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 13)
!1232 = !DILocation(line: 342, column: 11, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 4)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 342, column: 11)
!1235 = !DILocation(line: 342, column: 11, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 11)
!1237 = !DILocation(line: 343, column: 9, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 1)
!1239 = !DILocation(line: 343, column: 9, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 2)
!1241 = !DILocation(line: 345, column: 9, scope: !1238)
!1242 = !DILocation(line: 345, column: 9, scope: !1240)
!1243 = !DILocation(line: 345, column: 9, scope: !769)
!1244 = !DILocation(line: 349, column: 1, scope: !690)
!1245 = distinct !DISubprogram(name: "base64_encode", scope: !100, file: !100, line: 88, type: !1246, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1250)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !1248, !32, !1249, !32}
!1248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DILocalVariable(name: "in", arg: 1, scope: !1245, file: !100, line: 88, type: !1248)
!1252 = !DILocalVariable(name: "inlen", arg: 2, scope: !1245, file: !100, line: 88, type: !32)
!1253 = !DILocalVariable(name: "out", arg: 3, scope: !1245, file: !100, line: 89, type: !1249)
!1254 = !DILocalVariable(name: "outlen", arg: 4, scope: !1245, file: !100, line: 89, type: !32)
!1255 = !DILocation(line: 88, column: 37, scope: !1245)
!1256 = !DILocation(line: 88, column: 48, scope: !1245)
!1257 = !DILocation(line: 89, column: 31, scope: !1245)
!1258 = !DILocation(line: 89, column: 43, scope: !1245)
!1259 = !DILocation(line: 98, column: 14, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 98, column: 7)
!1261 = !DILocation(line: 98, column: 18, scope: !1260)
!1262 = !DILocation(line: 98, column: 23, scope: !1260)
!1263 = !DILocation(line: 104, column: 10, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1245, file: !100, discriminator: 1)
!1265 = !DILocation(line: 104, column: 16, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1245, file: !100, discriminator: 2)
!1267 = !DILocation(line: 104, column: 16, scope: !1264)
!1268 = !DILocation(line: 104, column: 3, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1245, file: !100, discriminator: 3)
!1270 = !DILocation(line: 106, column: 31, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 105, column: 5)
!1272 = !DILocation(line: 98, column: 42, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1260, file: !100, discriminator: 1)
!1274 = !DILocation(line: 98, column: 46, scope: !1273)
!1275 = !DILocation(line: 98, column: 32, scope: !1273)
!1276 = !DILocation(line: 98, column: 7, scope: !1264)
!1277 = !DILocalVariable(name: "in", arg: 1, scope: !1278, file: !100, line: 69, type: !1248)
!1278 = distinct !DISubprogram(name: "base64_encode_fast", scope: !100, file: !100, line: 69, type: !1279, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1248, !32, !1249}
!1281 = !{!1277, !1282, !1283}
!1282 = !DILocalVariable(name: "inlen", arg: 2, scope: !1278, file: !100, line: 69, type: !32)
!1283 = !DILocalVariable(name: "out", arg: 3, scope: !1278, file: !100, line: 69, type: !1249)
!1284 = !DILocation(line: 69, column: 42, scope: !1278, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 100, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1260, file: !100, line: 99, column: 5)
!1287 = !DILocation(line: 69, column: 53, scope: !1278, inlinedAt: !1285)
!1288 = !DILocation(line: 69, column: 75, scope: !1278, inlinedAt: !1285)
!1289 = !DILocation(line: 71, column: 3, scope: !1290, inlinedAt: !1285)
!1290 = !DILexicalBlockFile(scope: !1278, file: !100, discriminator: 1)
!1291 = !DILocation(line: 73, column: 31, scope: !1292, inlinedAt: !1285)
!1292 = distinct !DILexicalBlock(scope: !1278, file: !100, line: 72, column: 5)
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"base64_encode_fast: argument 0"}
!1295 = distinct !{!1295, !"base64_encode_fast"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1295, !"base64_encode_fast: argument 1"}
!1298 = !DILocation(line: 73, column: 21, scope: !1292, inlinedAt: !1285)
!1299 = !DILocation(line: 73, column: 38, scope: !1292, inlinedAt: !1285)
!1300 = !DILocation(line: 73, column: 16, scope: !1292, inlinedAt: !1285)
!1301 = !{!1294, !1297}
!1302 = !DILocation(line: 73, column: 11, scope: !1292, inlinedAt: !1285)
!1303 = !DILocation(line: 73, column: 14, scope: !1292, inlinedAt: !1285)
!1304 = !DILocation(line: 74, column: 23, scope: !1292, inlinedAt: !1285)
!1305 = !DILocation(line: 74, column: 40, scope: !1292, inlinedAt: !1285)
!1306 = !DILocation(line: 74, column: 59, scope: !1292, inlinedAt: !1285)
!1307 = !DILocation(line: 74, column: 49, scope: !1292, inlinedAt: !1285)
!1308 = !DILocation(line: 74, column: 66, scope: !1292, inlinedAt: !1285)
!1309 = !DILocation(line: 74, column: 73, scope: !1292, inlinedAt: !1285)
!1310 = !DILocation(line: 74, column: 16, scope: !1292, inlinedAt: !1285)
!1311 = !DILocation(line: 74, column: 11, scope: !1292, inlinedAt: !1285)
!1312 = !DILocation(line: 74, column: 14, scope: !1292, inlinedAt: !1285)
!1313 = !DILocation(line: 75, column: 40, scope: !1292, inlinedAt: !1285)
!1314 = !DILocation(line: 75, column: 59, scope: !1292, inlinedAt: !1285)
!1315 = !DILocation(line: 75, column: 49, scope: !1292, inlinedAt: !1285)
!1316 = !DILocation(line: 75, column: 66, scope: !1292, inlinedAt: !1285)
!1317 = !DILocation(line: 75, column: 73, scope: !1292, inlinedAt: !1285)
!1318 = !DILocation(line: 75, column: 16, scope: !1292, inlinedAt: !1285)
!1319 = !DILocation(line: 75, column: 11, scope: !1292, inlinedAt: !1285)
!1320 = !DILocation(line: 75, column: 14, scope: !1292, inlinedAt: !1285)
!1321 = !DILocation(line: 76, column: 38, scope: !1292, inlinedAt: !1285)
!1322 = !DILocation(line: 76, column: 16, scope: !1292, inlinedAt: !1285)
!1323 = !DILocation(line: 76, column: 11, scope: !1292, inlinedAt: !1285)
!1324 = !DILocation(line: 76, column: 14, scope: !1292, inlinedAt: !1285)
!1325 = !DILocation(line: 78, column: 13, scope: !1292, inlinedAt: !1285)
!1326 = !DILocation(line: 79, column: 10, scope: !1292, inlinedAt: !1285)
!1327 = distinct !{!1327, !1328, !1329}
!1328 = !DILocation(line: 71, column: 3, scope: !1278)
!1329 = !DILocation(line: 80, column: 5, scope: !1278)
!1330 = !DILocation(line: 106, column: 21, scope: !1271)
!1331 = !DILocation(line: 106, column: 38, scope: !1271)
!1332 = !DILocation(line: 106, column: 16, scope: !1271)
!1333 = !DILocation(line: 106, column: 11, scope: !1271)
!1334 = !DILocation(line: 106, column: 14, scope: !1271)
!1335 = !DILocation(line: 107, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 107, column: 11)
!1337 = !DILocation(line: 107, column: 11, scope: !1271)
!1338 = !DILocation(line: 109, column: 33, scope: !1271)
!1339 = !DILocation(line: 109, column: 23, scope: !1271)
!1340 = !DILocation(line: 109, column: 40, scope: !1271)
!1341 = !DILocation(line: 110, column: 27, scope: !1271)
!1342 = !DILocation(line: 110, column: 47, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1271, file: !100, discriminator: 1)
!1344 = !DILocation(line: 110, column: 37, scope: !1343)
!1345 = !DILocation(line: 110, column: 54, scope: !1343)
!1346 = !DILocation(line: 110, column: 27, scope: !1343)
!1347 = !DILocation(line: 110, column: 27, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1271, file: !100, discriminator: 3)
!1349 = !DILocation(line: 110, column: 24, scope: !1348)
!1350 = !DILocation(line: 111, column: 23, scope: !1271)
!1351 = !DILocation(line: 109, column: 16, scope: !1343)
!1352 = !DILocation(line: 109, column: 11, scope: !1343)
!1353 = !DILocation(line: 109, column: 14, scope: !1343)
!1354 = !DILocation(line: 112, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 112, column: 11)
!1356 = !DILocation(line: 112, column: 11, scope: !1271)
!1357 = !DILocation(line: 115, column: 10, scope: !1271)
!1358 = !DILocation(line: 116, column: 29, scope: !1271)
!1359 = !DILocation(line: 116, column: 19, scope: !1271)
!1360 = !DILocation(line: 116, column: 36, scope: !1271)
!1361 = !DILocation(line: 117, column: 23, scope: !1271)
!1362 = !DILocation(line: 117, column: 43, scope: !1343)
!1363 = !DILocation(line: 117, column: 33, scope: !1343)
!1364 = !DILocation(line: 117, column: 50, scope: !1343)
!1365 = !DILocation(line: 117, column: 23, scope: !1343)
!1366 = !DILocation(line: 117, column: 23, scope: !1348)
!1367 = !DILocation(line: 117, column: 20, scope: !1348)
!1368 = !DILocation(line: 118, column: 19, scope: !1271)
!1369 = !DILocation(line: 116, column: 12, scope: !1343)
!1370 = !DILocation(line: 115, column: 10, scope: !1343)
!1371 = !DILocation(line: 115, column: 10, scope: !1348)
!1372 = !DILocation(line: 114, column: 11, scope: !1271)
!1373 = !DILocation(line: 114, column: 14, scope: !1271)
!1374 = !DILocation(line: 120, column: 12, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 120, column: 11)
!1376 = !DILocation(line: 120, column: 11, scope: !1271)
!1377 = !DILocation(line: 122, column: 16, scope: !1271)
!1378 = !DILocation(line: 122, column: 39, scope: !1343)
!1379 = !DILocation(line: 122, column: 46, scope: !1343)
!1380 = !DILocation(line: 122, column: 24, scope: !1343)
!1381 = !DILocation(line: 122, column: 16, scope: !1343)
!1382 = !DILocation(line: 122, column: 16, scope: !1348)
!1383 = !DILocation(line: 122, column: 14, scope: !1348)
!1384 = !DILocation(line: 123, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 123, column: 11)
!1386 = !DILocation(line: 123, column: 11, scope: !1271)
!1387 = !DILocation(line: 122, column: 11, scope: !1348)
!1388 = !DILocation(line: 126, column: 14, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 125, column: 11)
!1390 = !DILocation(line: 127, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 127, column: 11)
!1392 = !DILocation(line: 128, column: 12, scope: !1391)
!1393 = !DILocation(line: 131, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 131, column: 7)
!1395 = !DILocation(line: 131, column: 7, scope: !1245)
!1396 = !DILocation(line: 132, column: 10, scope: !1394)
!1397 = !DILocation(line: 132, column: 5, scope: !1394)
!1398 = !DILocation(line: 133, column: 1, scope: !1245)
!1399 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !100, file: !100, line: 145, type: !1400, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!32, !40, !32, !693}
!1402 = !{!1403, !1404, !1405, !1406}
!1403 = !DILocalVariable(name: "in", arg: 1, scope: !1399, file: !100, line: 145, type: !40)
!1404 = !DILocalVariable(name: "inlen", arg: 2, scope: !1399, file: !100, line: 145, type: !32)
!1405 = !DILocalVariable(name: "out", arg: 3, scope: !1399, file: !100, line: 145, type: !693)
!1406 = !DILocalVariable(name: "outlen", scope: !1399, file: !100, line: 147, type: !32)
!1407 = !DILocation(line: 145, column: 34, scope: !1399)
!1408 = !DILocation(line: 145, column: 45, scope: !1399)
!1409 = !DILocation(line: 145, column: 59, scope: !1399)
!1410 = !DILocation(line: 147, column: 23, scope: !1399)
!1411 = !DILocation(line: 147, column: 21, scope: !1399)
!1412 = !DILocation(line: 147, column: 10, scope: !1399)
!1413 = !DILocation(line: 161, column: 13, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1399, file: !100, line: 161, column: 7)
!1415 = !DILocation(line: 161, column: 7, scope: !1399)
!1416 = !DILocation(line: 163, column: 12, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !100, line: 162, column: 5)
!1418 = !DILocation(line: 164, column: 7, scope: !1417)
!1419 = !DILocation(line: 167, column: 10, scope: !1399)
!1420 = !DILocation(line: 167, column: 8, scope: !1399)
!1421 = !DILocation(line: 168, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1399, file: !100, line: 168, column: 7)
!1423 = !DILocation(line: 168, column: 7, scope: !1399)
!1424 = !DILocation(line: 171, column: 3, scope: !1399)
!1425 = !DILocation(line: 173, column: 3, scope: !1399)
!1426 = !DILocation(line: 174, column: 1, scope: !1399)
!1427 = distinct !DISubprogram(name: "isbase64", scope: !100, file: !100, line: 329, type: !1428, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!117, !30}
!1430 = !{!1431}
!1431 = !DILocalVariable(name: "ch", arg: 1, scope: !1427, file: !100, line: 329, type: !30)
!1432 = !DILocation(line: 329, column: 16, scope: !1427)
!1433 = !DILocation(line: 331, column: 49, scope: !1427)
!1434 = !DILocation(line: 331, column: 46, scope: !1427)
!1435 = !DILocation(line: 331, column: 3, scope: !1427)
!1436 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !100, file: !100, line: 336, type: !1437, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1444)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !791, line: 35, size: 64, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1440, file: !791, line: 37, baseType: !174, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1440, file: !791, line: 38, baseType: !795, size: 32, offset: 32)
!1444 = !{!1445}
!1445 = !DILocalVariable(name: "ctx", arg: 1, scope: !1436, file: !100, line: 336, type: !1439)
!1446 = !DILocation(line: 336, column: 55, scope: !1436)
!1447 = !DILocation(line: 338, column: 8, scope: !1436)
!1448 = !DILocation(line: 338, column: 10, scope: !1436)
!1449 = !{!1450, !866, i64 0}
!1450 = !{!"base64_decode_context", !866, i64 0, !637, i64 4}
!1451 = !DILocation(line: 339, column: 1, scope: !1436)
!1452 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !100, file: !100, line: 488, type: !1453, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!117, !1439, !1248, !32, !1249, !575}
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1467, !1469}
!1456 = !DILocalVariable(name: "ctx", arg: 1, scope: !1452, file: !100, line: 488, type: !1439)
!1457 = !DILocalVariable(name: "in", arg: 2, scope: !1452, file: !100, line: 489, type: !1248)
!1458 = !DILocalVariable(name: "inlen", arg: 3, scope: !1452, file: !100, line: 489, type: !32)
!1459 = !DILocalVariable(name: "out", arg: 4, scope: !1452, file: !100, line: 490, type: !1249)
!1460 = !DILocalVariable(name: "outlen", arg: 5, scope: !1452, file: !100, line: 490, type: !575)
!1461 = !DILocalVariable(name: "outleft", scope: !1452, file: !100, line: 492, type: !32)
!1462 = !DILocalVariable(name: "ignore_newlines", scope: !1452, file: !100, line: 493, type: !117)
!1463 = !DILocalVariable(name: "flush_ctx", scope: !1452, file: !100, line: 494, type: !117)
!1464 = !DILocalVariable(name: "ctx_i", scope: !1452, file: !100, line: 495, type: !174)
!1465 = !DILocalVariable(name: "outleft_save", scope: !1466, file: !100, line: 506, type: !32)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 505, column: 5)
!1467 = !DILocalVariable(name: "in_end", scope: !1468, file: !100, line: 539, type: !40)
!1468 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 538, column: 7)
!1469 = !DILocalVariable(name: "non_nl", scope: !1468, file: !100, line: 540, type: !40)
!1470 = !DILocation(line: 488, column: 50, scope: !1452)
!1471 = !DILocation(line: 489, column: 41, scope: !1452)
!1472 = !DILocation(line: 489, column: 52, scope: !1452)
!1473 = !DILocation(line: 490, column: 35, scope: !1452)
!1474 = !DILocation(line: 490, column: 48, scope: !1452)
!1475 = !DILocation(line: 492, column: 3, scope: !1452)
!1476 = !DILocation(line: 492, column: 20, scope: !1452)
!1477 = !DILocation(line: 492, column: 10, scope: !1452)
!1478 = !DILocation(line: 493, column: 30, scope: !1452)
!1479 = !DILocation(line: 494, column: 8, scope: !1452)
!1480 = !DILocation(line: 495, column: 16, scope: !1452)
!1481 = !DILocation(line: 497, column: 7, scope: !1452)
!1482 = !DILocation(line: 499, column: 20, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !100, line: 498, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 497, column: 7)
!1485 = !DILocation(line: 501, column: 5, scope: !1483)
!1486 = !DILocation(line: 513, column: 30, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !100, line: 510, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 508, column: 9)
!1489 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 507, column: 11)
!1490 = !DILocation(line: 506, column: 14, scope: !1466)
!1491 = !DILocation(line: 507, column: 22, scope: !1489)
!1492 = !DILocation(line: 514, column: 30, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 514, column: 19)
!1494 = !DILocation(line: 514, column: 20, scope: !1493)
!1495 = !DILocation(line: 514, column: 19, scope: !1487)
!1496 = !DILocation(line: 517, column: 18, scope: !1487)
!1497 = !DILocation(line: 518, column: 21, scope: !1487)
!1498 = distinct !{!1498, !1499, !1500}
!1499 = !DILocation(line: 509, column: 11, scope: !1488)
!1500 = !DILocation(line: 519, column: 13, scope: !1488)
!1501 = !DILocation(line: 522, column: 17, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 522, column: 11)
!1503 = !DILocation(line: 522, column: 22, scope: !1502)
!1504 = !DILocation(line: 527, column: 17, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 527, column: 11)
!1506 = !DILocation(line: 527, column: 20, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1505, file: !100, discriminator: 1)
!1508 = !DILocation(line: 527, column: 32, scope: !1507)
!1509 = !DILocation(line: 529, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 528, column: 9)
!1511 = !DILocation(line: 530, column: 11, scope: !1510)
!1512 = !DILocation(line: 506, column: 29, scope: !1466)
!1513 = !DILocation(line: 535, column: 29, scope: !1466)
!1514 = !DILocation(line: 535, column: 11, scope: !1466)
!1515 = !DILocation(line: 536, column: 15, scope: !1466)
!1516 = !DILocation(line: 539, column: 33, scope: !1468)
!1517 = !DILocation(line: 539, column: 21, scope: !1468)
!1518 = !DILocation(line: 542, column: 13, scope: !1468)
!1519 = !DILocalVariable(name: "ctx", arg: 1, scope: !1520, file: !100, line: 349, type: !1439)
!1520 = distinct !DISubprogram(name: "get_4", scope: !100, file: !100, line: 349, type: !1521, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1524)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!29, !1439, !1523, !1248, !575}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1524 = !{!1519, !1525, !1526, !1527, !1528, !1531, !1533}
!1525 = !DILocalVariable(name: "in", arg: 2, scope: !1520, file: !100, line: 350, type: !1523)
!1526 = !DILocalVariable(name: "in_end", arg: 3, scope: !1520, file: !100, line: 350, type: !1248)
!1527 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1520, file: !100, line: 351, type: !575)
!1528 = !DILocalVariable(name: "t", scope: !1529, file: !100, line: 358, type: !40)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !100, line: 357, column: 5)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 356, column: 7)
!1531 = !DILocalVariable(name: "p", scope: !1532, file: !100, line: 370, type: !40)
!1532 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 368, column: 3)
!1533 = !DILocalVariable(name: "c", scope: !1534, file: !100, line: 373, type: !30)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !100, line: 372, column: 7)
!1535 = !DILocation(line: 349, column: 38, scope: !1520, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 543, column: 20, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1468, file: !100, line: 542, column: 13)
!1538 = !DILocation(line: 350, column: 30, scope: !1520, inlinedAt: !1536)
!1539 = !DILocation(line: 350, column: 55, scope: !1520, inlinedAt: !1536)
!1540 = !DILocation(line: 353, column: 12, scope: !1541, inlinedAt: !1536)
!1541 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 353, column: 7)
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"get_4: argument 0"}
!1544 = distinct !{!1544, !"get_4"}
!1545 = !DILocation(line: 353, column: 7, scope: !1520, inlinedAt: !1536)
!1546 = !DILocation(line: 354, column: 12, scope: !1541, inlinedAt: !1536)
!1547 = !DILocation(line: 356, column: 7, scope: !1520, inlinedAt: !1536)
!1548 = !DILocation(line: 358, column: 19, scope: !1529, inlinedAt: !1536)
!1549 = !DILocation(line: 359, column: 23, scope: !1550, inlinedAt: !1536)
!1550 = distinct !DILexicalBlock(scope: !1529, file: !100, line: 359, column: 11)
!1551 = !DILocation(line: 359, column: 13, scope: !1550, inlinedAt: !1536)
!1552 = !DILocation(line: 359, column: 29, scope: !1550, inlinedAt: !1536)
!1553 = !DILocation(line: 359, column: 32, scope: !1554, inlinedAt: !1536)
!1554 = !DILexicalBlockFile(scope: !1550, file: !100, discriminator: 1)
!1555 = !DILocation(line: 359, column: 52, scope: !1554, inlinedAt: !1536)
!1556 = !DILocation(line: 359, column: 11, scope: !1557, inlinedAt: !1536)
!1557 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 1)
!1558 = !DILocation(line: 362, column: 15, scope: !1559, inlinedAt: !1536)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !100, line: 360, column: 9)
!1560 = !DILocation(line: 540, column: 21, scope: !1468)
!1561 = !DILocation(line: 550, column: 38, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1563, file: !100, discriminator: 1)
!1563 = distinct !DILexicalBlock(scope: !1468, file: !100, line: 550, column: 13)
!1564 = !DILocation(line: 370, column: 17, scope: !1532, inlinedAt: !1536)
!1565 = !DILocation(line: 371, column: 14, scope: !1566, inlinedAt: !1536)
!1566 = !DILexicalBlockFile(scope: !1532, file: !100, discriminator: 1)
!1567 = !DILocation(line: 371, column: 5, scope: !1566, inlinedAt: !1536)
!1568 = !DILocation(line: 373, column: 20, scope: !1534, inlinedAt: !1536)
!1569 = !DILocation(line: 373, column: 18, scope: !1534, inlinedAt: !1536)
!1570 = !DILocation(line: 373, column: 14, scope: !1534, inlinedAt: !1536)
!1571 = !DILocation(line: 374, column: 15, scope: !1572, inlinedAt: !1536)
!1572 = distinct !DILexicalBlock(scope: !1534, file: !100, line: 374, column: 13)
!1573 = !DILocation(line: 374, column: 13, scope: !1534, inlinedAt: !1536)
!1574 = !DILocation(line: 376, column: 28, scope: !1575, inlinedAt: !1536)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !100, line: 375, column: 11)
!1576 = !DILocation(line: 376, column: 13, scope: !1575, inlinedAt: !1536)
!1577 = !DILocation(line: 376, column: 32, scope: !1575, inlinedAt: !1536)
!1578 = !DILocation(line: 377, column: 24, scope: !1579, inlinedAt: !1536)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !100, line: 377, column: 17)
!1580 = !DILocation(line: 377, column: 17, scope: !1575, inlinedAt: !1536)
!1581 = !DILocation(line: 383, column: 27, scope: !1532, inlinedAt: !1536)
!1582 = !DILocation(line: 382, column: 9, scope: !1532, inlinedAt: !1536)
!1583 = !DILocation(line: 383, column: 22, scope: !1532, inlinedAt: !1536)
!1584 = !DILocation(line: 550, column: 19, scope: !1563)
!1585 = !DILocation(line: 550, column: 24, scope: !1563)
!1586 = !DILocation(line: 550, column: 34, scope: !1562)
!1587 = !DILocation(line: 555, column: 14, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1468, file: !100, line: 555, column: 13)
!1589 = !DILocation(line: 555, column: 13, scope: !1468)
!1590 = !DILocation(line: 558, column: 24, scope: !1468)
!1591 = !DILocation(line: 562, column: 14, scope: !1452)
!1592 = !DILocation(line: 562, column: 11, scope: !1452)
!1593 = !DILocation(line: 564, column: 16, scope: !1452)
!1594 = !DILocation(line: 565, column: 1, scope: !1452)
!1595 = !DILocation(line: 564, column: 3, scope: !1452)
!1596 = distinct !DISubprogram(name: "decode_4", scope: !100, file: !100, line: 403, type: !1597, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1600)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!117, !1248, !32, !1599, !575}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1600 = !{!1601, !1602, !1603, !1604, !1605}
!1601 = !DILocalVariable(name: "in", arg: 1, scope: !1596, file: !100, line: 403, type: !1248)
!1602 = !DILocalVariable(name: "inlen", arg: 2, scope: !1596, file: !100, line: 403, type: !32)
!1603 = !DILocalVariable(name: "outp", arg: 3, scope: !1596, file: !100, line: 404, type: !1599)
!1604 = !DILocalVariable(name: "outleft", arg: 4, scope: !1596, file: !100, line: 404, type: !575)
!1605 = !DILocalVariable(name: "out", scope: !1596, file: !100, line: 406, type: !29)
!1606 = !DILocation(line: 403, column: 32, scope: !1596)
!1607 = !DILocation(line: 403, column: 43, scope: !1596)
!1608 = !DILocation(line: 404, column: 27, scope: !1596)
!1609 = !DILocation(line: 404, column: 41, scope: !1596)
!1610 = !DILocation(line: 406, column: 15, scope: !1596)
!1611 = !DILocation(line: 406, column: 9, scope: !1596)
!1612 = !DILocation(line: 407, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 407, column: 7)
!1614 = !DILocation(line: 407, column: 7, scope: !1596)
!1615 = !DILocation(line: 410, column: 18, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 410, column: 7)
!1617 = !DILocation(line: 329, column: 16, scope: !1427, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 410, column: 8, scope: !1616)
!1619 = !DILocation(line: 331, column: 49, scope: !1427, inlinedAt: !1618)
!1620 = !DILocation(line: 331, column: 46, scope: !1427, inlinedAt: !1618)
!1621 = !DILocation(line: 410, column: 25, scope: !1616)
!1622 = !DILocation(line: 410, column: 39, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1616, file: !100, discriminator: 1)
!1624 = !DILocation(line: 329, column: 16, scope: !1427, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 410, column: 29, scope: !1623)
!1626 = !DILocation(line: 331, column: 49, scope: !1427, inlinedAt: !1625)
!1627 = !DILocation(line: 331, column: 46, scope: !1427, inlinedAt: !1625)
!1628 = !DILocation(line: 410, column: 7, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1596, file: !100, discriminator: 1)
!1630 = !DILocation(line: 413, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 413, column: 7)
!1632 = !DILocation(line: 413, column: 7, scope: !1596)
!1633 = !DILocation(line: 415, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !100, line: 414, column: 5)
!1635 = !DILocation(line: 415, column: 40, scope: !1634)
!1636 = !DILocation(line: 416, column: 20, scope: !1634)
!1637 = !DILocation(line: 416, column: 42, scope: !1634)
!1638 = !DILocation(line: 416, column: 17, scope: !1634)
!1639 = !DILocation(line: 415, column: 16, scope: !1634)
!1640 = !DILocation(line: 415, column: 11, scope: !1634)
!1641 = !DILocation(line: 415, column: 14, scope: !1634)
!1642 = !DILocation(line: 417, column: 7, scope: !1634)
!1643 = !DILocation(line: 418, column: 5, scope: !1634)
!1644 = !DILocation(line: 436, column: 11, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !100, line: 436, column: 11)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !100, line: 432, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 423, column: 7)
!1648 = !DILocation(line: 420, column: 13, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 420, column: 7)
!1650 = !DILocation(line: 420, column: 7, scope: !1596)
!1651 = !DILocation(line: 421, column: 5, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !100, discriminator: 1)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !100, line: 421, column: 5)
!1654 = !DILocation(line: 423, column: 7, scope: !1647)
!1655 = !DILocation(line: 423, column: 13, scope: !1647)
!1656 = !DILocation(line: 423, column: 7, scope: !1596)
!1657 = !DILocation(line: 425, column: 17, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !100, line: 425, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1647, file: !100, line: 424, column: 5)
!1660 = !DILocation(line: 425, column: 11, scope: !1659)
!1661 = !DILocation(line: 426, column: 9, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !100, discriminator: 1)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !100, line: 426, column: 9)
!1664 = !DILocation(line: 428, column: 11, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1659, file: !100, line: 428, column: 11)
!1666 = !DILocation(line: 428, column: 17, scope: !1665)
!1667 = !DILocation(line: 428, column: 11, scope: !1659)
!1668 = !DILocation(line: 429, column: 9, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1670, file: !100, discriminator: 1)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !100, line: 429, column: 9)
!1671 = !DILocation(line: 329, column: 16, scope: !1427, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 433, column: 12, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1646, file: !100, line: 433, column: 11)
!1674 = !DILocation(line: 331, column: 49, scope: !1427, inlinedAt: !1672)
!1675 = !DILocation(line: 331, column: 46, scope: !1427, inlinedAt: !1672)
!1676 = !DILocation(line: 433, column: 11, scope: !1646)
!1677 = !DILocation(line: 434, column: 9, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !100, discriminator: 1)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !100, line: 434, column: 9)
!1680 = !DILocation(line: 436, column: 11, scope: !1646)
!1681 = !DILocation(line: 438, column: 23, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1645, file: !100, line: 437, column: 9)
!1683 = !DILocation(line: 438, column: 45, scope: !1682)
!1684 = !DILocation(line: 439, column: 24, scope: !1682)
!1685 = !DILocation(line: 439, column: 46, scope: !1682)
!1686 = !DILocation(line: 439, column: 21, scope: !1682)
!1687 = !DILocation(line: 438, column: 20, scope: !1682)
!1688 = !DILocation(line: 438, column: 15, scope: !1682)
!1689 = !DILocation(line: 438, column: 18, scope: !1682)
!1690 = !DILocation(line: 440, column: 11, scope: !1682)
!1691 = !DILocation(line: 441, column: 9, scope: !1682)
!1692 = !DILocation(line: 456, column: 15, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !100, line: 456, column: 15)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !100, line: 452, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1646, file: !100, line: 446, column: 11)
!1696 = !DILocation(line: 443, column: 17, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1646, file: !100, line: 443, column: 11)
!1698 = !DILocation(line: 443, column: 11, scope: !1646)
!1699 = !DILocation(line: 444, column: 9, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1701, file: !100, discriminator: 1)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !100, line: 444, column: 9)
!1702 = !DILocation(line: 446, column: 11, scope: !1695)
!1703 = !DILocation(line: 446, column: 17, scope: !1695)
!1704 = !DILocation(line: 446, column: 11, scope: !1646)
!1705 = !DILocation(line: 448, column: 21, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !100, line: 448, column: 15)
!1707 = distinct !DILexicalBlock(scope: !1695, file: !100, line: 447, column: 9)
!1708 = !DILocation(line: 448, column: 15, scope: !1707)
!1709 = !DILocation(line: 449, column: 13, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !100, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !100, line: 449, column: 13)
!1712 = !DILocation(line: 329, column: 16, scope: !1427, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 453, column: 16, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1694, file: !100, line: 453, column: 15)
!1715 = !DILocation(line: 331, column: 49, scope: !1427, inlinedAt: !1713)
!1716 = !DILocation(line: 331, column: 46, scope: !1427, inlinedAt: !1713)
!1717 = !DILocation(line: 453, column: 15, scope: !1694)
!1718 = !DILocation(line: 454, column: 13, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !100, line: 454, column: 13)
!1721 = !DILocation(line: 456, column: 15, scope: !1694)
!1722 = !DILocation(line: 458, column: 49, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1693, file: !100, line: 457, column: 13)
!1724 = !DILocation(line: 459, column: 25, scope: !1723)
!1725 = !DILocation(line: 458, column: 19, scope: !1723)
!1726 = !DILocation(line: 458, column: 22, scope: !1723)
!1727 = !DILocation(line: 460, column: 15, scope: !1723)
!1728 = !DILocation(line: 461, column: 13, scope: !1723)
!1729 = !DILocation(line: 465, column: 9, scope: !1596)
!1730 = !DILocation(line: 466, column: 3, scope: !1596)
!1731 = !DILocation(line: 467, column: 1, scope: !1596)
!1732 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !100, file: !100, line: 579, type: !1733, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!117, !1439, !40, !32, !693, !575}
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DILocalVariable(name: "ctx", arg: 1, scope: !1732, file: !100, line: 579, type: !1439)
!1737 = !DILocalVariable(name: "in", arg: 2, scope: !1732, file: !100, line: 580, type: !40)
!1738 = !DILocalVariable(name: "inlen", arg: 3, scope: !1732, file: !100, line: 580, type: !32)
!1739 = !DILocalVariable(name: "out", arg: 4, scope: !1732, file: !100, line: 580, type: !693)
!1740 = !DILocalVariable(name: "outlen", arg: 5, scope: !1732, file: !100, line: 581, type: !575)
!1741 = !DILocalVariable(name: "needlen", scope: !1732, file: !100, line: 588, type: !32)
!1742 = !DILocation(line: 579, column: 56, scope: !1732)
!1743 = !DILocation(line: 580, column: 38, scope: !1732)
!1744 = !DILocation(line: 580, column: 49, scope: !1732)
!1745 = !DILocation(line: 580, column: 63, scope: !1732)
!1746 = !DILocation(line: 581, column: 34, scope: !1732)
!1747 = !DILocation(line: 588, column: 3, scope: !1732)
!1748 = !DILocation(line: 588, column: 31, scope: !1732)
!1749 = !DILocation(line: 588, column: 22, scope: !1732)
!1750 = !DILocation(line: 588, column: 36, scope: !1732)
!1751 = !DILocation(line: 588, column: 10, scope: !1732)
!1752 = !DILocation(line: 590, column: 10, scope: !1732)
!1753 = !DILocation(line: 590, column: 8, scope: !1732)
!1754 = !DILocation(line: 591, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 591, column: 7)
!1756 = !DILocation(line: 591, column: 7, scope: !1732)
!1757 = !DILocation(line: 594, column: 8, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 594, column: 7)
!1759 = !DILocation(line: 594, column: 7, scope: !1732)
!1760 = !DILocation(line: 596, column: 13, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !100, line: 595, column: 5)
!1762 = !DILocation(line: 596, column: 7, scope: !1761)
!1763 = !DILocation(line: 597, column: 12, scope: !1761)
!1764 = !DILocation(line: 598, column: 7, scope: !1761)
!1765 = !DILocation(line: 601, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 601, column: 7)
!1767 = !DILocation(line: 601, column: 7, scope: !1732)
!1768 = !DILocation(line: 602, column: 15, scope: !1766)
!1769 = !DILocation(line: 602, column: 13, scope: !1766)
!1770 = !DILocation(line: 602, column: 5, scope: !1766)
!1771 = !DILocation(line: 605, column: 1, scope: !1732)
!1772 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !116, file: !116, line: 41, type: !47, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1773)
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "file", arg: 1, scope: !1772, file: !116, line: 41, type: !40)
!1775 = !DILocation(line: 41, column: 41, scope: !1772)
!1776 = !DILocation(line: 43, column: 13, scope: !1772)
!1777 = !DILocation(line: 44, column: 1, scope: !1772)
!1778 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !116, file: !116, line: 78, type: !1779, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !117}
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "ignore", arg: 1, scope: !1778, file: !116, line: 78, type: !117)
!1783 = !DILocation(line: 78, column: 37, scope: !1778)
!1784 = !DILocation(line: 80, column: 16, scope: !1778)
!1785 = !{!1786, !1786, i64 0}
!1786 = !{!"_Bool", !637, i64 0}
!1787 = !DILocation(line: 81, column: 1, scope: !1778)
!1788 = distinct !DISubprogram(name: "close_stdout", scope: !116, file: !116, line: 107, type: !649, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1789)
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "write_error", scope: !1791, file: !116, line: 112, type: !40)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !116, line: 111, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !116, line: 109, column: 7)
!1793 = !DILocation(line: 109, column: 21, scope: !1792)
!1794 = !DILocation(line: 109, column: 7, scope: !1792)
!1795 = !DILocation(line: 109, column: 29, scope: !1792)
!1796 = !DILocation(line: 110, column: 7, scope: !1792)
!1797 = !DILocation(line: 110, column: 12, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1792, file: !116, discriminator: 1)
!1799 = !{i8 0, i8 2}
!1800 = !DILocation(line: 114, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !116, line: 113, column: 11)
!1802 = !DILocation(line: 110, column: 25, scope: !1798)
!1803 = !DILocation(line: 110, column: 28, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1792, file: !116, discriminator: 2)
!1805 = !DILocation(line: 110, column: 34, scope: !1804)
!1806 = !DILocation(line: 109, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1788, file: !116, discriminator: 1)
!1808 = !DILocation(line: 112, column: 33, scope: !1791)
!1809 = !DILocation(line: 112, column: 19, scope: !1791)
!1810 = !DILocation(line: 113, column: 11, scope: !1801)
!1811 = !DILocation(line: 113, column: 11, scope: !1791)
!1812 = !DILocation(line: 114, column: 36, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1801, file: !116, discriminator: 1)
!1814 = !DILocation(line: 114, column: 9, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1801, file: !116, discriminator: 2)
!1816 = !DILocation(line: 114, column: 9, scope: !1801)
!1817 = !DILocation(line: 117, column: 9, scope: !1813)
!1818 = !DILocation(line: 119, column: 14, scope: !1791)
!1819 = !DILocation(line: 119, column: 7, scope: !1791)
!1820 = !DILocation(line: 122, column: 22, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1788, file: !116, line: 122, column: 8)
!1822 = !DILocation(line: 122, column: 8, scope: !1821)
!1823 = !DILocation(line: 122, column: 30, scope: !1821)
!1824 = !DILocation(line: 122, column: 8, scope: !1788)
!1825 = !DILocation(line: 123, column: 13, scope: !1821)
!1826 = !DILocation(line: 123, column: 6, scope: !1821)
!1827 = !DILocation(line: 124, column: 1, scope: !1788)
!1828 = distinct !DISubprogram(name: "fdadvise", scope: !1829, file: !1829, line: 31, type: !1830, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !1834)
!1829 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !70, !1832, !1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !701, line: 91, baseType: !729)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1834 = !{!1835, !1836, !1837, !1838, !1839}
!1835 = !DILocalVariable(name: "fd", arg: 1, scope: !1828, file: !1829, line: 31, type: !70)
!1836 = !DILocalVariable(name: "offset", arg: 2, scope: !1828, file: !1829, line: 31, type: !1832)
!1837 = !DILocalVariable(name: "len", arg: 3, scope: !1828, file: !1829, line: 31, type: !1832)
!1838 = !DILocalVariable(name: "advice", arg: 4, scope: !1828, file: !1829, line: 31, type: !1833)
!1839 = !DILocalVariable(name: "__x", scope: !1840, file: !1829, line: 34, type: !70)
!1840 = distinct !DILexicalBlock(scope: !1828, file: !1829, line: 34, column: 3)
!1841 = !DILocation(line: 31, column: 15, scope: !1828)
!1842 = !DILocation(line: 31, column: 25, scope: !1828)
!1843 = !DILocation(line: 31, column: 39, scope: !1828)
!1844 = !DILocation(line: 31, column: 54, scope: !1828)
!1845 = !DILocation(line: 34, column: 3, scope: !1840)
!1846 = !DILocation(line: 36, column: 1, scope: !1828)
!1847 = distinct !DISubprogram(name: "fadvise", scope: !1829, file: !1829, line: 39, type: !1848, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !1890)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1850, !1833}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1852, file: !703, line: 242, baseType: !70, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1852, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1852, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1852, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1852, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1852, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1852, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1852, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1852, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1852, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1852, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1852, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1852, file: !703, line: 260, baseType: !1867, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !1869)
!1869 = !{!1870, !1871, !1873}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1868, file: !703, line: 157, baseType: !1867, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1868, file: !703, line: 158, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1868, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1852, file: !703, line: 262, baseType: !1872, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1852, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1852, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1852, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1852, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1852, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1852, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1852, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1852, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1852, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1852, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1852, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1852, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1852, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1852, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1852, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!1890 = !{!1891, !1892}
!1891 = !DILocalVariable(name: "fp", arg: 1, scope: !1847, file: !1829, line: 39, type: !1850)
!1892 = !DILocalVariable(name: "advice", arg: 2, scope: !1847, file: !1829, line: 39, type: !1833)
!1893 = !DILocation(line: 39, column: 16, scope: !1847)
!1894 = !DILocation(line: 39, column: 30, scope: !1847)
!1895 = !DILocation(line: 41, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1847, file: !1829, line: 41, column: 7)
!1897 = !DILocation(line: 41, column: 7, scope: !1847)
!1898 = !DILocation(line: 42, column: 15, scope: !1896)
!1899 = !DILocation(line: 31, column: 15, scope: !1828, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 42, column: 5, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1896, file: !1829, discriminator: 1)
!1902 = !DILocation(line: 31, column: 25, scope: !1828, inlinedAt: !1900)
!1903 = !DILocation(line: 31, column: 39, scope: !1828, inlinedAt: !1900)
!1904 = !DILocation(line: 31, column: 54, scope: !1828, inlinedAt: !1900)
!1905 = !DILocation(line: 34, column: 3, scope: !1840, inlinedAt: !1900)
!1906 = !DILocation(line: 42, column: 5, scope: !1896)
!1907 = !DILocation(line: 43, column: 1, scope: !1847)
!1908 = distinct !DISubprogram(name: "set_program_name", scope: !130, file: !130, line: 39, type: !47, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !127, variables: !1909)
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "argv0", arg: 1, scope: !1908, file: !130, line: 39, type: !40)
!1911 = !DILocalVariable(name: "slash", scope: !1908, file: !130, line: 46, type: !40)
!1912 = !DILocalVariable(name: "base", scope: !1908, file: !130, line: 47, type: !40)
!1913 = !DILocation(line: 39, column: 31, scope: !1908)
!1914 = !DILocation(line: 51, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !130, line: 51, column: 7)
!1916 = !DILocation(line: 51, column: 7, scope: !1908)
!1917 = !DILocation(line: 55, column: 14, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !130, line: 52, column: 5)
!1919 = !DILocation(line: 54, column: 7, scope: !1918)
!1920 = !DILocation(line: 56, column: 7, scope: !1918)
!1921 = !DILocation(line: 59, column: 11, scope: !1908)
!1922 = !DILocation(line: 46, column: 15, scope: !1908)
!1923 = !DILocation(line: 60, column: 17, scope: !1908)
!1924 = !DILocation(line: 60, column: 33, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1908, file: !130, discriminator: 1)
!1926 = !DILocation(line: 60, column: 11, scope: !1908)
!1927 = !DILocation(line: 47, column: 15, scope: !1908)
!1928 = !DILocation(line: 61, column: 12, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1908, file: !130, line: 61, column: 7)
!1930 = !DILocation(line: 61, column: 20, scope: !1929)
!1931 = !DILocation(line: 61, column: 25, scope: !1929)
!1932 = !DILocation(line: 61, column: 28, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1929, file: !130, discriminator: 1)
!1934 = !DILocation(line: 61, column: 61, scope: !1933)
!1935 = !DILocation(line: 61, column: 7, scope: !1925)
!1936 = !DILocation(line: 64, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !130, line: 64, column: 11)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !130, line: 62, column: 5)
!1939 = !DILocation(line: 64, column: 36, scope: !1937)
!1940 = !DILocation(line: 64, column: 11, scope: !1938)
!1941 = !DILocation(line: 66, column: 24, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !130, line: 65, column: 9)
!1943 = !DILocation(line: 70, column: 41, scope: !1942)
!1944 = !DILocation(line: 72, column: 9, scope: !1942)
!1945 = !DILocation(line: 84, column: 16, scope: !1908)
!1946 = !DILocation(line: 90, column: 27, scope: !1908)
!1947 = !DILocation(line: 92, column: 1, scope: !1908)
!1948 = distinct !DISubprogram(name: "clone_quoting_options", scope: !161, file: !161, line: 114, type: !1949, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1952)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1951, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1952 = !{!1953, !1954, !1955}
!1953 = !DILocalVariable(name: "o", arg: 1, scope: !1948, file: !161, line: 114, type: !1951)
!1954 = !DILocalVariable(name: "e", scope: !1948, file: !161, line: 116, type: !70)
!1955 = !DILocalVariable(name: "p", scope: !1948, file: !161, line: 117, type: !1951)
!1956 = !DILocation(line: 114, column: 48, scope: !1948)
!1957 = !DILocation(line: 116, column: 11, scope: !1948)
!1958 = !DILocation(line: 116, column: 7, scope: !1948)
!1959 = !DILocation(line: 117, column: 40, scope: !1948)
!1960 = !DILocation(line: 117, column: 40, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1948, file: !161, discriminator: 3)
!1962 = !DILocation(line: 117, column: 31, scope: !1961)
!1963 = !DILocation(line: 117, column: 27, scope: !1948)
!1964 = !DILocation(line: 119, column: 9, scope: !1948)
!1965 = !DILocation(line: 120, column: 3, scope: !1948)
!1966 = distinct !DISubprogram(name: "get_quoting_style", scope: !161, file: !161, line: 125, type: !1967, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1971)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!5, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "o", arg: 1, scope: !1966, file: !161, line: 125, type: !1969)
!1973 = !DILocation(line: 125, column: 50, scope: !1966)
!1974 = !DILocation(line: 127, column: 11, scope: !1966)
!1975 = !DILocation(line: 127, column: 46, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1966, file: !161, discriminator: 3)
!1977 = !{!1978, !637, i64 0}
!1978 = !{!"quoting_options", !637, i64 0, !866, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!1979 = !DILocation(line: 127, column: 3, scope: !1976)
!1980 = distinct !DISubprogram(name: "set_quoting_style", scope: !161, file: !161, line: 133, type: !1981, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1951, !5}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "o", arg: 1, scope: !1980, file: !161, line: 133, type: !1951)
!1985 = !DILocalVariable(name: "s", arg: 2, scope: !1980, file: !161, line: 133, type: !5)
!1986 = !DILocation(line: 133, column: 44, scope: !1980)
!1987 = !DILocation(line: 133, column: 66, scope: !1980)
!1988 = !DILocation(line: 135, column: 4, scope: !1980)
!1989 = !DILocation(line: 135, column: 39, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1980, file: !161, discriminator: 3)
!1991 = !DILocation(line: 135, column: 45, scope: !1990)
!1992 = !DILocation(line: 136, column: 1, scope: !1980)
!1993 = distinct !DISubprogram(name: "set_char_quoting", scope: !161, file: !161, line: 144, type: !1994, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!70, !1951, !30, !70}
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2003, !2004}
!1997 = !DILocalVariable(name: "o", arg: 1, scope: !1993, file: !161, line: 144, type: !1951)
!1998 = !DILocalVariable(name: "c", arg: 2, scope: !1993, file: !161, line: 144, type: !30)
!1999 = !DILocalVariable(name: "i", arg: 3, scope: !1993, file: !161, line: 144, type: !70)
!2000 = !DILocalVariable(name: "uc", scope: !1993, file: !161, line: 146, type: !39)
!2001 = !DILocalVariable(name: "p", scope: !1993, file: !161, line: 147, type: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!2003 = !DILocalVariable(name: "shift", scope: !1993, file: !161, line: 149, type: !70)
!2004 = !DILocalVariable(name: "r", scope: !1993, file: !161, line: 150, type: !70)
!2005 = !DILocation(line: 144, column: 43, scope: !1993)
!2006 = !DILocation(line: 144, column: 51, scope: !1993)
!2007 = !DILocation(line: 144, column: 58, scope: !1993)
!2008 = !DILocation(line: 146, column: 17, scope: !1993)
!2009 = !DILocation(line: 148, column: 6, scope: !1993)
!2010 = !DILocation(line: 148, column: 62, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !1993, file: !161, discriminator: 3)
!2012 = !DILocation(line: 148, column: 57, scope: !2011)
!2013 = !DILocation(line: 147, column: 17, scope: !1993)
!2014 = !DILocation(line: 149, column: 18, scope: !1993)
!2015 = !DILocation(line: 149, column: 15, scope: !1993)
!2016 = !DILocation(line: 149, column: 7, scope: !1993)
!2017 = !DILocation(line: 150, column: 12, scope: !1993)
!2018 = !DILocation(line: 150, column: 15, scope: !1993)
!2019 = !DILocation(line: 150, column: 25, scope: !1993)
!2020 = !DILocation(line: 150, column: 7, scope: !1993)
!2021 = !DILocation(line: 151, column: 13, scope: !1993)
!2022 = !DILocation(line: 151, column: 18, scope: !1993)
!2023 = !DILocation(line: 151, column: 23, scope: !1993)
!2024 = !DILocation(line: 151, column: 6, scope: !1993)
!2025 = !DILocation(line: 152, column: 3, scope: !1993)
!2026 = distinct !DISubprogram(name: "set_quoting_flags", scope: !161, file: !161, line: 160, type: !2027, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!70, !1951, !70}
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "o", arg: 1, scope: !2026, file: !161, line: 160, type: !1951)
!2031 = !DILocalVariable(name: "i", arg: 2, scope: !2026, file: !161, line: 160, type: !70)
!2032 = !DILocalVariable(name: "r", scope: !2026, file: !161, line: 162, type: !70)
!2033 = !DILocation(line: 160, column: 44, scope: !2026)
!2034 = !DILocation(line: 160, column: 51, scope: !2026)
!2035 = !DILocation(line: 163, column: 8, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2026, file: !161, line: 163, column: 7)
!2037 = !DILocation(line: 163, column: 7, scope: !2026)
!2038 = !DILocation(line: 165, column: 10, scope: !2026)
!2039 = !{!1978, !866, i64 4}
!2040 = !DILocation(line: 162, column: 7, scope: !2026)
!2041 = !DILocation(line: 166, column: 12, scope: !2026)
!2042 = !DILocation(line: 167, column: 3, scope: !2026)
!2043 = distinct !DISubprogram(name: "set_custom_quoting", scope: !161, file: !161, line: 171, type: !2044, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !1951, !40, !40}
!2046 = !{!2047, !2048, !2049}
!2047 = !DILocalVariable(name: "o", arg: 1, scope: !2043, file: !161, line: 171, type: !1951)
!2048 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2043, file: !161, line: 172, type: !40)
!2049 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2043, file: !161, line: 172, type: !40)
!2050 = !DILocation(line: 171, column: 45, scope: !2043)
!2051 = !DILocation(line: 172, column: 33, scope: !2043)
!2052 = !DILocation(line: 172, column: 57, scope: !2043)
!2053 = !DILocation(line: 174, column: 8, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2043, file: !161, line: 174, column: 7)
!2055 = !DILocation(line: 174, column: 7, scope: !2043)
!2056 = !DILocation(line: 176, column: 6, scope: !2043)
!2057 = !DILocation(line: 176, column: 12, scope: !2043)
!2058 = !DILocation(line: 177, column: 8, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2043, file: !161, line: 177, column: 7)
!2060 = !DILocation(line: 177, column: 23, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2059, file: !161, discriminator: 1)
!2062 = !DILocation(line: 177, column: 19, scope: !2059)
!2063 = !DILocation(line: 178, column: 5, scope: !2059)
!2064 = !DILocation(line: 179, column: 6, scope: !2043)
!2065 = !DILocation(line: 179, column: 17, scope: !2043)
!2066 = !{!1978, !636, i64 40}
!2067 = !DILocation(line: 180, column: 6, scope: !2043)
!2068 = !DILocation(line: 180, column: 18, scope: !2043)
!2069 = !{!1978, !636, i64 48}
!2070 = !DILocation(line: 181, column: 1, scope: !2043)
!2071 = distinct !DISubprogram(name: "quotearg_buffer", scope: !161, file: !161, line: 776, type: !2072, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!32, !29, !32, !40, !32, !1969}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2075 = !DILocalVariable(name: "buffer", arg: 1, scope: !2071, file: !161, line: 776, type: !29)
!2076 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2071, file: !161, line: 776, type: !32)
!2077 = !DILocalVariable(name: "arg", arg: 3, scope: !2071, file: !161, line: 777, type: !40)
!2078 = !DILocalVariable(name: "argsize", arg: 4, scope: !2071, file: !161, line: 777, type: !32)
!2079 = !DILocalVariable(name: "o", arg: 5, scope: !2071, file: !161, line: 778, type: !1969)
!2080 = !DILocalVariable(name: "p", scope: !2071, file: !161, line: 780, type: !1969)
!2081 = !DILocalVariable(name: "e", scope: !2071, file: !161, line: 781, type: !70)
!2082 = !DILocalVariable(name: "r", scope: !2071, file: !161, line: 782, type: !32)
!2083 = !DILocation(line: 776, column: 24, scope: !2071)
!2084 = !DILocation(line: 776, column: 39, scope: !2071)
!2085 = !DILocation(line: 777, column: 30, scope: !2071)
!2086 = !DILocation(line: 777, column: 42, scope: !2071)
!2087 = !DILocation(line: 778, column: 48, scope: !2071)
!2088 = !DILocation(line: 780, column: 37, scope: !2071)
!2089 = !DILocation(line: 780, column: 33, scope: !2071)
!2090 = !DILocation(line: 781, column: 11, scope: !2071)
!2091 = !DILocation(line: 781, column: 7, scope: !2071)
!2092 = !DILocation(line: 783, column: 43, scope: !2071)
!2093 = !DILocation(line: 783, column: 53, scope: !2071)
!2094 = !DILocation(line: 783, column: 60, scope: !2071)
!2095 = !DILocation(line: 784, column: 43, scope: !2071)
!2096 = !DILocation(line: 784, column: 58, scope: !2071)
!2097 = !DILocation(line: 782, column: 14, scope: !2071)
!2098 = !DILocation(line: 782, column: 10, scope: !2071)
!2099 = !DILocation(line: 785, column: 9, scope: !2071)
!2100 = !DILocation(line: 786, column: 3, scope: !2071)
!2101 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !161, file: !161, line: 248, type: !2102, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2106)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!32, !29, !32, !40, !32, !5, !70, !2104, !40, !40}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2131, !2132, !2133, !2134, !2135, !2138, !2139, !2153, !2156, !2157, !2164}
!2107 = !DILocalVariable(name: "buffer", arg: 1, scope: !2101, file: !161, line: 248, type: !29)
!2108 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2101, file: !161, line: 248, type: !32)
!2109 = !DILocalVariable(name: "arg", arg: 3, scope: !2101, file: !161, line: 249, type: !40)
!2110 = !DILocalVariable(name: "argsize", arg: 4, scope: !2101, file: !161, line: 249, type: !32)
!2111 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2101, file: !161, line: 250, type: !5)
!2112 = !DILocalVariable(name: "flags", arg: 6, scope: !2101, file: !161, line: 250, type: !70)
!2113 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2101, file: !161, line: 251, type: !2104)
!2114 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2101, file: !161, line: 252, type: !40)
!2115 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2101, file: !161, line: 253, type: !40)
!2116 = !DILocalVariable(name: "i", scope: !2101, file: !161, line: 255, type: !32)
!2117 = !DILocalVariable(name: "len", scope: !2101, file: !161, line: 256, type: !32)
!2118 = !DILocalVariable(name: "orig_buffersize", scope: !2101, file: !161, line: 257, type: !32)
!2119 = !DILocalVariable(name: "quote_string", scope: !2101, file: !161, line: 258, type: !40)
!2120 = !DILocalVariable(name: "quote_string_len", scope: !2101, file: !161, line: 259, type: !32)
!2121 = !DILocalVariable(name: "backslash_escapes", scope: !2101, file: !161, line: 260, type: !117)
!2122 = !DILocalVariable(name: "unibyte_locale", scope: !2101, file: !161, line: 261, type: !117)
!2123 = !DILocalVariable(name: "elide_outer_quotes", scope: !2101, file: !161, line: 262, type: !117)
!2124 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2101, file: !161, line: 263, type: !117)
!2125 = !DILocalVariable(name: "encountered_single_quote", scope: !2101, file: !161, line: 264, type: !117)
!2126 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2101, file: !161, line: 265, type: !117)
!2127 = !DILocalVariable(name: "c", scope: !2128, file: !161, line: 394, type: !39)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !161, line: 393, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !161, line: 392, column: 3)
!2130 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 392, column: 3)
!2131 = !DILocalVariable(name: "esc", scope: !2128, file: !161, line: 395, type: !39)
!2132 = !DILocalVariable(name: "is_right_quote", scope: !2128, file: !161, line: 396, type: !117)
!2133 = !DILocalVariable(name: "escaping", scope: !2128, file: !161, line: 397, type: !117)
!2134 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2128, file: !161, line: 398, type: !117)
!2135 = !DILocalVariable(name: "m", scope: !2136, file: !161, line: 602, type: !32)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 600, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 418, column: 9)
!2138 = !DILocalVariable(name: "printable", scope: !2136, file: !161, line: 604, type: !117)
!2139 = !DILocalVariable(name: "mbstate", scope: !2140, file: !161, line: 613, type: !2142)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !161, line: 612, column: 15)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !161, line: 606, column: 17)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2143, line: 107, baseType: !2144)
!2143 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2143, line: 95, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2143, line: 83, size: 64, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2145, file: !2143, line: 85, baseType: !70, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2145, file: !2143, line: 94, baseType: !2149, size: 32, offset: 32)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2145, file: !2143, line: 86, size: 32, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2149, file: !2143, line: 89, baseType: !174, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2149, file: !2143, line: 93, baseType: !795, size: 32)
!2153 = !DILocalVariable(name: "w", scope: !2154, file: !161, line: 623, type: !2155)
!2154 = distinct !DILexicalBlock(scope: !2140, file: !161, line: 622, column: 19)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !33, line: 90, baseType: !70)
!2156 = !DILocalVariable(name: "bytes", scope: !2154, file: !161, line: 624, type: !32)
!2157 = !DILocalVariable(name: "j", scope: !2158, file: !161, line: 649, type: !32)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !161, line: 648, column: 27)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !161, line: 646, column: 29)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !161, line: 641, column: 23)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !161, line: 633, column: 30)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !161, line: 628, column: 30)
!2163 = distinct !DILexicalBlock(scope: !2154, file: !161, line: 626, column: 25)
!2164 = !DILocalVariable(name: "ilim", scope: !2165, file: !161, line: 676, type: !32)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !161, line: 673, column: 15)
!2166 = distinct !DILexicalBlock(scope: !2136, file: !161, line: 672, column: 17)
!2167 = !DILocation(line: 248, column: 33, scope: !2101)
!2168 = !DILocation(line: 248, column: 48, scope: !2101)
!2169 = !DILocation(line: 249, column: 39, scope: !2101)
!2170 = !DILocation(line: 249, column: 51, scope: !2101)
!2171 = !DILocation(line: 250, column: 46, scope: !2101)
!2172 = !DILocation(line: 250, column: 65, scope: !2101)
!2173 = !DILocation(line: 251, column: 47, scope: !2101)
!2174 = !DILocation(line: 252, column: 39, scope: !2101)
!2175 = !DILocation(line: 253, column: 39, scope: !2101)
!2176 = !DILocation(line: 256, column: 10, scope: !2101)
!2177 = !DILocation(line: 257, column: 10, scope: !2101)
!2178 = !DILocation(line: 258, column: 15, scope: !2101)
!2179 = !DILocation(line: 259, column: 10, scope: !2101)
!2180 = !DILocation(line: 260, column: 8, scope: !2101)
!2181 = !DILocation(line: 261, column: 25, scope: !2101)
!2182 = !DILocation(line: 261, column: 36, scope: !2101)
!2183 = !DILocation(line: 262, column: 8, scope: !2101)
!2184 = !DILocation(line: 263, column: 8, scope: !2101)
!2185 = !DILocation(line: 264, column: 8, scope: !2101)
!2186 = !DILocation(line: 265, column: 8, scope: !2101)
!2187 = !DILocation(line: 265, column: 3, scope: !2101)
!2188 = !DILocation(line: 308, column: 3, scope: !2101)
!2189 = !DILocation(line: 315, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 309, column: 5)
!2191 = !DILocation(line: 315, column: 12, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !161, line: 315, column: 11)
!2193 = !DILocation(line: 316, column: 9, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2195, file: !161, discriminator: 1)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !161, line: 316, column: 9)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !161, line: 316, column: 9)
!2197 = !DILocation(line: 316, column: 9, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2196, file: !161, discriminator: 1)
!2199 = !DILocation(line: 316, column: 9, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2195, file: !161, discriminator: 2)
!2201 = !DILocation(line: 354, column: 26, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !161, line: 332, column: 11)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !161, line: 331, column: 13)
!2204 = distinct !DILexicalBlock(scope: !2190, file: !161, line: 330, column: 7)
!2205 = !DILocation(line: 355, column: 27, scope: !2202)
!2206 = !DILocation(line: 356, column: 11, scope: !2202)
!2207 = !DILocation(line: 357, column: 14, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !161, line: 357, column: 13)
!2209 = !DILocation(line: 357, column: 13, scope: !2204)
!2210 = !DILocation(line: 358, column: 43, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !161, discriminator: 1)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !161, line: 358, column: 11)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !161, line: 358, column: 11)
!2214 = !DILocation(line: 358, column: 11, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2213, file: !161, discriminator: 1)
!2216 = !DILocation(line: 359, column: 13, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2218, file: !161, discriminator: 1)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !161, line: 359, column: 13)
!2219 = distinct !DILexicalBlock(scope: !2212, file: !161, line: 359, column: 13)
!2220 = !DILocation(line: 359, column: 13, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2219, file: !161, discriminator: 1)
!2222 = !DILocation(line: 359, column: 13, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2218, file: !161, discriminator: 2)
!2224 = !DILocation(line: 359, column: 13, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2219, file: !161, discriminator: 3)
!2226 = !DILocation(line: 358, column: 70, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2212, file: !161, discriminator: 2)
!2228 = distinct !{!2228, !2229, !2230}
!2229 = !DILocation(line: 358, column: 11, scope: !2213)
!2230 = !DILocation(line: 359, column: 13, scope: !2213)
!2231 = !DILocation(line: 362, column: 28, scope: !2204)
!2232 = !DILocation(line: 364, column: 7, scope: !2190)
!2233 = !DILocation(line: 367, column: 7, scope: !2190)
!2234 = !DILocation(line: 370, column: 7, scope: !2190)
!2235 = !DILocation(line: 373, column: 12, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2190, file: !161, line: 373, column: 11)
!2237 = !DILocation(line: 373, column: 11, scope: !2190)
!2238 = !DILocation(line: 378, column: 12, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2190, file: !161, line: 378, column: 11)
!2240 = !DILocation(line: 378, column: 11, scope: !2190)
!2241 = !DILocation(line: 379, column: 9, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2243, file: !161, discriminator: 1)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !161, line: 379, column: 9)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !161, line: 379, column: 9)
!2245 = !DILocation(line: 379, column: 9, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2244, file: !161, discriminator: 1)
!2247 = !DILocation(line: 379, column: 9, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2243, file: !161, discriminator: 2)
!2249 = !DILocation(line: 386, column: 7, scope: !2190)
!2250 = !DILocation(line: 389, column: 7, scope: !2190)
!2251 = !DILocation(line: 255, column: 10, scope: !2101)
!2252 = !DILocation(line: 392, column: 8, scope: !2130)
!2253 = !DILocation(line: 392, column: 27, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2129, file: !161, discriminator: 1)
!2255 = !DILocation(line: 392, column: 19, scope: !2254)
!2256 = !DILocation(line: 392, column: 60, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2129, file: !161, discriminator: 3)
!2258 = !DILocation(line: 392, column: 3, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2130, file: !161, discriminator: 4)
!2260 = !DILocation(line: 392, column: 41, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2129, file: !161, discriminator: 2)
!2262 = !DILocation(line: 392, column: 48, scope: !2261)
!2263 = !DILocation(line: 396, column: 12, scope: !2128)
!2264 = !DILocation(line: 397, column: 12, scope: !2128)
!2265 = !DILocation(line: 398, column: 12, scope: !2128)
!2266 = !DILocation(line: 401, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 400, column: 11)
!2268 = !DILocation(line: 403, column: 17, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2267, file: !161, discriminator: 1)
!2270 = !DILocation(line: 404, column: 39, scope: !2267)
!2271 = !DILocation(line: 408, column: 32, scope: !2267)
!2272 = !DILocation(line: 404, column: 19, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2267, file: !161, discriminator: 2)
!2274 = !DILocation(line: 404, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2267, file: !161, discriminator: 4)
!2276 = !DILocation(line: 409, column: 11, scope: !2267)
!2277 = !DILocation(line: 409, column: 26, scope: !2269)
!2278 = !DILocation(line: 409, column: 14, scope: !2269)
!2279 = !DILocation(line: 400, column: 11, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2128, file: !161, discriminator: 1)
!2281 = !DILocation(line: 416, column: 11, scope: !2128)
!2282 = !DILocation(line: 394, column: 21, scope: !2128)
!2283 = !DILocation(line: 417, column: 7, scope: !2128)
!2284 = !DILocation(line: 420, column: 15, scope: !2137)
!2285 = !DILocation(line: 422, column: 15, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !161, discriminator: 1)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !161, line: 422, column: 15)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !161, line: 421, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 420, column: 15)
!2290 = !DILocation(line: 422, column: 15, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !161, discriminator: 4)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !161, line: 422, column: 15)
!2293 = !DILocation(line: 422, column: 15, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2292, file: !161, discriminator: 3)
!2295 = !DILocation(line: 422, column: 15, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2297, file: !161, discriminator: 6)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !161, line: 422, column: 15)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !161, line: 422, column: 15)
!2299 = distinct !DILexicalBlock(scope: !2292, file: !161, line: 422, column: 15)
!2300 = !DILocation(line: 422, column: 15, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2298, file: !161, discriminator: 6)
!2302 = !DILocation(line: 422, column: 15, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2297, file: !161, discriminator: 7)
!2304 = !DILocation(line: 422, column: 15, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2298, file: !161, discriminator: 8)
!2306 = !DILocation(line: 422, column: 15, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !161, discriminator: 11)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !161, line: 422, column: 15)
!2309 = distinct !DILexicalBlock(scope: !2299, file: !161, line: 422, column: 15)
!2310 = !DILocation(line: 422, column: 15, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2309, file: !161, discriminator: 11)
!2312 = !DILocation(line: 422, column: 15, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2308, file: !161, discriminator: 12)
!2314 = !DILocation(line: 422, column: 15, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2309, file: !161, discriminator: 13)
!2316 = !DILocation(line: 422, column: 15, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2318, file: !161, discriminator: 16)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !161, line: 422, column: 15)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !161, line: 422, column: 15)
!2320 = !DILocation(line: 422, column: 15, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2319, file: !161, discriminator: 16)
!2322 = !DILocation(line: 422, column: 15, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2318, file: !161, discriminator: 17)
!2324 = !DILocation(line: 422, column: 15, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2319, file: !161, discriminator: 18)
!2326 = !DILocation(line: 422, column: 15, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2299, file: !161, discriminator: 20)
!2328 = !DILocation(line: 422, column: 15, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2330, file: !161, discriminator: 22)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !161, line: 422, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2287, file: !161, line: 422, column: 15)
!2332 = !DILocation(line: 422, column: 15, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2331, file: !161, discriminator: 22)
!2334 = !DILocation(line: 422, column: 15, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2330, file: !161, discriminator: 23)
!2336 = !DILocation(line: 422, column: 15, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2331, file: !161, discriminator: 24)
!2338 = !DILocation(line: 430, column: 19, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2288, file: !161, line: 429, column: 19)
!2340 = !DILocation(line: 430, column: 24, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2339, file: !161, discriminator: 1)
!2342 = !DILocation(line: 430, column: 28, scope: !2341)
!2343 = !DILocation(line: 430, column: 38, scope: !2341)
!2344 = !DILocation(line: 430, column: 48, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2339, file: !161, discriminator: 2)
!2346 = !DILocation(line: 430, column: 59, scope: !2345)
!2347 = !DILocation(line: 432, column: 19, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !161, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !161, line: 432, column: 19)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !161, line: 432, column: 19)
!2351 = distinct !DILexicalBlock(scope: !2339, file: !161, line: 431, column: 17)
!2352 = !DILocation(line: 432, column: 19, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2350, file: !161, discriminator: 1)
!2354 = !DILocation(line: 432, column: 19, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2349, file: !161, discriminator: 2)
!2356 = !DILocation(line: 432, column: 19, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2350, file: !161, discriminator: 3)
!2358 = !DILocation(line: 433, column: 19, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !161, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !161, line: 433, column: 19)
!2361 = distinct !DILexicalBlock(scope: !2351, file: !161, line: 433, column: 19)
!2362 = !DILocation(line: 433, column: 19, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2361, file: !161, discriminator: 1)
!2364 = !DILocation(line: 433, column: 19, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2360, file: !161, discriminator: 2)
!2366 = !DILocation(line: 433, column: 19, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2361, file: !161, discriminator: 3)
!2368 = !DILocation(line: 434, column: 17, scope: !2351)
!2369 = !DILocation(line: 441, column: 20, scope: !2289)
!2370 = !DILocation(line: 446, column: 11, scope: !2137)
!2371 = !DILocation(line: 449, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 447, column: 13)
!2373 = !DILocation(line: 455, column: 19, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2372, file: !161, line: 454, column: 19)
!2375 = !DILocation(line: 455, column: 24, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2374, file: !161, discriminator: 1)
!2377 = !DILocation(line: 455, column: 28, scope: !2376)
!2378 = !DILocation(line: 455, column: 38, scope: !2376)
!2379 = !DILocation(line: 455, column: 47, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2374, file: !161, discriminator: 2)
!2381 = !DILocation(line: 455, column: 41, scope: !2380)
!2382 = !DILocation(line: 455, column: 52, scope: !2380)
!2383 = !DILocation(line: 454, column: 19, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2372, file: !161, discriminator: 1)
!2385 = !DILocation(line: 456, column: 25, scope: !2374)
!2386 = !DILocation(line: 456, column: 17, scope: !2374)
!2387 = !DILocation(line: 463, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2374, file: !161, line: 457, column: 19)
!2389 = !DILocation(line: 467, column: 21, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2391, file: !161, discriminator: 1)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !161, line: 467, column: 21)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !161, line: 467, column: 21)
!2393 = !DILocation(line: 467, column: 21, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2392, file: !161, discriminator: 1)
!2395 = !DILocation(line: 467, column: 21, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2391, file: !161, discriminator: 2)
!2397 = !DILocation(line: 467, column: 21, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2392, file: !161, discriminator: 3)
!2399 = !DILocation(line: 468, column: 21, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2401, file: !161, discriminator: 1)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !161, line: 468, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2388, file: !161, line: 468, column: 21)
!2403 = !DILocation(line: 468, column: 21, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2402, file: !161, discriminator: 1)
!2405 = !DILocation(line: 468, column: 21, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2401, file: !161, discriminator: 2)
!2407 = !DILocation(line: 468, column: 21, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2402, file: !161, discriminator: 3)
!2409 = !DILocation(line: 469, column: 21, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !161, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !161, line: 469, column: 21)
!2412 = distinct !DILexicalBlock(scope: !2388, file: !161, line: 469, column: 21)
!2413 = !DILocation(line: 469, column: 21, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2412, file: !161, discriminator: 1)
!2415 = !DILocation(line: 469, column: 21, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2411, file: !161, discriminator: 2)
!2417 = !DILocation(line: 469, column: 21, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2412, file: !161, discriminator: 3)
!2419 = !DILocation(line: 470, column: 21, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2421, file: !161, discriminator: 1)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !161, line: 470, column: 21)
!2422 = distinct !DILexicalBlock(scope: !2388, file: !161, line: 470, column: 21)
!2423 = !DILocation(line: 470, column: 21, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2422, file: !161, discriminator: 1)
!2425 = !DILocation(line: 470, column: 21, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2421, file: !161, discriminator: 2)
!2427 = !DILocation(line: 470, column: 21, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2422, file: !161, discriminator: 3)
!2429 = !DILocation(line: 471, column: 21, scope: !2388)
!2430 = !DILocation(line: 395, column: 21, scope: !2128)
!2431 = !DILocation(line: 484, column: 31, scope: !2137)
!2432 = !DILocation(line: 485, column: 31, scope: !2137)
!2433 = !DILocation(line: 487, column: 31, scope: !2137)
!2434 = !DILocation(line: 488, column: 31, scope: !2137)
!2435 = !DILocation(line: 489, column: 31, scope: !2137)
!2436 = !DILocation(line: 492, column: 15, scope: !2137)
!2437 = !DILocation(line: 494, column: 19, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !161, line: 493, column: 13)
!2439 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 492, column: 15)
!2440 = !DILocation(line: 501, column: 33, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 501, column: 15)
!2442 = !DILocation(line: 506, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 505, column: 15)
!2444 = !DILocation(line: 510, column: 15, scope: !2137)
!2445 = !DILocation(line: 518, column: 26, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 518, column: 15)
!2447 = !DILocation(line: 518, column: 15, scope: !2137)
!2448 = !DILocation(line: 518, column: 40, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2446, file: !161, discriminator: 1)
!2450 = !DILocation(line: 518, column: 47, scope: !2449)
!2451 = !DILocation(line: 522, column: 17, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 522, column: 15)
!2453 = !DILocation(line: 518, column: 18, scope: !2449)
!2454 = !DILocation(line: 518, column: 65, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2446, file: !161, discriminator: 2)
!2456 = !DILocation(line: 518, column: 15, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2137, file: !161, discriminator: 2)
!2458 = !DILocation(line: 522, column: 15, scope: !2137)
!2459 = !DILocation(line: 526, column: 11, scope: !2137)
!2460 = !DILocation(line: 541, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 540, column: 15)
!2462 = !DILocation(line: 548, column: 15, scope: !2137)
!2463 = !DILocation(line: 550, column: 19, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !161, line: 549, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2137, file: !161, line: 548, column: 15)
!2466 = !DILocation(line: 553, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !161, line: 553, column: 19)
!2468 = !DILocation(line: 553, column: 35, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2467, file: !161, discriminator: 1)
!2470 = !DILocation(line: 553, column: 30, scope: !2467)
!2471 = !DILocation(line: 562, column: 15, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2473, file: !161, discriminator: 1)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !161, line: 562, column: 15)
!2474 = distinct !DILexicalBlock(scope: !2464, file: !161, line: 562, column: 15)
!2475 = !DILocation(line: 562, column: 15, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2474, file: !161, discriminator: 1)
!2477 = !DILocation(line: 562, column: 15, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2473, file: !161, discriminator: 2)
!2479 = !DILocation(line: 562, column: 15, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2474, file: !161, discriminator: 3)
!2481 = !DILocation(line: 563, column: 15, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2483, file: !161, discriminator: 1)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !161, line: 563, column: 15)
!2484 = distinct !DILexicalBlock(scope: !2464, file: !161, line: 563, column: 15)
!2485 = !DILocation(line: 563, column: 15, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2484, file: !161, discriminator: 1)
!2487 = !DILocation(line: 563, column: 15, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2483, file: !161, discriminator: 2)
!2489 = !DILocation(line: 563, column: 15, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2484, file: !161, discriminator: 3)
!2491 = !DILocation(line: 564, column: 15, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2493, file: !161, discriminator: 1)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !161, line: 564, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2464, file: !161, line: 564, column: 15)
!2495 = !DILocation(line: 564, column: 15, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2494, file: !161, discriminator: 1)
!2497 = !DILocation(line: 564, column: 15, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2493, file: !161, discriminator: 2)
!2499 = !DILocation(line: 564, column: 15, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2494, file: !161, discriminator: 3)
!2501 = !DILocation(line: 566, column: 13, scope: !2464)
!2502 = !DILocation(line: 606, column: 17, scope: !2136)
!2503 = !DILocation(line: 602, column: 20, scope: !2136)
!2504 = !DILocation(line: 609, column: 29, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2141, file: !161, line: 607, column: 15)
!2506 = !{!981, !981, i64 0}
!2507 = !DILocation(line: 609, column: 27, scope: !2505)
!2508 = !DILocation(line: 604, column: 18, scope: !2136)
!2509 = !DILocation(line: 610, column: 15, scope: !2505)
!2510 = !DILocation(line: 613, column: 17, scope: !2140)
!2511 = !DILocation(line: 614, column: 17, scope: !2140)
!2512 = !DILocation(line: 618, column: 29, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2140, file: !161, line: 618, column: 21)
!2514 = !DILocation(line: 618, column: 21, scope: !2140)
!2515 = distinct !{!2515, !2516, !2517}
!2516 = !DILocation(line: 621, column: 17, scope: !2140)
!2517 = !DILocation(line: 667, column: 44, scope: !2140)
!2518 = !DILocation(line: 619, column: 29, scope: !2513)
!2519 = !DILocation(line: 619, column: 19, scope: !2513)
!2520 = !DILocation(line: 623, column: 21, scope: !2154)
!2521 = !DILocation(line: 624, column: 56, scope: !2154)
!2522 = !DILocation(line: 624, column: 50, scope: !2154)
!2523 = !DILocation(line: 625, column: 53, scope: !2154)
!2524 = !DILocation(line: 613, column: 27, scope: !2140)
!2525 = !DILocation(line: 623, column: 29, scope: !2154)
!2526 = !DILocation(line: 624, column: 36, scope: !2154)
!2527 = !DILocation(line: 624, column: 28, scope: !2154)
!2528 = !DILocation(line: 626, column: 25, scope: !2154)
!2529 = !DILocation(line: 636, column: 38, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2531, file: !161, discriminator: 1)
!2531 = distinct !DILexicalBlock(scope: !2161, file: !161, line: 634, column: 23)
!2532 = !DILocation(line: 636, column: 48, scope: !2530)
!2533 = !DILocation(line: 636, column: 51, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2531, file: !161, discriminator: 2)
!2535 = !DILocation(line: 636, column: 48, scope: !2534)
!2536 = !DILocation(line: 636, column: 25, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2531, file: !161, discriminator: 3)
!2538 = !DILocation(line: 637, column: 28, scope: !2531)
!2539 = !DILocation(line: 636, column: 34, scope: !2530)
!2540 = distinct !{!2540, !2541, !2538}
!2541 = !DILocation(line: 636, column: 25, scope: !2531)
!2542 = !DILocation(line: 650, column: 43, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2544, file: !161, discriminator: 1)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !161, line: 650, column: 29)
!2545 = distinct !DILexicalBlock(scope: !2158, file: !161, line: 650, column: 29)
!2546 = !DILocation(line: 647, column: 29, scope: !2159)
!2547 = !DILocation(line: 649, column: 36, scope: !2158)
!2548 = !DILocation(line: 651, column: 49, scope: !2544)
!2549 = !DILocation(line: 651, column: 39, scope: !2544)
!2550 = !DILocation(line: 651, column: 31, scope: !2544)
!2551 = !DILocation(line: 650, column: 53, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2544, file: !161, discriminator: 2)
!2553 = !DILocation(line: 650, column: 29, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2545, file: !161, discriminator: 1)
!2555 = distinct !{!2555, !2556, !2557}
!2556 = !DILocation(line: 650, column: 29, scope: !2545)
!2557 = !DILocation(line: 659, column: 33, scope: !2545)
!2558 = !DILocation(line: 666, column: 19, scope: !2140)
!2559 = !DILocation(line: 662, column: 41, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2160, file: !161, line: 662, column: 29)
!2561 = !DILocation(line: 662, column: 31, scope: !2560)
!2562 = !DILocation(line: 662, column: 29, scope: !2160)
!2563 = !DILocation(line: 664, column: 27, scope: !2160)
!2564 = !DILocation(line: 667, column: 26, scope: !2140)
!2565 = !DILocation(line: 667, column: 24, scope: !2140)
!2566 = !DILocation(line: 666, column: 19, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2154, file: !161, discriminator: 3)
!2568 = !DILocation(line: 668, column: 15, scope: !2141)
!2569 = !DILocation(line: 670, column: 40, scope: !2136)
!2570 = !DILocation(line: 672, column: 19, scope: !2166)
!2571 = !DILocation(line: 672, column: 45, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2166, file: !161, discriminator: 1)
!2573 = !DILocation(line: 672, column: 23, scope: !2166)
!2574 = !DILocation(line: 676, column: 33, scope: !2165)
!2575 = !DILocation(line: 676, column: 24, scope: !2165)
!2576 = !DILocation(line: 678, column: 17, scope: !2165)
!2577 = !DILocation(line: 680, column: 43, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !161, line: 680, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !161, line: 679, column: 19)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !161, line: 678, column: 17)
!2581 = distinct !DILexicalBlock(scope: !2165, file: !161, line: 678, column: 17)
!2582 = !DILocation(line: 682, column: 25, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2584, file: !161, discriminator: 1)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !161, line: 682, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2578, file: !161, line: 681, column: 23)
!2586 = !DILocation(line: 682, column: 25, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !161, discriminator: 4)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !161, line: 682, column: 25)
!2589 = !DILocation(line: 682, column: 25, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2588, file: !161, discriminator: 3)
!2591 = !DILocation(line: 682, column: 25, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2593, file: !161, discriminator: 6)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !161, line: 682, column: 25)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !161, line: 682, column: 25)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !161, line: 682, column: 25)
!2596 = !DILocation(line: 682, column: 25, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2594, file: !161, discriminator: 6)
!2598 = !DILocation(line: 682, column: 25, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2593, file: !161, discriminator: 7)
!2600 = !DILocation(line: 682, column: 25, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2594, file: !161, discriminator: 8)
!2602 = !DILocation(line: 682, column: 25, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !161, discriminator: 11)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !161, line: 682, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2595, file: !161, line: 682, column: 25)
!2606 = !DILocation(line: 682, column: 25, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2605, file: !161, discriminator: 11)
!2608 = !DILocation(line: 682, column: 25, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2604, file: !161, discriminator: 12)
!2610 = !DILocation(line: 682, column: 25, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2605, file: !161, discriminator: 13)
!2612 = !DILocation(line: 682, column: 25, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2614, file: !161, discriminator: 16)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !161, line: 682, column: 25)
!2615 = distinct !DILexicalBlock(scope: !2595, file: !161, line: 682, column: 25)
!2616 = !DILocation(line: 682, column: 25, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2615, file: !161, discriminator: 16)
!2618 = !DILocation(line: 682, column: 25, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2614, file: !161, discriminator: 17)
!2620 = !DILocation(line: 682, column: 25, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2615, file: !161, discriminator: 18)
!2622 = !DILocation(line: 682, column: 25, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2595, file: !161, discriminator: 20)
!2624 = !DILocation(line: 682, column: 25, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2626, file: !161, discriminator: 22)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !161, line: 682, column: 25)
!2627 = distinct !DILexicalBlock(scope: !2584, file: !161, line: 682, column: 25)
!2628 = !DILocation(line: 682, column: 25, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2627, file: !161, discriminator: 22)
!2630 = !DILocation(line: 682, column: 25, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2626, file: !161, discriminator: 23)
!2632 = !DILocation(line: 682, column: 25, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2627, file: !161, discriminator: 24)
!2634 = !DILocation(line: 683, column: 25, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2636, file: !161, discriminator: 1)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !161, line: 683, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2585, file: !161, line: 683, column: 25)
!2638 = !DILocation(line: 683, column: 25, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2637, file: !161, discriminator: 1)
!2640 = !DILocation(line: 683, column: 25, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2636, file: !161, discriminator: 2)
!2642 = !DILocation(line: 683, column: 25, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2637, file: !161, discriminator: 3)
!2644 = !DILocation(line: 684, column: 25, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2646, file: !161, discriminator: 1)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !161, line: 684, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2585, file: !161, line: 684, column: 25)
!2648 = !DILocation(line: 684, column: 25, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2647, file: !161, discriminator: 1)
!2650 = !DILocation(line: 684, column: 25, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2646, file: !161, discriminator: 2)
!2652 = !DILocation(line: 684, column: 25, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2647, file: !161, discriminator: 3)
!2654 = !DILocation(line: 685, column: 38, scope: !2585)
!2655 = !DILocation(line: 685, column: 33, scope: !2585)
!2656 = !DILocation(line: 686, column: 23, scope: !2585)
!2657 = !DILocation(line: 687, column: 30, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2578, file: !161, line: 687, column: 30)
!2659 = !DILocation(line: 687, column: 30, scope: !2578)
!2660 = !DILocation(line: 689, column: 25, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !161, discriminator: 1)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !161, line: 689, column: 25)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !161, line: 689, column: 25)
!2664 = distinct !DILexicalBlock(scope: !2658, file: !161, line: 688, column: 23)
!2665 = !DILocation(line: 689, column: 25, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2663, file: !161, discriminator: 1)
!2667 = !DILocation(line: 689, column: 25, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2662, file: !161, discriminator: 2)
!2669 = !DILocation(line: 689, column: 25, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2663, file: !161, discriminator: 3)
!2671 = !DILocation(line: 691, column: 23, scope: !2664)
!2672 = !DILocation(line: 692, column: 35, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2579, file: !161, line: 692, column: 25)
!2674 = !DILocation(line: 692, column: 30, scope: !2673)
!2675 = !DILocation(line: 692, column: 25, scope: !2579)
!2676 = !DILocation(line: 694, column: 21, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2678, file: !161, discriminator: 1)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !161, line: 694, column: 21)
!2679 = distinct !DILexicalBlock(scope: !2579, file: !161, line: 694, column: 21)
!2680 = !DILocation(line: 694, column: 21, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2678, file: !161, discriminator: 2)
!2682 = !DILocation(line: 694, column: 21, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2684, file: !161, discriminator: 4)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !161, line: 694, column: 21)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !161, line: 694, column: 21)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !161, line: 694, column: 21)
!2687 = !DILocation(line: 694, column: 21, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2685, file: !161, discriminator: 4)
!2689 = !DILocation(line: 694, column: 21, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2684, file: !161, discriminator: 5)
!2691 = !DILocation(line: 694, column: 21, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2685, file: !161, discriminator: 6)
!2693 = !DILocation(line: 694, column: 21, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2695, file: !161, discriminator: 9)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !161, line: 694, column: 21)
!2696 = distinct !DILexicalBlock(scope: !2686, file: !161, line: 694, column: 21)
!2697 = !DILocation(line: 694, column: 21, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2696, file: !161, discriminator: 9)
!2699 = !DILocation(line: 694, column: 21, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2695, file: !161, discriminator: 10)
!2701 = !DILocation(line: 694, column: 21, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2696, file: !161, discriminator: 11)
!2703 = !DILocation(line: 694, column: 21, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2686, file: !161, discriminator: 13)
!2705 = !DILocation(line: 695, column: 21, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2707, file: !161, discriminator: 1)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !161, line: 695, column: 21)
!2708 = distinct !DILexicalBlock(scope: !2579, file: !161, line: 695, column: 21)
!2709 = !DILocation(line: 695, column: 21, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2708, file: !161, discriminator: 1)
!2711 = !DILocation(line: 695, column: 21, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2707, file: !161, discriminator: 2)
!2713 = !DILocation(line: 695, column: 21, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2708, file: !161, discriminator: 3)
!2715 = !DILocation(line: 696, column: 25, scope: !2579)
!2716 = !DILocation(line: 678, column: 17, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2580, file: !161, discriminator: 1)
!2718 = distinct !{!2718, !2719, !2720}
!2719 = !DILocation(line: 678, column: 17, scope: !2581)
!2720 = !DILocation(line: 697, column: 19, scope: !2581)
!2721 = !DILocation(line: 704, column: 34, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 704, column: 11)
!2723 = !DILocation(line: 706, column: 14, scope: !2722)
!2724 = !DILocation(line: 707, column: 14, scope: !2722)
!2725 = !DILocation(line: 707, column: 35, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2722, file: !161, discriminator: 1)
!2727 = !DILocation(line: 707, column: 17, scope: !2726)
!2728 = !DILocation(line: 707, column: 53, scope: !2726)
!2729 = !DILocation(line: 707, column: 47, scope: !2726)
!2730 = !DILocation(line: 707, column: 65, scope: !2726)
!2731 = !DILocation(line: 708, column: 15, scope: !2726)
!2732 = !DILocation(line: 708, column: 11, scope: !2722)
!2733 = !DILocation(line: 704, column: 11, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2128, file: !161, discriminator: 2)
!2735 = !DILocation(line: 712, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2737, file: !161, discriminator: 1)
!2737 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 712, column: 7)
!2738 = !DILocation(line: 712, column: 7, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2740, file: !161, discriminator: 4)
!2740 = distinct !DILexicalBlock(scope: !2737, file: !161, line: 712, column: 7)
!2741 = !DILocation(line: 712, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2740, file: !161, discriminator: 3)
!2743 = !DILocation(line: 712, column: 7, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2745, file: !161, discriminator: 6)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !161, line: 712, column: 7)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !161, line: 712, column: 7)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !161, line: 712, column: 7)
!2748 = !DILocation(line: 712, column: 7, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2746, file: !161, discriminator: 6)
!2750 = !DILocation(line: 712, column: 7, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2745, file: !161, discriminator: 7)
!2752 = !DILocation(line: 712, column: 7, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2746, file: !161, discriminator: 8)
!2754 = !DILocation(line: 712, column: 7, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !161, discriminator: 11)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !161, line: 712, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !161, line: 712, column: 7)
!2758 = !DILocation(line: 712, column: 7, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2757, file: !161, discriminator: 11)
!2760 = !DILocation(line: 712, column: 7, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2756, file: !161, discriminator: 12)
!2762 = !DILocation(line: 712, column: 7, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2757, file: !161, discriminator: 13)
!2764 = !DILocation(line: 712, column: 7, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2766, file: !161, discriminator: 16)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !161, line: 712, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2747, file: !161, line: 712, column: 7)
!2768 = !DILocation(line: 712, column: 7, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2767, file: !161, discriminator: 16)
!2770 = !DILocation(line: 712, column: 7, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2766, file: !161, discriminator: 17)
!2772 = !DILocation(line: 712, column: 7, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2767, file: !161, discriminator: 18)
!2774 = !DILocation(line: 712, column: 7, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2747, file: !161, discriminator: 20)
!2776 = !DILocation(line: 712, column: 7, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2778, file: !161, discriminator: 22)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !161, line: 712, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2737, file: !161, line: 712, column: 7)
!2780 = !DILocation(line: 712, column: 7, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2779, file: !161, discriminator: 22)
!2782 = !DILocation(line: 712, column: 7, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2778, file: !161, discriminator: 23)
!2784 = !DILocation(line: 712, column: 7, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2779, file: !161, discriminator: 24)
!2786 = !DILocation(line: 715, column: 7, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2788, file: !161, discriminator: 1)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !161, line: 715, column: 7)
!2789 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 715, column: 7)
!2790 = !DILocation(line: 715, column: 7, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2788, file: !161, discriminator: 2)
!2792 = !DILocation(line: 715, column: 7, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2794, file: !161, discriminator: 4)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !161, line: 715, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !161, line: 715, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2788, file: !161, line: 715, column: 7)
!2797 = !DILocation(line: 715, column: 7, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2795, file: !161, discriminator: 4)
!2799 = !DILocation(line: 715, column: 7, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2794, file: !161, discriminator: 5)
!2801 = !DILocation(line: 715, column: 7, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2795, file: !161, discriminator: 6)
!2803 = !DILocation(line: 715, column: 7, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2805, file: !161, discriminator: 9)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !161, line: 715, column: 7)
!2806 = distinct !DILexicalBlock(scope: !2796, file: !161, line: 715, column: 7)
!2807 = !DILocation(line: 715, column: 7, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2806, file: !161, discriminator: 9)
!2809 = !DILocation(line: 715, column: 7, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2805, file: !161, discriminator: 10)
!2811 = !DILocation(line: 715, column: 7, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2806, file: !161, discriminator: 11)
!2813 = !DILocation(line: 715, column: 7, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2796, file: !161, discriminator: 13)
!2815 = !DILocation(line: 716, column: 7, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2817, file: !161, discriminator: 1)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !161, line: 716, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 716, column: 7)
!2819 = !DILocation(line: 716, column: 7, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2818, file: !161, discriminator: 1)
!2821 = !DILocation(line: 716, column: 7, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2817, file: !161, discriminator: 2)
!2823 = !DILocation(line: 716, column: 7, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2818, file: !161, discriminator: 3)
!2825 = !DILocation(line: 718, column: 13, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2128, file: !161, line: 718, column: 11)
!2827 = !DILocation(line: 718, column: 11, scope: !2128)
!2828 = !DILocation(line: 720, column: 5, scope: !2129)
!2829 = !DILocation(line: 392, column: 75, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2129, file: !161, discriminator: 5)
!2831 = !DILocation(line: 392, column: 3, scope: !2830)
!2832 = distinct !{!2832, !2833, !2834}
!2833 = !DILocation(line: 392, column: 3, scope: !2130)
!2834 = !DILocation(line: 720, column: 5, scope: !2130)
!2835 = !DILocation(line: 722, column: 11, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 722, column: 7)
!2837 = !DILocation(line: 722, column: 16, scope: !2836)
!2838 = !DILocation(line: 730, column: 51, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 730, column: 7)
!2840 = !DILocation(line: 731, column: 10, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2839, file: !161, discriminator: 1)
!2842 = !DILocation(line: 733, column: 11, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !161, line: 733, column: 11)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !161, line: 732, column: 5)
!2845 = !DILocation(line: 733, column: 11, scope: !2844)
!2846 = !DILocation(line: 734, column: 16, scope: !2843)
!2847 = !DILocation(line: 734, column: 9, scope: !2843)
!2848 = !DILocation(line: 738, column: 18, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !161, line: 738, column: 16)
!2850 = !DILocation(line: 738, column: 32, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2849, file: !161, discriminator: 1)
!2852 = !DILocation(line: 738, column: 29, scope: !2849)
!2853 = !DILocation(line: 747, column: 7, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 747, column: 7)
!2855 = !DILocation(line: 747, column: 20, scope: !2854)
!2856 = !DILocation(line: 748, column: 12, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2858, file: !161, discriminator: 1)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !161, line: 748, column: 5)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !161, line: 748, column: 5)
!2860 = !DILocation(line: 748, column: 5, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2859, file: !161, discriminator: 1)
!2862 = !DILocation(line: 749, column: 7, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2864, file: !161, discriminator: 1)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !161, line: 749, column: 7)
!2865 = distinct !DILexicalBlock(scope: !2858, file: !161, line: 749, column: 7)
!2866 = !DILocation(line: 749, column: 7, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2865, file: !161, discriminator: 1)
!2868 = !DILocation(line: 749, column: 7, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2864, file: !161, discriminator: 2)
!2870 = !DILocation(line: 749, column: 7, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2865, file: !161, discriminator: 3)
!2872 = !DILocation(line: 748, column: 39, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2858, file: !161, discriminator: 2)
!2874 = distinct !{!2874, !2875, !2876}
!2875 = !DILocation(line: 748, column: 5, scope: !2859)
!2876 = !DILocation(line: 749, column: 7, scope: !2859)
!2877 = !DILocation(line: 751, column: 11, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 751, column: 7)
!2879 = !DILocation(line: 751, column: 7, scope: !2101)
!2880 = !DILocation(line: 752, column: 5, scope: !2878)
!2881 = !DILocation(line: 752, column: 17, scope: !2878)
!2882 = !DILocation(line: 758, column: 21, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 758, column: 7)
!2884 = !DILocation(line: 758, column: 54, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2883, file: !161, discriminator: 1)
!2886 = !DILocation(line: 758, column: 51, scope: !2883)
!2887 = !DILocation(line: 762, column: 42, scope: !2101)
!2888 = !DILocation(line: 760, column: 10, scope: !2101)
!2889 = !DILocation(line: 760, column: 3, scope: !2101)
!2890 = !DILocation(line: 764, column: 1, scope: !2101)
!2891 = distinct !DISubprogram(name: "gettext_quote", scope: !161, file: !161, line: 199, type: !2892, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!40, !40, !5}
!2894 = !{!2895, !2896, !2897, !2898}
!2895 = !DILocalVariable(name: "msgid", arg: 1, scope: !2891, file: !161, line: 199, type: !40)
!2896 = !DILocalVariable(name: "s", arg: 2, scope: !2891, file: !161, line: 199, type: !5)
!2897 = !DILocalVariable(name: "translation", scope: !2891, file: !161, line: 201, type: !40)
!2898 = !DILocalVariable(name: "locale_code", scope: !2891, file: !161, line: 202, type: !40)
!2899 = !DILocation(line: 199, column: 28, scope: !2891)
!2900 = !DILocation(line: 199, column: 54, scope: !2891)
!2901 = !DILocation(line: 201, column: 29, scope: !2891)
!2902 = !DILocation(line: 201, column: 15, scope: !2891)
!2903 = !DILocation(line: 204, column: 19, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2891, file: !161, line: 204, column: 7)
!2905 = !DILocation(line: 204, column: 7, scope: !2891)
!2906 = !DILocation(line: 225, column: 17, scope: !2891)
!2907 = !DILocation(line: 202, column: 15, scope: !2891)
!2908 = !DILocalVariable(name: "s2", arg: 2, scope: !2909, file: !2910, line: 160, type: !40)
!2909 = distinct !DISubprogram(name: "strcaseeq0", scope: !2910, file: !2910, line: 160, type: !2911, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2913)
!2910 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2913 = !{!2914, !2908, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2914 = !DILocalVariable(name: "s1", arg: 1, scope: !2909, file: !2910, line: 160, type: !40)
!2915 = !DILocalVariable(name: "s20", arg: 3, scope: !2909, file: !2910, line: 160, type: !30)
!2916 = !DILocalVariable(name: "s21", arg: 4, scope: !2909, file: !2910, line: 160, type: !30)
!2917 = !DILocalVariable(name: "s22", arg: 5, scope: !2909, file: !2910, line: 160, type: !30)
!2918 = !DILocalVariable(name: "s23", arg: 6, scope: !2909, file: !2910, line: 160, type: !30)
!2919 = !DILocalVariable(name: "s24", arg: 7, scope: !2909, file: !2910, line: 160, type: !30)
!2920 = !DILocalVariable(name: "s25", arg: 8, scope: !2909, file: !2910, line: 160, type: !30)
!2921 = !DILocalVariable(name: "s26", arg: 9, scope: !2909, file: !2910, line: 160, type: !30)
!2922 = !DILocalVariable(name: "s27", arg: 10, scope: !2909, file: !2910, line: 160, type: !30)
!2923 = !DILocalVariable(name: "s28", arg: 11, scope: !2909, file: !2910, line: 160, type: !30)
!2924 = !DILocation(line: 160, column: 41, scope: !2909, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 226, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2891, file: !161, line: 226, column: 7)
!2927 = !DILocation(line: 160, column: 120, scope: !2909, inlinedAt: !2925)
!2928 = !DILocation(line: 160, column: 130, scope: !2909, inlinedAt: !2925)
!2929 = !DILocation(line: 162, column: 7, scope: !2930, inlinedAt: !2925)
!2930 = !DILexicalBlockFile(scope: !2931, file: !2910, discriminator: 1)
!2931 = distinct !DILexicalBlock(scope: !2909, file: !2910, line: 162, column: 7)
!2932 = !DILocalVariable(name: "s2", arg: 2, scope: !2933, file: !2910, line: 146, type: !40)
!2933 = distinct !DISubprogram(name: "strcaseeq1", scope: !2910, file: !2910, line: 146, type: !2934, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30}
!2936 = !{!2937, !2932, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2937 = !DILocalVariable(name: "s1", arg: 1, scope: !2933, file: !2910, line: 146, type: !40)
!2938 = !DILocalVariable(name: "s21", arg: 3, scope: !2933, file: !2910, line: 146, type: !30)
!2939 = !DILocalVariable(name: "s22", arg: 4, scope: !2933, file: !2910, line: 146, type: !30)
!2940 = !DILocalVariable(name: "s23", arg: 5, scope: !2933, file: !2910, line: 146, type: !30)
!2941 = !DILocalVariable(name: "s24", arg: 6, scope: !2933, file: !2910, line: 146, type: !30)
!2942 = !DILocalVariable(name: "s25", arg: 7, scope: !2933, file: !2910, line: 146, type: !30)
!2943 = !DILocalVariable(name: "s26", arg: 8, scope: !2933, file: !2910, line: 146, type: !30)
!2944 = !DILocalVariable(name: "s27", arg: 9, scope: !2933, file: !2910, line: 146, type: !30)
!2945 = !DILocalVariable(name: "s28", arg: 10, scope: !2933, file: !2910, line: 146, type: !30)
!2946 = !DILocation(line: 146, column: 41, scope: !2933, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 167, column: 16, scope: !2948, inlinedAt: !2925)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !2910, line: 164, column: 11)
!2949 = distinct !DILexicalBlock(scope: !2931, file: !2910, line: 163, column: 5)
!2950 = !DILocation(line: 146, column: 110, scope: !2933, inlinedAt: !2947)
!2951 = !DILocation(line: 146, column: 120, scope: !2933, inlinedAt: !2947)
!2952 = !DILocation(line: 148, column: 7, scope: !2953, inlinedAt: !2947)
!2953 = !DILexicalBlockFile(scope: !2954, file: !2910, discriminator: 1)
!2954 = distinct !DILexicalBlock(scope: !2933, file: !2910, line: 148, column: 7)
!2955 = !DILocalVariable(name: "s2", arg: 2, scope: !2956, file: !2910, line: 132, type: !40)
!2956 = distinct !DISubprogram(name: "strcaseeq2", scope: !2910, file: !2910, line: 132, type: !2957, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30}
!2959 = !{!2960, !2955, !2961, !2962, !2963, !2964, !2965, !2966, !2967}
!2960 = !DILocalVariable(name: "s1", arg: 1, scope: !2956, file: !2910, line: 132, type: !40)
!2961 = !DILocalVariable(name: "s22", arg: 3, scope: !2956, file: !2910, line: 132, type: !30)
!2962 = !DILocalVariable(name: "s23", arg: 4, scope: !2956, file: !2910, line: 132, type: !30)
!2963 = !DILocalVariable(name: "s24", arg: 5, scope: !2956, file: !2910, line: 132, type: !30)
!2964 = !DILocalVariable(name: "s25", arg: 6, scope: !2956, file: !2910, line: 132, type: !30)
!2965 = !DILocalVariable(name: "s26", arg: 7, scope: !2956, file: !2910, line: 132, type: !30)
!2966 = !DILocalVariable(name: "s27", arg: 8, scope: !2956, file: !2910, line: 132, type: !30)
!2967 = !DILocalVariable(name: "s28", arg: 9, scope: !2956, file: !2910, line: 132, type: !30)
!2968 = !DILocation(line: 132, column: 41, scope: !2956, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 153, column: 16, scope: !2970, inlinedAt: !2947)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !2910, line: 150, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2954, file: !2910, line: 149, column: 5)
!2972 = !DILocation(line: 132, column: 100, scope: !2956, inlinedAt: !2969)
!2973 = !DILocation(line: 132, column: 110, scope: !2956, inlinedAt: !2969)
!2974 = !DILocation(line: 134, column: 7, scope: !2975, inlinedAt: !2969)
!2975 = !DILexicalBlockFile(scope: !2976, file: !2910, discriminator: 1)
!2976 = distinct !DILexicalBlock(scope: !2956, file: !2910, line: 134, column: 7)
!2977 = !DILocalVariable(name: "s2", arg: 2, scope: !2978, file: !2910, line: 118, type: !40)
!2978 = distinct !DISubprogram(name: "strcaseeq3", scope: !2910, file: !2910, line: 118, type: !2979, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30}
!2981 = !{!2982, !2977, !2983, !2984, !2985, !2986, !2987, !2988}
!2982 = !DILocalVariable(name: "s1", arg: 1, scope: !2978, file: !2910, line: 118, type: !40)
!2983 = !DILocalVariable(name: "s23", arg: 3, scope: !2978, file: !2910, line: 118, type: !30)
!2984 = !DILocalVariable(name: "s24", arg: 4, scope: !2978, file: !2910, line: 118, type: !30)
!2985 = !DILocalVariable(name: "s25", arg: 5, scope: !2978, file: !2910, line: 118, type: !30)
!2986 = !DILocalVariable(name: "s26", arg: 6, scope: !2978, file: !2910, line: 118, type: !30)
!2987 = !DILocalVariable(name: "s27", arg: 7, scope: !2978, file: !2910, line: 118, type: !30)
!2988 = !DILocalVariable(name: "s28", arg: 8, scope: !2978, file: !2910, line: 118, type: !30)
!2989 = !DILocation(line: 118, column: 41, scope: !2978, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 139, column: 16, scope: !2991, inlinedAt: !2969)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !2910, line: 136, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2976, file: !2910, line: 135, column: 5)
!2993 = !DILocation(line: 118, column: 90, scope: !2978, inlinedAt: !2990)
!2994 = !DILocation(line: 118, column: 100, scope: !2978, inlinedAt: !2990)
!2995 = !DILocation(line: 120, column: 7, scope: !2996, inlinedAt: !2990)
!2996 = !DILexicalBlockFile(scope: !2997, file: !2910, discriminator: 2)
!2997 = distinct !DILexicalBlock(scope: !2978, file: !2910, line: 120, column: 7)
!2998 = !DILocation(line: 120, column: 7, scope: !2999, inlinedAt: !2990)
!2999 = !DILexicalBlockFile(scope: !2978, file: !2910, discriminator: 2)
!3000 = !DILocalVariable(name: "s2", arg: 2, scope: !3001, file: !2910, line: 104, type: !40)
!3001 = distinct !DISubprogram(name: "strcaseeq4", scope: !2910, file: !2910, line: 104, type: !3002, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!70, !40, !40, !30, !30, !30, !30, !30}
!3004 = !{!3005, !3000, !3006, !3007, !3008, !3009, !3010}
!3005 = !DILocalVariable(name: "s1", arg: 1, scope: !3001, file: !2910, line: 104, type: !40)
!3006 = !DILocalVariable(name: "s24", arg: 3, scope: !3001, file: !2910, line: 104, type: !30)
!3007 = !DILocalVariable(name: "s25", arg: 4, scope: !3001, file: !2910, line: 104, type: !30)
!3008 = !DILocalVariable(name: "s26", arg: 5, scope: !3001, file: !2910, line: 104, type: !30)
!3009 = !DILocalVariable(name: "s27", arg: 6, scope: !3001, file: !2910, line: 104, type: !30)
!3010 = !DILocalVariable(name: "s28", arg: 7, scope: !3001, file: !2910, line: 104, type: !30)
!3011 = !DILocation(line: 104, column: 41, scope: !3001, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 125, column: 16, scope: !3013, inlinedAt: !2990)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !2910, line: 122, column: 11)
!3014 = distinct !DILexicalBlock(scope: !2997, file: !2910, line: 121, column: 5)
!3015 = !DILocation(line: 104, column: 80, scope: !3001, inlinedAt: !3012)
!3016 = !DILocation(line: 104, column: 90, scope: !3001, inlinedAt: !3012)
!3017 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3012)
!3018 = !DILexicalBlockFile(scope: !3019, file: !2910, discriminator: 2)
!3019 = distinct !DILexicalBlock(scope: !3001, file: !2910, line: 106, column: 7)
!3020 = !DILocation(line: 106, column: 7, scope: !3021, inlinedAt: !3012)
!3021 = !DILexicalBlockFile(scope: !3001, file: !2910, discriminator: 2)
!3022 = !DILocalVariable(name: "s2", arg: 2, scope: !3023, file: !2910, line: 90, type: !40)
!3023 = distinct !DISubprogram(name: "strcaseeq5", scope: !2910, file: !2910, line: 90, type: !3024, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!70, !40, !40, !30, !30, !30, !30}
!3026 = !{!3027, !3022, !3028, !3029, !3030, !3031}
!3027 = !DILocalVariable(name: "s1", arg: 1, scope: !3023, file: !2910, line: 90, type: !40)
!3028 = !DILocalVariable(name: "s25", arg: 3, scope: !3023, file: !2910, line: 90, type: !30)
!3029 = !DILocalVariable(name: "s26", arg: 4, scope: !3023, file: !2910, line: 90, type: !30)
!3030 = !DILocalVariable(name: "s27", arg: 5, scope: !3023, file: !2910, line: 90, type: !30)
!3031 = !DILocalVariable(name: "s28", arg: 6, scope: !3023, file: !2910, line: 90, type: !30)
!3032 = !DILocation(line: 90, column: 41, scope: !3023, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 111, column: 16, scope: !3034, inlinedAt: !3012)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !2910, line: 108, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3019, file: !2910, line: 107, column: 5)
!3036 = !DILocation(line: 90, column: 70, scope: !3023, inlinedAt: !3033)
!3037 = !DILocation(line: 90, column: 80, scope: !3023, inlinedAt: !3033)
!3038 = !DILocation(line: 92, column: 7, scope: !3039, inlinedAt: !3033)
!3039 = !DILexicalBlockFile(scope: !3040, file: !2910, discriminator: 2)
!3040 = distinct !DILexicalBlock(scope: !3023, file: !2910, line: 92, column: 7)
!3041 = !DILocation(line: 92, column: 7, scope: !3042, inlinedAt: !3033)
!3042 = !DILexicalBlockFile(scope: !3023, file: !2910, discriminator: 2)
!3043 = !DILocation(line: 227, column: 12, scope: !2926)
!3044 = !DILocation(line: 227, column: 21, scope: !2926)
!3045 = !DILocation(line: 227, column: 5, scope: !2926)
!3046 = !DILocation(line: 146, column: 41, scope: !2933, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 167, column: 16, scope: !2948, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 228, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2891, file: !161, line: 228, column: 7)
!3050 = !DILocation(line: 146, column: 110, scope: !2933, inlinedAt: !3047)
!3051 = !DILocation(line: 146, column: 120, scope: !2933, inlinedAt: !3047)
!3052 = !DILocation(line: 148, column: 7, scope: !2953, inlinedAt: !3047)
!3053 = !DILocation(line: 132, column: 41, scope: !2956, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 153, column: 16, scope: !2970, inlinedAt: !3047)
!3055 = !DILocation(line: 132, column: 100, scope: !2956, inlinedAt: !3054)
!3056 = !DILocation(line: 132, column: 110, scope: !2956, inlinedAt: !3054)
!3057 = !DILocation(line: 134, column: 7, scope: !3058, inlinedAt: !3054)
!3058 = !DILexicalBlockFile(scope: !2976, file: !2910, discriminator: 2)
!3059 = !DILocation(line: 134, column: 7, scope: !3060, inlinedAt: !3054)
!3060 = !DILexicalBlockFile(scope: !2956, file: !2910, discriminator: 2)
!3061 = !DILocation(line: 118, column: 41, scope: !2978, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 139, column: 16, scope: !2991, inlinedAt: !3054)
!3063 = !DILocation(line: 118, column: 90, scope: !2978, inlinedAt: !3062)
!3064 = !DILocation(line: 118, column: 100, scope: !2978, inlinedAt: !3062)
!3065 = !DILocation(line: 120, column: 7, scope: !2996, inlinedAt: !3062)
!3066 = !DILocation(line: 120, column: 7, scope: !2999, inlinedAt: !3062)
!3067 = !DILocation(line: 104, column: 41, scope: !3001, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 125, column: 16, scope: !3013, inlinedAt: !3062)
!3069 = !DILocation(line: 104, column: 80, scope: !3001, inlinedAt: !3068)
!3070 = !DILocation(line: 104, column: 90, scope: !3001, inlinedAt: !3068)
!3071 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3068)
!3072 = !DILocation(line: 106, column: 7, scope: !3021, inlinedAt: !3068)
!3073 = !DILocation(line: 90, column: 41, scope: !3023, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 111, column: 16, scope: !3034, inlinedAt: !3068)
!3075 = !DILocation(line: 90, column: 70, scope: !3023, inlinedAt: !3074)
!3076 = !DILocation(line: 90, column: 80, scope: !3023, inlinedAt: !3074)
!3077 = !DILocation(line: 92, column: 7, scope: !3039, inlinedAt: !3074)
!3078 = !DILocation(line: 92, column: 7, scope: !3042, inlinedAt: !3074)
!3079 = !DILocalVariable(name: "s2", arg: 2, scope: !3080, file: !2910, line: 76, type: !40)
!3080 = distinct !DISubprogram(name: "strcaseeq6", scope: !2910, file: !2910, line: 76, type: !3081, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!70, !40, !40, !30, !30, !30}
!3083 = !{!3084, !3079, !3085, !3086, !3087}
!3084 = !DILocalVariable(name: "s1", arg: 1, scope: !3080, file: !2910, line: 76, type: !40)
!3085 = !DILocalVariable(name: "s26", arg: 3, scope: !3080, file: !2910, line: 76, type: !30)
!3086 = !DILocalVariable(name: "s27", arg: 4, scope: !3080, file: !2910, line: 76, type: !30)
!3087 = !DILocalVariable(name: "s28", arg: 5, scope: !3080, file: !2910, line: 76, type: !30)
!3088 = !DILocation(line: 76, column: 41, scope: !3080, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 97, column: 16, scope: !3090, inlinedAt: !3074)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !2910, line: 94, column: 11)
!3091 = distinct !DILexicalBlock(scope: !3040, file: !2910, line: 93, column: 5)
!3092 = !DILocation(line: 76, column: 60, scope: !3080, inlinedAt: !3089)
!3093 = !DILocation(line: 76, column: 70, scope: !3080, inlinedAt: !3089)
!3094 = !DILocation(line: 78, column: 7, scope: !3095, inlinedAt: !3089)
!3095 = !DILexicalBlockFile(scope: !3096, file: !2910, discriminator: 2)
!3096 = distinct !DILexicalBlock(scope: !3080, file: !2910, line: 78, column: 7)
!3097 = !DILocation(line: 78, column: 7, scope: !3098, inlinedAt: !3089)
!3098 = !DILexicalBlockFile(scope: !3080, file: !2910, discriminator: 2)
!3099 = !DILocalVariable(name: "s2", arg: 2, scope: !3100, file: !2910, line: 62, type: !40)
!3100 = distinct !DISubprogram(name: "strcaseeq7", scope: !2910, file: !2910, line: 62, type: !3101, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!70, !40, !40, !30, !30}
!3103 = !{!3104, !3099, !3105, !3106}
!3104 = !DILocalVariable(name: "s1", arg: 1, scope: !3100, file: !2910, line: 62, type: !40)
!3105 = !DILocalVariable(name: "s27", arg: 3, scope: !3100, file: !2910, line: 62, type: !30)
!3106 = !DILocalVariable(name: "s28", arg: 4, scope: !3100, file: !2910, line: 62, type: !30)
!3107 = !DILocation(line: 62, column: 41, scope: !3100, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 83, column: 16, scope: !3109, inlinedAt: !3089)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !2910, line: 80, column: 11)
!3110 = distinct !DILexicalBlock(scope: !3096, file: !2910, line: 79, column: 5)
!3111 = !DILocation(line: 62, column: 50, scope: !3100, inlinedAt: !3108)
!3112 = !DILocation(line: 62, column: 60, scope: !3100, inlinedAt: !3108)
!3113 = !DILocation(line: 64, column: 7, scope: !3114, inlinedAt: !3108)
!3114 = !DILexicalBlockFile(scope: !3115, file: !2910, discriminator: 2)
!3115 = distinct !DILexicalBlock(scope: !3100, file: !2910, line: 64, column: 7)
!3116 = !DILocation(line: 228, column: 7, scope: !2891)
!3117 = !DILocation(line: 229, column: 12, scope: !3049)
!3118 = !DILocation(line: 229, column: 21, scope: !3049)
!3119 = !DILocation(line: 229, column: 5, scope: !3049)
!3120 = !DILocation(line: 231, column: 13, scope: !2891)
!3121 = !DILocation(line: 231, column: 11, scope: !2891)
!3122 = !DILocation(line: 231, column: 3, scope: !2891)
!3123 = !DILocation(line: 232, column: 1, scope: !2891)
!3124 = distinct !DISubprogram(name: "quotearg_alloc", scope: !161, file: !161, line: 791, type: !3125, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!29, !40, !32, !1969}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "arg", arg: 1, scope: !3124, file: !161, line: 791, type: !40)
!3129 = !DILocalVariable(name: "argsize", arg: 2, scope: !3124, file: !161, line: 791, type: !32)
!3130 = !DILocalVariable(name: "o", arg: 3, scope: !3124, file: !161, line: 792, type: !1969)
!3131 = !DILocation(line: 791, column: 29, scope: !3124)
!3132 = !DILocation(line: 791, column: 41, scope: !3124)
!3133 = !DILocation(line: 792, column: 47, scope: !3124)
!3134 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !161, line: 804, type: !40)
!3135 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !161, file: !161, line: 804, type: !3136, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!29, !40, !32, !575, !1969}
!3138 = !{!3134, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3139 = !DILocalVariable(name: "argsize", arg: 2, scope: !3135, file: !161, line: 804, type: !32)
!3140 = !DILocalVariable(name: "size", arg: 3, scope: !3135, file: !161, line: 804, type: !575)
!3141 = !DILocalVariable(name: "o", arg: 4, scope: !3135, file: !161, line: 805, type: !1969)
!3142 = !DILocalVariable(name: "p", scope: !3135, file: !161, line: 807, type: !1969)
!3143 = !DILocalVariable(name: "e", scope: !3135, file: !161, line: 808, type: !70)
!3144 = !DILocalVariable(name: "flags", scope: !3135, file: !161, line: 810, type: !70)
!3145 = !DILocalVariable(name: "bufsize", scope: !3135, file: !161, line: 811, type: !32)
!3146 = !DILocalVariable(name: "buf", scope: !3135, file: !161, line: 815, type: !29)
!3147 = !DILocation(line: 804, column: 33, scope: !3135, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 794, column: 10, scope: !3124)
!3149 = !DILocation(line: 804, column: 45, scope: !3135, inlinedAt: !3148)
!3150 = !DILocation(line: 804, column: 62, scope: !3135, inlinedAt: !3148)
!3151 = !DILocation(line: 805, column: 51, scope: !3135, inlinedAt: !3148)
!3152 = !DILocation(line: 807, column: 37, scope: !3135, inlinedAt: !3148)
!3153 = !DILocation(line: 807, column: 33, scope: !3135, inlinedAt: !3148)
!3154 = !DILocation(line: 808, column: 11, scope: !3135, inlinedAt: !3148)
!3155 = !DILocation(line: 808, column: 7, scope: !3135, inlinedAt: !3148)
!3156 = !DILocation(line: 810, column: 18, scope: !3135, inlinedAt: !3148)
!3157 = !DILocation(line: 810, column: 24, scope: !3135, inlinedAt: !3148)
!3158 = !DILocation(line: 810, column: 7, scope: !3135, inlinedAt: !3148)
!3159 = !DILocation(line: 811, column: 69, scope: !3135, inlinedAt: !3148)
!3160 = !DILocation(line: 812, column: 53, scope: !3135, inlinedAt: !3148)
!3161 = !DILocation(line: 813, column: 49, scope: !3135, inlinedAt: !3148)
!3162 = !DILocation(line: 814, column: 49, scope: !3135, inlinedAt: !3148)
!3163 = !DILocation(line: 811, column: 20, scope: !3135, inlinedAt: !3148)
!3164 = !DILocation(line: 814, column: 62, scope: !3135, inlinedAt: !3148)
!3165 = !DILocation(line: 811, column: 10, scope: !3135, inlinedAt: !3148)
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3167, file: !571, line: 220, type: !32)
!3167 = distinct !DISubprogram(name: "xcharalloc", scope: !571, file: !571, line: 220, type: !3168, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!29, !32}
!3170 = !{!3166}
!3171 = !DILocation(line: 220, column: 20, scope: !3167, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 815, column: 15, scope: !3135, inlinedAt: !3148)
!3173 = !DILocation(line: 222, column: 10, scope: !3167, inlinedAt: !3172)
!3174 = !DILocation(line: 815, column: 9, scope: !3135, inlinedAt: !3148)
!3175 = !DILocation(line: 816, column: 60, scope: !3135, inlinedAt: !3148)
!3176 = !DILocation(line: 818, column: 32, scope: !3135, inlinedAt: !3148)
!3177 = !DILocation(line: 818, column: 47, scope: !3135, inlinedAt: !3148)
!3178 = !DILocation(line: 816, column: 3, scope: !3135, inlinedAt: !3148)
!3179 = !DILocation(line: 819, column: 9, scope: !3135, inlinedAt: !3148)
!3180 = !DILocation(line: 794, column: 3, scope: !3124)
!3181 = !DILocation(line: 804, column: 33, scope: !3135)
!3182 = !DILocation(line: 804, column: 45, scope: !3135)
!3183 = !DILocation(line: 804, column: 62, scope: !3135)
!3184 = !DILocation(line: 805, column: 51, scope: !3135)
!3185 = !DILocation(line: 807, column: 37, scope: !3135)
!3186 = !DILocation(line: 807, column: 33, scope: !3135)
!3187 = !DILocation(line: 808, column: 11, scope: !3135)
!3188 = !DILocation(line: 808, column: 7, scope: !3135)
!3189 = !DILocation(line: 810, column: 18, scope: !3135)
!3190 = !DILocation(line: 810, column: 27, scope: !3135)
!3191 = !DILocation(line: 810, column: 24, scope: !3135)
!3192 = !DILocation(line: 810, column: 7, scope: !3135)
!3193 = !DILocation(line: 811, column: 69, scope: !3135)
!3194 = !DILocation(line: 812, column: 53, scope: !3135)
!3195 = !DILocation(line: 813, column: 49, scope: !3135)
!3196 = !DILocation(line: 814, column: 49, scope: !3135)
!3197 = !DILocation(line: 811, column: 20, scope: !3135)
!3198 = !DILocation(line: 814, column: 62, scope: !3135)
!3199 = !DILocation(line: 811, column: 10, scope: !3135)
!3200 = !DILocation(line: 220, column: 20, scope: !3167, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 815, column: 15, scope: !3135)
!3202 = !DILocation(line: 222, column: 10, scope: !3167, inlinedAt: !3201)
!3203 = !DILocation(line: 815, column: 9, scope: !3135)
!3204 = !DILocation(line: 816, column: 60, scope: !3135)
!3205 = !DILocation(line: 818, column: 32, scope: !3135)
!3206 = !DILocation(line: 818, column: 47, scope: !3135)
!3207 = !DILocation(line: 816, column: 3, scope: !3135)
!3208 = !DILocation(line: 819, column: 9, scope: !3135)
!3209 = !DILocation(line: 820, column: 7, scope: !3135)
!3210 = !DILocation(line: 821, column: 11, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3135, file: !161, line: 820, column: 7)
!3212 = !DILocation(line: 821, column: 5, scope: !3211)
!3213 = !DILocation(line: 822, column: 3, scope: !3135)
!3214 = distinct !DISubprogram(name: "quotearg_free", scope: !161, file: !161, line: 840, type: !649, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3215)
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "sv", scope: !3214, file: !161, line: 842, type: !186)
!3217 = !DILocalVariable(name: "i", scope: !3214, file: !161, line: 843, type: !70)
!3218 = !DILocation(line: 842, column: 24, scope: !3214)
!3219 = !DILocation(line: 842, column: 19, scope: !3214)
!3220 = !DILocation(line: 843, column: 7, scope: !3214)
!3221 = !DILocation(line: 844, column: 19, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3223, file: !161, discriminator: 1)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !161, line: 844, column: 3)
!3224 = distinct !DILexicalBlock(scope: !3214, file: !161, line: 844, column: 3)
!3225 = !DILocation(line: 844, column: 17, scope: !3222)
!3226 = !DILocation(line: 844, column: 3, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3224, file: !161, discriminator: 1)
!3228 = !DILocation(line: 845, column: 17, scope: !3223)
!3229 = !{!3230, !636, i64 8}
!3230 = !{!"slotvec", !944, i64 0, !636, i64 8}
!3231 = !DILocation(line: 845, column: 5, scope: !3223)
!3232 = !DILocation(line: 844, column: 28, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3223, file: !161, discriminator: 2)
!3234 = distinct !{!3234, !3235, !3236}
!3235 = !DILocation(line: 844, column: 3, scope: !3224)
!3236 = !DILocation(line: 845, column: 20, scope: !3224)
!3237 = !DILocation(line: 846, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3214, file: !161, line: 846, column: 7)
!3239 = !DILocation(line: 846, column: 17, scope: !3238)
!3240 = !DILocation(line: 846, column: 7, scope: !3214)
!3241 = !DILocation(line: 848, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3238, file: !161, line: 847, column: 5)
!3243 = !DILocation(line: 849, column: 21, scope: !3242)
!3244 = !{!3230, !944, i64 0}
!3245 = !DILocation(line: 850, column: 20, scope: !3242)
!3246 = !DILocation(line: 851, column: 5, scope: !3242)
!3247 = !DILocation(line: 852, column: 10, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3214, file: !161, line: 852, column: 7)
!3249 = !DILocation(line: 852, column: 7, scope: !3214)
!3250 = !DILocation(line: 854, column: 13, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !161, line: 853, column: 5)
!3252 = !DILocation(line: 854, column: 7, scope: !3251)
!3253 = !DILocation(line: 855, column: 15, scope: !3251)
!3254 = !DILocation(line: 856, column: 5, scope: !3251)
!3255 = !DILocation(line: 857, column: 10, scope: !3214)
!3256 = !DILocation(line: 858, column: 1, scope: !3214)
!3257 = distinct !DISubprogram(name: "quotearg_n", scope: !161, file: !161, line: 922, type: !3258, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!29, !70, !40}
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !161, line: 922, type: !70)
!3262 = !DILocalVariable(name: "arg", arg: 2, scope: !3257, file: !161, line: 922, type: !40)
!3263 = !DILocation(line: 922, column: 17, scope: !3257)
!3264 = !DILocation(line: 922, column: 32, scope: !3257)
!3265 = !DILocation(line: 924, column: 10, scope: !3257)
!3266 = !DILocation(line: 924, column: 3, scope: !3257)
!3267 = distinct !DISubprogram(name: "quotearg_n_options", scope: !161, file: !161, line: 869, type: !3268, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!29, !70, !40, !32, !1969}
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3280, !3282, !3283, !3284}
!3271 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !161, line: 869, type: !70)
!3272 = !DILocalVariable(name: "arg", arg: 2, scope: !3267, file: !161, line: 869, type: !40)
!3273 = !DILocalVariable(name: "argsize", arg: 3, scope: !3267, file: !161, line: 869, type: !32)
!3274 = !DILocalVariable(name: "options", arg: 4, scope: !3267, file: !161, line: 870, type: !1969)
!3275 = !DILocalVariable(name: "e", scope: !3267, file: !161, line: 872, type: !70)
!3276 = !DILocalVariable(name: "sv", scope: !3267, file: !161, line: 874, type: !186)
!3277 = !DILocalVariable(name: "preallocated", scope: !3278, file: !161, line: 881, type: !117)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !161, line: 880, column: 5)
!3279 = distinct !DILexicalBlock(scope: !3267, file: !161, line: 879, column: 7)
!3280 = !DILocalVariable(name: "size", scope: !3281, file: !161, line: 894, type: !32)
!3281 = distinct !DILexicalBlock(scope: !3267, file: !161, line: 893, column: 3)
!3282 = !DILocalVariable(name: "val", scope: !3281, file: !161, line: 895, type: !29)
!3283 = !DILocalVariable(name: "flags", scope: !3281, file: !161, line: 897, type: !70)
!3284 = !DILocalVariable(name: "qsize", scope: !3281, file: !161, line: 898, type: !32)
!3285 = !DILocation(line: 869, column: 25, scope: !3267)
!3286 = !DILocation(line: 869, column: 40, scope: !3267)
!3287 = !DILocation(line: 869, column: 52, scope: !3267)
!3288 = !DILocation(line: 870, column: 51, scope: !3267)
!3289 = !DILocation(line: 872, column: 11, scope: !3267)
!3290 = !DILocation(line: 872, column: 7, scope: !3267)
!3291 = !DILocation(line: 874, column: 24, scope: !3267)
!3292 = !DILocation(line: 874, column: 19, scope: !3267)
!3293 = !DILocation(line: 876, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3267, file: !161, line: 876, column: 7)
!3295 = !DILocation(line: 876, column: 7, scope: !3267)
!3296 = !DILocation(line: 877, column: 5, scope: !3294)
!3297 = !DILocation(line: 879, column: 7, scope: !3279)
!3298 = !DILocation(line: 879, column: 14, scope: !3279)
!3299 = !DILocation(line: 879, column: 7, scope: !3267)
!3300 = !DILocation(line: 881, column: 31, scope: !3278)
!3301 = !DILocation(line: 883, column: 67, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3278, file: !161, line: 883, column: 11)
!3303 = !DILocation(line: 883, column: 11, scope: !3278)
!3304 = !DILocation(line: 884, column: 9, scope: !3302)
!3305 = !DILocation(line: 886, column: 32, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3278, file: !161, discriminator: 3)
!3307 = !DILocation(line: 886, column: 61, scope: !3306)
!3308 = !DILocation(line: 886, column: 58, scope: !3306)
!3309 = !DILocation(line: 886, column: 66, scope: !3306)
!3310 = !DILocation(line: 886, column: 22, scope: !3306)
!3311 = !DILocation(line: 886, column: 15, scope: !3306)
!3312 = !DILocation(line: 887, column: 11, scope: !3278)
!3313 = !DILocation(line: 888, column: 15, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3278, file: !161, line: 887, column: 11)
!3315 = !{i64 0, i64 8, !943, i64 8, i64 8, !635}
!3316 = !DILocation(line: 888, column: 9, scope: !3314)
!3317 = !DILocation(line: 889, column: 20, scope: !3278)
!3318 = !DILocation(line: 889, column: 18, scope: !3278)
!3319 = !DILocation(line: 889, column: 7, scope: !3278)
!3320 = !DILocation(line: 889, column: 38, scope: !3278)
!3321 = !DILocation(line: 889, column: 31, scope: !3278)
!3322 = !DILocation(line: 889, column: 48, scope: !3278)
!3323 = !DILocation(line: 890, column: 14, scope: !3278)
!3324 = !DILocation(line: 891, column: 5, scope: !3278)
!3325 = !DILocation(line: 894, column: 19, scope: !3281)
!3326 = !DILocation(line: 894, column: 25, scope: !3281)
!3327 = !DILocation(line: 894, column: 12, scope: !3281)
!3328 = !DILocation(line: 895, column: 23, scope: !3281)
!3329 = !DILocation(line: 895, column: 11, scope: !3281)
!3330 = !DILocation(line: 897, column: 26, scope: !3281)
!3331 = !DILocation(line: 897, column: 32, scope: !3281)
!3332 = !DILocation(line: 897, column: 9, scope: !3281)
!3333 = !DILocation(line: 899, column: 55, scope: !3281)
!3334 = !DILocation(line: 900, column: 46, scope: !3281)
!3335 = !DILocation(line: 901, column: 55, scope: !3281)
!3336 = !DILocation(line: 902, column: 55, scope: !3281)
!3337 = !DILocation(line: 898, column: 20, scope: !3281)
!3338 = !DILocation(line: 898, column: 12, scope: !3281)
!3339 = !DILocation(line: 904, column: 14, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3281, file: !161, line: 904, column: 9)
!3341 = !DILocation(line: 904, column: 9, scope: !3281)
!3342 = !DILocation(line: 906, column: 35, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !161, line: 905, column: 7)
!3344 = !DILocation(line: 906, column: 20, scope: !3343)
!3345 = !DILocation(line: 907, column: 17, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !161, line: 907, column: 13)
!3347 = !DILocation(line: 907, column: 13, scope: !3343)
!3348 = !DILocation(line: 908, column: 11, scope: !3346)
!3349 = !DILocation(line: 220, column: 20, scope: !3167, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 909, column: 27, scope: !3343)
!3351 = !DILocation(line: 222, column: 10, scope: !3167, inlinedAt: !3350)
!3352 = !DILocation(line: 909, column: 19, scope: !3343)
!3353 = !DILocation(line: 910, column: 69, scope: !3343)
!3354 = !DILocation(line: 912, column: 44, scope: !3343)
!3355 = !DILocation(line: 913, column: 44, scope: !3343)
!3356 = !DILocation(line: 910, column: 9, scope: !3343)
!3357 = !DILocation(line: 914, column: 7, scope: !3343)
!3358 = !DILocation(line: 916, column: 11, scope: !3281)
!3359 = !DILocation(line: 917, column: 5, scope: !3281)
!3360 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !161, file: !161, line: 928, type: !3361, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!29, !70, !40, !32}
!3363 = !{!3364, !3365, !3366}
!3364 = !DILocalVariable(name: "n", arg: 1, scope: !3360, file: !161, line: 928, type: !70)
!3365 = !DILocalVariable(name: "arg", arg: 2, scope: !3360, file: !161, line: 928, type: !40)
!3366 = !DILocalVariable(name: "argsize", arg: 3, scope: !3360, file: !161, line: 928, type: !32)
!3367 = !DILocation(line: 928, column: 21, scope: !3360)
!3368 = !DILocation(line: 928, column: 36, scope: !3360)
!3369 = !DILocation(line: 928, column: 48, scope: !3360)
!3370 = !DILocation(line: 930, column: 10, scope: !3360)
!3371 = !DILocation(line: 930, column: 3, scope: !3360)
!3372 = distinct !DISubprogram(name: "quotearg", scope: !161, file: !161, line: 934, type: !3373, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!29, !40}
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "arg", arg: 1, scope: !3372, file: !161, line: 934, type: !40)
!3377 = !DILocation(line: 934, column: 23, scope: !3372)
!3378 = !DILocation(line: 922, column: 17, scope: !3257, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 936, column: 10, scope: !3372)
!3380 = !DILocation(line: 922, column: 32, scope: !3257, inlinedAt: !3379)
!3381 = !DILocation(line: 924, column: 10, scope: !3257, inlinedAt: !3379)
!3382 = !DILocation(line: 936, column: 3, scope: !3372)
!3383 = distinct !DISubprogram(name: "quotearg_mem", scope: !161, file: !161, line: 940, type: !3384, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!29, !40, !32}
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "arg", arg: 1, scope: !3383, file: !161, line: 940, type: !40)
!3388 = !DILocalVariable(name: "argsize", arg: 2, scope: !3383, file: !161, line: 940, type: !32)
!3389 = !DILocation(line: 940, column: 27, scope: !3383)
!3390 = !DILocation(line: 940, column: 39, scope: !3383)
!3391 = !DILocation(line: 928, column: 21, scope: !3360, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 942, column: 10, scope: !3383)
!3393 = !DILocation(line: 928, column: 36, scope: !3360, inlinedAt: !3392)
!3394 = !DILocation(line: 928, column: 48, scope: !3360, inlinedAt: !3392)
!3395 = !DILocation(line: 930, column: 10, scope: !3360, inlinedAt: !3392)
!3396 = !DILocation(line: 942, column: 3, scope: !3383)
!3397 = distinct !DISubprogram(name: "quotearg_n_style", scope: !161, file: !161, line: 946, type: !3398, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!29, !70, !5, !40}
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !161, line: 946, type: !70)
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !161, line: 946, type: !5)
!3403 = !DILocalVariable(name: "arg", arg: 3, scope: !3397, file: !161, line: 946, type: !40)
!3404 = !DILocalVariable(name: "o", scope: !3397, file: !161, line: 948, type: !1970)
!3405 = !DILocalVariable(name: "o", scope: !3406, file: !161, line: 187, type: !168)
!3406 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !161, file: !161, line: 185, type: !3407, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!168, !5}
!3409 = !{!3410, !3405}
!3410 = !DILocalVariable(name: "style", arg: 1, scope: !3406, file: !161, line: 185, type: !5)
!3411 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3412 = !DILocation(line: 187, column: 26, scope: !3406, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 948, column: 36, scope: !3397)
!3414 = !DILocation(line: 946, column: 23, scope: !3397)
!3415 = !DILocation(line: 946, column: 45, scope: !3397)
!3416 = !DILocation(line: 946, column: 60, scope: !3397)
!3417 = !DILocation(line: 948, column: 3, scope: !3397)
!3418 = !DILocation(line: 948, column: 32, scope: !3397)
!3419 = !DILocation(line: 185, column: 48, scope: !3406, inlinedAt: !3413)
!3420 = !DILocation(line: 187, column: 3, scope: !3406, inlinedAt: !3413)
!3421 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3422 = !DILocation(line: 188, column: 13, scope: !3423, inlinedAt: !3413)
!3423 = distinct !DILexicalBlock(scope: !3406, file: !161, line: 188, column: 7)
!3424 = !DILocation(line: 188, column: 7, scope: !3406, inlinedAt: !3413)
!3425 = !DILocation(line: 189, column: 5, scope: !3423, inlinedAt: !3413)
!3426 = !{!3427}
!3427 = distinct !{!3427, !3428, !"quoting_options_from_style: argument 0"}
!3428 = distinct !{!3428, !"quoting_options_from_style"}
!3429 = !DILocation(line: 191, column: 10, scope: !3406, inlinedAt: !3413)
!3430 = !DILocation(line: 192, column: 1, scope: !3406, inlinedAt: !3413)
!3431 = !DILocation(line: 949, column: 10, scope: !3397)
!3432 = !DILocation(line: 950, column: 1, scope: !3397)
!3433 = !DILocation(line: 949, column: 3, scope: !3397)
!3434 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !161, file: !161, line: 953, type: !3435, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!29, !70, !5, !40, !32}
!3437 = !{!3438, !3439, !3440, !3441, !3442}
!3438 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !161, line: 953, type: !70)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !161, line: 953, type: !5)
!3440 = !DILocalVariable(name: "arg", arg: 3, scope: !3434, file: !161, line: 954, type: !40)
!3441 = !DILocalVariable(name: "argsize", arg: 4, scope: !3434, file: !161, line: 954, type: !32)
!3442 = !DILocalVariable(name: "o", scope: !3434, file: !161, line: 956, type: !1970)
!3443 = !DILocation(line: 187, column: 26, scope: !3406, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 956, column: 36, scope: !3434)
!3445 = !DILocation(line: 953, column: 27, scope: !3434)
!3446 = !DILocation(line: 953, column: 49, scope: !3434)
!3447 = !DILocation(line: 954, column: 35, scope: !3434)
!3448 = !DILocation(line: 954, column: 47, scope: !3434)
!3449 = !DILocation(line: 956, column: 3, scope: !3434)
!3450 = !DILocation(line: 956, column: 32, scope: !3434)
!3451 = !DILocation(line: 185, column: 48, scope: !3406, inlinedAt: !3444)
!3452 = !DILocation(line: 187, column: 3, scope: !3406, inlinedAt: !3444)
!3453 = !DILocation(line: 188, column: 13, scope: !3423, inlinedAt: !3444)
!3454 = !DILocation(line: 188, column: 7, scope: !3406, inlinedAt: !3444)
!3455 = !DILocation(line: 189, column: 5, scope: !3423, inlinedAt: !3444)
!3456 = !{!3457}
!3457 = distinct !{!3457, !3458, !"quoting_options_from_style: argument 0"}
!3458 = distinct !{!3458, !"quoting_options_from_style"}
!3459 = !DILocation(line: 191, column: 10, scope: !3406, inlinedAt: !3444)
!3460 = !DILocation(line: 192, column: 1, scope: !3406, inlinedAt: !3444)
!3461 = !DILocation(line: 957, column: 10, scope: !3434)
!3462 = !DILocation(line: 958, column: 1, scope: !3434)
!3463 = !DILocation(line: 957, column: 3, scope: !3434)
!3464 = distinct !DISubprogram(name: "quotearg_style", scope: !161, file: !161, line: 961, type: !3465, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!29, !5, !40}
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "s", arg: 1, scope: !3464, file: !161, line: 961, type: !5)
!3469 = !DILocalVariable(name: "arg", arg: 2, scope: !3464, file: !161, line: 961, type: !40)
!3470 = !DILocation(line: 187, column: 26, scope: !3406, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 948, column: 36, scope: !3397, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 963, column: 10, scope: !3464)
!3473 = !DILocation(line: 961, column: 36, scope: !3464)
!3474 = !DILocation(line: 961, column: 51, scope: !3464)
!3475 = !DILocation(line: 946, column: 23, scope: !3397, inlinedAt: !3472)
!3476 = !DILocation(line: 946, column: 45, scope: !3397, inlinedAt: !3472)
!3477 = !DILocation(line: 946, column: 60, scope: !3397, inlinedAt: !3472)
!3478 = !DILocation(line: 948, column: 3, scope: !3397, inlinedAt: !3472)
!3479 = !DILocation(line: 948, column: 32, scope: !3397, inlinedAt: !3472)
!3480 = !DILocation(line: 185, column: 48, scope: !3406, inlinedAt: !3471)
!3481 = !DILocation(line: 187, column: 3, scope: !3406, inlinedAt: !3471)
!3482 = !DILocation(line: 188, column: 13, scope: !3423, inlinedAt: !3471)
!3483 = !DILocation(line: 188, column: 7, scope: !3406, inlinedAt: !3471)
!3484 = !DILocation(line: 189, column: 5, scope: !3423, inlinedAt: !3471)
!3485 = !{!3486}
!3486 = distinct !{!3486, !3487, !"quoting_options_from_style: argument 0"}
!3487 = distinct !{!3487, !"quoting_options_from_style"}
!3488 = !DILocation(line: 191, column: 10, scope: !3406, inlinedAt: !3471)
!3489 = !DILocation(line: 192, column: 1, scope: !3406, inlinedAt: !3471)
!3490 = !DILocation(line: 949, column: 10, scope: !3397, inlinedAt: !3472)
!3491 = !DILocation(line: 950, column: 1, scope: !3397, inlinedAt: !3472)
!3492 = !DILocation(line: 963, column: 3, scope: !3464)
!3493 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !161, file: !161, line: 967, type: !3494, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!29, !5, !40, !32}
!3496 = !{!3497, !3498, !3499}
!3497 = !DILocalVariable(name: "s", arg: 1, scope: !3493, file: !161, line: 967, type: !5)
!3498 = !DILocalVariable(name: "arg", arg: 2, scope: !3493, file: !161, line: 967, type: !40)
!3499 = !DILocalVariable(name: "argsize", arg: 3, scope: !3493, file: !161, line: 967, type: !32)
!3500 = !DILocation(line: 187, column: 26, scope: !3406, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 956, column: 36, scope: !3434, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 969, column: 10, scope: !3493)
!3503 = !DILocation(line: 967, column: 40, scope: !3493)
!3504 = !DILocation(line: 967, column: 55, scope: !3493)
!3505 = !DILocation(line: 967, column: 67, scope: !3493)
!3506 = !DILocation(line: 953, column: 27, scope: !3434, inlinedAt: !3502)
!3507 = !DILocation(line: 953, column: 49, scope: !3434, inlinedAt: !3502)
!3508 = !DILocation(line: 954, column: 35, scope: !3434, inlinedAt: !3502)
!3509 = !DILocation(line: 954, column: 47, scope: !3434, inlinedAt: !3502)
!3510 = !DILocation(line: 956, column: 3, scope: !3434, inlinedAt: !3502)
!3511 = !DILocation(line: 956, column: 32, scope: !3434, inlinedAt: !3502)
!3512 = !DILocation(line: 185, column: 48, scope: !3406, inlinedAt: !3501)
!3513 = !DILocation(line: 187, column: 3, scope: !3406, inlinedAt: !3501)
!3514 = !DILocation(line: 188, column: 13, scope: !3423, inlinedAt: !3501)
!3515 = !DILocation(line: 188, column: 7, scope: !3406, inlinedAt: !3501)
!3516 = !DILocation(line: 189, column: 5, scope: !3423, inlinedAt: !3501)
!3517 = !{!3518}
!3518 = distinct !{!3518, !3519, !"quoting_options_from_style: argument 0"}
!3519 = distinct !{!3519, !"quoting_options_from_style"}
!3520 = !DILocation(line: 191, column: 10, scope: !3406, inlinedAt: !3501)
!3521 = !DILocation(line: 192, column: 1, scope: !3406, inlinedAt: !3501)
!3522 = !DILocation(line: 957, column: 10, scope: !3434, inlinedAt: !3502)
!3523 = !DILocation(line: 958, column: 1, scope: !3434, inlinedAt: !3502)
!3524 = !DILocation(line: 969, column: 3, scope: !3493)
!3525 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !161, file: !161, line: 973, type: !3526, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!29, !40, !32, !30}
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3525, file: !161, line: 973, type: !40)
!3530 = !DILocalVariable(name: "argsize", arg: 2, scope: !3525, file: !161, line: 973, type: !32)
!3531 = !DILocalVariable(name: "ch", arg: 3, scope: !3525, file: !161, line: 973, type: !30)
!3532 = !DILocalVariable(name: "options", scope: !3525, file: !161, line: 975, type: !168)
!3533 = !DILocation(line: 973, column: 32, scope: !3525)
!3534 = !DILocation(line: 973, column: 44, scope: !3525)
!3535 = !DILocation(line: 973, column: 58, scope: !3525)
!3536 = !DILocation(line: 975, column: 3, scope: !3525)
!3537 = !DILocation(line: 976, column: 13, scope: !3525)
!3538 = !{i64 0, i64 4, !889, i64 4, i64 4, !865, i64 8, i64 32, !889, i64 40, i64 8, !635, i64 48, i64 8, !635}
!3539 = !DILocation(line: 975, column: 26, scope: !3525)
!3540 = !DILocation(line: 144, column: 43, scope: !1993, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 977, column: 3, scope: !3525)
!3542 = !DILocation(line: 144, column: 51, scope: !1993, inlinedAt: !3541)
!3543 = !DILocation(line: 144, column: 58, scope: !1993, inlinedAt: !3541)
!3544 = !DILocation(line: 146, column: 17, scope: !1993, inlinedAt: !3541)
!3545 = !DILocation(line: 148, column: 62, scope: !2011, inlinedAt: !3541)
!3546 = !DILocation(line: 148, column: 57, scope: !2011, inlinedAt: !3541)
!3547 = !DILocation(line: 147, column: 17, scope: !1993, inlinedAt: !3541)
!3548 = !DILocation(line: 149, column: 18, scope: !1993, inlinedAt: !3541)
!3549 = !DILocation(line: 149, column: 15, scope: !1993, inlinedAt: !3541)
!3550 = !DILocation(line: 149, column: 7, scope: !1993, inlinedAt: !3541)
!3551 = !DILocation(line: 150, column: 12, scope: !1993, inlinedAt: !3541)
!3552 = !DILocation(line: 150, column: 15, scope: !1993, inlinedAt: !3541)
!3553 = !DILocation(line: 150, column: 25, scope: !1993, inlinedAt: !3541)
!3554 = !DILocation(line: 150, column: 7, scope: !1993, inlinedAt: !3541)
!3555 = !DILocation(line: 151, column: 18, scope: !1993, inlinedAt: !3541)
!3556 = !DILocation(line: 151, column: 23, scope: !1993, inlinedAt: !3541)
!3557 = !DILocation(line: 151, column: 6, scope: !1993, inlinedAt: !3541)
!3558 = !DILocation(line: 978, column: 10, scope: !3525)
!3559 = !DILocation(line: 979, column: 1, scope: !3525)
!3560 = !DILocation(line: 978, column: 3, scope: !3525)
!3561 = distinct !DISubprogram(name: "quotearg_char", scope: !161, file: !161, line: 982, type: !3562, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!29, !40, !30}
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "arg", arg: 1, scope: !3561, file: !161, line: 982, type: !40)
!3566 = !DILocalVariable(name: "ch", arg: 2, scope: !3561, file: !161, line: 982, type: !30)
!3567 = !DILocation(line: 982, column: 28, scope: !3561)
!3568 = !DILocation(line: 982, column: 38, scope: !3561)
!3569 = !DILocation(line: 973, column: 32, scope: !3525, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 984, column: 10, scope: !3561)
!3571 = !DILocation(line: 973, column: 44, scope: !3525, inlinedAt: !3570)
!3572 = !DILocation(line: 973, column: 58, scope: !3525, inlinedAt: !3570)
!3573 = !DILocation(line: 975, column: 3, scope: !3525, inlinedAt: !3570)
!3574 = !DILocation(line: 976, column: 13, scope: !3525, inlinedAt: !3570)
!3575 = !DILocation(line: 975, column: 26, scope: !3525, inlinedAt: !3570)
!3576 = !DILocation(line: 144, column: 43, scope: !1993, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 977, column: 3, scope: !3525, inlinedAt: !3570)
!3578 = !DILocation(line: 144, column: 51, scope: !1993, inlinedAt: !3577)
!3579 = !DILocation(line: 144, column: 58, scope: !1993, inlinedAt: !3577)
!3580 = !DILocation(line: 146, column: 17, scope: !1993, inlinedAt: !3577)
!3581 = !DILocation(line: 148, column: 62, scope: !2011, inlinedAt: !3577)
!3582 = !DILocation(line: 148, column: 57, scope: !2011, inlinedAt: !3577)
!3583 = !DILocation(line: 147, column: 17, scope: !1993, inlinedAt: !3577)
!3584 = !DILocation(line: 149, column: 18, scope: !1993, inlinedAt: !3577)
!3585 = !DILocation(line: 149, column: 15, scope: !1993, inlinedAt: !3577)
!3586 = !DILocation(line: 149, column: 7, scope: !1993, inlinedAt: !3577)
!3587 = !DILocation(line: 150, column: 12, scope: !1993, inlinedAt: !3577)
!3588 = !DILocation(line: 150, column: 15, scope: !1993, inlinedAt: !3577)
!3589 = !DILocation(line: 150, column: 25, scope: !1993, inlinedAt: !3577)
!3590 = !DILocation(line: 150, column: 7, scope: !1993, inlinedAt: !3577)
!3591 = !DILocation(line: 151, column: 18, scope: !1993, inlinedAt: !3577)
!3592 = !DILocation(line: 151, column: 23, scope: !1993, inlinedAt: !3577)
!3593 = !DILocation(line: 151, column: 6, scope: !1993, inlinedAt: !3577)
!3594 = !DILocation(line: 978, column: 10, scope: !3525, inlinedAt: !3570)
!3595 = !DILocation(line: 979, column: 1, scope: !3525, inlinedAt: !3570)
!3596 = !DILocation(line: 984, column: 3, scope: !3561)
!3597 = distinct !DISubprogram(name: "quotearg_colon", scope: !161, file: !161, line: 988, type: !3373, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3598)
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "arg", arg: 1, scope: !3597, file: !161, line: 988, type: !40)
!3600 = !DILocation(line: 988, column: 29, scope: !3597)
!3601 = !DILocation(line: 982, column: 28, scope: !3561, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 990, column: 10, scope: !3597)
!3603 = !DILocation(line: 982, column: 38, scope: !3561, inlinedAt: !3602)
!3604 = !DILocation(line: 973, column: 32, scope: !3525, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 984, column: 10, scope: !3561, inlinedAt: !3602)
!3606 = !DILocation(line: 973, column: 44, scope: !3525, inlinedAt: !3605)
!3607 = !DILocation(line: 973, column: 58, scope: !3525, inlinedAt: !3605)
!3608 = !DILocation(line: 975, column: 3, scope: !3525, inlinedAt: !3605)
!3609 = !DILocation(line: 976, column: 13, scope: !3525, inlinedAt: !3605)
!3610 = !DILocation(line: 975, column: 26, scope: !3525, inlinedAt: !3605)
!3611 = !DILocation(line: 144, column: 43, scope: !1993, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 977, column: 3, scope: !3525, inlinedAt: !3605)
!3613 = !DILocation(line: 144, column: 51, scope: !1993, inlinedAt: !3612)
!3614 = !DILocation(line: 144, column: 58, scope: !1993, inlinedAt: !3612)
!3615 = !DILocation(line: 146, column: 17, scope: !1993, inlinedAt: !3612)
!3616 = !DILocation(line: 148, column: 57, scope: !2011, inlinedAt: !3612)
!3617 = !DILocation(line: 147, column: 17, scope: !1993, inlinedAt: !3612)
!3618 = !DILocation(line: 149, column: 7, scope: !1993, inlinedAt: !3612)
!3619 = !DILocation(line: 150, column: 12, scope: !1993, inlinedAt: !3612)
!3620 = !DILocation(line: 151, column: 6, scope: !1993, inlinedAt: !3612)
!3621 = !DILocation(line: 978, column: 10, scope: !3525, inlinedAt: !3605)
!3622 = !DILocation(line: 979, column: 1, scope: !3525, inlinedAt: !3605)
!3623 = !DILocation(line: 990, column: 3, scope: !3597)
!3624 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !161, file: !161, line: 994, type: !3384, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3625)
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "arg", arg: 1, scope: !3624, file: !161, line: 994, type: !40)
!3627 = !DILocalVariable(name: "argsize", arg: 2, scope: !3624, file: !161, line: 994, type: !32)
!3628 = !DILocation(line: 994, column: 33, scope: !3624)
!3629 = !DILocation(line: 994, column: 45, scope: !3624)
!3630 = !DILocation(line: 973, column: 32, scope: !3525, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 996, column: 10, scope: !3624)
!3632 = !DILocation(line: 973, column: 44, scope: !3525, inlinedAt: !3631)
!3633 = !DILocation(line: 973, column: 58, scope: !3525, inlinedAt: !3631)
!3634 = !DILocation(line: 975, column: 3, scope: !3525, inlinedAt: !3631)
!3635 = !DILocation(line: 976, column: 13, scope: !3525, inlinedAt: !3631)
!3636 = !DILocation(line: 975, column: 26, scope: !3525, inlinedAt: !3631)
!3637 = !DILocation(line: 144, column: 43, scope: !1993, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 977, column: 3, scope: !3525, inlinedAt: !3631)
!3639 = !DILocation(line: 144, column: 51, scope: !1993, inlinedAt: !3638)
!3640 = !DILocation(line: 144, column: 58, scope: !1993, inlinedAt: !3638)
!3641 = !DILocation(line: 146, column: 17, scope: !1993, inlinedAt: !3638)
!3642 = !DILocation(line: 148, column: 57, scope: !2011, inlinedAt: !3638)
!3643 = !DILocation(line: 147, column: 17, scope: !1993, inlinedAt: !3638)
!3644 = !DILocation(line: 149, column: 7, scope: !1993, inlinedAt: !3638)
!3645 = !DILocation(line: 150, column: 12, scope: !1993, inlinedAt: !3638)
!3646 = !DILocation(line: 151, column: 6, scope: !1993, inlinedAt: !3638)
!3647 = !DILocation(line: 978, column: 10, scope: !3525, inlinedAt: !3631)
!3648 = !DILocation(line: 979, column: 1, scope: !3525, inlinedAt: !3631)
!3649 = !DILocation(line: 996, column: 3, scope: !3624)
!3650 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !161, file: !161, line: 1000, type: !3398, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3651)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !161, line: 1000, type: !70)
!3653 = !DILocalVariable(name: "s", arg: 2, scope: !3650, file: !161, line: 1000, type: !5)
!3654 = !DILocalVariable(name: "arg", arg: 3, scope: !3650, file: !161, line: 1000, type: !40)
!3655 = !DILocalVariable(name: "options", scope: !3650, file: !161, line: 1002, type: !168)
!3656 = !DILocation(line: 187, column: 26, scope: !3406, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 1003, column: 13, scope: !3650)
!3658 = !DILocation(line: 1000, column: 29, scope: !3650)
!3659 = !DILocation(line: 1000, column: 51, scope: !3650)
!3660 = !DILocation(line: 1000, column: 66, scope: !3650)
!3661 = !DILocation(line: 1002, column: 3, scope: !3650)
!3662 = !DILocation(line: 185, column: 48, scope: !3406, inlinedAt: !3657)
!3663 = !DILocation(line: 187, column: 3, scope: !3406, inlinedAt: !3657)
!3664 = !DILocation(line: 188, column: 13, scope: !3423, inlinedAt: !3657)
!3665 = !DILocation(line: 188, column: 7, scope: !3406, inlinedAt: !3657)
!3666 = !DILocation(line: 189, column: 5, scope: !3423, inlinedAt: !3657)
!3667 = !{!3668}
!3668 = distinct !{!3668, !3669, !"quoting_options_from_style: argument 0"}
!3669 = distinct !{!3669, !"quoting_options_from_style"}
!3670 = !DILocation(line: 191, column: 10, scope: !3406, inlinedAt: !3657)
!3671 = !DILocation(line: 192, column: 1, scope: !3406, inlinedAt: !3657)
!3672 = !DILocation(line: 1003, column: 13, scope: !3650)
!3673 = !DILocation(line: 1002, column: 26, scope: !3650)
!3674 = !DILocation(line: 144, column: 43, scope: !1993, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 1004, column: 3, scope: !3650)
!3676 = !DILocation(line: 144, column: 51, scope: !1993, inlinedAt: !3675)
!3677 = !DILocation(line: 144, column: 58, scope: !1993, inlinedAt: !3675)
!3678 = !DILocation(line: 146, column: 17, scope: !1993, inlinedAt: !3675)
!3679 = !DILocation(line: 148, column: 57, scope: !2011, inlinedAt: !3675)
!3680 = !DILocation(line: 147, column: 17, scope: !1993, inlinedAt: !3675)
!3681 = !DILocation(line: 149, column: 7, scope: !1993, inlinedAt: !3675)
!3682 = !DILocation(line: 150, column: 12, scope: !1993, inlinedAt: !3675)
!3683 = !DILocation(line: 151, column: 6, scope: !1993, inlinedAt: !3675)
!3684 = !DILocation(line: 1005, column: 10, scope: !3650)
!3685 = !DILocation(line: 1006, column: 1, scope: !3650)
!3686 = !DILocation(line: 1005, column: 3, scope: !3650)
!3687 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !161, file: !161, line: 1009, type: !3688, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!29, !70, !40, !40, !40}
!3690 = !{!3691, !3692, !3693, !3694}
!3691 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !161, line: 1009, type: !70)
!3692 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3687, file: !161, line: 1009, type: !40)
!3693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3687, file: !161, line: 1010, type: !40)
!3694 = !DILocalVariable(name: "arg", arg: 4, scope: !3687, file: !161, line: 1010, type: !40)
!3695 = !DILocation(line: 1009, column: 24, scope: !3687)
!3696 = !DILocation(line: 1009, column: 39, scope: !3687)
!3697 = !DILocation(line: 1010, column: 32, scope: !3687)
!3698 = !DILocation(line: 1010, column: 57, scope: !3687)
!3699 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !161, line: 1017, type: !70)
!3700 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !161, file: !161, line: 1017, type: !3701, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!29, !70, !40, !40, !40, !32}
!3703 = !{!3699, !3704, !3705, !3706, !3707, !3708}
!3704 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3700, file: !161, line: 1017, type: !40)
!3705 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3700, file: !161, line: 1018, type: !40)
!3706 = !DILocalVariable(name: "arg", arg: 4, scope: !3700, file: !161, line: 1019, type: !40)
!3707 = !DILocalVariable(name: "argsize", arg: 5, scope: !3700, file: !161, line: 1019, type: !32)
!3708 = !DILocalVariable(name: "o", scope: !3700, file: !161, line: 1021, type: !168)
!3709 = !DILocation(line: 1017, column: 28, scope: !3700, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 1012, column: 10, scope: !3687)
!3711 = !DILocation(line: 1017, column: 43, scope: !3700, inlinedAt: !3710)
!3712 = !DILocation(line: 1018, column: 36, scope: !3700, inlinedAt: !3710)
!3713 = !DILocation(line: 1019, column: 36, scope: !3700, inlinedAt: !3710)
!3714 = !DILocation(line: 1019, column: 48, scope: !3700, inlinedAt: !3710)
!3715 = !DILocation(line: 1021, column: 3, scope: !3700, inlinedAt: !3710)
!3716 = !DILocation(line: 1021, column: 30, scope: !3700, inlinedAt: !3710)
!3717 = !DILocation(line: 1021, column: 26, scope: !3700, inlinedAt: !3710)
!3718 = !DILocation(line: 171, column: 45, scope: !2043, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 1022, column: 3, scope: !3700, inlinedAt: !3710)
!3720 = !DILocation(line: 172, column: 33, scope: !2043, inlinedAt: !3719)
!3721 = !DILocation(line: 172, column: 57, scope: !2043, inlinedAt: !3719)
!3722 = !DILocation(line: 176, column: 6, scope: !2043, inlinedAt: !3719)
!3723 = !DILocation(line: 176, column: 12, scope: !2043, inlinedAt: !3719)
!3724 = !DILocation(line: 177, column: 8, scope: !2059, inlinedAt: !3719)
!3725 = !DILocation(line: 177, column: 23, scope: !2061, inlinedAt: !3719)
!3726 = !DILocation(line: 177, column: 19, scope: !2059, inlinedAt: !3719)
!3727 = !DILocation(line: 178, column: 5, scope: !2059, inlinedAt: !3719)
!3728 = !DILocation(line: 179, column: 6, scope: !2043, inlinedAt: !3719)
!3729 = !DILocation(line: 179, column: 17, scope: !2043, inlinedAt: !3719)
!3730 = !DILocation(line: 180, column: 6, scope: !2043, inlinedAt: !3719)
!3731 = !DILocation(line: 180, column: 18, scope: !2043, inlinedAt: !3719)
!3732 = !DILocation(line: 1023, column: 10, scope: !3700, inlinedAt: !3710)
!3733 = !DILocation(line: 1024, column: 1, scope: !3700, inlinedAt: !3710)
!3734 = !DILocation(line: 1012, column: 3, scope: !3687)
!3735 = !DILocation(line: 1017, column: 28, scope: !3700)
!3736 = !DILocation(line: 1017, column: 43, scope: !3700)
!3737 = !DILocation(line: 1018, column: 36, scope: !3700)
!3738 = !DILocation(line: 1019, column: 36, scope: !3700)
!3739 = !DILocation(line: 1019, column: 48, scope: !3700)
!3740 = !DILocation(line: 1021, column: 3, scope: !3700)
!3741 = !DILocation(line: 1021, column: 30, scope: !3700)
!3742 = !DILocation(line: 1021, column: 26, scope: !3700)
!3743 = !DILocation(line: 171, column: 45, scope: !2043, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 1022, column: 3, scope: !3700)
!3745 = !DILocation(line: 172, column: 33, scope: !2043, inlinedAt: !3744)
!3746 = !DILocation(line: 172, column: 57, scope: !2043, inlinedAt: !3744)
!3747 = !DILocation(line: 176, column: 6, scope: !2043, inlinedAt: !3744)
!3748 = !DILocation(line: 176, column: 12, scope: !2043, inlinedAt: !3744)
!3749 = !DILocation(line: 177, column: 8, scope: !2059, inlinedAt: !3744)
!3750 = !DILocation(line: 177, column: 23, scope: !2061, inlinedAt: !3744)
!3751 = !DILocation(line: 177, column: 19, scope: !2059, inlinedAt: !3744)
!3752 = !DILocation(line: 178, column: 5, scope: !2059, inlinedAt: !3744)
!3753 = !DILocation(line: 179, column: 6, scope: !2043, inlinedAt: !3744)
!3754 = !DILocation(line: 179, column: 17, scope: !2043, inlinedAt: !3744)
!3755 = !DILocation(line: 180, column: 6, scope: !2043, inlinedAt: !3744)
!3756 = !DILocation(line: 180, column: 18, scope: !2043, inlinedAt: !3744)
!3757 = !DILocation(line: 1023, column: 10, scope: !3700)
!3758 = !DILocation(line: 1024, column: 1, scope: !3700)
!3759 = !DILocation(line: 1023, column: 3, scope: !3700)
!3760 = distinct !DISubprogram(name: "quotearg_custom", scope: !161, file: !161, line: 1027, type: !3761, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!29, !40, !40, !40}
!3763 = !{!3764, !3765, !3766}
!3764 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3760, file: !161, line: 1027, type: !40)
!3765 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3760, file: !161, line: 1027, type: !40)
!3766 = !DILocalVariable(name: "arg", arg: 3, scope: !3760, file: !161, line: 1028, type: !40)
!3767 = !DILocation(line: 1027, column: 30, scope: !3760)
!3768 = !DILocation(line: 1027, column: 54, scope: !3760)
!3769 = !DILocation(line: 1028, column: 30, scope: !3760)
!3770 = !DILocation(line: 1009, column: 24, scope: !3687, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 1030, column: 10, scope: !3760)
!3772 = !DILocation(line: 1009, column: 39, scope: !3687, inlinedAt: !3771)
!3773 = !DILocation(line: 1010, column: 32, scope: !3687, inlinedAt: !3771)
!3774 = !DILocation(line: 1010, column: 57, scope: !3687, inlinedAt: !3771)
!3775 = !DILocation(line: 1017, column: 28, scope: !3700, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 1012, column: 10, scope: !3687, inlinedAt: !3771)
!3777 = !DILocation(line: 1017, column: 43, scope: !3700, inlinedAt: !3776)
!3778 = !DILocation(line: 1018, column: 36, scope: !3700, inlinedAt: !3776)
!3779 = !DILocation(line: 1019, column: 36, scope: !3700, inlinedAt: !3776)
!3780 = !DILocation(line: 1019, column: 48, scope: !3700, inlinedAt: !3776)
!3781 = !DILocation(line: 1021, column: 3, scope: !3700, inlinedAt: !3776)
!3782 = !DILocation(line: 1021, column: 30, scope: !3700, inlinedAt: !3776)
!3783 = !DILocation(line: 1021, column: 26, scope: !3700, inlinedAt: !3776)
!3784 = !DILocation(line: 171, column: 45, scope: !2043, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 1022, column: 3, scope: !3700, inlinedAt: !3776)
!3786 = !DILocation(line: 172, column: 33, scope: !2043, inlinedAt: !3785)
!3787 = !DILocation(line: 172, column: 57, scope: !2043, inlinedAt: !3785)
!3788 = !DILocation(line: 176, column: 6, scope: !2043, inlinedAt: !3785)
!3789 = !DILocation(line: 176, column: 12, scope: !2043, inlinedAt: !3785)
!3790 = !DILocation(line: 177, column: 8, scope: !2059, inlinedAt: !3785)
!3791 = !DILocation(line: 177, column: 23, scope: !2061, inlinedAt: !3785)
!3792 = !DILocation(line: 177, column: 19, scope: !2059, inlinedAt: !3785)
!3793 = !DILocation(line: 178, column: 5, scope: !2059, inlinedAt: !3785)
!3794 = !DILocation(line: 179, column: 6, scope: !2043, inlinedAt: !3785)
!3795 = !DILocation(line: 179, column: 17, scope: !2043, inlinedAt: !3785)
!3796 = !DILocation(line: 180, column: 6, scope: !2043, inlinedAt: !3785)
!3797 = !DILocation(line: 180, column: 18, scope: !2043, inlinedAt: !3785)
!3798 = !DILocation(line: 1023, column: 10, scope: !3700, inlinedAt: !3776)
!3799 = !DILocation(line: 1024, column: 1, scope: !3700, inlinedAt: !3776)
!3800 = !DILocation(line: 1030, column: 3, scope: !3760)
!3801 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !161, file: !161, line: 1034, type: !3802, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!29, !40, !40, !40, !32}
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3801, file: !161, line: 1034, type: !40)
!3806 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3801, file: !161, line: 1034, type: !40)
!3807 = !DILocalVariable(name: "arg", arg: 3, scope: !3801, file: !161, line: 1035, type: !40)
!3808 = !DILocalVariable(name: "argsize", arg: 4, scope: !3801, file: !161, line: 1035, type: !32)
!3809 = !DILocation(line: 1034, column: 34, scope: !3801)
!3810 = !DILocation(line: 1034, column: 58, scope: !3801)
!3811 = !DILocation(line: 1035, column: 34, scope: !3801)
!3812 = !DILocation(line: 1035, column: 46, scope: !3801)
!3813 = !DILocation(line: 1017, column: 28, scope: !3700, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 1037, column: 10, scope: !3801)
!3815 = !DILocation(line: 1017, column: 43, scope: !3700, inlinedAt: !3814)
!3816 = !DILocation(line: 1018, column: 36, scope: !3700, inlinedAt: !3814)
!3817 = !DILocation(line: 1019, column: 36, scope: !3700, inlinedAt: !3814)
!3818 = !DILocation(line: 1019, column: 48, scope: !3700, inlinedAt: !3814)
!3819 = !DILocation(line: 1021, column: 3, scope: !3700, inlinedAt: !3814)
!3820 = !DILocation(line: 1021, column: 30, scope: !3700, inlinedAt: !3814)
!3821 = !DILocation(line: 1021, column: 26, scope: !3700, inlinedAt: !3814)
!3822 = !DILocation(line: 171, column: 45, scope: !2043, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 1022, column: 3, scope: !3700, inlinedAt: !3814)
!3824 = !DILocation(line: 172, column: 33, scope: !2043, inlinedAt: !3823)
!3825 = !DILocation(line: 172, column: 57, scope: !2043, inlinedAt: !3823)
!3826 = !DILocation(line: 176, column: 6, scope: !2043, inlinedAt: !3823)
!3827 = !DILocation(line: 176, column: 12, scope: !2043, inlinedAt: !3823)
!3828 = !DILocation(line: 177, column: 8, scope: !2059, inlinedAt: !3823)
!3829 = !DILocation(line: 177, column: 23, scope: !2061, inlinedAt: !3823)
!3830 = !DILocation(line: 177, column: 19, scope: !2059, inlinedAt: !3823)
!3831 = !DILocation(line: 178, column: 5, scope: !2059, inlinedAt: !3823)
!3832 = !DILocation(line: 179, column: 6, scope: !2043, inlinedAt: !3823)
!3833 = !DILocation(line: 179, column: 17, scope: !2043, inlinedAt: !3823)
!3834 = !DILocation(line: 180, column: 6, scope: !2043, inlinedAt: !3823)
!3835 = !DILocation(line: 180, column: 18, scope: !2043, inlinedAt: !3823)
!3836 = !DILocation(line: 1023, column: 10, scope: !3700, inlinedAt: !3814)
!3837 = !DILocation(line: 1024, column: 1, scope: !3700, inlinedAt: !3814)
!3838 = !DILocation(line: 1037, column: 3, scope: !3801)
!3839 = distinct !DISubprogram(name: "quote_n_mem", scope: !161, file: !161, line: 1052, type: !3840, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!40, !70, !40, !32}
!3842 = !{!3843, !3844, !3845}
!3843 = !DILocalVariable(name: "n", arg: 1, scope: !3839, file: !161, line: 1052, type: !70)
!3844 = !DILocalVariable(name: "arg", arg: 2, scope: !3839, file: !161, line: 1052, type: !40)
!3845 = !DILocalVariable(name: "argsize", arg: 3, scope: !3839, file: !161, line: 1052, type: !32)
!3846 = !DILocation(line: 1052, column: 18, scope: !3839)
!3847 = !DILocation(line: 1052, column: 33, scope: !3839)
!3848 = !DILocation(line: 1052, column: 45, scope: !3839)
!3849 = !DILocation(line: 1054, column: 10, scope: !3839)
!3850 = !DILocation(line: 1054, column: 3, scope: !3839)
!3851 = distinct !DISubprogram(name: "quote_mem", scope: !161, file: !161, line: 1058, type: !3852, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!40, !40, !32}
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "arg", arg: 1, scope: !3851, file: !161, line: 1058, type: !40)
!3856 = !DILocalVariable(name: "argsize", arg: 2, scope: !3851, file: !161, line: 1058, type: !32)
!3857 = !DILocation(line: 1058, column: 24, scope: !3851)
!3858 = !DILocation(line: 1058, column: 36, scope: !3851)
!3859 = !DILocation(line: 1052, column: 18, scope: !3839, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1060, column: 10, scope: !3851)
!3861 = !DILocation(line: 1052, column: 33, scope: !3839, inlinedAt: !3860)
!3862 = !DILocation(line: 1052, column: 45, scope: !3839, inlinedAt: !3860)
!3863 = !DILocation(line: 1054, column: 10, scope: !3839, inlinedAt: !3860)
!3864 = !DILocation(line: 1060, column: 3, scope: !3851)
!3865 = distinct !DISubprogram(name: "quote_n", scope: !161, file: !161, line: 1064, type: !3866, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!40, !70, !40}
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !161, line: 1064, type: !70)
!3870 = !DILocalVariable(name: "arg", arg: 2, scope: !3865, file: !161, line: 1064, type: !40)
!3871 = !DILocation(line: 1064, column: 14, scope: !3865)
!3872 = !DILocation(line: 1064, column: 29, scope: !3865)
!3873 = !DILocation(line: 1052, column: 18, scope: !3839, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 1066, column: 10, scope: !3865)
!3875 = !DILocation(line: 1052, column: 33, scope: !3839, inlinedAt: !3874)
!3876 = !DILocation(line: 1052, column: 45, scope: !3839, inlinedAt: !3874)
!3877 = !DILocation(line: 1054, column: 10, scope: !3839, inlinedAt: !3874)
!3878 = !DILocation(line: 1066, column: 3, scope: !3865)
!3879 = distinct !DISubprogram(name: "quote", scope: !161, file: !161, line: 1070, type: !3880, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!40, !40}
!3882 = !{!3883}
!3883 = !DILocalVariable(name: "arg", arg: 1, scope: !3879, file: !161, line: 1070, type: !40)
!3884 = !DILocation(line: 1070, column: 20, scope: !3879)
!3885 = !DILocation(line: 1064, column: 14, scope: !3865, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 1072, column: 10, scope: !3879)
!3887 = !DILocation(line: 1064, column: 29, scope: !3865, inlinedAt: !3886)
!3888 = !DILocation(line: 1052, column: 18, scope: !3839, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 1066, column: 10, scope: !3865, inlinedAt: !3886)
!3890 = !DILocation(line: 1052, column: 33, scope: !3839, inlinedAt: !3889)
!3891 = !DILocation(line: 1052, column: 45, scope: !3839, inlinedAt: !3889)
!3892 = !DILocation(line: 1054, column: 10, scope: !3839, inlinedAt: !3889)
!3893 = !DILocation(line: 1072, column: 3, scope: !3879)
!3894 = distinct !DISubprogram(name: "version_etc_arn", scope: !563, file: !563, line: 62, type: !3895, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3938)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3897, !40, !40, !40, !3937, !32}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3899, file: !703, line: 242, baseType: !70, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3899, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3899, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3899, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3899, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3899, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3899, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3899, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3899, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3899, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3899, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3899, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3899, file: !703, line: 260, baseType: !3914, size: 64, offset: 768)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !3916)
!3916 = !{!3917, !3918, !3920}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3915, file: !703, line: 157, baseType: !3914, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3915, file: !703, line: 158, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3915, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3899, file: !703, line: 262, baseType: !3919, size: 64, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3899, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3899, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3899, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3899, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3899, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3899, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3899, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3899, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3899, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3899, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3899, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3899, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3899, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3899, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3899, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944}
!3939 = !DILocalVariable(name: "stream", arg: 1, scope: !3894, file: !563, line: 62, type: !3897)
!3940 = !DILocalVariable(name: "command_name", arg: 2, scope: !3894, file: !563, line: 63, type: !40)
!3941 = !DILocalVariable(name: "package", arg: 3, scope: !3894, file: !563, line: 63, type: !40)
!3942 = !DILocalVariable(name: "version", arg: 4, scope: !3894, file: !563, line: 64, type: !40)
!3943 = !DILocalVariable(name: "authors", arg: 5, scope: !3894, file: !563, line: 65, type: !3937)
!3944 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3894, file: !563, line: 65, type: !32)
!3945 = !DILocation(line: 62, column: 24, scope: !3894)
!3946 = !DILocation(line: 63, column: 30, scope: !3894)
!3947 = !DILocation(line: 63, column: 56, scope: !3894)
!3948 = !DILocation(line: 64, column: 30, scope: !3894)
!3949 = !DILocation(line: 65, column: 39, scope: !3894)
!3950 = !DILocation(line: 65, column: 55, scope: !3894)
!3951 = !DILocation(line: 67, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3894, file: !563, line: 67, column: 7)
!3953 = !DILocation(line: 67, column: 7, scope: !3894)
!3954 = !DILocation(line: 68, column: 5, scope: !3952)
!3955 = !DILocation(line: 70, column: 5, scope: !3952)
!3956 = !DILocation(line: 84, column: 3, scope: !3894)
!3957 = !DILocation(line: 84, column: 3, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3894, file: !563, discriminator: 1)
!3959 = !DILocation(line: 86, column: 3, scope: !3894)
!3960 = !DILocation(line: 86, column: 3, scope: !3958)
!3961 = !DILocation(line: 95, column: 3, scope: !3894)
!3962 = !DILocation(line: 99, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3894, file: !563, line: 96, column: 5)
!3964 = !DILocation(line: 102, column: 7, scope: !3963)
!3965 = !DILocation(line: 102, column: 7, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3963, file: !563, discriminator: 1)
!3967 = !DILocation(line: 103, column: 7, scope: !3963)
!3968 = !DILocation(line: 106, column: 7, scope: !3963)
!3969 = !DILocation(line: 106, column: 7, scope: !3966)
!3970 = !DILocation(line: 107, column: 7, scope: !3963)
!3971 = !DILocation(line: 110, column: 7, scope: !3963)
!3972 = !DILocation(line: 110, column: 7, scope: !3966)
!3973 = !DILocation(line: 112, column: 7, scope: !3963)
!3974 = !DILocation(line: 117, column: 7, scope: !3963)
!3975 = !DILocation(line: 117, column: 7, scope: !3966)
!3976 = !DILocation(line: 119, column: 7, scope: !3963)
!3977 = !DILocation(line: 124, column: 7, scope: !3963)
!3978 = !DILocation(line: 124, column: 7, scope: !3966)
!3979 = !DILocation(line: 126, column: 7, scope: !3963)
!3980 = !DILocation(line: 131, column: 7, scope: !3963)
!3981 = !DILocation(line: 131, column: 7, scope: !3966)
!3982 = !DILocation(line: 134, column: 7, scope: !3963)
!3983 = !DILocation(line: 139, column: 7, scope: !3963)
!3984 = !DILocation(line: 139, column: 7, scope: !3966)
!3985 = !DILocation(line: 142, column: 7, scope: !3963)
!3986 = !DILocation(line: 147, column: 7, scope: !3963)
!3987 = !DILocation(line: 147, column: 7, scope: !3966)
!3988 = !DILocation(line: 151, column: 7, scope: !3963)
!3989 = !DILocation(line: 156, column: 7, scope: !3963)
!3990 = !DILocation(line: 156, column: 7, scope: !3966)
!3991 = !DILocation(line: 160, column: 7, scope: !3963)
!3992 = !DILocation(line: 167, column: 7, scope: !3963)
!3993 = !DILocation(line: 167, column: 7, scope: !3966)
!3994 = !DILocation(line: 171, column: 7, scope: !3963)
!3995 = !DILocation(line: 173, column: 1, scope: !3894)
!3996 = distinct !DISubprogram(name: "version_etc_ar", scope: !563, file: !563, line: 180, type: !3997, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3897, !40, !40, !40, !3937}
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3996, file: !563, line: 180, type: !3897)
!4001 = !DILocalVariable(name: "command_name", arg: 2, scope: !3996, file: !563, line: 181, type: !40)
!4002 = !DILocalVariable(name: "package", arg: 3, scope: !3996, file: !563, line: 181, type: !40)
!4003 = !DILocalVariable(name: "version", arg: 4, scope: !3996, file: !563, line: 182, type: !40)
!4004 = !DILocalVariable(name: "authors", arg: 5, scope: !3996, file: !563, line: 182, type: !3937)
!4005 = !DILocalVariable(name: "n_authors", scope: !3996, file: !563, line: 184, type: !32)
!4006 = !DILocation(line: 180, column: 23, scope: !3996)
!4007 = !DILocation(line: 181, column: 29, scope: !3996)
!4008 = !DILocation(line: 181, column: 55, scope: !3996)
!4009 = !DILocation(line: 182, column: 29, scope: !3996)
!4010 = !DILocation(line: 182, column: 59, scope: !3996)
!4011 = !DILocation(line: 184, column: 10, scope: !3996)
!4012 = !DILocation(line: 186, column: 8, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3996, file: !563, line: 186, column: 3)
!4014 = !DILocation(line: 186, column: 23, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !4016, file: !563, discriminator: 1)
!4016 = distinct !DILexicalBlock(scope: !4013, file: !563, line: 186, column: 3)
!4017 = !DILocation(line: 186, column: 3, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4013, file: !563, discriminator: 1)
!4019 = !DILocation(line: 186, column: 52, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4016, file: !563, discriminator: 3)
!4021 = distinct !{!4021, !4022, !4023}
!4022 = !DILocation(line: 186, column: 3, scope: !4013)
!4023 = !DILocation(line: 187, column: 5, scope: !4013)
!4024 = !DILocation(line: 188, column: 3, scope: !3996)
!4025 = !DILocation(line: 189, column: 1, scope: !3996)
!4026 = distinct !DISubprogram(name: "version_etc_va", scope: !563, file: !563, line: 196, type: !4027, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !4036)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3897, !40, !40, !40, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !560, line: 189, size: 192, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4030, file: !560, line: 189, baseType: !174, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4030, file: !560, line: 189, baseType: !174, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4030, file: !560, line: 189, baseType: !31, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4030, file: !560, line: 189, baseType: !31, size: 64, offset: 128)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043}
!4037 = !DILocalVariable(name: "stream", arg: 1, scope: !4026, file: !563, line: 196, type: !3897)
!4038 = !DILocalVariable(name: "command_name", arg: 2, scope: !4026, file: !563, line: 197, type: !40)
!4039 = !DILocalVariable(name: "package", arg: 3, scope: !4026, file: !563, line: 197, type: !40)
!4040 = !DILocalVariable(name: "version", arg: 4, scope: !4026, file: !563, line: 198, type: !40)
!4041 = !DILocalVariable(name: "authors", arg: 5, scope: !4026, file: !563, line: 198, type: !4029)
!4042 = !DILocalVariable(name: "n_authors", scope: !4026, file: !563, line: 200, type: !32)
!4043 = !DILocalVariable(name: "authtab", scope: !4026, file: !563, line: 201, type: !4044)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !164)
!4045 = !DILocation(line: 196, column: 23, scope: !4026)
!4046 = !DILocation(line: 197, column: 29, scope: !4026)
!4047 = !DILocation(line: 197, column: 55, scope: !4026)
!4048 = !DILocation(line: 198, column: 29, scope: !4026)
!4049 = !DILocation(line: 198, column: 46, scope: !4026)
!4050 = !DILocation(line: 201, column: 3, scope: !4026)
!4051 = !DILocation(line: 201, column: 15, scope: !4026)
!4052 = !DILocation(line: 200, column: 10, scope: !4026)
!4053 = !DILocation(line: 205, column: 35, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !4055, file: !563, discriminator: 1)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !563, line: 203, column: 3)
!4056 = distinct !DILexicalBlock(scope: !4026, file: !563, line: 203, column: 3)
!4057 = !DILocation(line: 205, column: 35, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4055, file: !563, discriminator: 2)
!4059 = !DILocation(line: 205, column: 35, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4055, file: !563, discriminator: 3)
!4061 = !DILocation(line: 205, column: 35, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !4055, file: !563, discriminator: 4)
!4063 = !DILocation(line: 205, column: 14, scope: !4062)
!4064 = !DILocation(line: 205, column: 33, scope: !4062)
!4065 = !DILocation(line: 205, column: 67, scope: !4062)
!4066 = !DILocation(line: 203, column: 3, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4056, file: !563, discriminator: 1)
!4068 = !DILocation(line: 208, column: 3, scope: !4026)
!4069 = !DILocation(line: 210, column: 1, scope: !4026)
!4070 = distinct !DISubprogram(name: "version_etc", scope: !563, file: !563, line: 227, type: !4071, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !3897, !40, !40, !40, null}
!4073 = !{!4074, !4075, !4076, !4077, !4078}
!4074 = !DILocalVariable(name: "stream", arg: 1, scope: !4070, file: !563, line: 227, type: !3897)
!4075 = !DILocalVariable(name: "command_name", arg: 2, scope: !4070, file: !563, line: 228, type: !40)
!4076 = !DILocalVariable(name: "package", arg: 3, scope: !4070, file: !563, line: 228, type: !40)
!4077 = !DILocalVariable(name: "version", arg: 4, scope: !4070, file: !563, line: 229, type: !40)
!4078 = !DILocalVariable(name: "authors", scope: !4070, file: !563, line: 231, type: !4079)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !701, line: 80, baseType: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4081, line: 50, baseType: !4082)
!4081 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !560, line: 231, baseType: !4083)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 192, elements: !736)
!4084 = !DILocation(line: 227, column: 20, scope: !4070)
!4085 = !DILocation(line: 228, column: 26, scope: !4070)
!4086 = !DILocation(line: 228, column: 52, scope: !4070)
!4087 = !DILocation(line: 229, column: 26, scope: !4070)
!4088 = !DILocation(line: 231, column: 3, scope: !4070)
!4089 = !DILocation(line: 231, column: 11, scope: !4070)
!4090 = !DILocation(line: 233, column: 3, scope: !4070)
!4091 = !DILocation(line: 234, column: 3, scope: !4070)
!4092 = !DILocation(line: 235, column: 3, scope: !4070)
!4093 = !DILocation(line: 236, column: 1, scope: !4070)
!4094 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !563, file: !563, line: 239, type: !649, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !90)
!4095 = !DILocation(line: 245, column: 3, scope: !4094)
!4096 = !DILocation(line: 245, column: 3, scope: !4097)
!4097 = !DILexicalBlockFile(scope: !4094, file: !563, discriminator: 1)
!4098 = !DILocation(line: 251, column: 3, scope: !4094)
!4099 = !DILocation(line: 251, column: 3, scope: !4097)
!4100 = !DILocation(line: 256, column: 3, scope: !4094)
!4101 = !DILocation(line: 256, column: 3, scope: !4097)
!4102 = !DILocation(line: 258, column: 1, scope: !4094)
!4103 = distinct !DISubprogram(name: "xnmalloc", scope: !571, file: !571, line: 105, type: !4104, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!31, !32, !32}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "n", arg: 1, scope: !4103, file: !571, line: 105, type: !32)
!4108 = !DILocalVariable(name: "s", arg: 2, scope: !4103, file: !571, line: 105, type: !32)
!4109 = !DILocation(line: 105, column: 18, scope: !4103)
!4110 = !DILocation(line: 105, column: 28, scope: !4103)
!4111 = !DILocation(line: 107, column: 7, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4103, file: !571, line: 107, column: 7)
!4113 = !DILocation(line: 107, column: 7, scope: !4103)
!4114 = !DILocation(line: 108, column: 5, scope: !4112)
!4115 = !DILocation(line: 109, column: 21, scope: !4103)
!4116 = !DILocalVariable(name: "n", arg: 1, scope: !4117, file: !4118, line: 39, type: !32)
!4117 = distinct !DISubprogram(name: "xmalloc", scope: !4118, file: !4118, line: 39, type: !4119, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4121)
!4118 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!31, !32}
!4121 = !{!4116, !4122}
!4122 = !DILocalVariable(name: "p", scope: !4117, file: !4118, line: 41, type: !31)
!4123 = !DILocation(line: 39, column: 17, scope: !4117, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 109, column: 10, scope: !4103)
!4125 = !DILocation(line: 41, column: 13, scope: !4117, inlinedAt: !4124)
!4126 = !DILocation(line: 41, column: 9, scope: !4117, inlinedAt: !4124)
!4127 = !DILocation(line: 42, column: 8, scope: !4128, inlinedAt: !4124)
!4128 = distinct !DILexicalBlock(scope: !4117, file: !4118, line: 42, column: 7)
!4129 = !DILocation(line: 42, column: 15, scope: !4130, inlinedAt: !4124)
!4130 = !DILexicalBlockFile(scope: !4128, file: !4118, discriminator: 1)
!4131 = !DILocation(line: 42, column: 10, scope: !4128, inlinedAt: !4124)
!4132 = !DILocation(line: 43, column: 5, scope: !4128, inlinedAt: !4124)
!4133 = !DILocation(line: 109, column: 3, scope: !4103)
!4134 = !DILocation(line: 39, column: 17, scope: !4117)
!4135 = !DILocation(line: 41, column: 13, scope: !4117)
!4136 = !DILocation(line: 41, column: 9, scope: !4117)
!4137 = !DILocation(line: 42, column: 8, scope: !4128)
!4138 = !DILocation(line: 42, column: 15, scope: !4130)
!4139 = !DILocation(line: 42, column: 10, scope: !4128)
!4140 = !DILocation(line: 43, column: 5, scope: !4128)
!4141 = !DILocation(line: 44, column: 3, scope: !4117)
!4142 = distinct !DISubprogram(name: "xnrealloc", scope: !571, file: !571, line: 118, type: !4143, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!31, !31, !32, !32}
!4145 = !{!4146, !4147, !4148}
!4146 = !DILocalVariable(name: "p", arg: 1, scope: !4142, file: !571, line: 118, type: !31)
!4147 = !DILocalVariable(name: "n", arg: 2, scope: !4142, file: !571, line: 118, type: !32)
!4148 = !DILocalVariable(name: "s", arg: 3, scope: !4142, file: !571, line: 118, type: !32)
!4149 = !DILocation(line: 118, column: 18, scope: !4142)
!4150 = !DILocation(line: 118, column: 28, scope: !4142)
!4151 = !DILocation(line: 118, column: 38, scope: !4142)
!4152 = !DILocation(line: 120, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4142, file: !571, line: 120, column: 7)
!4154 = !DILocation(line: 120, column: 7, scope: !4142)
!4155 = !DILocation(line: 121, column: 5, scope: !4153)
!4156 = !DILocation(line: 122, column: 25, scope: !4142)
!4157 = !DILocalVariable(name: "p", arg: 1, scope: !4158, file: !4118, line: 51, type: !31)
!4158 = distinct !DISubprogram(name: "xrealloc", scope: !4118, file: !4118, line: 51, type: !4159, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!31, !31, !32}
!4161 = !{!4157, !4162}
!4162 = !DILocalVariable(name: "n", arg: 2, scope: !4158, file: !4118, line: 51, type: !32)
!4163 = !DILocation(line: 51, column: 17, scope: !4158, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 122, column: 10, scope: !4142)
!4165 = !DILocation(line: 51, column: 27, scope: !4158, inlinedAt: !4164)
!4166 = !DILocation(line: 53, column: 8, scope: !4167, inlinedAt: !4164)
!4167 = distinct !DILexicalBlock(scope: !4158, file: !4118, line: 53, column: 7)
!4168 = !DILocation(line: 53, column: 13, scope: !4169, inlinedAt: !4164)
!4169 = !DILexicalBlockFile(scope: !4167, file: !4118, discriminator: 1)
!4170 = !DILocation(line: 53, column: 10, scope: !4167, inlinedAt: !4164)
!4171 = !DILocation(line: 57, column: 7, scope: !4172, inlinedAt: !4164)
!4172 = distinct !DILexicalBlock(scope: !4167, file: !4118, line: 54, column: 5)
!4173 = !DILocation(line: 58, column: 7, scope: !4172, inlinedAt: !4164)
!4174 = !DILocation(line: 61, column: 7, scope: !4158, inlinedAt: !4164)
!4175 = !DILocation(line: 62, column: 8, scope: !4176, inlinedAt: !4164)
!4176 = distinct !DILexicalBlock(scope: !4158, file: !4118, line: 62, column: 7)
!4177 = !DILocation(line: 62, column: 13, scope: !4178, inlinedAt: !4164)
!4178 = !DILexicalBlockFile(scope: !4176, file: !4118, discriminator: 1)
!4179 = !DILocation(line: 62, column: 10, scope: !4176, inlinedAt: !4164)
!4180 = !DILocation(line: 63, column: 5, scope: !4176, inlinedAt: !4164)
!4181 = !DILocation(line: 122, column: 3, scope: !4142)
!4182 = !DILocation(line: 51, column: 17, scope: !4158)
!4183 = !DILocation(line: 51, column: 27, scope: !4158)
!4184 = !DILocation(line: 53, column: 8, scope: !4167)
!4185 = !DILocation(line: 53, column: 13, scope: !4169)
!4186 = !DILocation(line: 53, column: 10, scope: !4167)
!4187 = !DILocation(line: 57, column: 7, scope: !4172)
!4188 = !DILocation(line: 58, column: 7, scope: !4172)
!4189 = !DILocation(line: 61, column: 7, scope: !4158)
!4190 = !DILocation(line: 62, column: 8, scope: !4176)
!4191 = !DILocation(line: 62, column: 13, scope: !4178)
!4192 = !DILocation(line: 62, column: 10, scope: !4176)
!4193 = !DILocation(line: 63, column: 5, scope: !4176)
!4194 = !DILocation(line: 65, column: 1, scope: !4158)
!4195 = !DILocation(line: 180, column: 19, scope: !572)
!4196 = !DILocation(line: 180, column: 30, scope: !572)
!4197 = !DILocation(line: 180, column: 41, scope: !572)
!4198 = !DILocation(line: 182, column: 14, scope: !572)
!4199 = !DILocation(line: 182, column: 10, scope: !572)
!4200 = !DILocation(line: 184, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !572, file: !571, line: 184, column: 7)
!4202 = !DILocation(line: 184, column: 7, scope: !572)
!4203 = !DILocation(line: 186, column: 13, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !571, line: 186, column: 11)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !571, line: 185, column: 5)
!4206 = !DILocation(line: 186, column: 11, scope: !4205)
!4207 = !DILocation(line: 194, column: 30, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4204, file: !571, line: 187, column: 9)
!4209 = !DILocation(line: 195, column: 16, scope: !4208)
!4210 = !DILocation(line: 195, column: 13, scope: !4208)
!4211 = !DILocation(line: 196, column: 9, scope: !4208)
!4212 = !DILocation(line: 204, column: 69, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !571, line: 204, column: 11)
!4214 = distinct !DILexicalBlock(scope: !4201, file: !571, line: 199, column: 5)
!4215 = !DILocation(line: 205, column: 11, scope: !4213)
!4216 = !DILocation(line: 204, column: 11, scope: !4214)
!4217 = !DILocation(line: 206, column: 9, scope: !4213)
!4218 = !DILocation(line: 210, column: 7, scope: !572)
!4219 = !DILocation(line: 211, column: 25, scope: !572)
!4220 = !DILocation(line: 51, column: 17, scope: !4158, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 211, column: 10, scope: !572)
!4222 = !DILocation(line: 51, column: 27, scope: !4158, inlinedAt: !4221)
!4223 = !DILocation(line: 53, column: 10, scope: !4167, inlinedAt: !4221)
!4224 = !DILocation(line: 207, column: 14, scope: !4214)
!4225 = !DILocation(line: 207, column: 18, scope: !4214)
!4226 = !DILocation(line: 207, column: 9, scope: !4214)
!4227 = !DILocation(line: 53, column: 8, scope: !4167, inlinedAt: !4221)
!4228 = !DILocation(line: 57, column: 7, scope: !4172, inlinedAt: !4221)
!4229 = !DILocation(line: 58, column: 7, scope: !4172, inlinedAt: !4221)
!4230 = !DILocation(line: 61, column: 7, scope: !4158, inlinedAt: !4221)
!4231 = !DILocation(line: 62, column: 8, scope: !4176, inlinedAt: !4221)
!4232 = !DILocation(line: 62, column: 13, scope: !4178, inlinedAt: !4221)
!4233 = !DILocation(line: 62, column: 10, scope: !4176, inlinedAt: !4221)
!4234 = !DILocation(line: 63, column: 5, scope: !4176, inlinedAt: !4221)
!4235 = !DILocation(line: 211, column: 3, scope: !572)
!4236 = distinct !DISubprogram(name: "xcharalloc", scope: !571, file: !571, line: 220, type: !3168, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4237)
!4237 = !{!4238}
!4238 = !DILocalVariable(name: "n", arg: 1, scope: !4236, file: !571, line: 220, type: !32)
!4239 = !DILocation(line: 220, column: 20, scope: !4236)
!4240 = !DILocation(line: 39, column: 17, scope: !4117, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 222, column: 10, scope: !4236)
!4242 = !DILocation(line: 41, column: 13, scope: !4117, inlinedAt: !4241)
!4243 = !DILocation(line: 41, column: 9, scope: !4117, inlinedAt: !4241)
!4244 = !DILocation(line: 42, column: 8, scope: !4128, inlinedAt: !4241)
!4245 = !DILocation(line: 42, column: 15, scope: !4130, inlinedAt: !4241)
!4246 = !DILocation(line: 42, column: 10, scope: !4128, inlinedAt: !4241)
!4247 = !DILocation(line: 43, column: 5, scope: !4128, inlinedAt: !4241)
!4248 = !DILocation(line: 222, column: 3, scope: !4236)
!4249 = distinct !DISubprogram(name: "x2realloc", scope: !4118, file: !4118, line: 74, type: !4250, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!31, !31, !575}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "p", arg: 1, scope: !4249, file: !4118, line: 74, type: !31)
!4254 = !DILocalVariable(name: "pn", arg: 2, scope: !4249, file: !4118, line: 74, type: !575)
!4255 = !DILocation(line: 74, column: 18, scope: !4249)
!4256 = !DILocation(line: 74, column: 29, scope: !4249)
!4257 = !DILocation(line: 180, column: 19, scope: !572, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 76, column: 10, scope: !4249)
!4259 = !DILocation(line: 180, column: 30, scope: !572, inlinedAt: !4258)
!4260 = !DILocation(line: 180, column: 41, scope: !572, inlinedAt: !4258)
!4261 = !DILocation(line: 182, column: 14, scope: !572, inlinedAt: !4258)
!4262 = !DILocation(line: 182, column: 10, scope: !572, inlinedAt: !4258)
!4263 = !DILocation(line: 184, column: 9, scope: !4201, inlinedAt: !4258)
!4264 = !DILocation(line: 184, column: 7, scope: !572, inlinedAt: !4258)
!4265 = !DILocation(line: 186, column: 13, scope: !4204, inlinedAt: !4258)
!4266 = !DILocation(line: 186, column: 11, scope: !4205, inlinedAt: !4258)
!4267 = !DILocation(line: 210, column: 7, scope: !572, inlinedAt: !4258)
!4268 = !DILocation(line: 51, column: 17, scope: !4158, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 211, column: 10, scope: !572, inlinedAt: !4258)
!4270 = !DILocation(line: 51, column: 27, scope: !4158, inlinedAt: !4269)
!4271 = !DILocation(line: 53, column: 10, scope: !4167, inlinedAt: !4269)
!4272 = !DILocation(line: 205, column: 11, scope: !4213, inlinedAt: !4258)
!4273 = !DILocation(line: 204, column: 11, scope: !4214, inlinedAt: !4258)
!4274 = !DILocation(line: 206, column: 9, scope: !4213, inlinedAt: !4258)
!4275 = !DILocation(line: 207, column: 14, scope: !4214, inlinedAt: !4258)
!4276 = !DILocation(line: 207, column: 18, scope: !4214, inlinedAt: !4258)
!4277 = !DILocation(line: 207, column: 9, scope: !4214, inlinedAt: !4258)
!4278 = !DILocation(line: 53, column: 8, scope: !4167, inlinedAt: !4269)
!4279 = !DILocation(line: 57, column: 7, scope: !4172, inlinedAt: !4269)
!4280 = !DILocation(line: 58, column: 7, scope: !4172, inlinedAt: !4269)
!4281 = !DILocation(line: 61, column: 7, scope: !4158, inlinedAt: !4269)
!4282 = !DILocation(line: 62, column: 8, scope: !4176, inlinedAt: !4269)
!4283 = !DILocation(line: 62, column: 13, scope: !4178, inlinedAt: !4269)
!4284 = !DILocation(line: 62, column: 10, scope: !4176, inlinedAt: !4269)
!4285 = !DILocation(line: 63, column: 5, scope: !4176, inlinedAt: !4269)
!4286 = !DILocation(line: 76, column: 3, scope: !4249)
!4287 = distinct !DISubprogram(name: "xzalloc", scope: !4118, file: !4118, line: 84, type: !4119, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4288)
!4288 = !{!4289}
!4289 = !DILocalVariable(name: "s", arg: 1, scope: !4287, file: !4118, line: 84, type: !32)
!4290 = !DILocation(line: 84, column: 17, scope: !4287)
!4291 = !DILocation(line: 39, column: 17, scope: !4117, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 86, column: 18, scope: !4287)
!4293 = !DILocation(line: 41, column: 13, scope: !4117, inlinedAt: !4292)
!4294 = !DILocation(line: 41, column: 9, scope: !4117, inlinedAt: !4292)
!4295 = !DILocation(line: 42, column: 8, scope: !4128, inlinedAt: !4292)
!4296 = !DILocation(line: 42, column: 15, scope: !4130, inlinedAt: !4292)
!4297 = !DILocation(line: 42, column: 10, scope: !4128, inlinedAt: !4292)
!4298 = !DILocation(line: 43, column: 5, scope: !4128, inlinedAt: !4292)
!4299 = !DILocation(line: 86, column: 10, scope: !4287)
!4300 = !DILocation(line: 86, column: 3, scope: !4287)
!4301 = distinct !DISubprogram(name: "xcalloc", scope: !4118, file: !4118, line: 93, type: !4104, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4302)
!4302 = !{!4303, !4304, !4305}
!4303 = !DILocalVariable(name: "n", arg: 1, scope: !4301, file: !4118, line: 93, type: !32)
!4304 = !DILocalVariable(name: "s", arg: 2, scope: !4301, file: !4118, line: 93, type: !32)
!4305 = !DILocalVariable(name: "p", scope: !4301, file: !4118, line: 95, type: !31)
!4306 = !DILocation(line: 93, column: 17, scope: !4301)
!4307 = !DILocation(line: 93, column: 27, scope: !4301)
!4308 = !DILocation(line: 100, column: 7, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4301, file: !4118, line: 100, column: 7)
!4310 = !DILocation(line: 101, column: 7, scope: !4309)
!4311 = !DILocation(line: 101, column: 18, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !4309, file: !4118, discriminator: 1)
!4313 = !DILocation(line: 95, column: 9, scope: !4301)
!4314 = !DILocation(line: 101, column: 16, scope: !4312)
!4315 = !DILocation(line: 100, column: 7, scope: !4316)
!4316 = !DILexicalBlockFile(scope: !4301, file: !4118, discriminator: 1)
!4317 = !DILocation(line: 102, column: 5, scope: !4309)
!4318 = !DILocation(line: 103, column: 3, scope: !4301)
!4319 = distinct !DISubprogram(name: "xmemdup", scope: !4118, file: !4118, line: 111, type: !4320, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!31, !35, !32}
!4322 = !{!4323, !4324}
!4323 = !DILocalVariable(name: "p", arg: 1, scope: !4319, file: !4118, line: 111, type: !35)
!4324 = !DILocalVariable(name: "s", arg: 2, scope: !4319, file: !4118, line: 111, type: !32)
!4325 = !DILocation(line: 111, column: 22, scope: !4319)
!4326 = !DILocation(line: 111, column: 32, scope: !4319)
!4327 = !DILocation(line: 39, column: 17, scope: !4117, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 113, column: 18, scope: !4319)
!4329 = !DILocation(line: 41, column: 13, scope: !4117, inlinedAt: !4328)
!4330 = !DILocation(line: 41, column: 9, scope: !4117, inlinedAt: !4328)
!4331 = !DILocation(line: 42, column: 8, scope: !4128, inlinedAt: !4328)
!4332 = !DILocation(line: 42, column: 15, scope: !4130, inlinedAt: !4328)
!4333 = !DILocation(line: 42, column: 10, scope: !4128, inlinedAt: !4328)
!4334 = !DILocation(line: 43, column: 5, scope: !4128, inlinedAt: !4328)
!4335 = !DILocation(line: 113, column: 10, scope: !4319)
!4336 = !DILocation(line: 113, column: 3, scope: !4319)
!4337 = distinct !DISubprogram(name: "xstrdup", scope: !4118, file: !4118, line: 119, type: !3373, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !4338)
!4338 = !{!4339}
!4339 = !DILocalVariable(name: "string", arg: 1, scope: !4337, file: !4118, line: 119, type: !40)
!4340 = !DILocation(line: 119, column: 22, scope: !4337)
!4341 = !DILocation(line: 121, column: 27, scope: !4337)
!4342 = !DILocation(line: 121, column: 43, scope: !4337)
!4343 = !DILocation(line: 111, column: 22, scope: !4319, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 121, column: 10, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4337, file: !4118, discriminator: 1)
!4346 = !DILocation(line: 111, column: 32, scope: !4319, inlinedAt: !4344)
!4347 = !DILocation(line: 39, column: 17, scope: !4117, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 113, column: 18, scope: !4319, inlinedAt: !4344)
!4349 = !DILocation(line: 41, column: 13, scope: !4117, inlinedAt: !4348)
!4350 = !DILocation(line: 41, column: 9, scope: !4117, inlinedAt: !4348)
!4351 = !DILocation(line: 42, column: 8, scope: !4128, inlinedAt: !4348)
!4352 = !DILocation(line: 42, column: 15, scope: !4130, inlinedAt: !4348)
!4353 = !DILocation(line: 42, column: 10, scope: !4128, inlinedAt: !4348)
!4354 = !DILocation(line: 43, column: 5, scope: !4128, inlinedAt: !4348)
!4355 = !DILocation(line: 113, column: 10, scope: !4319, inlinedAt: !4344)
!4356 = !DILocation(line: 121, column: 3, scope: !4337)
!4357 = distinct !DISubprogram(name: "xalloc_die", scope: !4358, file: !4358, line: 32, type: !649, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !584, variables: !90)
!4358 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4359 = !DILocation(line: 34, column: 10, scope: !4357)
!4360 = !DILocation(line: 34, column: 33, scope: !4357)
!4361 = !DILocation(line: 34, column: 3, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4357, file: !4358, discriminator: 1)
!4363 = !DILocation(line: 40, column: 3, scope: !4357)
!4364 = distinct !DISubprogram(name: "xnumtoumax", scope: !4365, file: !4365, line: 36, type: !4366, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4368)
!4365 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!757, !40, !70, !757, !757, !40, !40, !70}
!4368 = !{!4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4378}
!4369 = !DILocalVariable(name: "n_str", arg: 1, scope: !4364, file: !4365, line: 36, type: !40)
!4370 = !DILocalVariable(name: "base", arg: 2, scope: !4364, file: !4365, line: 36, type: !70)
!4371 = !DILocalVariable(name: "min", arg: 3, scope: !4364, file: !4365, line: 36, type: !757)
!4372 = !DILocalVariable(name: "max", arg: 4, scope: !4364, file: !4365, line: 36, type: !757)
!4373 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4364, file: !4365, line: 37, type: !40)
!4374 = !DILocalVariable(name: "err", arg: 6, scope: !4364, file: !4365, line: 37, type: !40)
!4375 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4364, file: !4365, line: 37, type: !70)
!4376 = !DILocalVariable(name: "s_err", scope: !4364, file: !4365, line: 39, type: !4377)
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !590, line: 39, baseType: !589)
!4378 = !DILocalVariable(name: "tnum", scope: !4364, file: !4365, line: 41, type: !757)
!4379 = !DILocation(line: 36, column: 26, scope: !4364)
!4380 = !DILocation(line: 36, column: 37, scope: !4364)
!4381 = !DILocation(line: 36, column: 57, scope: !4364)
!4382 = !DILocation(line: 36, column: 76, scope: !4364)
!4383 = !DILocation(line: 37, column: 26, scope: !4364)
!4384 = !DILocation(line: 37, column: 48, scope: !4364)
!4385 = !DILocation(line: 37, column: 57, scope: !4364)
!4386 = !DILocation(line: 41, column: 3, scope: !4364)
!4387 = !DILocation(line: 41, column: 17, scope: !4364)
!4388 = !DILocation(line: 42, column: 11, scope: !4364)
!4389 = !DILocation(line: 39, column: 16, scope: !4364)
!4390 = !DILocation(line: 44, column: 7, scope: !4364)
!4391 = !DILocation(line: 69, column: 50, scope: !4392)
!4392 = !DILexicalBlockFile(scope: !4393, file: !4365, discriminator: 3)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !4365, line: 67, column: 5)
!4394 = distinct !DILexicalBlock(scope: !4364, file: !4365, line: 66, column: 7)
!4395 = !DILocation(line: 46, column: 11, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !4365, line: 46, column: 11)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !4365, line: 45, column: 5)
!4398 = distinct !DILexicalBlock(scope: !4364, file: !4365, line: 44, column: 7)
!4399 = !DILocation(line: 46, column: 16, scope: !4396)
!4400 = !DILocation(line: 46, column: 29, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !4396, file: !4365, discriminator: 1)
!4402 = !DILocation(line: 46, column: 22, scope: !4396)
!4403 = !DILocation(line: 51, column: 20, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !4365, line: 51, column: 15)
!4405 = distinct !DILexicalBlock(scope: !4396, file: !4365, line: 47, column: 9)
!4406 = !DILocation(line: 52, column: 13, scope: !4404)
!4407 = !DILocation(line: 51, column: 15, scope: !4405)
!4408 = !DILocation(line: 59, column: 9, scope: !4405)
!4409 = !DILocation(line: 62, column: 5, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4398, file: !4365, line: 61, column: 12)
!4411 = !DILocation(line: 62, column: 11, scope: !4410)
!4412 = !DILocation(line: 64, column: 5, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !4365, line: 63, column: 12)
!4414 = !DILocation(line: 64, column: 11, scope: !4413)
!4415 = !DILocation(line: 69, column: 14, scope: !4393)
!4416 = !DILocation(line: 69, column: 56, scope: !4392)
!4417 = !DILocation(line: 70, column: 29, scope: !4393)
!4418 = !DILocation(line: 69, column: 7, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4393, file: !4365, discriminator: 6)
!4420 = !DILocation(line: 71, column: 5, scope: !4393)
!4421 = !DILocation(line: 73, column: 10, scope: !4364)
!4422 = !DILocation(line: 74, column: 1, scope: !4364)
!4423 = !DILocation(line: 73, column: 3, scope: !4364)
!4424 = distinct !DISubprogram(name: "xdectoumax", scope: !4365, file: !4365, line: 82, type: !4425, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!757, !40, !757, !757, !40, !40, !70}
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433}
!4428 = !DILocalVariable(name: "n_str", arg: 1, scope: !4424, file: !4365, line: 82, type: !40)
!4429 = !DILocalVariable(name: "min", arg: 2, scope: !4424, file: !4365, line: 82, type: !757)
!4430 = !DILocalVariable(name: "max", arg: 3, scope: !4424, file: !4365, line: 82, type: !757)
!4431 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4424, file: !4365, line: 83, type: !40)
!4432 = !DILocalVariable(name: "err", arg: 5, scope: !4424, file: !4365, line: 83, type: !40)
!4433 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4424, file: !4365, line: 83, type: !70)
!4434 = !DILocation(line: 82, column: 26, scope: !4424)
!4435 = !DILocation(line: 82, column: 47, scope: !4424)
!4436 = !DILocation(line: 82, column: 66, scope: !4424)
!4437 = !DILocation(line: 83, column: 26, scope: !4424)
!4438 = !DILocation(line: 83, column: 48, scope: !4424)
!4439 = !DILocation(line: 83, column: 57, scope: !4424)
!4440 = !DILocation(line: 85, column: 10, scope: !4424)
!4441 = !DILocation(line: 85, column: 3, scope: !4424)
!4442 = distinct !DISubprogram(name: "xstrtoumax", scope: !4443, file: !4443, line: 88, type: !4444, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4447)
!4443 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!4377, !40, !693, !70, !4446, !40}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4460, !4461, !4464, !4465}
!4448 = !DILocalVariable(name: "s", arg: 1, scope: !4442, file: !4443, line: 88, type: !40)
!4449 = !DILocalVariable(name: "ptr", arg: 2, scope: !4442, file: !4443, line: 88, type: !693)
!4450 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4442, file: !4443, line: 88, type: !70)
!4451 = !DILocalVariable(name: "val", arg: 4, scope: !4442, file: !4443, line: 89, type: !4446)
!4452 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4442, file: !4443, line: 89, type: !40)
!4453 = !DILocalVariable(name: "t_ptr", scope: !4442, file: !4443, line: 91, type: !29)
!4454 = !DILocalVariable(name: "p", scope: !4442, file: !4443, line: 92, type: !693)
!4455 = !DILocalVariable(name: "tmp", scope: !4442, file: !4443, line: 93, type: !757)
!4456 = !DILocalVariable(name: "err", scope: !4442, file: !4443, line: 94, type: !4377)
!4457 = !DILocalVariable(name: "q", scope: !4458, file: !4443, line: 104, type: !40)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !4443, line: 103, column: 5)
!4459 = distinct !DILexicalBlock(scope: !4442, file: !4443, line: 102, column: 7)
!4460 = !DILocalVariable(name: "ch", scope: !4458, file: !4443, line: 105, type: !39)
!4461 = !DILocalVariable(name: "base", scope: !4462, file: !4443, line: 141, type: !70)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !4443, line: 140, column: 5)
!4463 = distinct !DILexicalBlock(scope: !4442, file: !4443, line: 139, column: 7)
!4464 = !DILocalVariable(name: "suffixes", scope: !4462, file: !4443, line: 142, type: !70)
!4465 = !DILocalVariable(name: "overflow", scope: !4462, file: !4443, line: 143, type: !4377)
!4466 = !DILocation(line: 88, column: 24, scope: !4442)
!4467 = !DILocation(line: 88, column: 34, scope: !4442)
!4468 = !DILocation(line: 88, column: 43, scope: !4442)
!4469 = !DILocation(line: 89, column: 24, scope: !4442)
!4470 = !DILocation(line: 89, column: 41, scope: !4442)
!4471 = !DILocation(line: 91, column: 3, scope: !4442)
!4472 = !DILocation(line: 94, column: 16, scope: !4442)
!4473 = !DILocation(line: 96, column: 3, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !4443, line: 96, column: 3)
!4475 = distinct !DILexicalBlock(scope: !4442, file: !4443, line: 96, column: 3)
!4476 = !DILocation(line: 96, column: 3, scope: !4477)
!4477 = !DILexicalBlockFile(scope: !4474, file: !4443, discriminator: 3)
!4478 = !DILocation(line: 98, column: 8, scope: !4442)
!4479 = !DILocation(line: 92, column: 10, scope: !4442)
!4480 = !DILocation(line: 100, column: 3, scope: !4442)
!4481 = !DILocation(line: 100, column: 9, scope: !4442)
!4482 = !DILocation(line: 104, column: 19, scope: !4458)
!4483 = !DILocation(line: 106, column: 14, scope: !4484)
!4484 = !DILexicalBlockFile(scope: !4458, file: !4443, discriminator: 1)
!4485 = !DILocation(line: 106, column: 7, scope: !4458)
!4486 = !DILocation(line: 105, column: 21, scope: !4458)
!4487 = !DILocation(line: 106, column: 7, scope: !4484)
!4488 = !DILocation(line: 107, column: 15, scope: !4458)
!4489 = distinct !{!4489, !4485, !4490}
!4490 = !DILocation(line: 107, column: 17, scope: !4458)
!4491 = !DILocation(line: 109, column: 9, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4458, file: !4443, line: 108, column: 11)
!4493 = !DILocalVariable(name: "nptr", arg: 1, scope: !4494, file: !4495, line: 336, type: !1248)
!4494 = distinct !DISubprogram(name: "strtoumax", scope: !4495, file: !4495, line: 336, type: !4496, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4499)
!4495 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!757, !1248, !4498, !70}
!4498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !693)
!4499 = !{!4493, !4500, !4501}
!4500 = !DILocalVariable(name: "endptr", arg: 2, scope: !4494, file: !4495, line: 336, type: !4498)
!4501 = !DILocalVariable(name: "base", arg: 3, scope: !4494, file: !4495, line: 336, type: !70)
!4502 = !DILocation(line: 336, column: 1, scope: !4494, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 112, column: 9, scope: !4442)
!4504 = !DILocation(line: 339, column: 10, scope: !4494, inlinedAt: !4503)
!4505 = !DILocation(line: 93, column: 14, scope: !4442)
!4506 = !DILocation(line: 114, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4442, file: !4443, line: 114, column: 7)
!4508 = !DILocation(line: 114, column: 10, scope: !4507)
!4509 = !DILocation(line: 114, column: 7, scope: !4442)
!4510 = !DILocation(line: 118, column: 11, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !4443, line: 118, column: 11)
!4512 = distinct !DILexicalBlock(scope: !4507, file: !4443, line: 115, column: 5)
!4513 = !DILocation(line: 118, column: 26, scope: !4511)
!4514 = !DILocation(line: 118, column: 29, scope: !4515)
!4515 = !DILexicalBlockFile(scope: !4511, file: !4443, discriminator: 1)
!4516 = !DILocation(line: 118, column: 33, scope: !4515)
!4517 = !DILocation(line: 118, column: 36, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4511, file: !4443, discriminator: 5)
!4519 = !DILocation(line: 118, column: 11, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !4512, file: !4443, discriminator: 5)
!4521 = !DILocation(line: 123, column: 12, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4507, file: !4443, line: 123, column: 12)
!4523 = !DILocation(line: 123, column: 12, scope: !4507)
!4524 = !DILocation(line: 128, column: 5, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !4443, line: 124, column: 5)
!4526 = !DILocation(line: 133, column: 8, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4442, file: !4443, line: 133, column: 7)
!4528 = !DILocation(line: 133, column: 7, scope: !4442)
!4529 = !DILocation(line: 135, column: 12, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4527, file: !4443, line: 134, column: 5)
!4531 = !DILocation(line: 136, column: 7, scope: !4530)
!4532 = !DILocation(line: 139, column: 7, scope: !4463)
!4533 = !DILocation(line: 139, column: 11, scope: !4463)
!4534 = !DILocation(line: 139, column: 7, scope: !4442)
!4535 = !DILocation(line: 141, column: 11, scope: !4462)
!4536 = !DILocation(line: 142, column: 11, scope: !4462)
!4537 = !DILocation(line: 145, column: 12, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4539, file: !4443, discriminator: 3)
!4539 = distinct !DILexicalBlock(scope: !4462, file: !4443, line: 145, column: 11)
!4540 = !DILocation(line: 145, column: 11, scope: !4541)
!4541 = !DILexicalBlockFile(scope: !4462, file: !4443, discriminator: 3)
!4542 = !DILocation(line: 147, column: 16, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !4443, line: 146, column: 9)
!4544 = !DILocation(line: 148, column: 22, scope: !4543)
!4545 = !DILocation(line: 148, column: 11, scope: !4543)
!4546 = !DILocation(line: 151, column: 7, scope: !4462)
!4547 = !DILocation(line: 163, column: 15, scope: !4548)
!4548 = !DILexicalBlockFile(scope: !4549, file: !4443, discriminator: 2)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !4443, line: 163, column: 15)
!4550 = distinct !DILexicalBlock(scope: !4462, file: !4443, line: 152, column: 9)
!4551 = !DILocation(line: 163, column: 15, scope: !4552)
!4552 = !DILexicalBlockFile(scope: !4550, file: !4443, discriminator: 2)
!4553 = !DILocation(line: 164, column: 21, scope: !4549)
!4554 = !DILocation(line: 164, column: 13, scope: !4549)
!4555 = !DILocation(line: 167, column: 21, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !4443, line: 167, column: 21)
!4557 = distinct !DILexicalBlock(scope: !4549, file: !4443, line: 165, column: 15)
!4558 = !DILocation(line: 167, column: 29, scope: !4556)
!4559 = !DILocation(line: 167, column: 21, scope: !4557)
!4560 = !DILocation(line: 175, column: 17, scope: !4557)
!4561 = !DILocation(line: 179, column: 7, scope: !4462)
!4562 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4563, file: !4443, line: 60, type: !70)
!4563 = distinct !DISubprogram(name: "bkm_scale", scope: !4443, file: !4443, line: 60, type: !4564, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!4377, !4446, !70}
!4566 = !{!4567, !4562}
!4567 = !DILocalVariable(name: "x", arg: 1, scope: !4563, file: !4443, line: 60, type: !4446)
!4568 = !DILocation(line: 60, column: 31, scope: !4563, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 182, column: 22, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4462, file: !4443, line: 180, column: 9)
!4571 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4569)
!4572 = distinct !DILexicalBlock(scope: !4563, file: !4443, line: 67, column: 7)
!4573 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4569)
!4574 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4569)
!4575 = !DILocation(line: 143, column: 20, scope: !4462)
!4576 = !DILocation(line: 183, column: 11, scope: !4570)
!4577 = !DILocation(line: 60, column: 31, scope: !4563, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 189, column: 22, scope: !4570)
!4579 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4578)
!4580 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4578)
!4581 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4578)
!4582 = !DILocation(line: 190, column: 11, scope: !4570)
!4583 = !DILocalVariable(name: "power", arg: 3, scope: !4584, file: !4443, line: 77, type: !70)
!4584 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4443, file: !4443, line: 77, type: !4585, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4587)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!4377, !4446, !70, !70}
!4587 = !{!4588, !4589, !4583, !4590}
!4588 = !DILocalVariable(name: "x", arg: 1, scope: !4584, file: !4443, line: 77, type: !4446)
!4589 = !DILocalVariable(name: "base", arg: 2, scope: !4584, file: !4443, line: 77, type: !70)
!4590 = !DILocalVariable(name: "err", scope: !4584, file: !4443, line: 79, type: !4377)
!4591 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 197, column: 22, scope: !4570)
!4593 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4592)
!4594 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4592)
!4596 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4595)
!4597 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4595)
!4598 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4592)
!4599 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 202, column: 22, scope: !4570)
!4601 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4600)
!4602 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4600)
!4604 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4603)
!4605 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4603)
!4606 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4600)
!4607 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 207, column: 22, scope: !4570)
!4609 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4608)
!4610 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4608)
!4612 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4611)
!4613 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4611)
!4614 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 212, column: 22, scope: !4570)
!4616 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4615)
!4617 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4615)
!4619 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4618)
!4620 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4618)
!4621 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4615)
!4622 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 216, column: 22, scope: !4570)
!4624 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4623)
!4625 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4623)
!4627 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4626)
!4628 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4626)
!4629 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4623)
!4630 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 221, column: 22, scope: !4570)
!4632 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4631)
!4633 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4631)
!4635 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4634)
!4636 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4634)
!4637 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4631)
!4638 = !DILocation(line: 60, column: 31, scope: !4563, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 225, column: 22, scope: !4570)
!4640 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4639)
!4641 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4639)
!4642 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4639)
!4643 = !DILocation(line: 226, column: 11, scope: !4570)
!4644 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 229, column: 22, scope: !4570)
!4646 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4645)
!4647 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4645)
!4649 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4648)
!4650 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4648)
!4651 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4645)
!4652 = !DILocation(line: 77, column: 50, scope: !4584, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 233, column: 22, scope: !4570)
!4654 = !DILocation(line: 79, column: 16, scope: !4584, inlinedAt: !4653)
!4655 = !DILocation(line: 67, column: 39, scope: !4572, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 81, column: 12, scope: !4584, inlinedAt: !4653)
!4657 = !DILocation(line: 72, column: 6, scope: !4563, inlinedAt: !4656)
!4658 = !DILocation(line: 67, column: 7, scope: !4563, inlinedAt: !4656)
!4659 = !DILocation(line: 81, column: 9, scope: !4584, inlinedAt: !4653)
!4660 = !DILocation(line: 237, column: 16, scope: !4570)
!4661 = !DILocation(line: 238, column: 22, scope: !4570)
!4662 = !DILocation(line: 238, column: 11, scope: !4570)
!4663 = !DILocation(line: 241, column: 11, scope: !4462)
!4664 = !DILocation(line: 242, column: 10, scope: !4462)
!4665 = !DILocation(line: 243, column: 11, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4462, file: !4443, line: 243, column: 11)
!4667 = !DILocation(line: 244, column: 13, scope: !4666)
!4668 = !DILocation(line: 243, column: 11, scope: !4462)
!4669 = !DILocation(line: 247, column: 8, scope: !4442)
!4670 = !DILocation(line: 248, column: 3, scope: !4442)
!4671 = !DILocation(line: 249, column: 1, scope: !4442)
!4672 = distinct !DISubprogram(name: "rpl_calloc", scope: !4673, file: !4673, line: 42, type: !4104, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4674)
!4673 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4674 = !{!4675, !4676, !4677, !4678}
!4675 = !DILocalVariable(name: "n", arg: 1, scope: !4672, file: !4673, line: 42, type: !32)
!4676 = !DILocalVariable(name: "s", arg: 2, scope: !4672, file: !4673, line: 42, type: !32)
!4677 = !DILocalVariable(name: "result", scope: !4672, file: !4673, line: 44, type: !31)
!4678 = !DILocalVariable(name: "bytes", scope: !4679, file: !4673, line: 56, type: !32)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !4673, line: 53, column: 5)
!4680 = distinct !DILexicalBlock(scope: !4672, file: !4673, line: 47, column: 7)
!4681 = !DILocation(line: 42, column: 20, scope: !4672)
!4682 = !DILocation(line: 42, column: 30, scope: !4672)
!4683 = !DILocation(line: 47, column: 9, scope: !4680)
!4684 = !DILocation(line: 47, column: 19, scope: !4685)
!4685 = !DILexicalBlockFile(scope: !4680, file: !4673, discriminator: 1)
!4686 = !DILocation(line: 47, column: 14, scope: !4680)
!4687 = !DILocation(line: 56, column: 24, scope: !4679)
!4688 = !DILocation(line: 56, column: 14, scope: !4679)
!4689 = !DILocation(line: 57, column: 17, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4679, file: !4673, line: 57, column: 11)
!4691 = !DILocation(line: 57, column: 21, scope: !4690)
!4692 = !DILocation(line: 57, column: 11, scope: !4679)
!4693 = !DILocation(line: 59, column: 11, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4690, file: !4673, line: 58, column: 9)
!4695 = !DILocation(line: 59, column: 17, scope: !4694)
!4696 = !DILocation(line: 65, column: 12, scope: !4672)
!4697 = !DILocation(line: 44, column: 9, scope: !4672)
!4698 = !DILocation(line: 72, column: 3, scope: !4672)
!4699 = !DILocation(line: 73, column: 1, scope: !4672)
!4700 = distinct !DISubprogram(name: "rpl_fclose", scope: !4701, file: !4701, line: 56, type: !4702, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4744)
!4701 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!70, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4706, file: !703, line: 242, baseType: !70, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4706, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4706, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4706, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4706, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4706, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4706, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4706, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4706, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4706, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4706, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4706, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4706, file: !703, line: 260, baseType: !4721, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !4723)
!4723 = !{!4724, !4725, !4727}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4722, file: !703, line: 157, baseType: !4721, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4722, file: !703, line: 158, baseType: !4726, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4722, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4706, file: !703, line: 262, baseType: !4726, size: 64, offset: 832)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4706, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4706, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4706, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4706, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4706, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4706, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4706, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4706, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4706, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4706, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4706, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4706, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4706, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4706, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4706, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!4744 = !{!4745, !4746, !4747, !4748}
!4745 = !DILocalVariable(name: "fp", arg: 1, scope: !4700, file: !4701, line: 56, type: !4704)
!4746 = !DILocalVariable(name: "saved_errno", scope: !4700, file: !4701, line: 58, type: !70)
!4747 = !DILocalVariable(name: "fd", scope: !4700, file: !4701, line: 59, type: !70)
!4748 = !DILocalVariable(name: "result", scope: !4700, file: !4701, line: 60, type: !70)
!4749 = !DILocation(line: 56, column: 19, scope: !4700)
!4750 = !DILocation(line: 58, column: 7, scope: !4700)
!4751 = !DILocation(line: 60, column: 7, scope: !4700)
!4752 = !DILocation(line: 63, column: 8, scope: !4700)
!4753 = !DILocation(line: 59, column: 7, scope: !4700)
!4754 = !DILocation(line: 64, column: 10, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4700, file: !4701, line: 64, column: 7)
!4756 = !DILocation(line: 64, column: 7, scope: !4700)
!4757 = !DILocation(line: 65, column: 12, scope: !4755)
!4758 = !DILocation(line: 65, column: 5, scope: !4755)
!4759 = !DILocation(line: 70, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4700, file: !4701, line: 70, column: 7)
!4761 = !DILocation(line: 70, column: 23, scope: !4760)
!4762 = !DILocation(line: 70, column: 33, scope: !4763)
!4763 = !DILexicalBlockFile(scope: !4760, file: !4701, discriminator: 1)
!4764 = !DILocation(line: 70, column: 26, scope: !4765)
!4765 = !DILexicalBlockFile(scope: !4760, file: !4701, discriminator: 3)
!4766 = !DILocation(line: 70, column: 59, scope: !4763)
!4767 = !DILocation(line: 71, column: 7, scope: !4760)
!4768 = !DILocation(line: 71, column: 10, scope: !4763)
!4769 = !DILocation(line: 70, column: 7, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4700, file: !4701, discriminator: 2)
!4771 = !DILocation(line: 98, column: 12, scope: !4700)
!4772 = !DILocation(line: 103, column: 7, scope: !4700)
!4773 = !DILocation(line: 72, column: 19, scope: !4760)
!4774 = !DILocation(line: 103, column: 19, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4700, file: !4701, line: 103, column: 7)
!4776 = !DILocation(line: 105, column: 13, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4775, file: !4701, line: 104, column: 5)
!4778 = !DILocation(line: 107, column: 5, scope: !4777)
!4779 = !DILocation(line: 110, column: 1, scope: !4700)
!4780 = distinct !DISubprogram(name: "rpl_fflush", scope: !4781, file: !4781, line: 127, type: !4782, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4824)
!4781 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!70, !4784}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4786, file: !703, line: 242, baseType: !70, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4786, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4786, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4786, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4786, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4786, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4786, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4786, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4786, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4786, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4786, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4786, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4786, file: !703, line: 260, baseType: !4801, size: 64, offset: 768)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !4803)
!4803 = !{!4804, !4805, !4807}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4802, file: !703, line: 157, baseType: !4801, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4802, file: !703, line: 158, baseType: !4806, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4802, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4786, file: !703, line: 262, baseType: !4806, size: 64, offset: 832)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4786, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4786, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4786, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4786, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4786, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4786, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4786, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4786, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4786, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4786, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4786, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4786, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4786, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4786, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4786, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "stream", arg: 1, scope: !4780, file: !4781, line: 127, type: !4784)
!4826 = !DILocation(line: 127, column: 19, scope: !4780)
!4827 = !DILocation(line: 148, column: 14, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4780, file: !4781, line: 148, column: 7)
!4829 = !DILocation(line: 148, column: 22, scope: !4828)
!4830 = !DILocation(line: 148, column: 27, scope: !4831)
!4831 = !DILexicalBlockFile(scope: !4828, file: !4781, discriminator: 1)
!4832 = !DILocation(line: 148, column: 7, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4780, file: !4781, discriminator: 1)
!4834 = !DILocation(line: 149, column: 12, scope: !4828)
!4835 = !DILocation(line: 149, column: 5, scope: !4828)
!4836 = !DILocalVariable(name: "fp", arg: 1, scope: !4837, file: !4781, line: 40, type: !4784)
!4837 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4781, file: !4781, line: 40, type: !4838, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4840)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{null, !4784}
!4840 = !{!4836}
!4841 = !DILocation(line: 40, column: 48, scope: !4837, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 153, column: 3, scope: !4780)
!4843 = !DILocation(line: 42, column: 11, scope: !4844, inlinedAt: !4842)
!4844 = distinct !DILexicalBlock(scope: !4837, file: !4781, line: 42, column: 7)
!4845 = !DILocation(line: 42, column: 18, scope: !4844, inlinedAt: !4842)
!4846 = !DILocation(line: 42, column: 7, scope: !4837, inlinedAt: !4842)
!4847 = !DILocation(line: 44, column: 5, scope: !4844, inlinedAt: !4842)
!4848 = !DILocation(line: 155, column: 10, scope: !4780)
!4849 = !DILocation(line: 155, column: 3, scope: !4780)
!4850 = !DILocation(line: 229, column: 1, scope: !4780)
!4851 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4852, file: !4852, line: 28, type: !4853, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4895)
!4852 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!70, !4855, !1832, !70}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !4857)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !4858)
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4857, file: !703, line: 242, baseType: !70, size: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4857, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4857, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4857, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4857, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4857, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4857, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4857, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4857, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4857, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4857, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4857, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4857, file: !703, line: 260, baseType: !4872, size: 64, offset: 768)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !4874)
!4874 = !{!4875, !4876, !4878}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4873, file: !703, line: 157, baseType: !4872, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4873, file: !703, line: 158, baseType: !4877, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4873, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4857, file: !703, line: 262, baseType: !4877, size: 64, offset: 832)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4857, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4857, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4857, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4857, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4857, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4857, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4857, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4857, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4857, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4857, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4857, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4857, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4857, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4857, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4857, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!4895 = !{!4896, !4897, !4898, !4899}
!4896 = !DILocalVariable(name: "fp", arg: 1, scope: !4851, file: !4852, line: 28, type: !4855)
!4897 = !DILocalVariable(name: "offset", arg: 2, scope: !4851, file: !4852, line: 28, type: !1832)
!4898 = !DILocalVariable(name: "whence", arg: 3, scope: !4851, file: !4852, line: 28, type: !70)
!4899 = !DILocalVariable(name: "pos", scope: !4900, file: !4852, line: 116, type: !1832)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !4852, line: 112, column: 5)
!4901 = distinct !DILexicalBlock(scope: !4851, file: !4852, line: 51, column: 7)
!4902 = !DILocation(line: 28, column: 15, scope: !4851)
!4903 = !DILocation(line: 28, column: 25, scope: !4851)
!4904 = !DILocation(line: 28, column: 37, scope: !4851)
!4905 = !DILocation(line: 51, column: 11, scope: !4901)
!4906 = !{!980, !636, i64 16}
!4907 = !DILocation(line: 51, column: 31, scope: !4901)
!4908 = !{!980, !636, i64 8}
!4909 = !DILocation(line: 51, column: 24, scope: !4901)
!4910 = !DILocation(line: 52, column: 7, scope: !4901)
!4911 = !DILocation(line: 52, column: 14, scope: !4912)
!4912 = !DILexicalBlockFile(scope: !4901, file: !4852, discriminator: 1)
!4913 = !DILocation(line: 52, column: 35, scope: !4912)
!4914 = !{!980, !636, i64 32}
!4915 = !DILocation(line: 52, column: 28, scope: !4912)
!4916 = !DILocation(line: 53, column: 7, scope: !4901)
!4917 = !DILocation(line: 53, column: 14, scope: !4912)
!4918 = !{!980, !636, i64 72}
!4919 = !DILocation(line: 53, column: 28, scope: !4912)
!4920 = !DILocation(line: 51, column: 7, scope: !4921)
!4921 = !DILexicalBlockFile(scope: !4851, file: !4852, discriminator: 1)
!4922 = !DILocation(line: 116, column: 26, scope: !4900)
!4923 = !DILocation(line: 116, column: 19, scope: !4924)
!4924 = !DILexicalBlockFile(scope: !4900, file: !4852, discriminator: 1)
!4925 = !DILocation(line: 116, column: 13, scope: !4900)
!4926 = !DILocation(line: 117, column: 15, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4900, file: !4852, line: 117, column: 11)
!4928 = !DILocation(line: 117, column: 11, scope: !4900)
!4929 = !DILocation(line: 127, column: 11, scope: !4900)
!4930 = !DILocation(line: 127, column: 18, scope: !4900)
!4931 = !DILocation(line: 128, column: 11, scope: !4900)
!4932 = !DILocation(line: 128, column: 19, scope: !4900)
!4933 = !{!980, !944, i64 144}
!4934 = !DILocation(line: 159, column: 7, scope: !4900)
!4935 = !DILocation(line: 161, column: 10, scope: !4851)
!4936 = !DILocation(line: 161, column: 3, scope: !4851)
!4937 = !DILocation(line: 162, column: 1, scope: !4851)
!4938 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4939, file: !4939, line: 334, type: !4940, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4954)
!4939 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!32, !4942, !40, !32, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2143, line: 107, baseType: !4945)
!4945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2143, line: 95, baseType: !4946)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2143, line: 83, size: 64, elements: !4947)
!4947 = !{!4948, !4949}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4946, file: !2143, line: 85, baseType: !70, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4946, file: !2143, line: 94, baseType: !4950, size: 32, offset: 32)
!4950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4946, file: !2143, line: 86, size: 32, elements: !4951)
!4951 = !{!4952, !4953}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4950, file: !2143, line: 89, baseType: !174, size: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4950, file: !2143, line: 93, baseType: !795, size: 32)
!4954 = !{!4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4955 = !DILocalVariable(name: "pwc", arg: 1, scope: !4938, file: !4939, line: 334, type: !4942)
!4956 = !DILocalVariable(name: "s", arg: 2, scope: !4938, file: !4939, line: 334, type: !40)
!4957 = !DILocalVariable(name: "n", arg: 3, scope: !4938, file: !4939, line: 334, type: !32)
!4958 = !DILocalVariable(name: "ps", arg: 4, scope: !4938, file: !4939, line: 334, type: !4943)
!4959 = !DILocalVariable(name: "ret", scope: !4938, file: !4939, line: 336, type: !32)
!4960 = !DILocalVariable(name: "wc", scope: !4938, file: !4939, line: 337, type: !2155)
!4961 = !DILocalVariable(name: "uc", scope: !4962, file: !4939, line: 398, type: !39)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !4939, line: 397, column: 5)
!4963 = distinct !DILexicalBlock(scope: !4938, file: !4939, line: 396, column: 7)
!4964 = !DILocation(line: 334, column: 23, scope: !4938)
!4965 = !DILocation(line: 334, column: 40, scope: !4938)
!4966 = !DILocation(line: 334, column: 50, scope: !4938)
!4967 = !DILocation(line: 334, column: 64, scope: !4938)
!4968 = !DILocation(line: 337, column: 3, scope: !4938)
!4969 = !DILocation(line: 353, column: 9, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4938, file: !4939, line: 353, column: 7)
!4971 = !DILocation(line: 353, column: 7, scope: !4938)
!4972 = !DILocation(line: 388, column: 9, scope: !4938)
!4973 = !DILocation(line: 336, column: 10, scope: !4938)
!4974 = !DILocation(line: 396, column: 19, scope: !4963)
!4975 = !DILocation(line: 396, column: 31, scope: !4976)
!4976 = !DILexicalBlockFile(scope: !4963, file: !4939, discriminator: 1)
!4977 = !DILocation(line: 396, column: 26, scope: !4963)
!4978 = !DILocation(line: 396, column: 41, scope: !4979)
!4979 = !DILexicalBlockFile(scope: !4963, file: !4939, discriminator: 2)
!4980 = !DILocation(line: 396, column: 7, scope: !4981)
!4981 = !DILexicalBlockFile(scope: !4938, file: !4939, discriminator: 2)
!4982 = !DILocation(line: 398, column: 26, scope: !4962)
!4983 = !DILocation(line: 398, column: 21, scope: !4962)
!4984 = !DILocation(line: 399, column: 14, scope: !4962)
!4985 = !DILocation(line: 399, column: 12, scope: !4962)
!4986 = !DILocation(line: 405, column: 1, scope: !4938)
!4987 = distinct !DISubprogram(name: "close_stream", scope: !4988, file: !4988, line: 56, type: !4989, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !5031)
!4988 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!70, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !4993)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !4994)
!4994 = !{!4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4993, file: !703, line: 242, baseType: !70, size: 32)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4993, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4993, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4993, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4993, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4993, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4993, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4993, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4993, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4993, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4993, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4993, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4993, file: !703, line: 260, baseType: !5008, size: 64, offset: 768)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !5010)
!5010 = !{!5011, !5012, !5014}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5009, file: !703, line: 157, baseType: !5008, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5009, file: !703, line: 158, baseType: !5013, size: 64, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5009, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4993, file: !703, line: 262, baseType: !5013, size: 64, offset: 832)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4993, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4993, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4993, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4993, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4993, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4993, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4993, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4993, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4993, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4993, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4993, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4993, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4993, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4993, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4993, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!5031 = !{!5032, !5033, !5035, !5036}
!5032 = !DILocalVariable(name: "stream", arg: 1, scope: !4987, file: !4988, line: 56, type: !4991)
!5033 = !DILocalVariable(name: "some_pending", scope: !4987, file: !4988, line: 58, type: !5034)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!5035 = !DILocalVariable(name: "prev_fail", scope: !4987, file: !4988, line: 59, type: !5034)
!5036 = !DILocalVariable(name: "fclose_fail", scope: !4987, file: !4988, line: 60, type: !5034)
!5037 = !DILocation(line: 56, column: 21, scope: !4987)
!5038 = !DILocation(line: 58, column: 30, scope: !4987)
!5039 = !DILocalVariable(name: "__stream", arg: 1, scope: !5040, file: !971, line: 132, type: !4991)
!5040 = distinct !DISubprogram(name: "ferror_unlocked", scope: !971, file: !971, line: 132, type: !4989, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !5041)
!5041 = !{!5039}
!5042 = !DILocation(line: 132, column: 1, scope: !5040, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 59, column: 27, scope: !4987)
!5044 = !DILocation(line: 134, column: 10, scope: !5040, inlinedAt: !5043)
!5045 = !DILocation(line: 59, column: 43, scope: !4987)
!5046 = !DILocation(line: 60, column: 29, scope: !4987)
!5047 = !DILocation(line: 60, column: 45, scope: !4987)
!5048 = !DILocation(line: 70, column: 17, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4987, file: !4988, line: 70, column: 7)
!5050 = !DILocation(line: 70, column: 33, scope: !5051)
!5051 = !DILexicalBlockFile(scope: !5049, file: !4988, discriminator: 1)
!5052 = !DILocation(line: 70, column: 53, scope: !5053)
!5053 = !DILexicalBlockFile(scope: !5049, file: !4988, discriminator: 3)
!5054 = !DILocation(line: 70, column: 7, scope: !5055)
!5055 = !DILexicalBlockFile(scope: !4987, file: !4988, discriminator: 3)
!5056 = !DILocation(line: 72, column: 11, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5049, file: !4988, line: 71, column: 5)
!5058 = !DILocation(line: 73, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5057, file: !4988, line: 72, column: 11)
!5060 = !DILocation(line: 73, column: 15, scope: !5059)
!5061 = !DILocation(line: 78, column: 1, scope: !4987)
!5062 = distinct !DISubprogram(name: "hard_locale", scope: !5063, file: !5063, line: 38, type: !5064, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !5066)
!5063 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!117, !70}
!5066 = !{!5067, !5068, !5069, !5070, !5077, !5078, !5080, !5081, !5083, !5084, !5086}
!5067 = !DILocalVariable(name: "category", arg: 1, scope: !5062, file: !5063, line: 38, type: !70)
!5068 = !DILocalVariable(name: "hard", scope: !5062, file: !5063, line: 40, type: !117)
!5069 = !DILocalVariable(name: "p", scope: !5062, file: !5063, line: 41, type: !40)
!5070 = !DILocalVariable(name: "__s1_len", scope: !5071, file: !5063, line: 47, type: !32)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !5063, line: 47, column: 15)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !5063, line: 47, column: 15)
!5073 = distinct !DILexicalBlock(scope: !5074, file: !5063, line: 46, column: 9)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !5063, line: 45, column: 11)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !5063, line: 44, column: 5)
!5076 = distinct !DILexicalBlock(scope: !5062, file: !5063, line: 43, column: 7)
!5077 = !DILocalVariable(name: "__s2_len", scope: !5071, file: !5063, line: 47, type: !32)
!5078 = !DILocalVariable(name: "__s2", scope: !5079, file: !5063, line: 47, type: !37)
!5079 = distinct !DILexicalBlock(scope: !5071, file: !5063, line: 47, column: 15)
!5080 = !DILocalVariable(name: "__result", scope: !5079, file: !5063, line: 47, type: !70)
!5081 = !DILocalVariable(name: "__s1_len", scope: !5082, file: !5063, line: 47, type: !32)
!5082 = distinct !DILexicalBlock(scope: !5072, file: !5063, line: 47, column: 39)
!5083 = !DILocalVariable(name: "__s2_len", scope: !5082, file: !5063, line: 47, type: !32)
!5084 = !DILocalVariable(name: "__s2", scope: !5085, file: !5063, line: 47, type: !37)
!5085 = distinct !DILexicalBlock(scope: !5082, file: !5063, line: 47, column: 39)
!5086 = !DILocalVariable(name: "__result", scope: !5085, file: !5063, line: 47, type: !70)
!5087 = !DILocation(line: 38, column: 18, scope: !5062)
!5088 = !DILocation(line: 40, column: 8, scope: !5062)
!5089 = !DILocation(line: 41, column: 19, scope: !5062)
!5090 = !DILocation(line: 41, column: 15, scope: !5062)
!5091 = !DILocation(line: 43, column: 7, scope: !5076)
!5092 = !DILocation(line: 43, column: 7, scope: !5062)
!5093 = !DILocation(line: 47, column: 15, scope: !5071)
!5094 = !DILocation(line: 47, column: 15, scope: !5079)
!5095 = !DILocation(line: 47, column: 15, scope: !5096)
!5096 = !DILexicalBlockFile(scope: !5079, file: !5063, discriminator: 2)
!5097 = !DILocation(line: 47, column: 15, scope: !5098)
!5098 = !DILexicalBlockFile(scope: !5099, file: !5063, discriminator: 3)
!5099 = distinct !DILexicalBlock(scope: !5079, file: !5063, line: 47, column: 15)
!5100 = !DILocation(line: 47, column: 15, scope: !5101)
!5101 = !DILexicalBlockFile(scope: !5099, file: !5063, discriminator: 2)
!5102 = !DILocation(line: 47, column: 15, scope: !5103)
!5103 = !DILexicalBlockFile(scope: !5104, file: !5063, discriminator: 4)
!5104 = distinct !DILexicalBlock(scope: !5099, file: !5063, line: 47, column: 15)
!5105 = !DILocation(line: 47, column: 15, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !5071, file: !5063, discriminator: 11)
!5107 = !DILocation(line: 47, column: 36, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5072, file: !5063, discriminator: 13)
!5109 = !DILocation(line: 47, column: 39, scope: !5082)
!5110 = !DILocation(line: 47, column: 39, scope: !5111)
!5111 = !DILexicalBlockFile(scope: !5082, file: !5063, discriminator: 26)
!5112 = !DILocation(line: 47, column: 59, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !5072, file: !5063, discriminator: 27)
!5114 = !DILocation(line: 47, column: 15, scope: !5115)
!5115 = !DILexicalBlockFile(scope: !5073, file: !5063, discriminator: 27)
!5116 = !DILocation(line: 48, column: 13, scope: !5072)
!5117 = !DILocation(line: 71, column: 3, scope: !5062)
!5118 = distinct !DISubprogram(name: "locale_charset", scope: !554, file: !554, line: 393, type: !5119, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !5121)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!40}
!5121 = !{!5122, !5123, !5124, !5129}
!5122 = !DILocalVariable(name: "codeset", scope: !5118, file: !554, line: 395, type: !40)
!5123 = !DILocalVariable(name: "aliases", scope: !5118, file: !554, line: 396, type: !40)
!5124 = !DILocalVariable(name: "__s1_len", scope: !5125, file: !554, line: 592, type: !32)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !554, line: 592, column: 9)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !554, line: 592, column: 9)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !554, line: 589, column: 3)
!5128 = distinct !DILexicalBlock(scope: !5118, file: !554, line: 589, column: 3)
!5129 = !DILocalVariable(name: "__s2_len", scope: !5125, file: !554, line: 592, type: !32)
!5130 = !DILocalVariable(name: "buf1", scope: !5131, file: !554, line: 196, type: !5198)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !554, line: 194, column: 21)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !554, line: 193, column: 19)
!5133 = distinct !DILexicalBlock(scope: !5134, file: !554, line: 193, column: 19)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !554, line: 188, column: 17)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !554, line: 181, column: 19)
!5136 = distinct !DILexicalBlock(scope: !5137, file: !554, line: 177, column: 13)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !554, line: 173, column: 15)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !554, line: 161, column: 9)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !554, line: 157, column: 11)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !554, line: 130, column: 5)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !554, line: 129, column: 7)
!5142 = distinct !DISubprogram(name: "get_charset_aliases", scope: !554, file: !554, line: 124, type: !5119, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !5143)
!5143 = !{!5144, !5145, !5146, !5147, !5148, !5150, !5151, !5152, !5153, !5194, !5195, !5196, !5130, !5197, !5201, !5202, !5203}
!5144 = !DILocalVariable(name: "cp", scope: !5142, file: !554, line: 126, type: !40)
!5145 = !DILocalVariable(name: "dir", scope: !5140, file: !554, line: 132, type: !40)
!5146 = !DILocalVariable(name: "base", scope: !5140, file: !554, line: 133, type: !40)
!5147 = !DILocalVariable(name: "file_name", scope: !5140, file: !554, line: 134, type: !29)
!5148 = !DILocalVariable(name: "dir_len", scope: !5149, file: !554, line: 144, type: !32)
!5149 = distinct !DILexicalBlock(scope: !5140, file: !554, line: 143, column: 7)
!5150 = !DILocalVariable(name: "base_len", scope: !5149, file: !554, line: 145, type: !32)
!5151 = !DILocalVariable(name: "add_slash", scope: !5149, file: !554, line: 146, type: !70)
!5152 = !DILocalVariable(name: "fd", scope: !5138, file: !554, line: 162, type: !70)
!5153 = !DILocalVariable(name: "fp", scope: !5136, file: !554, line: 178, type: !5154)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 49, baseType: !5156)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 241, size: 1728, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5156, file: !703, line: 242, baseType: !70, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5156, file: !703, line: 247, baseType: !29, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5156, file: !703, line: 248, baseType: !29, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5156, file: !703, line: 249, baseType: !29, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5156, file: !703, line: 250, baseType: !29, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5156, file: !703, line: 251, baseType: !29, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5156, file: !703, line: 252, baseType: !29, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5156, file: !703, line: 253, baseType: !29, size: 64, offset: 448)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5156, file: !703, line: 254, baseType: !29, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5156, file: !703, line: 256, baseType: !29, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5156, file: !703, line: 257, baseType: !29, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5156, file: !703, line: 258, baseType: !29, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5156, file: !703, line: 260, baseType: !5171, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 156, size: 192, elements: !5173)
!5173 = !{!5174, !5175, !5177}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5172, file: !703, line: 157, baseType: !5171, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5172, file: !703, line: 158, baseType: !5176, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5172, file: !703, line: 162, baseType: !70, size: 32, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5156, file: !703, line: 262, baseType: !5176, size: 64, offset: 832)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5156, file: !703, line: 264, baseType: !70, size: 32, offset: 896)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5156, file: !703, line: 268, baseType: !70, size: 32, offset: 928)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5156, file: !703, line: 270, baseType: !729, size: 64, offset: 960)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5156, file: !703, line: 274, baseType: !157, size: 16, offset: 1024)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5156, file: !703, line: 275, baseType: !103, size: 8, offset: 1040)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5156, file: !703, line: 276, baseType: !735, size: 8, offset: 1048)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5156, file: !703, line: 280, baseType: !739, size: 64, offset: 1088)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5156, file: !703, line: 289, baseType: !742, size: 64, offset: 1152)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5156, file: !703, line: 297, baseType: !31, size: 64, offset: 1216)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5156, file: !703, line: 298, baseType: !31, size: 64, offset: 1280)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5156, file: !703, line: 299, baseType: !31, size: 64, offset: 1344)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5156, file: !703, line: 300, baseType: !31, size: 64, offset: 1408)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5156, file: !703, line: 302, baseType: !32, size: 64, offset: 1472)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5156, file: !703, line: 303, baseType: !70, size: 32, offset: 1536)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5156, file: !703, line: 305, baseType: !750, size: 160, offset: 1568)
!5194 = !DILocalVariable(name: "res_ptr", scope: !5134, file: !554, line: 190, type: !29)
!5195 = !DILocalVariable(name: "res_size", scope: !5134, file: !554, line: 191, type: !32)
!5196 = !DILocalVariable(name: "c", scope: !5131, file: !554, line: 195, type: !70)
!5197 = !DILocalVariable(name: "buf2", scope: !5131, file: !554, line: 197, type: !5198)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !5199)
!5199 = !{!5200}
!5200 = !DISubrange(count: 51)
!5201 = !DILocalVariable(name: "l1", scope: !5131, file: !554, line: 198, type: !32)
!5202 = !DILocalVariable(name: "l2", scope: !5131, file: !554, line: 198, type: !32)
!5203 = !DILocalVariable(name: "old_res_ptr", scope: !5131, file: !554, line: 199, type: !29)
!5204 = !DILocation(line: 196, column: 28, scope: !5131, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 589, column: 18, scope: !5128)
!5206 = !DILocation(line: 197, column: 28, scope: !5131, inlinedAt: !5205)
!5207 = !DILocation(line: 403, column: 13, scope: !5118)
!5208 = !DILocation(line: 395, column: 15, scope: !5118)
!5209 = !DILocation(line: 584, column: 15, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5118, file: !554, line: 584, column: 7)
!5211 = !DILocation(line: 584, column: 7, scope: !5118)
!5212 = !DILocation(line: 128, column: 8, scope: !5142, inlinedAt: !5205)
!5213 = !DILocation(line: 126, column: 15, scope: !5142, inlinedAt: !5205)
!5214 = !DILocation(line: 129, column: 10, scope: !5141, inlinedAt: !5205)
!5215 = !DILocation(line: 129, column: 7, scope: !5142, inlinedAt: !5205)
!5216 = !DILocation(line: 138, column: 13, scope: !5140, inlinedAt: !5205)
!5217 = !DILocation(line: 132, column: 19, scope: !5140, inlinedAt: !5205)
!5218 = !DILocation(line: 139, column: 15, scope: !5219, inlinedAt: !5205)
!5219 = distinct !DILexicalBlock(scope: !5140, file: !554, line: 139, column: 11)
!5220 = !DILocation(line: 139, column: 23, scope: !5219, inlinedAt: !5205)
!5221 = !DILocation(line: 139, column: 26, scope: !5222, inlinedAt: !5205)
!5222 = !DILexicalBlockFile(scope: !5219, file: !554, discriminator: 1)
!5223 = !DILocation(line: 139, column: 33, scope: !5222, inlinedAt: !5205)
!5224 = !DILocation(line: 139, column: 11, scope: !5225, inlinedAt: !5205)
!5225 = !DILexicalBlockFile(scope: !5140, file: !554, discriminator: 1)
!5226 = !DILocation(line: 140, column: 9, scope: !5219, inlinedAt: !5205)
!5227 = !DILocation(line: 144, column: 26, scope: !5149, inlinedAt: !5205)
!5228 = !DILocation(line: 144, column: 16, scope: !5149, inlinedAt: !5205)
!5229 = !DILocation(line: 145, column: 16, scope: !5149, inlinedAt: !5205)
!5230 = !DILocation(line: 146, column: 34, scope: !5149, inlinedAt: !5205)
!5231 = !DILocation(line: 146, column: 38, scope: !5149, inlinedAt: !5205)
!5232 = !DILocation(line: 146, column: 42, scope: !5233, inlinedAt: !5205)
!5233 = !DILexicalBlockFile(scope: !5149, file: !554, discriminator: 1)
!5234 = !DILocation(line: 146, column: 41, scope: !5233, inlinedAt: !5205)
!5235 = !DILocation(line: 147, column: 48, scope: !5149, inlinedAt: !5205)
!5236 = !DILocation(line: 147, column: 46, scope: !5149, inlinedAt: !5205)
!5237 = !DILocation(line: 147, column: 69, scope: !5149, inlinedAt: !5205)
!5238 = !DILocation(line: 147, column: 30, scope: !5149, inlinedAt: !5205)
!5239 = !DILocation(line: 134, column: 13, scope: !5140, inlinedAt: !5205)
!5240 = !DILocation(line: 148, column: 13, scope: !5149, inlinedAt: !5205)
!5241 = !DILocation(line: 150, column: 13, scope: !5242, inlinedAt: !5205)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !554, line: 149, column: 11)
!5243 = distinct !DILexicalBlock(scope: !5149, file: !554, line: 148, column: 13)
!5244 = !DILocation(line: 151, column: 17, scope: !5242, inlinedAt: !5205)
!5245 = !DILocation(line: 152, column: 34, scope: !5246, inlinedAt: !5205)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !554, line: 151, column: 17)
!5247 = !DILocation(line: 153, column: 41, scope: !5242, inlinedAt: !5205)
!5248 = !DILocation(line: 153, column: 13, scope: !5242, inlinedAt: !5205)
!5249 = !DILocation(line: 157, column: 11, scope: !5140, inlinedAt: !5205)
!5250 = !DILocation(line: 171, column: 16, scope: !5138, inlinedAt: !5205)
!5251 = !DILocation(line: 162, column: 15, scope: !5138, inlinedAt: !5205)
!5252 = !DILocation(line: 173, column: 18, scope: !5137, inlinedAt: !5205)
!5253 = !DILocation(line: 173, column: 15, scope: !5138, inlinedAt: !5205)
!5254 = !DILocation(line: 180, column: 20, scope: !5136, inlinedAt: !5205)
!5255 = !DILocation(line: 178, column: 21, scope: !5136, inlinedAt: !5205)
!5256 = !DILocation(line: 181, column: 22, scope: !5135, inlinedAt: !5205)
!5257 = !DILocation(line: 181, column: 19, scope: !5136, inlinedAt: !5205)
!5258 = !DILocation(line: 190, column: 25, scope: !5134, inlinedAt: !5205)
!5259 = !DILocation(line: 184, column: 19, scope: !5260, inlinedAt: !5205)
!5260 = distinct !DILexicalBlock(scope: !5135, file: !554, line: 182, column: 17)
!5261 = !DILocation(line: 186, column: 17, scope: !5260, inlinedAt: !5205)
!5262 = !DILocation(line: 191, column: 26, scope: !5134, inlinedAt: !5205)
!5263 = !DILocation(line: 196, column: 23, scope: !5131, inlinedAt: !5205)
!5264 = !DILocation(line: 197, column: 23, scope: !5131, inlinedAt: !5205)
!5265 = !DILocalVariable(name: "__fp", arg: 1, scope: !5266, file: !971, line: 63, type: !5154)
!5266 = distinct !DISubprogram(name: "getc_unlocked", scope: !971, file: !971, line: 63, type: !5267, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !5269)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!70, !5154}
!5269 = !{!5265}
!5270 = !DILocation(line: 63, column: 22, scope: !5266, inlinedAt: !5271)
!5271 = distinct !DILocation(line: 201, column: 27, scope: !5131, inlinedAt: !5205)
!5272 = !DILocation(line: 65, column: 10, scope: !5266, inlinedAt: !5271)
!5273 = !DILocation(line: 65, column: 10, scope: !5274, inlinedAt: !5271)
!5274 = !DILexicalBlockFile(scope: !5266, file: !971, discriminator: 1)
!5275 = !DILocation(line: 65, column: 10, scope: !5276, inlinedAt: !5271)
!5276 = !DILexicalBlockFile(scope: !5266, file: !971, discriminator: 2)
!5277 = !DILocation(line: 65, column: 10, scope: !5278, inlinedAt: !5271)
!5278 = !DILexicalBlockFile(scope: !5266, file: !971, discriminator: 3)
!5279 = !DILocation(line: 195, column: 27, scope: !5131, inlinedAt: !5205)
!5280 = !DILocation(line: 202, column: 27, scope: !5131, inlinedAt: !5205)
!5281 = !DILocation(line: 63, column: 22, scope: !5266, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 210, column: 33, scope: !5283, inlinedAt: !5205)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !554, line: 207, column: 25)
!5284 = distinct !DILexicalBlock(scope: !5131, file: !554, line: 206, column: 27)
!5285 = !DILocation(line: 65, column: 10, scope: !5266, inlinedAt: !5282)
!5286 = !DILocation(line: 65, column: 10, scope: !5274, inlinedAt: !5282)
!5287 = !DILocation(line: 65, column: 10, scope: !5276, inlinedAt: !5282)
!5288 = !DILocation(line: 65, column: 10, scope: !5278, inlinedAt: !5282)
!5289 = !DILocation(line: 210, column: 29, scope: !5290, inlinedAt: !5205)
!5290 = !DILexicalBlockFile(scope: !5283, file: !554, discriminator: 1)
!5291 = distinct !{!5291, !5292, !5293}
!5292 = !DILocation(line: 193, column: 19, scope: !5133)
!5293 = !DILocation(line: 241, column: 21, scope: !5133)
!5294 = !DILocation(line: 216, column: 23, scope: !5131, inlinedAt: !5205)
!5295 = !DILocation(line: 217, column: 27, scope: !5296, inlinedAt: !5205)
!5296 = distinct !DILexicalBlock(scope: !5131, file: !554, line: 217, column: 27)
!5297 = !DILocation(line: 217, column: 64, scope: !5296, inlinedAt: !5205)
!5298 = !DILocation(line: 217, column: 27, scope: !5131, inlinedAt: !5205)
!5299 = !DILocation(line: 219, column: 28, scope: !5131, inlinedAt: !5205)
!5300 = !DILocation(line: 198, column: 30, scope: !5131, inlinedAt: !5205)
!5301 = !DILocation(line: 220, column: 28, scope: !5131, inlinedAt: !5205)
!5302 = !DILocation(line: 198, column: 34, scope: !5131, inlinedAt: !5205)
!5303 = !DILocation(line: 199, column: 29, scope: !5131, inlinedAt: !5205)
!5304 = !DILocation(line: 222, column: 36, scope: !5305, inlinedAt: !5205)
!5305 = distinct !DILexicalBlock(scope: !5131, file: !554, line: 222, column: 27)
!5306 = !DILocation(line: 222, column: 27, scope: !5131, inlinedAt: !5205)
!5307 = !DILocation(line: 225, column: 63, scope: !5308, inlinedAt: !5205)
!5308 = distinct !DILexicalBlock(scope: !5305, file: !554, line: 223, column: 25)
!5309 = !DILocation(line: 225, column: 46, scope: !5308, inlinedAt: !5205)
!5310 = !DILocation(line: 226, column: 25, scope: !5308, inlinedAt: !5205)
!5311 = !DILocation(line: 229, column: 36, scope: !5312, inlinedAt: !5205)
!5312 = distinct !DILexicalBlock(scope: !5305, file: !554, line: 228, column: 25)
!5313 = !DILocation(line: 230, column: 73, scope: !5312, inlinedAt: !5205)
!5314 = !DILocation(line: 230, column: 46, scope: !5312, inlinedAt: !5205)
!5315 = !DILocation(line: 232, column: 35, scope: !5316, inlinedAt: !5205)
!5316 = distinct !DILexicalBlock(scope: !5131, file: !554, line: 232, column: 27)
!5317 = !DILocation(line: 232, column: 27, scope: !5131, inlinedAt: !5205)
!5318 = !DILocation(line: 236, column: 27, scope: !5319, inlinedAt: !5205)
!5319 = distinct !DILexicalBlock(scope: !5316, file: !554, line: 233, column: 25)
!5320 = !DILocation(line: 237, column: 27, scope: !5319, inlinedAt: !5205)
!5321 = !DILocation(line: 239, column: 39, scope: !5131, inlinedAt: !5205)
!5322 = !DILocation(line: 239, column: 50, scope: !5131, inlinedAt: !5205)
!5323 = !DILocation(line: 239, column: 61, scope: !5131, inlinedAt: !5205)
!5324 = !DILocalVariable(name: "__dest", arg: 1, scope: !5325, file: !5326, line: 107, type: !1249)
!5325 = distinct !DISubprogram(name: "strcpy", scope: !5326, file: !5326, line: 107, type: !5327, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !5329)
!5326 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!29, !1249, !1248}
!5329 = !{!5324, !5330}
!5330 = !DILocalVariable(name: "__src", arg: 2, scope: !5325, file: !5326, line: 107, type: !1248)
!5331 = !DILocation(line: 107, column: 1, scope: !5325, inlinedAt: !5332)
!5332 = distinct !DILocation(line: 239, column: 23, scope: !5131, inlinedAt: !5205)
!5333 = !DILocation(line: 109, column: 49, scope: !5325, inlinedAt: !5332)
!5334 = !DILocation(line: 109, column: 10, scope: !5325, inlinedAt: !5332)
!5335 = !DILocation(line: 107, column: 1, scope: !5325, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 240, column: 23, scope: !5131, inlinedAt: !5205)
!5337 = !DILocation(line: 109, column: 49, scope: !5325, inlinedAt: !5336)
!5338 = !DILocation(line: 109, column: 10, scope: !5325, inlinedAt: !5336)
!5339 = !DILocation(line: 241, column: 21, scope: !5132, inlinedAt: !5205)
!5340 = !DILocation(line: 242, column: 19, scope: !5134, inlinedAt: !5205)
!5341 = !DILocation(line: 243, column: 32, scope: !5342, inlinedAt: !5205)
!5342 = distinct !DILexicalBlock(scope: !5134, file: !554, line: 243, column: 23)
!5343 = !DILocation(line: 243, column: 23, scope: !5134, inlinedAt: !5205)
!5344 = !DILocation(line: 247, column: 33, scope: !5345, inlinedAt: !5205)
!5345 = distinct !DILexicalBlock(scope: !5342, file: !554, line: 246, column: 21)
!5346 = !DILocation(line: 247, column: 45, scope: !5345, inlinedAt: !5205)
!5347 = !DILocation(line: 253, column: 11, scope: !5138, inlinedAt: !5205)
!5348 = !DILocation(line: 377, column: 23, scope: !5140, inlinedAt: !5205)
!5349 = !DILocation(line: 378, column: 5, scope: !5140, inlinedAt: !5205)
!5350 = !DILocation(line: 396, column: 15, scope: !5118)
!5351 = !DILocation(line: 590, column: 8, scope: !5127)
!5352 = !DILocation(line: 590, column: 17, scope: !5127)
!5353 = !DILocation(line: 589, column: 3, scope: !5354)
!5354 = !DILexicalBlockFile(scope: !5128, file: !554, discriminator: 1)
!5355 = !DILocation(line: 592, column: 9, scope: !5125)
!5356 = !DILocation(line: 592, column: 35, scope: !5126)
!5357 = !DILocation(line: 593, column: 9, scope: !5126)
!5358 = !DILocation(line: 593, column: 24, scope: !5359)
!5359 = !DILexicalBlockFile(scope: !5126, file: !554, discriminator: 1)
!5360 = !DILocation(line: 593, column: 31, scope: !5359)
!5361 = !DILocation(line: 593, column: 34, scope: !5362)
!5362 = !DILexicalBlockFile(scope: !5126, file: !554, discriminator: 2)
!5363 = !DILocation(line: 593, column: 45, scope: !5362)
!5364 = !DILocation(line: 592, column: 9, scope: !5365)
!5365 = !DILexicalBlockFile(scope: !5127, file: !554, discriminator: 1)
!5366 = !DILocation(line: 595, column: 29, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5126, file: !554, line: 594, column: 7)
!5368 = !DILocation(line: 595, column: 27, scope: !5367)
!5369 = !DILocation(line: 595, column: 46, scope: !5367)
!5370 = !DILocation(line: 596, column: 9, scope: !5367)
!5371 = !DILocation(line: 591, column: 19, scope: !5127)
!5372 = !DILocation(line: 591, column: 36, scope: !5127)
!5373 = !DILocation(line: 591, column: 16, scope: !5127)
!5374 = !DILocation(line: 591, column: 52, scope: !5365)
!5375 = !DILocation(line: 591, column: 69, scope: !5127)
!5376 = !DILocation(line: 591, column: 49, scope: !5127)
!5377 = distinct !{!5377, !5378, !5379}
!5378 = !DILocation(line: 589, column: 3, scope: !5128)
!5379 = !DILocation(line: 597, column: 7, scope: !5128)
!5380 = !DILocation(line: 602, column: 7, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5118, file: !554, line: 602, column: 7)
!5382 = !DILocation(line: 602, column: 18, scope: !5381)
!5383 = !DILocation(line: 602, column: 7, scope: !5118)
!5384 = !DILocation(line: 612, column: 3, scope: !5118)
