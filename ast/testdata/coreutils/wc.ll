; ModuleID = 'coreutils-8.27/src/wc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.Tokens = type { i64, i8**, i64*, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.argv_iterator = type { %struct._IO_FILE*, i64, i8*, i64, i8**, i8** }
%struct.fstatus = type { i32, %struct.stat }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [184 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a non-zero-length sequence of\0Acharacters delimited by white space.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8, !dbg !0
@print_bytes = internal unnamed_addr global i1 false, align 1
@print_chars = internal unnamed_addr global i1 false, align 1
@print_words = internal unnamed_addr global i1 false, align 1
@print_lines = internal unnamed_addr global i1 false, align 1
@print_linelength = internal unnamed_addr global i1 false, align 1
@max_line_length = internal unnamed_addr global i64 0, align 8, !dbg !292
@total_bytes = internal unnamed_addr global i64 0, align 8, !dbg !290
@total_chars = internal unnamed_addr global i64 0, align 8, !dbg !288
@total_words = internal unnamed_addr global i64 0, align 8, !dbg !286
@total_lines = internal unnamed_addr global i64 0, align 8, !dbg !281
@.str.11 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !338
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x i8*] zeroinitializer, align 8, !dbg !67
@number_width = internal unnamed_addr global i32 0, align 4, !dbg !304
@.str.22 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"src/wc.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1, !dbg !352
@.str.55 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !372
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !378
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !383
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !386
@is_basic_table = local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !393
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !404
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !411
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !423
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !430
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !440
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !447
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !454
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !442
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !456
@.str.107 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.108 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.110 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.111 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.112 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.113 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.114 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.115 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.116 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.117 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.118 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.119 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.120 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.123 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.127 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.128 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !462
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !471
@.str.1.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.166 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !481
@.str.3.167 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.168 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.169 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.170 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.171 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !1133 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1137, metadata !1138), !dbg !1139
  %2 = icmp eq i32 %0, 0, !dbg !1140
  br i1 %2, label %8, label %3, !dbg !1142

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1143, !tbaa !1146
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1143
  %6 = load i8*, i8** @program_name, align 8, !dbg !1143, !tbaa !1146
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #13, !dbg !1150
  br label %45, !dbg !1152

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1154
  %10 = load i8*, i8** @program_name, align 8, !dbg !1154, !tbaa !1146
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #13, !dbg !1156
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1158
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1158, !tbaa !1146
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #13, !dbg !1159
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !1160
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1160, !tbaa !1146
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #13, !dbg !1163
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1165
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !1146
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #13, !dbg !1166
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1167
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1167, !tbaa !1146
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #13, !dbg !1168
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #13, !dbg !1169
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1169, !tbaa !1146
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #13, !dbg !1170
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #13, !dbg !1171
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !1146
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #13, !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !316, metadata !1138) #13, !dbg !1173
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !316, metadata !1138) #13, !dbg !1173
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #13, !dbg !1175
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #13, !dbg !1176
  %32 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1178
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !327, metadata !1138) #13, !dbg !1179
  %33 = icmp eq i8* %32, null, !dbg !1180
  br i1 %33, label %40, label %34, !dbg !1181

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14, !dbg !1182
  %36 = icmp eq i32 %35, 0, !dbg !1182
  br i1 %36, label %40, label %37, !dbg !1184

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1186
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1188
  br label %40, !dbg !1190

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #13, !dbg !1191
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1192
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #13, !dbg !1193
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #13, !dbg !1194
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !1195
  unreachable, !dbg !1195
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !69 {
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !74, metadata !1138), !dbg !1196
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !75, metadata !1138), !dbg !1197
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !81, metadata !1138), !dbg !1198
  %6 = bitcast %struct.Tokens* %3 to i8*, !dbg !1199
  call void @llvm.lifetime.start(i64 288, i8* nonnull %6) #13, !dbg !1199
  %7 = load i8*, i8** %1, align 8, !dbg !1200, !tbaa !1146
  tail call void @set_program_name(i8* %7) #13, !dbg !1201
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !1202
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #13, !dbg !1203
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !1204
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1205
  %12 = tail call i32 @getpagesize() #1, !dbg !1206
  %13 = sext i32 %12 to i64, !dbg !1206
  store i64 %13, i64* @page_size, align 8, !dbg !1207, !tbaa !1208
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1210, !tbaa !1146
  %15 = tail call i32 @setvbuf(%struct._IO_FILE* %14, i8* null, i32 1, i64 0) #13, !dbg !1211
  store i1 false, i1* @print_bytes, align 1
  store i1 false, i1* @print_chars, align 1
  store i1 false, i1* @print_words, align 1
  store i1 false, i1* @print_lines, align 1
  store i1 false, i1* @print_linelength, align 1
  store i64 0, i64* @max_line_length, align 8, !dbg !1212, !tbaa !1208
  store i64 0, i64* @total_bytes, align 8, !dbg !1213, !tbaa !1208
  store i64 0, i64* @total_chars, align 8, !dbg !1214, !tbaa !1208
  store i64 0, i64* @total_words, align 8, !dbg !1215, !tbaa !1208
  store i64 0, i64* @total_lines, align 8, !dbg !1216, !tbaa !1208
  br label %16, !dbg !1217

; <label>:16:                                     ; preds = %26, %2
  %17 = phi i8* [ %27, %26 ], [ null, %2 ]
  br label %18, !dbg !1198

; <label>:18:                                     ; preds = %24, %16
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !81, metadata !1138), !dbg !1198
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #13, !dbg !1218
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !78, metadata !1138), !dbg !1220
  switch i32 %19, label %32 [
    i32 -1, label %33
    i32 99, label %20
    i32 109, label %24
    i32 108, label %21
    i32 119, label %22
    i32 76, label %23
    i32 128, label %26
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !1221

; <label>:20:                                     ; preds = %18
  br label %24, !dbg !1222

; <label>:21:                                     ; preds = %18
  br label %24, !dbg !1224

; <label>:22:                                     ; preds = %18
  br label %24, !dbg !1225

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !1226

; <label>:24:                                     ; preds = %18, %23, %22, %21, %20
  %25 = phi i1* [ @print_linelength, %23 ], [ @print_words, %22 ], [ @print_lines, %21 ], [ @print_bytes, %20 ], [ @print_chars, %18 ]
  store i1 true, i1* %25, align 1
  br label %18, !dbg !1198, !llvm.loop !1227

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** @optarg, align 8, !dbg !1229, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !81, metadata !1138), !dbg !1198
  br label %16, !dbg !1230, !llvm.loop !1227

; <label>:28:                                     ; preds = %18
  tail call void @usage(i32 0) #16, !dbg !1231
  unreachable, !dbg !1231

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !1146
  %31 = load i8*, i8** @Version, align 8, !dbg !1232, !tbaa !1146
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #13, !dbg !1232
  tail call void @exit(i32 0) #15, !dbg !1233
  unreachable, !dbg !1232

; <label>:32:                                     ; preds = %18
  tail call void @usage(i32 1) #16, !dbg !1235
  unreachable, !dbg !1235

; <label>:33:                                     ; preds = %18
  %34 = load i1, i1* @print_lines, align 1
  br i1 %34, label %44, label %35, !dbg !1236

; <label>:35:                                     ; preds = %33
  %36 = load i1, i1* @print_words, align 1
  br i1 %36, label %44, label %37, !dbg !1238

; <label>:37:                                     ; preds = %35
  %38 = load i1, i1* @print_chars, align 1
  br i1 %38, label %44, label %39, !dbg !1240

; <label>:39:                                     ; preds = %37
  %40 = load i1, i1* @print_bytes, align 1
  br i1 %40, label %44, label %41, !dbg !1242

; <label>:41:                                     ; preds = %39
  %42 = load i1, i1* @print_linelength, align 1
  br i1 %42, label %44, label %43, !dbg !1243

; <label>:43:                                     ; preds = %41
  store i1 true, i1* @print_bytes, align 1
  store i1 true, i1* @print_words, align 1
  store i1 true, i1* @print_lines, align 1
  br label %44, !dbg !1245

; <label>:44:                                     ; preds = %43, %41, %39, %37, %35, %33
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !188, metadata !1138), !dbg !1246
  %45 = icmp ne i8* %17, null, !dbg !1247
  %46 = load i32, i32* @optind, align 4, !tbaa !1248
  %47 = icmp slt i32 %46, %0
  br i1 %45, label %48, label %121, !dbg !1250

; <label>:48:                                     ; preds = %44
  br i1 %47, label %49, label %59, !dbg !1251

; <label>:49:                                     ; preds = %48
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #13, !dbg !1252
  %51 = load i32, i32* @optind, align 4, !dbg !1255, !tbaa !1248
  %52 = sext i32 %51 to i64, !dbg !1255
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !1255
  %54 = load i8*, i8** %53, align 8, !dbg !1255, !tbaa !1146
  %55 = tail call i8* @quotearg_style(i32 4, i8* %54) #13, !dbg !1256
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %55) #13, !dbg !1258
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1260, !tbaa !1146
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 5) #13, !dbg !1260
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %56, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %57) #13, !dbg !1261
  tail call void @usage(i32 1) #16, !dbg !1262
  unreachable, !dbg !1262

; <label>:59:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !250, metadata !1138), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !251, metadata !1138), !dbg !1264
  %60 = load i8, i8* %17, align 1, !dbg !1265, !tbaa !1267
  %61 = icmp eq i8 %60, 45, !dbg !1268
  br i1 %61, label %62, label %68, !dbg !1271

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1273
  %64 = load i8, i8* %63, align 1, !dbg !1273, !tbaa !1267
  %65 = icmp eq i8 %64, 0, !dbg !1276
  br i1 %65, label %66, label %68, !dbg !1278

; <label>:66:                                     ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1280, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, i64 0, metadata !192, metadata !1138), !dbg !1281
  br label %76, !dbg !1282

; <label>:68:                                     ; preds = %59, %62
  %69 = tail call %struct._IO_FILE* @fopen(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !192, metadata !1138), !dbg !1281
  %70 = icmp eq %struct._IO_FILE* %69, null, !dbg !1285
  br i1 %70, label %71, label %76, !dbg !1287

; <label>:71:                                     ; preds = %68
  %72 = tail call i32* @__errno_location() #1, !dbg !1288
  %73 = load i32, i32* %72, align 4, !dbg !1288, !tbaa !1248
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 5) #13, !dbg !1289
  %75 = tail call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1291
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* %74, i8* %75) #13, !dbg !1293
  unreachable, !dbg !1288

; <label>:76:                                     ; preds = %68, %66
  %77 = phi %struct._IO_FILE* [ %67, %66 ], [ %69, %68 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, i64 0, metadata !192, metadata !1138), !dbg !1281
  %78 = bitcast %struct.stat* %4 to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 144, i8* nonnull %78) #13, !dbg !1295
  %79 = tail call i32 @fileno(%struct._IO_FILE* %77) #13, !dbg !1296
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !254, metadata !1298), !dbg !1299
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1300, metadata !1138) #13, !dbg !1308
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !1307, metadata !1138) #13, !dbg !1308
  %80 = call i32 @__fxstat(i32 1, i32 %79, %struct.stat* nonnull %4) #13, !dbg !1311
  %81 = icmp eq i32 %80, 0, !dbg !1312
  br i1 %81, label %82, label %114, !dbg !1313

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1314
  %84 = load i32, i32* %83, align 8, !dbg !1314, !tbaa !1316
  %85 = and i32 %84, 61440, !dbg !1314
  %86 = icmp eq i32 %85, 32768, !dbg !1314
  br i1 %86, label %87, label %114, !dbg !1319

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1320
  %89 = load i64, i64* %88, align 8, !dbg !1320, !tbaa !1321
  %90 = sitofp i64 %89 to double, !dbg !1322
  %91 = call double @physmem_available() #13, !dbg !1323
  %92 = fmul double %91, 5.000000e-01, !dbg !1323
  %93 = fcmp ogt double %92, 1.048576e+07, !dbg !1323
  br i1 %93, label %97, label %94, !dbg !1323

; <label>:94:                                     ; preds = %87
  %95 = call double @physmem_available() #13, !dbg !1324
  %96 = fmul double %95, 5.000000e-01, !dbg !1324
  br label %97, !dbg !1324

; <label>:97:                                     ; preds = %87, %94
  %98 = phi double [ %96, %94 ], [ 1.048576e+07, %87 ], !dbg !1326
  %99 = fcmp ugt double %90, %98, !dbg !1328
  br i1 %99, label %114, label %100, !dbg !1329

; <label>:100:                                    ; preds = %97
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !188, metadata !1138), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !128, metadata !1298), !dbg !1331
  call void @readtokens0_init(%struct.Tokens* nonnull %3) #13, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !128, metadata !1298), !dbg !1331
  %101 = call zeroext i1 @readtokens0(%struct._IO_FILE* %77, %struct.Tokens* nonnull %3) #13, !dbg !1334
  br i1 %101, label %102, label %105, !dbg !1336

; <label>:102:                                    ; preds = %100
  %103 = call i32 @rpl_fclose(%struct._IO_FILE* %77) #13, !dbg !1337
  %104 = icmp eq i32 %103, 0, !dbg !1339
  br i1 %104, label %108, label %105, !dbg !1340

; <label>:105:                                    ; preds = %102, %100
  %106 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #13, !dbg !1342
  %107 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1343
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %106, i8* %107) #13, !dbg !1344
  unreachable, !dbg !1342

; <label>:108:                                    ; preds = %102
  %109 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 1, !dbg !1346
  %110 = load i8**, i8*** %109, align 8, !dbg !1346, !tbaa !1347
  call void @llvm.dbg.value(metadata i8** %110, i64 0, metadata !80, metadata !1138), !dbg !1350
  %111 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 0, !dbg !1351
  %112 = load i64, i64* %111, align 8, !dbg !1351, !tbaa !1352
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !79, metadata !1138), !dbg !1353
  %113 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %110) #13, !dbg !1354
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %113, i64 0, metadata !189, metadata !1138), !dbg !1355
  br label %116, !dbg !1356

; <label>:114:                                    ; preds = %97, %82, %76
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !80, metadata !1138), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !79, metadata !1138), !dbg !1353
  %115 = call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %77) #13, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %115, i64 0, metadata !189, metadata !1138), !dbg !1355
  br label %116

; <label>:116:                                    ; preds = %114, %108
  %117 = phi %struct.argv_iterator* [ %113, %108 ], [ %115, %114 ]
  %118 = phi i8 [ 1, %108 ], [ 0, %114 ]
  %119 = phi i8** [ %110, %108 ], [ null, %114 ]
  %120 = phi i64 [ %112, %108 ], [ 0, %114 ]
  call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !79, metadata !1138), !dbg !1353
  call void @llvm.dbg.value(metadata i8** %119, i64 0, metadata !80, metadata !1138), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %118, i64 0, metadata !188, metadata !1138), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %117, i64 0, metadata !189, metadata !1138), !dbg !1355
  call void @llvm.lifetime.end(i64 144, i8* nonnull %78) #13, !dbg !1359
  br label %129, !dbg !1360

; <label>:121:                                    ; preds = %44
  %122 = sext i32 %46 to i64, !dbg !1361
  %123 = getelementptr inbounds i8*, i8** %1, i64 %122, !dbg !1361
  %124 = select i1 %47, i8** %123, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.stdin_only, i64 0, i64 0), !dbg !1364
  tail call void @llvm.dbg.value(metadata i8** %124, i64 0, metadata !80, metadata !1138), !dbg !1350
  %125 = sub nsw i32 %0, %46, !dbg !1365
  %126 = sext i32 %125 to i64, !dbg !1366
  %127 = select i1 %47, i64 %126, i64 1, !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !79, metadata !1138), !dbg !1353
  %128 = tail call %struct.argv_iterator* @argv_iter_init_argv(i8** %124) #13, !dbg !1368
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %128, i64 0, metadata !189, metadata !1138), !dbg !1355
  br label %129

; <label>:129:                                    ; preds = %121, %116
  %130 = phi %struct.argv_iterator* [ %117, %116 ], [ %128, %121 ]
  %131 = phi i8 [ %118, %116 ], [ 0, %121 ]
  %132 = phi i8** [ %119, %116 ], [ %124, %121 ]
  %133 = phi i64 [ %120, %116 ], [ %127, %121 ]
  call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !79, metadata !1138), !dbg !1353
  call void @llvm.dbg.value(metadata i8** %132, i64 0, metadata !80, metadata !1138), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %131, i64 0, metadata !188, metadata !1138), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %130, i64 0, metadata !189, metadata !1138), !dbg !1355
  %134 = icmp eq %struct.argv_iterator* %130, null, !dbg !1369
  br i1 %134, label %135, label %136, !dbg !1371

; <label>:135:                                    ; preds = %129
  call void @xalloc_die() #15, !dbg !1372
  unreachable, !dbg !1372

; <label>:136:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !1373, metadata !1138) #13, !dbg !1393
  call void @llvm.dbg.value(metadata i8** %132, i64 0, metadata !1380, metadata !1138) #13, !dbg !1395
  %137 = icmp ne i64 %133, 0, !dbg !1396
  %138 = select i1 %137, i64 %133, i64 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !1397, metadata !1138) #13, !dbg !1403
  call void @llvm.dbg.value(metadata i64 152, i64 0, metadata !1402, metadata !1138) #13, !dbg !1406
  %139 = icmp ugt i64 %138, 60680079189834051, !dbg !1407
  br i1 %139, label %140, label %141, !dbg !1409

; <label>:140:                                    ; preds = %136
  call void @xalloc_die() #15, !dbg !1410
  unreachable, !dbg !1410

; <label>:141:                                    ; preds = %136
  %142 = mul i64 %138, 152, !dbg !1411
  %143 = call noalias i8* @xmalloc(i64 %142) #13, !dbg !1412
  %144 = bitcast i8* %143 to %struct.fstatus*, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.fstatus* %144, i64 0, metadata !1381, metadata !1138) #13, !dbg !1414
  switch i64 %133, label %161 [
    i64 0, label %162
    i64 1, label %145
  ], !dbg !1415

; <label>:145:                                    ; preds = %141
  %146 = load i1, i1* @print_lines, align 1
  %147 = zext i1 %146 to i32, !dbg !1416
  %148 = load i1, i1* @print_words, align 1
  %149 = zext i1 %148 to i32, !dbg !1418
  %150 = add nuw nsw i32 %149, %147, !dbg !1419
  %151 = load i1, i1* @print_chars, align 1
  %152 = zext i1 %151 to i32, !dbg !1420
  %153 = add nuw nsw i32 %150, %152, !dbg !1421
  %154 = load i1, i1* @print_bytes, align 1
  %155 = zext i1 %154 to i32, !dbg !1422
  %156 = add nuw nsw i32 %153, %155, !dbg !1423
  %157 = load i1, i1* @print_linelength, align 1
  %158 = zext i1 %157 to i32, !dbg !1424
  %159 = add nuw nsw i32 %156, %158, !dbg !1425
  %160 = icmp eq i32 %159, 1, !dbg !1426
  br i1 %160, label %162, label %161, !dbg !1427

; <label>:161:                                    ; preds = %141, %145
  br label %164, !dbg !1429

; <label>:162:                                    ; preds = %145, %141
  %163 = bitcast i8* %143 to i32*, !dbg !1430
  store i32 1, i32* %163, align 8, !dbg !1431, !tbaa !1432
  br label %188, !dbg !1434

; <label>:164:                                    ; preds = %161, %182
  %165 = phi i64 [ %185, %182 ], [ 0, %161 ]
  %166 = getelementptr inbounds i8*, i8** %132, i64 %165, !dbg !1429
  %167 = load i8*, i8** %166, align 8, !dbg !1429, !tbaa !1146
  %168 = icmp eq i8* %167, null, !dbg !1429
  br i1 %168, label %176, label %169, !dbg !1435

; <label>:169:                                    ; preds = %164
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1389, metadata !1138) #13, !dbg !1436
  call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !1390, metadata !1138) #13, !dbg !1437
  %170 = load i8, i8* %167, align 1, !dbg !1438, !tbaa !1267
  %171 = icmp eq i8 %170, 45, !dbg !1440
  br i1 %171, label %172, label %179, !dbg !1443

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !1445
  %174 = load i8, i8* %173, align 1, !dbg !1445, !tbaa !1267
  %175 = icmp eq i8 %174, 0, !dbg !1448
  br i1 %175, label %176, label %179, !dbg !1450

; <label>:176:                                    ; preds = %172, %164
  %177 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 1, !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !1138) #13, !dbg !1452
  call void @llvm.dbg.value(metadata %struct.stat* %177, i64 0, metadata !1307, metadata !1138) #13, !dbg !1452
  %178 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %177) #13, !dbg !1454
  br label %182, !dbg !1455

; <label>:179:                                    ; preds = %172, %169
  %180 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !1458, metadata !1138) #13, !dbg !1464
  call void @llvm.dbg.value(metadata %struct.stat* %180, i64 0, metadata !1463, metadata !1138) #13, !dbg !1464
  %181 = call i32 @__xstat(i32 1, i8* nonnull %167, %struct.stat* nonnull %180) #13, !dbg !1466
  br label %182, !dbg !1467

; <label>:182:                                    ; preds = %179, %176
  %183 = phi i32 [ %178, %176 ], [ %181, %179 ], !dbg !1469
  %184 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 0, !dbg !1471
  store i32 %183, i32* %184, align 8, !dbg !1472, !tbaa !1432
  %185 = add nuw i64 %165, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !1382, metadata !1138) #13, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !1382, metadata !1138) #13, !dbg !1475
  %186 = icmp eq i64 %185, %133, !dbg !1476
  br i1 %186, label %187, label %164, !dbg !1478, !llvm.loop !1480

; <label>:187:                                    ; preds = %182
  br label %188, !dbg !1483

; <label>:188:                                    ; preds = %187, %162
  call void @llvm.dbg.value(metadata %struct.fstatus* %144, i64 0, metadata !82, metadata !1138), !dbg !1483
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !1484, metadata !1138), !dbg !1498
  tail call void @llvm.dbg.value(metadata %struct.fstatus* %144, i64 0, metadata !1491, metadata !1138), !dbg !1500
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1492, metadata !1138), !dbg !1501
  %189 = icmp eq i64 %133, 0, !dbg !1502
  br i1 %189, label %232, label %190, !dbg !1503

; <label>:190:                                    ; preds = %188
  %191 = bitcast i8* %143 to i32*, !dbg !1504
  %192 = load i32, i32* %191, align 8, !dbg !1504, !tbaa !1432
  %193 = icmp slt i32 %192, 1, !dbg !1506
  br i1 %193, label %194, label %232, !dbg !1507

; <label>:194:                                    ; preds = %190
  br label %198, !dbg !1509

; <label>:195:                                    ; preds = %213
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1496, metadata !1138), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1492, metadata !1138), !dbg !1501
  %196 = icmp ugt i64 %215, 9, !dbg !1514
  br i1 %196, label %197, label %228, !dbg !1518

; <label>:197:                                    ; preds = %195
  br label %221, !dbg !1520

; <label>:198:                                    ; preds = %194, %218
  %199 = phi i32 [ %220, %218 ], [ %192, %194 ], !dbg !1521
  %200 = phi i64 [ %216, %218 ], [ 0, %194 ]
  %201 = phi i64 [ %215, %218 ], [ 0, %194 ]
  %202 = phi i32 [ %214, %218 ], [ 1, %194 ]
  %203 = icmp eq i32 %199, 0, !dbg !1509
  br i1 %203, label %204, label %213, !dbg !1522

; <label>:204:                                    ; preds = %198
  %205 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %200, i32 1, i32 3, !dbg !1523
  %206 = load i32, i32* %205, align 8, !dbg !1523, !tbaa !1526
  %207 = and i32 %206, 61440, !dbg !1523
  %208 = icmp eq i32 %207, 32768, !dbg !1523
  br i1 %208, label %209, label %213, !dbg !1527

; <label>:209:                                    ; preds = %204
  %210 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %200, i32 1, i32 8, !dbg !1528
  %211 = load i64, i64* %210, align 8, !dbg !1528, !tbaa !1529
  %212 = add i64 %211, %201, !dbg !1530
  tail call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !1496, metadata !1138), !dbg !1513
  br label %213, !dbg !1531

; <label>:213:                                    ; preds = %209, %204, %198
  %214 = phi i32 [ %202, %198 ], [ %202, %209 ], [ 7, %204 ]
  %215 = phi i64 [ %201, %198 ], [ %212, %209 ], [ %201, %204 ]
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1496, metadata !1138), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1493, metadata !1138), !dbg !1532
  %216 = add nuw i64 %200, 1, !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !1497, metadata !1138), !dbg !1535
  tail call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !1497, metadata !1138), !dbg !1535
  tail call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !1496, metadata !1138), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1493, metadata !1138), !dbg !1532
  %217 = icmp eq i64 %216, %133, !dbg !1536
  br i1 %217, label %195, label %218, !dbg !1538, !llvm.loop !1540

; <label>:218:                                    ; preds = %213
  %219 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %216, i32 0
  %220 = load i32, i32* %219, align 8, !tbaa !1432
  br label %198, !dbg !1538

; <label>:221:                                    ; preds = %197, %221
  %222 = phi i64 [ %225, %221 ], [ %215, %197 ]
  %223 = phi i32 [ %224, %221 ], [ 1, %197 ]
  %224 = add nuw nsw i32 %223, 1, !dbg !1520
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !1492, metadata !1138), !dbg !1501
  %225 = udiv i64 %222, 10, !dbg !1543
  tail call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1496, metadata !1138), !dbg !1513
  tail call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1496, metadata !1138), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !1492, metadata !1138), !dbg !1501
  %226 = icmp ugt i64 %222, 99, !dbg !1514
  br i1 %226, label %221, label %227, !dbg !1518, !llvm.loop !1545

; <label>:227:                                    ; preds = %221
  br label %228, !dbg !1548

; <label>:228:                                    ; preds = %227, %195
  %229 = phi i32 [ 1, %195 ], [ %224, %227 ]
  %230 = icmp slt i32 %229, %214, !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1492, metadata !1138), !dbg !1501
  %231 = select i1 %230, i32 %214, i32 %229, !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1492, metadata !1138), !dbg !1501
  br label %232, !dbg !1551

; <label>:232:                                    ; preds = %188, %190, %228
  %233 = phi i32 [ %231, %228 ], [ 1, %190 ], [ 1, %188 ]
  tail call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !1492, metadata !1138), !dbg !1501
  store i32 %233, i32* @number_width, align 4, !dbg !1552, !tbaa !1248
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !1138), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !1138), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !256, metadata !1138), !dbg !1555
  %234 = bitcast i32* %5 to i8*, !dbg !1556
  call void @llvm.lifetime.start(i64 4, i8* nonnull %234) #13, !dbg !1556
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !260, metadata !1298), !dbg !1557
  %235 = call i8* @argv_iter(%struct.argv_iterator* nonnull %130, i32* nonnull %5) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !261, metadata !1138), !dbg !1559
  %236 = icmp eq i8* %235, null, !dbg !1560
  br i1 %236, label %242, label %237, !dbg !1562

; <label>:237:                                    ; preds = %232
  %238 = getelementptr inbounds i8, i8* %17, i64 1
  %239 = icmp eq i8* %17, null
  %240 = bitcast i8* %143 to i32*
  br label %252, !dbg !1562

; <label>:241:                                    ; preds = %320
  br label %242, !dbg !1563

; <label>:242:                                    ; preds = %241, %232
  %243 = phi i8 [ 1, %232 ], [ %318, %241 ]
  %244 = load i32, i32* %5, align 4, !dbg !1563, !tbaa !1267
  call void @llvm.dbg.value(metadata i32 %244, i64 0, metadata !260, metadata !1138), !dbg !1557
  switch i32 %244, label %251 [
    i32 2, label %324
    i32 4, label %245
    i32 3, label %250
  ], !dbg !1565

; <label>:245:                                    ; preds = %242
  %246 = tail call i32* @__errno_location() #1, !dbg !1566
  %247 = load i32, i32* %246, align 4, !dbg !1566, !tbaa !1248
  %248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 5) #13, !dbg !1568
  %249 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %17) #13, !dbg !1570
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %247, i8* %248, i8* %249) #13, !dbg !1571
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13, !dbg !1573
  br label %335, !dbg !1574

; <label>:250:                                    ; preds = %242
  call void @xalloc_die() #15, !dbg !1576
  unreachable, !dbg !1576

; <label>:251:                                    ; preds = %242
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 798, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15, !dbg !1577
  unreachable, !dbg !1577

; <label>:252:                                    ; preds = %237, %320
  %253 = phi i64 [ 0, %237 ], [ %321, %320 ]
  %254 = phi i8* [ %235, %237 ], [ %322, %320 ]
  %255 = phi i8 [ 1, %237 ], [ %318, %320 ]
  br i1 %45, label %256, label %272, !dbg !1580

; <label>:256:                                    ; preds = %252
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !265, metadata !1138), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !266, metadata !1138), !dbg !1582
  %257 = load i8, i8* %17, align 1, !dbg !1583, !tbaa !1267
  %258 = icmp eq i8 %257, 45, !dbg !1585
  br i1 %258, label %259, label %272, !dbg !1588

; <label>:259:                                    ; preds = %256
  %260 = load i8, i8* %238, align 1, !dbg !1590, !tbaa !1267
  %261 = icmp eq i8 %260, 0, !dbg !1593
  br i1 %261, label %262, label %272, !dbg !1595

; <label>:262:                                    ; preds = %259
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !271, metadata !1138), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !272, metadata !1138), !dbg !1597
  %263 = load i8, i8* %254, align 1, !dbg !1598, !tbaa !1267
  %264 = icmp eq i8 %263, 45, !dbg !1600
  br i1 %264, label %265, label %275, !dbg !1603

; <label>:265:                                    ; preds = %262
  %266 = getelementptr inbounds i8, i8* %254, i64 1, !dbg !1605
  %267 = load i8, i8* %266, align 1, !dbg !1605, !tbaa !1267
  %268 = icmp eq i8 %267, 0, !dbg !1608
  br i1 %268, label %269, label %272, !dbg !1610

; <label>:269:                                    ; preds = %265
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i32 5) #13, !dbg !1612
  %271 = call i8* @quotearg_style(i32 4, i8* nonnull %254) #13, !dbg !1614
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %270, i8* %271) #13, !dbg !1615
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !256, metadata !1138), !dbg !1555
  br label %272, !dbg !1617

; <label>:272:                                    ; preds = %252, %259, %265, %269, %256
  %273 = phi i8 [ 0, %256 ], [ 0, %252 ], [ 0, %259 ], [ 0, %265 ], [ 1, %269 ]
  %274 = load i8, i8* %254, align 1, !dbg !1618, !tbaa !1267
  br label %275, !dbg !1555

; <label>:275:                                    ; preds = %272, %262
  %276 = phi i8 [ %274, %272 ], [ %263, %262 ], !dbg !1618
  %277 = phi i8 [ %273, %272 ], [ 0, %262 ]
  call void @llvm.dbg.value(metadata i8 %277, i64 0, metadata !256, metadata !1138), !dbg !1555
  %278 = icmp eq i8 %276, 0, !dbg !1618
  br i1 %278, label %279, label %286, !dbg !1619

; <label>:279:                                    ; preds = %275
  br i1 %239, label %280, label %282, !dbg !1620

; <label>:280:                                    ; preds = %279
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1621
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %281) #13, !dbg !1622
  br label %317, !dbg !1624

; <label>:282:                                    ; preds = %279
  %283 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !275, metadata !1138), !dbg !1626
  %284 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %17) #13, !dbg !1627
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1628
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %284, i64 %283, i8* %285) #13, !dbg !1629
  br label %317

; <label>:286:                                    ; preds = %275
  call void @llvm.dbg.value(metadata i8 %277, i64 0, metadata !256, metadata !1138), !dbg !1555
  %287 = icmp eq i8 %277, 0, !dbg !1631
  br i1 %287, label %288, label %317, !dbg !1633

; <label>:288:                                    ; preds = %286
  %289 = select i1 %137, i64 %253, i64 0, !dbg !1634
  %290 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %289, !dbg !1634
  call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !1636, metadata !1138) #13, !dbg !1654
  call void @llvm.dbg.value(metadata %struct.fstatus* %290, i64 0, metadata !1641, metadata !1138) #13, !dbg !1656
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1645, metadata !1138) #13, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !1646, metadata !1138) #13, !dbg !1658
  %291 = icmp eq i8 %276, 45, !dbg !1659
  br i1 %291, label %292, label %298, !dbg !1662

; <label>:292:                                    ; preds = %288
  %293 = getelementptr inbounds i8, i8* %254, i64 1, !dbg !1664
  %294 = load i8, i8* %293, align 1, !dbg !1664, !tbaa !1267
  %295 = icmp eq i8 %294, 0, !dbg !1667
  br i1 %295, label %296, label %298, !dbg !1669

; <label>:296:                                    ; preds = %292
  store i1 true, i1* @have_read_stdin, align 1
  %297 = call fastcc zeroext i1 @wc(i32 0, i8* nonnull %254, %struct.fstatus* %290, i64 -1) #13, !dbg !1671
  br label %313, !dbg !1673

; <label>:298:                                    ; preds = %292, %288
  %299 = call i32 (i8*, i32, ...) @open(i8* nonnull %254, i32 0) #13, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %299, i64 0, metadata !1649, metadata !1138) #13, !dbg !1675
  %300 = icmp eq i32 %299, -1, !dbg !1676
  br i1 %300, label %301, label %305, !dbg !1677

; <label>:301:                                    ; preds = %298
  %302 = tail call i32* @__errno_location() #1, !dbg !1678
  %303 = load i32, i32* %302, align 4, !dbg !1678, !tbaa !1248
  %304 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %254) #13, !dbg !1680
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %304) #13, !dbg !1682
  br label %313, !dbg !1684

; <label>:305:                                    ; preds = %298
  %306 = call fastcc zeroext i1 @wc(i32 %299, i8* nonnull %254, %struct.fstatus* %290, i64 0) #13, !dbg !1685
  %307 = call i32 @close(i32 %299) #13, !dbg !1686
  %308 = icmp eq i32 %307, 0, !dbg !1688
  br i1 %308, label %313, label %309, !dbg !1689

; <label>:309:                                    ; preds = %305
  %310 = tail call i32* @__errno_location() #1, !dbg !1690
  %311 = load i32, i32* %310, align 4, !dbg !1690, !tbaa !1248
  %312 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %254) #13, !dbg !1692
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %312) #13, !dbg !1694
  br label %313, !dbg !1696

; <label>:313:                                    ; preds = %296, %301, %305, %309
  %314 = phi i1 [ %297, %296 ], [ false, %301 ], [ false, %309 ], [ %306, %305 ]
  %315 = zext i1 %314 to i8, !dbg !1697
  %316 = and i8 %315, %255, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !76, metadata !1138), !dbg !1553
  br label %317

; <label>:317:                                    ; preds = %280, %282, %286, %313
  %318 = phi i8 [ %316, %313 ], [ 0, %286 ], [ 0, %282 ], [ 0, %280 ]
  call void @llvm.dbg.value(metadata i8 %318, i64 0, metadata !76, metadata !1138), !dbg !1553
  br i1 %189, label %319, label %320, !dbg !1699

; <label>:319:                                    ; preds = %317
  store i32 1, i32* %240, align 8, !dbg !1700, !tbaa !1432
  br label %320, !dbg !1702

; <label>:320:                                    ; preds = %317, %319
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13, !dbg !1573
  %321 = add nuw i64 %253, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i8 %318, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !256, metadata !1138), !dbg !1555
  call void @llvm.lifetime.start(i64 4, i8* nonnull %234) #13, !dbg !1556
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !260, metadata !1298), !dbg !1557
  %322 = call i8* @argv_iter(%struct.argv_iterator* nonnull %130, i32* nonnull %5) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %322, i64 0, metadata !261, metadata !1138), !dbg !1559
  %323 = icmp eq i8* %322, null, !dbg !1560
  br i1 %323, label %241, label %252, !dbg !1562, !llvm.loop !1705

; <label>:324:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !76, metadata !1138), !dbg !1553
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13, !dbg !1573
  %325 = and i8 %243, 1, !dbg !1708
  %326 = icmp eq i8 %325, 0, !dbg !1574
  %327 = or i1 %45, %326, !dbg !1574
  br i1 %327, label %335, label %328, !dbg !1574

; <label>:328:                                    ; preds = %324
  %329 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14, !dbg !1709
  %330 = icmp eq i64 %329, 0, !dbg !1711
  br i1 %330, label %331, label %335, !dbg !1712

; <label>:331:                                    ; preds = %328
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1636, metadata !1138) #13, !dbg !1714
  call void @llvm.dbg.value(metadata %struct.fstatus* %144, i64 0, metadata !1641, metadata !1138) #13, !dbg !1716
  store i1 true, i1* @have_read_stdin, align 1
  %332 = call fastcc zeroext i1 @wc(i32 0, i8* null, %struct.fstatus* %144, i64 -1) #13, !dbg !1717
  %333 = zext i1 %332 to i8, !dbg !1718
  %334 = and i8 %333, %243, !dbg !1719
  call void @llvm.dbg.value(metadata i8 %334, i64 0, metadata !76, metadata !1138), !dbg !1553
  br label %335, !dbg !1720

; <label>:335:                                    ; preds = %245, %324, %331, %328
  %336 = phi i8 [ %243, %324 ], [ %334, %331 ], [ %243, %328 ], [ 0, %245 ]
  call void @llvm.dbg.value(metadata i8 %336, i64 0, metadata !76, metadata !1138), !dbg !1553
  %337 = and i8 %131, 1, !dbg !1721
  %338 = icmp eq i8 %337, 0, !dbg !1721
  br i1 %338, label %340, label %339, !dbg !1723

; <label>:339:                                    ; preds = %335
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, i64 0, metadata !128, metadata !1298), !dbg !1331
  call void @readtokens0_free(%struct.Tokens* nonnull %3) #13, !dbg !1724
  br label %340, !dbg !1724

; <label>:340:                                    ; preds = %335, %339
  %341 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14, !dbg !1725
  %342 = icmp ugt i64 %341, 1, !dbg !1727
  br i1 %342, label %343, label %350, !dbg !1728

; <label>:343:                                    ; preds = %340
  %344 = load i64, i64* @total_lines, align 8, !dbg !1729, !tbaa !1208
  %345 = load i64, i64* @total_words, align 8, !dbg !1730, !tbaa !1208
  %346 = load i64, i64* @total_chars, align 8, !dbg !1731, !tbaa !1208
  %347 = load i64, i64* @total_bytes, align 8, !dbg !1732, !tbaa !1208
  %348 = load i64, i64* @max_line_length, align 8, !dbg !1733, !tbaa !1208
  %349 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !1734
  call fastcc void @write_counts(i64 %344, i64 %345, i64 %346, i64 %347, i64 %348, i8* %349), !dbg !1735
  br label %350, !dbg !1735

; <label>:350:                                    ; preds = %343, %340
  call void @argv_iter_free(%struct.argv_iterator* nonnull %130) #13, !dbg !1736
  call void @free(i8* %143) #13, !dbg !1737
  %351 = load i1, i1* @have_read_stdin, align 1
  br i1 %351, label %352, label %358, !dbg !1738

; <label>:352:                                    ; preds = %350
  %353 = call i32 @close(i32 0) #13, !dbg !1740
  %354 = icmp eq i32 %353, 0, !dbg !1742
  br i1 %354, label %358, label %355, !dbg !1743

; <label>:355:                                    ; preds = %352
  %356 = tail call i32* @__errno_location() #1, !dbg !1744
  %357 = load i32, i32* %356, align 4, !dbg !1744, !tbaa !1248
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #13, !dbg !1745
  unreachable, !dbg !1744

; <label>:358:                                    ; preds = %350, %352
  %359 = and i8 %336, 1, !dbg !1746
  %360 = xor i8 %359, 1, !dbg !1746
  %361 = zext i8 %360 to i32, !dbg !1746
  call void @llvm.lifetime.end(i64 288, i8* nonnull %6) #13, !dbg !1747
  ret i32 %361, !dbg !1747
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @wc(i32, i8*, %struct.fstatus*, i64) unnamed_addr #6 !dbg !1748 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to %struct.__mbstate_t*
  %8 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1753, metadata !1138), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1754, metadata !1138), !dbg !1826
  tail call void @llvm.dbg.value(metadata %struct.fstatus* %2, i64 0, metadata !1755, metadata !1138), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1756, metadata !1138), !dbg !1828
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1757, metadata !1138), !dbg !1829
  %9 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 0, !dbg !1830
  call void @llvm.lifetime.start(i64 16385, i8* nonnull %9) #13, !dbg !1830
  tail call void @llvm.dbg.declare(metadata [16385 x i8]* %5, metadata !1758, metadata !1138), !dbg !1831
  %10 = icmp eq i8* %1, null, !dbg !1832
  br i1 %10, label %11, label %13, !dbg !1832

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 5) #13, !dbg !1833
  br label %13, !dbg !1835

; <label>:13:                                     ; preds = %4, %11
  %14 = phi i8* [ %12, %11 ], [ %1, %4 ], !dbg !1836
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1771, metadata !1138), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1767, metadata !1138), !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1766, metadata !1138), !dbg !1840
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1765, metadata !1138), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1764, metadata !1138), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %15 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1844
  %16 = icmp ugt i64 %15, 1, !dbg !1846
  %17 = load i1, i1* @print_bytes, align 1
  br i1 %16, label %18, label %22, !dbg !1847

; <label>:18:                                     ; preds = %13
  %19 = zext i1 %17 to i8, !dbg !1848
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !1768, metadata !1138), !dbg !1850
  %20 = load i1, i1* @print_chars, align 1
  %21 = zext i1 %20 to i8, !dbg !1851
  tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !1769, metadata !1138), !dbg !1852
  br label %26, !dbg !1853

; <label>:22:                                     ; preds = %13
  %23 = load i1, i1* @print_chars, align 1
  %24 = or i1 %17, %23, !dbg !1854
  %25 = zext i1 %24 to i8, !dbg !1856
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !1768, metadata !1138), !dbg !1850
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1769, metadata !1138), !dbg !1852
  br label %26

; <label>:26:                                     ; preds = %22, %18
  %27 = phi i8 [ %19, %18 ], [ %25, %22 ]
  %28 = phi i8 [ %21, %18 ], [ 0, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %28, i64 0, metadata !1769, metadata !1138), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !1768, metadata !1138), !dbg !1850
  %29 = load i1, i1* @print_words, align 1
  %30 = load i1, i1* @print_linelength, align 1
  %31 = or i1 %29, %30, !dbg !1858
  %32 = icmp ne i8 %27, 0, !dbg !1859
  %33 = icmp eq i8 %28, 0, !dbg !1861
  %34 = and i1 %32, %33, !dbg !1863
  %35 = xor i1 %34, true, !dbg !1863
  %36 = load i1, i1* @print_lines, align 1
  %37 = or i1 %36, %31, !dbg !1864
  %38 = or i1 %37, %35, !dbg !1863
  br i1 %38, label %39, label %41, !dbg !1863

; <label>:39:                                     ; preds = %26
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1866
  %40 = load i1, i1* @print_lines, align 1
  br label %41, !dbg !1866

; <label>:41:                                     ; preds = %26, %39
  %42 = phi i1 [ false, %26 ], [ %40, %39 ]
  %43 = or i1 %31, %42, !dbg !1867
  %44 = or i1 %43, %35, !dbg !1869
  br i1 %44, label %106, label %45, !dbg !1869

; <label>:45:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1772, metadata !1138), !dbg !1870
  %46 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 0, !dbg !1871
  %47 = load i32, i32* %46, align 8, !dbg !1871, !tbaa !1432
  %48 = icmp sgt i32 %47, 0, !dbg !1873
  br i1 %48, label %49, label %52, !dbg !1874

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1300, metadata !1138) #13, !dbg !1876
  tail call void @llvm.dbg.value(metadata %struct.stat* %50, i64 0, metadata !1307, metadata !1138) #13, !dbg !1876
  %51 = tail call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %50) #13, !dbg !1878
  store i32 %51, i32* %46, align 8, !dbg !1879, !tbaa !1432
  br label %52, !dbg !1880

; <label>:52:                                     ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %47, %45 ], !dbg !1881
  %54 = icmp eq i32 %53, 0, !dbg !1882
  br i1 %54, label %55, label %95, !dbg !1883

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 3, !dbg !1884
  %57 = load i32, i32* %56, align 8, !dbg !1884, !tbaa !1316
  %58 = trunc i32 %57 to i16, !dbg !1894
  %59 = and i16 %58, -4096, !dbg !1894
  switch i16 %59, label %95 [
    i16 -32768, label %60
    i16 -24576, label %60
  ], !dbg !1894

; <label>:60:                                     ; preds = %55, %55
  %61 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 8, !dbg !1895
  %62 = load i64, i64* %61, align 8, !dbg !1895, !tbaa !1529
  %63 = icmp sgt i64 %62, -1, !dbg !1896
  br i1 %63, label %64, label %95, !dbg !1897

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1775, metadata !1138), !dbg !1899
  %65 = icmp slt i64 %3, 0, !dbg !1900
  br i1 %65, label %66, label %68, !dbg !1902

; <label>:66:                                     ; preds = %64
  %67 = tail call i64 @lseek(i32 %0, i64 0, i32 1) #13, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !1756, metadata !1138), !dbg !1828
  br label %68, !dbg !1904

; <label>:68:                                     ; preds = %66, %64
  %69 = phi i64 [ %67, %66 ], [ %3, %64 ]
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !1756, metadata !1138), !dbg !1828
  %70 = load i64, i64* @page_size, align 8, !dbg !1905, !tbaa !1208
  %71 = urem i64 %62, %70, !dbg !1906
  %72 = icmp eq i64 %71, 0, !dbg !1906
  br i1 %72, label %77, label %73, !dbg !1907

; <label>:73:                                     ; preds = %68
  %74 = icmp ult i64 %62, %69, !dbg !1908
  %75 = sub i64 %62, %69, !dbg !1910
  %76 = select i1 %74, i64 0, i64 %75, !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !1138), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !1138), !dbg !1870
  br label %443, !dbg !1913

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 9, !dbg !1914
  %79 = load i64, i64* %78, align 8, !dbg !1914, !tbaa !1915
  %80 = icmp sgt i64 %79, 0, !dbg !1914
  %81 = icmp ult i64 %79, 2305843009213693953, !dbg !1916
  %82 = and i1 %80, %81, !dbg !1914
  %83 = add i64 %79, 1, !dbg !1918
  %84 = select i1 %82, i64 %83, i64 513, !dbg !1914
  %85 = urem i64 %62, %84, !dbg !1920
  %86 = sub i64 %62, %85, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !1778, metadata !1138), !dbg !1923
  %87 = icmp sgt i64 %69, -1, !dbg !1924
  %88 = icmp sgt i64 %86, %69, !dbg !1926
  %89 = and i1 %87, %88, !dbg !1928
  br i1 %89, label %90, label %95, !dbg !1928

; <label>:90:                                     ; preds = %77
  %91 = tail call i64 @lseek(i32 %0, i64 %86, i32 1) #13, !dbg !1929
  %92 = icmp sgt i64 %91, -1, !dbg !1930
  %93 = sub nsw i64 %86, %69, !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1766, metadata !1138), !dbg !1840
  %94 = select i1 %92, i64 %93, i64 0, !dbg !1932
  br label %95, !dbg !1932

; <label>:95:                                     ; preds = %52, %60, %90, %77, %55
  %96 = phi i64 [ 0, %55 ], [ %94, %90 ], [ 0, %77 ], [ 0, %60 ], [ 0, %52 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !1138), !dbg !1870
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1933
  br label %97, !dbg !1936

; <label>:97:                                     ; preds = %104, %95
  %98 = phi i64 [ %96, %95 ], [ %105, %104 ]
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1766, metadata !1138), !dbg !1840
  %99 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1762, metadata !1138), !dbg !1939
  switch i64 %99, label %104 [
    i64 0, label %442
    i64 -1, label %100
  ], !dbg !1940

; <label>:100:                                    ; preds = %97
  %101 = tail call i32* @__errno_location() #1, !dbg !1941
  %102 = load i32, i32* %101, align 4, !dbg !1941, !tbaa !1248
  %103 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1945
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %103) #13, !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  br label %443, !dbg !1949

; <label>:104:                                    ; preds = %97
  %105 = add i64 %99, %98, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !1766, metadata !1138), !dbg !1840
  br label %97, !dbg !1951, !llvm.loop !1953

; <label>:106:                                    ; preds = %41
  %107 = xor i1 %33, true, !dbg !1955
  %108 = or i1 %31, %107, !dbg !1955
  br i1 %108, label %214, label %109, !dbg !1955

; <label>:109:                                    ; preds = %106
  br label %110, !dbg !1956

; <label>:110:                                    ; preds = %109, %208
  %111 = phi i64 [ %120, %208 ], [ 0, %109 ]
  %112 = phi i64 [ %209, %208 ], [ 0, %109 ]
  %113 = phi i8 [ %213, %208 ], [ 0, %109 ]
  call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !1781, metadata !1138), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !1766, metadata !1138), !dbg !1840
  %114 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !1762, metadata !1138), !dbg !1939
  switch i64 %114, label %119 [
    i64 0, label %441
    i64 -1, label %115
  ], !dbg !1959

; <label>:115:                                    ; preds = %110
  %116 = tail call i32* @__errno_location() #1, !dbg !1960
  %117 = load i32, i32* %116, align 4, !dbg !1960, !tbaa !1248
  %118 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1963
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %118) #13, !dbg !1965
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  br label %443, !dbg !1967

; <label>:119:                                    ; preds = %110
  %120 = add i64 %114, %111, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %121 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %114, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !1786, metadata !1138), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1787, metadata !1138), !dbg !1972
  %122 = icmp eq i8 %113, 0, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1763, metadata !1138), !dbg !1843
  br i1 %122, label %123, label %146, !dbg !1975

; <label>:123:                                    ; preds = %119
  %124 = add i64 %114, -1, !dbg !1976
  %125 = and i64 %114, 7, !dbg !1976
  %126 = icmp eq i64 %125, 0, !dbg !1976
  br i1 %126, label %140, label %127, !dbg !1976

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !1976

; <label>:128:                                    ; preds = %128, %127
  %129 = phi i8* [ %132, %128 ], [ %9, %127 ]
  %130 = phi i64 [ %136, %128 ], [ %112, %127 ]
  %131 = phi i64 [ %137, %128 ], [ %125, %127 ]
  %132 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %133 = load i8, i8* %129, align 1, !dbg !1978, !tbaa !1267
  %134 = icmp eq i8 %133, 10, !dbg !1979
  %135 = zext i1 %134 to i64, !dbg !1978
  %136 = add i64 %135, %130, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %137 = add i64 %131, -1, !dbg !1981
  %138 = icmp eq i64 %137, 0, !dbg !1981
  br i1 %138, label %139, label %128, !dbg !1981, !llvm.loop !1983

; <label>:139:                                    ; preds = %128
  br label %140, !dbg !1976

; <label>:140:                                    ; preds = %123, %139
  %141 = phi i64 [ undef, %123 ], [ %136, %139 ]
  %142 = phi i8* [ %9, %123 ], [ %132, %139 ]
  %143 = phi i64 [ %112, %123 ], [ %136, %139 ]
  %144 = icmp ult i64 %124, 7, !dbg !1976
  br i1 %144, label %205, label %145, !dbg !1976

; <label>:145:                                    ; preds = %140
  br label %151, !dbg !1976

; <label>:146:                                    ; preds = %119
  %147 = ptrtoint i8* %121 to i64, !dbg !1985
  %148 = call i8* @memchr(i8* nonnull %9, i32 10, i64 %114) #14, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %149 = icmp eq i8* %148, null, !dbg !1989
  br i1 %149, label %208, label %150, !dbg !1989

; <label>:150:                                    ; preds = %146
  br label %195, !dbg !1990

; <label>:151:                                    ; preds = %151, %145
  %152 = phi i8* [ %142, %145 ], [ %189, %151 ]
  %153 = phi i64 [ %143, %145 ], [ %193, %151 ]
  %154 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %155 = load i8, i8* %152, align 1, !dbg !1978, !tbaa !1267
  %156 = icmp eq i8 %155, 10, !dbg !1979
  %157 = zext i1 %156 to i64, !dbg !1978
  %158 = add i64 %157, %153, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %159 = getelementptr inbounds i8, i8* %152, i64 2, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %160 = load i8, i8* %154, align 1, !dbg !1978, !tbaa !1267
  %161 = icmp eq i8 %160, 10, !dbg !1979
  %162 = zext i1 %161 to i64, !dbg !1978
  %163 = add i64 %162, %158, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %164 = getelementptr inbounds i8, i8* %152, i64 3, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %165 = load i8, i8* %159, align 1, !dbg !1978, !tbaa !1267
  %166 = icmp eq i8 %165, 10, !dbg !1979
  %167 = zext i1 %166 to i64, !dbg !1978
  %168 = add i64 %167, %163, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %169 = getelementptr inbounds i8, i8* %152, i64 4, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %170 = load i8, i8* %164, align 1, !dbg !1978, !tbaa !1267
  %171 = icmp eq i8 %170, 10, !dbg !1979
  %172 = zext i1 %171 to i64, !dbg !1978
  %173 = add i64 %172, %168, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %174 = getelementptr inbounds i8, i8* %152, i64 5, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %175 = load i8, i8* %169, align 1, !dbg !1978, !tbaa !1267
  %176 = icmp eq i8 %175, 10, !dbg !1979
  %177 = zext i1 %176 to i64, !dbg !1978
  %178 = add i64 %177, %173, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %179 = getelementptr inbounds i8, i8* %152, i64 6, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %180 = load i8, i8* %174, align 1, !dbg !1978, !tbaa !1267
  %181 = icmp eq i8 %180, 10, !dbg !1979
  %182 = zext i1 %181 to i64, !dbg !1978
  %183 = add i64 %182, %178, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %184 = getelementptr inbounds i8, i8* %152, i64 7, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %185 = load i8, i8* %179, align 1, !dbg !1978, !tbaa !1267
  %186 = icmp eq i8 %185, 10, !dbg !1979
  %187 = zext i1 %186 to i64, !dbg !1978
  %188 = add i64 %187, %183, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %189 = getelementptr inbounds i8, i8* %152, i64 8, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %190 = load i8, i8* %184, align 1, !dbg !1978, !tbaa !1267
  %191 = icmp eq i8 %190, 10, !dbg !1979
  %192 = zext i1 %191 to i64, !dbg !1978
  %193 = add i64 %192, %188, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %194 = icmp eq i8* %189, %121, !dbg !1992
  br i1 %194, label %204, label %151, !dbg !1981, !llvm.loop !1993

; <label>:195:                                    ; preds = %150, %195
  %196 = phi i8* [ %202, %195 ], [ %148, %150 ]
  %197 = phi i64 [ %199, %195 ], [ %112, %150 ]
  %198 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %199 = add i64 %197, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %199, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1784, metadata !1138), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %199, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %200 = ptrtoint i8* %198 to i64, !dbg !1985
  %201 = sub i64 %147, %200, !dbg !1985
  %202 = call i8* @memchr(i8* %198, i32 10, i64 %201) #14, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !1784, metadata !1138), !dbg !1969
  %203 = icmp eq i8* %202, null, !dbg !1989
  br i1 %203, label %207, label %195, !dbg !1989, !llvm.loop !1997

; <label>:204:                                    ; preds = %151
  br label %205, !dbg !1843

; <label>:205:                                    ; preds = %140, %204
  %206 = phi i64 [ %141, %140 ], [ %193, %204 ]
  br label %208, !dbg !1843

; <label>:207:                                    ; preds = %195
  br label %208, !dbg !1843

; <label>:208:                                    ; preds = %207, %205, %146
  %209 = phi i64 [ %112, %146 ], [ %206, %205 ], [ %199, %207 ]
  call void @llvm.dbg.value(metadata i64 %209, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %210 = sub i64 %209, %112, !dbg !2000
  %211 = udiv i64 %114, 15, !dbg !2002
  %212 = icmp ule i64 %210, %211
  %213 = zext i1 %212 to i8
  call void @llvm.dbg.value(metadata i8 %213, i64 0, metadata !1781, metadata !1138), !dbg !1956
  br label %110, !dbg !2003, !llvm.loop !2005

; <label>:214:                                    ; preds = %106
  %215 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !2008
  %216 = icmp ugt i64 %215, 1, !dbg !2009
  br i1 %216, label %218, label %217, !dbg !2010

; <label>:217:                                    ; preds = %214
  br label %370, !dbg !2011

; <label>:218:                                    ; preds = %214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !1138), !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1791, metadata !1138), !dbg !2013
  %219 = bitcast i64* %6 to i8*, !dbg !2014
  call void @llvm.lifetime.start(i64 8, i8* nonnull %219) #13, !dbg !2014
  store i64 0, i64* %6, align 8, !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !1138), !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1808, metadata !1138), !dbg !2017
  %220 = bitcast i32* %8 to i8*
  br label %222, !dbg !2018

; <label>:221:                                    ; preds = %330
  br label %347, !dbg !2017

; <label>:222:                                    ; preds = %347, %218
  %223 = phi i64 [ 0, %218 ], [ %348, %347 ]
  %224 = phi i64 [ 0, %218 ], [ %236, %347 ]
  %225 = phi i64 [ 0, %218 ], [ %349, %347 ]
  %226 = phi i64 [ 0, %218 ], [ %350, %347 ]
  %227 = phi i64 [ 0, %218 ], [ %351, %347 ]
  %228 = phi i8 [ 0, %218 ], [ %352, %347 ]
  %229 = phi i64 [ 0, %218 ], [ %353, %347 ]
  %230 = phi i8 [ 0, %218 ], [ %354, %347 ]
  %231 = phi i64 [ 0, %218 ], [ %355, %347 ]
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1808, metadata !1138), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %230, i64 0, metadata !1807, metadata !1138), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %228, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %224, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %232 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %231, !dbg !2019
  %233 = sub i64 16384, %231, !dbg !2021
  %234 = call i64 @safe_read(i32 %0, i8* %232, i64 %233) #13, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !1762, metadata !1138), !dbg !1939
  switch i64 %234, label %235 [
    i64 0, label %360
    i64 -1, label %356
  ], !dbg !2023

; <label>:235:                                    ; preds = %222
  %236 = add i64 %234, %224, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1809, metadata !1138), !dbg !2025
  %237 = add i64 %234, %231, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1762, metadata !1138), !dbg !1939
  br label %238, !dbg !2027, !llvm.loop !2028

; <label>:238:                                    ; preds = %330, %235
  %239 = phi i64 [ %223, %235 ], [ %331, %330 ]
  %240 = phi i64 [ %225, %235 ], [ %332, %330 ]
  %241 = phi i64 [ %226, %235 ], [ %333, %330 ]
  %242 = phi i64 [ %227, %235 ], [ %334, %330 ]
  %243 = phi i64 [ %237, %235 ], [ %335, %330 ]
  %244 = phi i8 [ %228, %235 ], [ %336, %330 ]
  %245 = phi i64 [ %229, %235 ], [ %337, %330 ]
  %246 = phi i8 [ %230, %235 ], [ %338, %330 ]
  %247 = phi i8* [ %9, %235 ], [ %339, %330 ]
  call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !1809, metadata !1138), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %246, i64 0, metadata !1807, metadata !1138), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %243, i64 0, metadata !1762, metadata !1138), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %242, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %239, i64 0, metadata !1767, metadata !1138), !dbg !1839
  call void @llvm.lifetime.start(i64 4, i8* nonnull %220) #13, !dbg !2030
  %248 = and i8 %246, 1, !dbg !2031
  %249 = icmp eq i8 %248, 0, !dbg !2031
  br i1 %249, label %250, label %263, !dbg !2033

; <label>:250:                                    ; preds = %238
  %251 = load i8, i8* %247, align 1, !dbg !2034, !tbaa !1267
  tail call void @llvm.dbg.value(metadata i8 %251, i64 0, metadata !2036, metadata !1138), !dbg !2042
  %252 = zext i8 %251 to i32, !dbg !2044
  %253 = lshr i32 %252, 5, !dbg !2045
  %254 = zext i32 %253 to i64, !dbg !2046
  %255 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %254, !dbg !2046
  %256 = load i32, i32* %255, align 4, !dbg !2046, !tbaa !1248
  %257 = and i32 %252, 31, !dbg !2047
  %258 = shl i32 1, %257, !dbg !2048
  %259 = and i32 %258, %256, !dbg !2048
  %260 = icmp eq i32 %259, 0, !dbg !2048
  br i1 %260, label %263, label %261, !dbg !2049

; <label>:261:                                    ; preds = %250
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1815, metadata !1138), !dbg !2051
  %262 = sext i8 %251 to i32, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %262, i64 0, metadata !1812, metadata !1138), !dbg !2054
  store i32 %262, i32* %8, align 4, !dbg !2055, !tbaa !1248
  br label %282, !dbg !2056

; <label>:263:                                    ; preds = %250, %238
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1807, metadata !1138), !dbg !2016
  %264 = load i64, i64* %6, align 8, !dbg !2057
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, i64 0, metadata !1792, metadata !1298), !dbg !2015
  call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1812, metadata !1298), !dbg !2054
  %265 = call i64 @rpl_mbrtowc(i32* nonnull %8, i8* %247, i64 %243, %struct.__mbstate_t* nonnull %7) #13, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %265, i64 0, metadata !1815, metadata !1138), !dbg !2051
  switch i64 %265, label %271 [
    i64 -2, label %266
    i64 -1, label %268
  ], !dbg !2060

; <label>:266:                                    ; preds = %263
  store i64 %264, i64* %6, align 8, !dbg !2061
  call void @llvm.dbg.value(metadata i8* %339, i64 0, metadata !1809, metadata !1138), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %338, i64 0, metadata !1807, metadata !1138), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %337, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %336, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %335, i64 0, metadata !1762, metadata !1138), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %333, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1767, metadata !1138), !dbg !1839
  call void @llvm.lifetime.end(i64 4, i8* nonnull %220) #13, !dbg !2064
  %267 = icmp eq i64 %243, 0, !dbg !2065
  br i1 %267, label %347, label %341, !dbg !2066

; <label>:268:                                    ; preds = %263
  %269 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %269, i64 0, metadata !1809, metadata !1138), !dbg !2025
  %270 = add i64 %243, -1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !1762, metadata !1138), !dbg !1939
  br label %330, !dbg !2071

; <label>:271:                                    ; preds = %263
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, i64 0, metadata !1792, metadata !1298), !dbg !2015
  %272 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %7) #14, !dbg !2072
  %273 = icmp eq i32 %272, 0, !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !1138), !dbg !2016
  %274 = zext i1 %273 to i8, !dbg !2074
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1807, metadata !1138), !dbg !2016
  %275 = icmp eq i64 %265, 0, !dbg !2075
  br i1 %275, label %276, label %280, !dbg !2077

; <label>:276:                                    ; preds = %271
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1812, metadata !1138), !dbg !2054
  store i32 0, i32* %8, align 4, !dbg !2078, !tbaa !1248
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1815, metadata !1138), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1815, metadata !1138), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %284, i64 0, metadata !1807, metadata !1138), !dbg !2016
  %277 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %286, i64 0, metadata !1809, metadata !1138), !dbg !2025
  %278 = add i64 %243, -1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1762, metadata !1138), !dbg !1939
  %279 = add i64 %240, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %288, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %283, i64 0, metadata !1812, metadata !1138), !dbg !2054
  br label %312, !dbg !2083

; <label>:280:                                    ; preds = %271
  %281 = load i32, i32* %8, align 4, !dbg !2084, !tbaa !1248
  br label %282, !dbg !2051

; <label>:282:                                    ; preds = %280, %261
  %283 = phi i32 [ %281, %280 ], [ %262, %261 ], !dbg !2084
  %284 = phi i8 [ %274, %280 ], [ %246, %261 ]
  %285 = phi i64 [ %265, %280 ], [ 1, %261 ]
  call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1815, metadata !1138), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %284, i64 0, metadata !1807, metadata !1138), !dbg !2016
  %286 = getelementptr inbounds i8, i8* %247, i64 %285, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %286, i64 0, metadata !1809, metadata !1138), !dbg !2025
  %287 = sub i64 %243, %285, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1762, metadata !1138), !dbg !1939
  %288 = add i64 %240, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %288, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %283, i64 0, metadata !1812, metadata !1138), !dbg !2054
  switch i32 %283, label %312 [
    i32 10, label %289
    i32 13, label %291
    i32 12, label %291
    i32 9, label %295
    i32 32, label %299
    i32 11, label %301
  ], !dbg !2083

; <label>:289:                                    ; preds = %282
  %290 = add i64 %242, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %290, i64 0, metadata !1763, metadata !1138), !dbg !1843
  br label %291, !dbg !2086

; <label>:291:                                    ; preds = %282, %282, %289
  %292 = phi i64 [ %242, %282 ], [ %242, %282 ], [ %290, %289 ]
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %293 = icmp ugt i64 %245, %239, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %294 = select i1 %293, i64 %245, i64 %239, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %294, i64 0, metadata !1767, metadata !1138), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1791, metadata !1138), !dbg !2013
  br label %301, !dbg !2090

; <label>:295:                                    ; preds = %282
  %296 = and i64 %245, 7, !dbg !2091
  %297 = add i64 %245, 8, !dbg !2092
  %298 = sub i64 %297, %296, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %298, i64 0, metadata !1791, metadata !1138), !dbg !2013
  br label %301, !dbg !2094

; <label>:299:                                    ; preds = %282
  %300 = add i64 %245, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %300, i64 0, metadata !1791, metadata !1138), !dbg !2013
  br label %301, !dbg !2096

; <label>:301:                                    ; preds = %320, %299, %282, %295, %291
  %302 = phi i64 [ %313, %320 ], [ %288, %282 ], [ %288, %299 ], [ %288, %295 ], [ %288, %291 ]
  %303 = phi i64 [ %314, %320 ], [ %287, %282 ], [ %287, %299 ], [ %287, %295 ], [ %287, %291 ]
  %304 = phi i8* [ %315, %320 ], [ %286, %282 ], [ %286, %299 ], [ %286, %295 ], [ %286, %291 ]
  %305 = phi i8 [ %316, %320 ], [ %284, %282 ], [ %284, %299 ], [ %284, %295 ], [ %284, %291 ]
  %306 = phi i64 [ %239, %320 ], [ %239, %282 ], [ %239, %299 ], [ %239, %295 ], [ %294, %291 ]
  %307 = phi i64 [ %242, %320 ], [ %242, %282 ], [ %242, %299 ], [ %242, %295 ], [ %292, %291 ]
  %308 = phi i64 [ %326, %320 ], [ %245, %282 ], [ %300, %299 ], [ %298, %295 ], [ 0, %291 ]
  call void @llvm.dbg.value(metadata i64 %308, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %244, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %307, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %306, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %309 = and i8 %244, 1, !dbg !2097
  %310 = zext i8 %309 to i64, !dbg !2097
  %311 = add i64 %310, %241, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !1138), !dbg !2012
  br label %330, !dbg !2099

; <label>:312:                                    ; preds = %276, %282
  %313 = phi i64 [ %279, %276 ], [ %288, %282 ]
  %314 = phi i64 [ %278, %276 ], [ %287, %282 ]
  %315 = phi i8* [ %277, %276 ], [ %286, %282 ]
  %316 = phi i8 [ %274, %276 ], [ %284, %282 ]
  %317 = phi i32 [ 0, %276 ], [ %283, %282 ]
  %318 = call i32 @iswprint(i32 %317) #13, !dbg !2100
  %319 = icmp eq i32 %318, 0, !dbg !2100
  br i1 %319, label %330, label %320, !dbg !2101

; <label>:320:                                    ; preds = %312
  %321 = load i32, i32* %8, align 4, !dbg !2102, !tbaa !1248
  call void @llvm.dbg.value(metadata i32 %321, i64 0, metadata !1812, metadata !1138), !dbg !2054
  %322 = call i32 @wcwidth(i32 %321) #13, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %322, i64 0, metadata !1816, metadata !1138), !dbg !2104
  %323 = icmp sgt i32 %322, 0, !dbg !2105
  %324 = select i1 %323, i32 %322, i32 0, !dbg !2105
  %325 = zext i32 %324 to i64, !dbg !2105
  %326 = add i64 %325, %245, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %326, i64 0, metadata !1791, metadata !1138), !dbg !2013
  %327 = load i32, i32* %8, align 4, !dbg !2106, !tbaa !1248
  call void @llvm.dbg.value(metadata i32 %327, i64 0, metadata !1812, metadata !1138), !dbg !2054
  %328 = call i32 @iswspace(i32 %327) #13, !dbg !2108
  %329 = icmp eq i32 %328, 0, !dbg !2108
  br i1 %329, label %330, label %301

; <label>:330:                                    ; preds = %301, %320, %312, %268
  %331 = phi i64 [ %239, %268 ], [ %239, %320 ], [ %306, %301 ], [ %239, %312 ]
  %332 = phi i64 [ %240, %268 ], [ %313, %320 ], [ %302, %301 ], [ %313, %312 ]
  %333 = phi i64 [ %241, %268 ], [ %241, %320 ], [ %311, %301 ], [ %241, %312 ]
  %334 = phi i64 [ %242, %268 ], [ %242, %320 ], [ %307, %301 ], [ %242, %312 ]
  %335 = phi i64 [ %270, %268 ], [ %314, %320 ], [ %303, %301 ], [ %314, %312 ]
  %336 = phi i8 [ %244, %268 ], [ 1, %320 ], [ 0, %301 ], [ %244, %312 ]
  %337 = phi i64 [ %245, %268 ], [ %326, %320 ], [ %308, %301 ], [ %245, %312 ]
  %338 = phi i8 [ 1, %268 ], [ %316, %320 ], [ %305, %301 ], [ %316, %312 ]
  %339 = phi i8* [ %269, %268 ], [ %315, %320 ], [ %304, %301 ], [ %315, %312 ]
  call void @llvm.dbg.value(metadata i8* %339, i64 0, metadata !1809, metadata !1138), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %338, i64 0, metadata !1807, metadata !1138), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %337, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %336, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %335, i64 0, metadata !1762, metadata !1138), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %334, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %333, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %332, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1767, metadata !1138), !dbg !1839
  call void @llvm.lifetime.end(i64 4, i8* nonnull %220) #13, !dbg !2064
  %340 = icmp eq i64 %335, 0, !dbg !2065
  br i1 %340, label %221, label %238, !llvm.loop !2028

; <label>:341:                                    ; preds = %266
  %342 = icmp eq i64 %243, 16384, !dbg !2109
  %343 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1809, metadata !1138), !dbg !2025
  %344 = sext i1 %342 to i64, !dbg !2115
  %345 = add i64 %344, %243, !dbg !2115
  %346 = select i1 %342, i8* %343, i8* %247, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %346, i64 0, metadata !1809, metadata !1138), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1762, metadata !1138), !dbg !1939
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %9, i8* %346, i64 %345, i32 1, i1 false), !dbg !2116
  br label %347, !dbg !2117

; <label>:347:                                    ; preds = %341, %266, %221
  %348 = phi i64 [ %239, %266 ], [ %239, %341 ], [ %331, %221 ]
  %349 = phi i64 [ %240, %266 ], [ %240, %341 ], [ %332, %221 ]
  %350 = phi i64 [ %241, %266 ], [ %241, %341 ], [ %333, %221 ]
  %351 = phi i64 [ %242, %266 ], [ %242, %341 ], [ %334, %221 ]
  %352 = phi i8 [ %244, %266 ], [ %244, %341 ], [ %336, %221 ]
  %353 = phi i64 [ %245, %266 ], [ %245, %341 ], [ %337, %221 ]
  %354 = phi i8 [ 1, %266 ], [ 1, %341 ], [ %338, %221 ]
  %355 = phi i64 [ 0, %266 ], [ %345, %341 ], [ 0, %221 ]
  br label %222, !dbg !2017

; <label>:356:                                    ; preds = %222
  %357 = tail call i32* @__errno_location() #1, !dbg !2118
  %358 = load i32, i32* %357, align 4, !dbg !2118, !tbaa !1248
  %359 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !2121
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %358, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %359) #13, !dbg !2123
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1808, metadata !1138), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %230, i64 0, metadata !1807, metadata !1138), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %228, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %224, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !1767, metadata !1138), !dbg !1839
  br label %361

; <label>:360:                                    ; preds = %222
  br label %361, !dbg !2013

; <label>:361:                                    ; preds = %360, %356
  %362 = phi i8 [ 0, %356 ], [ 1, %360 ]
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1791, metadata !1138), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %228, i64 0, metadata !1788, metadata !1138), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %362, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %224, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %363 = icmp ugt i64 %229, %223, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %364 = select i1 %363, i64 %229, i64 %223, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %365 = and i8 %228, 1, !dbg !2128
  %366 = zext i8 %365 to i64, !dbg !2128
  %367 = add i64 %366, %226, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %367, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.lifetime.end(i64 8, i8* nonnull %219) #13, !dbg !2130
  br label %443, !dbg !2131

; <label>:368:                                    ; preds = %421
  %369 = add i64 %377, %372, !dbg !2132
  br label %370, !dbg !2011

; <label>:370:                                    ; preds = %217, %368
  %371 = phi i64 [ %422, %368 ], [ 0, %217 ]
  %372 = phi i64 [ %369, %368 ], [ 0, %217 ]
  %373 = phi i64 [ %423, %368 ], [ 0, %217 ]
  %374 = phi i64 [ %424, %368 ], [ 0, %217 ]
  %375 = phi i8 [ %425, %368 ], [ 0, %217 ]
  %376 = phi i64 [ %426, %368 ], [ 0, %217 ]
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %375, i64 0, metadata !1820, metadata !1138), !dbg !2133
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %373, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %377 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !1762, metadata !1138), !dbg !1939
  switch i64 %377, label %378 [
    i64 0, label %433
    i64 -1, label %429
  ], !dbg !2136, !llvm.loop !2137

; <label>:378:                                    ; preds = %370
  br label %379, !dbg !2140

; <label>:379:                                    ; preds = %378, %421
  %380 = phi i64 [ %422, %421 ], [ %371, %378 ]
  %381 = phi i64 [ %423, %421 ], [ %373, %378 ]
  %382 = phi i64 [ %424, %421 ], [ %374, %378 ]
  %383 = phi i64 [ %427, %421 ], [ %377, %378 ]
  %384 = phi i8 [ %425, %421 ], [ %375, %378 ]
  %385 = phi i64 [ %426, %421 ], [ %376, %378 ]
  %386 = phi i8* [ %387, %421 ], [ %9, %378 ]
  call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !1823, metadata !1138), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %385, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1820, metadata !1138), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %383, i64 0, metadata !1762, metadata !1138), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %382, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %387 = getelementptr inbounds i8, i8* %386, i64 1, !dbg !2141
  call void @llvm.dbg.value(metadata i8* %387, i64 0, metadata !1823, metadata !1138), !dbg !2140
  %388 = load i8, i8* %386, align 1, !dbg !2143, !tbaa !1267
  %389 = sext i8 %388 to i32, !dbg !2143
  switch i32 %389, label %409 [
    i32 10, label %390
    i32 13, label %392
    i32 12, label %392
    i32 9, label %396
    i32 32, label %400
    i32 11, label %402
  ], !dbg !2144

; <label>:390:                                    ; preds = %379
  %391 = add i64 %382, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %391, i64 0, metadata !1763, metadata !1138), !dbg !1843
  br label %392, !dbg !2147

; <label>:392:                                    ; preds = %379, %379, %390
  %393 = phi i64 [ %382, %379 ], [ %382, %379 ], [ %391, %390 ]
  call void @llvm.dbg.value(metadata i64 %393, i64 0, metadata !1763, metadata !1138), !dbg !1843
  %394 = icmp ugt i64 %385, %380, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %385, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %395 = select i1 %394, i64 %385, i64 %380, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1767, metadata !1138), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1822, metadata !1138), !dbg !2011
  br label %402, !dbg !2151

; <label>:396:                                    ; preds = %379
  %397 = and i64 %385, 7, !dbg !2152
  %398 = add i64 %385, 8, !dbg !2153
  %399 = sub i64 %398, %397, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %399, i64 0, metadata !1822, metadata !1138), !dbg !2011
  br label %402, !dbg !2155

; <label>:400:                                    ; preds = %379
  %401 = add i64 %385, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1822, metadata !1138), !dbg !2011
  br label %402, !dbg !2157

; <label>:402:                                    ; preds = %417, %400, %379, %396, %392
  %403 = phi i64 [ %380, %417 ], [ %380, %379 ], [ %380, %400 ], [ %380, %396 ], [ %395, %392 ]
  %404 = phi i64 [ %382, %417 ], [ %382, %379 ], [ %382, %400 ], [ %382, %396 ], [ %393, %392 ]
  %405 = phi i64 [ %418, %417 ], [ %385, %379 ], [ %401, %400 ], [ %399, %396 ], [ 0, %392 ]
  call void @llvm.dbg.value(metadata i64 %405, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %404, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %403, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %406 = and i8 %384, 1, !dbg !2158
  %407 = zext i8 %406 to i64, !dbg !2158
  %408 = add i64 %407, %381, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1820, metadata !1138), !dbg !2133
  br label %421, !dbg !2160

; <label>:409:                                    ; preds = %379
  %410 = tail call i16** @__ctype_b_loc() #1, !dbg !2161
  %411 = load i16*, i16** %410, align 8, !dbg !2161, !tbaa !1146
  %412 = zext i8 %388 to i64, !dbg !2161
  %413 = getelementptr inbounds i16, i16* %411, i64 %412, !dbg !2161
  %414 = load i16, i16* %413, align 2, !dbg !2161, !tbaa !2163
  %415 = and i16 %414, 16384, !dbg !2161
  %416 = icmp eq i16 %415, 0, !dbg !2161
  br i1 %416, label %421, label %417, !dbg !2165

; <label>:417:                                    ; preds = %409
  %418 = add i64 %385, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %418, i64 0, metadata !1822, metadata !1138), !dbg !2011
  %419 = and i16 %414, 8192, !dbg !2168
  %420 = icmp eq i16 %419, 0, !dbg !2168
  br i1 %420, label %421, label %402, !dbg !2170

; <label>:421:                                    ; preds = %417, %409, %402
  %422 = phi i64 [ %403, %402 ], [ %380, %409 ], [ %380, %417 ]
  %423 = phi i64 [ %408, %402 ], [ %381, %409 ], [ %381, %417 ]
  %424 = phi i64 [ %404, %402 ], [ %382, %409 ], [ %382, %417 ]
  %425 = phi i8 [ 0, %402 ], [ %384, %409 ], [ 1, %417 ]
  %426 = phi i64 [ %405, %402 ], [ %385, %409 ], [ %418, %417 ]
  call void @llvm.dbg.value(metadata i64 %426, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1820, metadata !1138), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %424, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %422, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %427 = add i64 %383, -1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %427, i64 0, metadata !1762, metadata !1138), !dbg !1939
  %428 = icmp eq i64 %427, 0, !dbg !2172
  br i1 %428, label %368, label %379, !dbg !2172, !llvm.loop !2137

; <label>:429:                                    ; preds = %370
  %430 = tail call i32* @__errno_location() #1, !dbg !2174
  %431 = load i32, i32* %430, align 4, !dbg !2174, !tbaa !1248
  %432 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !2177
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %431, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %432) #13, !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %375, i64 0, metadata !1820, metadata !1138), !dbg !2133
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %373, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1767, metadata !1138), !dbg !1839
  br label %434

; <label>:433:                                    ; preds = %370
  br label %434, !dbg !2011

; <label>:434:                                    ; preds = %433, %429
  %435 = phi i8 [ 0, %429 ], [ 1, %433 ]
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1822, metadata !1138), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %375, i64 0, metadata !1820, metadata !1138), !dbg !2133
  call void @llvm.dbg.value(metadata i8 %435, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %373, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %436 = icmp ugt i64 %376, %371, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %437 = select i1 %436, i64 %376, i64 %371, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %437, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %438 = and i8 %375, 1, !dbg !2184
  %439 = zext i8 %438 to i64, !dbg !2184
  %440 = add i64 %439, %373, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1764, metadata !1138), !dbg !1842
  br label %443

; <label>:441:                                    ; preds = %110
  br label %443, !dbg !1829

; <label>:442:                                    ; preds = %97
  br label %443, !dbg !1829

; <label>:443:                                    ; preds = %442, %441, %73, %115, %100, %434, %361
  %444 = phi i64 [ %364, %361 ], [ %437, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %445 = phi i64 [ %224, %361 ], [ %372, %434 ], [ %98, %100 ], [ %111, %115 ], [ %76, %73 ], [ %111, %441 ], [ %98, %442 ]
  %446 = phi i64 [ %225, %361 ], [ 0, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %447 = phi i64 [ %367, %361 ], [ %440, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %448 = phi i64 [ %227, %361 ], [ %374, %434 ], [ 0, %100 ], [ %112, %115 ], [ 0, %73 ], [ %112, %441 ], [ 0, %442 ]
  %449 = phi i8 [ %362, %361 ], [ %435, %434 ], [ 0, %100 ], [ 0, %115 ], [ 1, %73 ], [ 1, %441 ], [ 1, %442 ]
  call void @llvm.dbg.value(metadata i8 %449, i64 0, metadata !1757, metadata !1138), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %448, i64 0, metadata !1763, metadata !1138), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1764, metadata !1138), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %446, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call void @llvm.dbg.value(metadata i64 %445, i64 0, metadata !1766, metadata !1138), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %444, i64 0, metadata !1767, metadata !1138), !dbg !1839
  %450 = zext i8 %28 to i32, !dbg !2186
  %451 = load i1, i1* @print_chars, align 1
  %452 = zext i1 %451 to i32, !dbg !2188
  %453 = icmp ult i32 %450, %452, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %445, i64 0, metadata !1765, metadata !1138), !dbg !1841
  %454 = select i1 %453, i64 %445, i64 %446, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1765, metadata !1138), !dbg !1841
  call fastcc void @write_counts(i64 %448, i64 %447, i64 %454, i64 %445, i64 %444, i8* %1), !dbg !2191
  %455 = load i64, i64* @total_lines, align 8, !dbg !2192, !tbaa !1208
  %456 = add i64 %455, %448, !dbg !2192
  store i64 %456, i64* @total_lines, align 8, !dbg !2192, !tbaa !1208
  %457 = load i64, i64* @total_words, align 8, !dbg !2193, !tbaa !1208
  %458 = add i64 %457, %447, !dbg !2193
  store i64 %458, i64* @total_words, align 8, !dbg !2193, !tbaa !1208
  %459 = load i64, i64* @total_chars, align 8, !dbg !2194, !tbaa !1208
  %460 = add i64 %459, %454, !dbg !2194
  store i64 %460, i64* @total_chars, align 8, !dbg !2194, !tbaa !1208
  %461 = load i64, i64* @total_bytes, align 8, !dbg !2195, !tbaa !1208
  %462 = add i64 %461, %445, !dbg !2195
  store i64 %462, i64* @total_bytes, align 8, !dbg !2195, !tbaa !1208
  %463 = load i64, i64* @max_line_length, align 8, !dbg !2196, !tbaa !1208
  %464 = icmp ugt i64 %444, %463, !dbg !2198
  br i1 %464, label %465, label %466, !dbg !2199

; <label>:465:                                    ; preds = %443
  store i64 %444, i64* @max_line_length, align 8, !dbg !2200, !tbaa !1208
  br label %466, !dbg !2201

; <label>:466:                                    ; preds = %465, %443
  %467 = and i8 %449, 1, !dbg !2202
  %468 = icmp ne i8 %467, 0, !dbg !2202
  call void @llvm.lifetime.end(i64 16385, i8* nonnull %9) #13, !dbg !2203
  ret i1 %468, !dbg !2204
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_counts(i64, i64, i64, i64, i64, i8*) unnamed_addr #6 !dbg !354 {
  %7 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !358, metadata !1138), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !359, metadata !1138), !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !360, metadata !1138), !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !361, metadata !1138), !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !362, metadata !1138), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !363, metadata !1138), !dbg !2210
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !2211
  call void @llvm.lifetime.start(i64 21, i8* nonnull %8) #13, !dbg !2211
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !365, metadata !1138), !dbg !2212
  %9 = load i1, i1* @print_lines, align 1
  br i1 %9, label %10, label %14, !dbg !2213

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* @number_width, align 4, !dbg !2214, !tbaa !1248
  %12 = call i8* @umaxtostr(i64 %0, i8* nonnull %8) #13, !dbg !2214
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), i32 %11, i8* %12) #13, !dbg !2217
  br label %14, !dbg !2219

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), %6 ]
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !364, metadata !1138), !dbg !2220
  %16 = load i1, i1* @print_words, align 1
  br i1 %16, label %17, label %21, !dbg !2221

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @number_width, align 4, !dbg !2222, !tbaa !1248
  %19 = call i8* @umaxtostr(i64 %1, i8* nonnull %8) #13, !dbg !2222
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i32 %18, i8* %19) #13, !dbg !2225
  br label %21, !dbg !2227

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %17 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !364, metadata !1138), !dbg !2220
  %23 = load i1, i1* @print_chars, align 1
  br i1 %23, label %24, label %28, !dbg !2228

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @number_width, align 4, !dbg !2229, !tbaa !1248
  %26 = call i8* @umaxtostr(i64 %2, i8* nonnull %8) #13, !dbg !2229
  %27 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i32 %25, i8* %26) #13, !dbg !2232
  br label %28, !dbg !2234

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %24 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !364, metadata !1138), !dbg !2220
  %30 = load i1, i1* @print_bytes, align 1
  br i1 %30, label %31, label %35, !dbg !2235

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* @number_width, align 4, !dbg !2236, !tbaa !1248
  %33 = call i8* @umaxtostr(i64 %3, i8* nonnull %8) #13, !dbg !2236
  %34 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i32 %32, i8* %33) #13, !dbg !2239
  br label %35, !dbg !2241

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %31 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !364, metadata !1138), !dbg !2220
  %37 = load i1, i1* @print_linelength, align 1
  br i1 %37, label %38, label %42, !dbg !2242

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @number_width, align 4, !dbg !2243, !tbaa !1248
  %40 = call i8* @umaxtostr(i64 %4, i8* nonnull %8) #13, !dbg !2243
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i32 %39, i8* %40) #13, !dbg !2246
  br label %42, !dbg !2248

; <label>:42:                                     ; preds = %38, %35
  %43 = icmp eq i8* %5, null, !dbg !2249
  br i1 %43, label %52, label %44, !dbg !2251

; <label>:44:                                     ; preds = %42
  %45 = call i8* @strchr(i8* nonnull %5, i32 10) #13, !dbg !2252
  %46 = icmp eq i8* %45, null, !dbg !2252
  br i1 %46, label %49, label %47, !dbg !2252

; <label>:47:                                     ; preds = %44
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %5) #13, !dbg !2254
  br label %49, !dbg !2254

; <label>:49:                                     ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ %5, %44 ], !dbg !2256
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %50) #13, !dbg !2256
  br label %52, !dbg !2256

; <label>:52:                                     ; preds = %42, %49
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !2258, metadata !1138) #13, !dbg !2264
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2266, !tbaa !1146
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !2266
  %55 = load i8*, i8** %54, align 8, !dbg !2266, !tbaa !2267
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !2266
  %57 = load i8*, i8** %56, align 8, !dbg !2266, !tbaa !2269
  %58 = icmp ult i8* %55, %57, !dbg !2266
  br i1 %58, label %61, label %59, !dbg !2266, !prof !2270

; <label>:59:                                     ; preds = %52
  %60 = call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #13, !dbg !2271
  br label %63, !dbg !2271

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !2273
  store i8* %62, i8** %54, align 8, !dbg !2273, !tbaa !2267
  store i8 10, i8* %55, align 1, !dbg !2273, !tbaa !1267
  br label %63, !dbg !2273

; <label>:63:                                     ; preds = %59, %61
  call void @llvm.lifetime.end(i64 21, i8* nonnull %8) #13, !dbg !2275
  ret void, !dbg !2275
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswspace(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.argv_iterator* @argv_iter_init_argv(i8** nonnull) local_unnamed_addr #6 !dbg !2276 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !2330, metadata !1138), !dbg !2332
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2333
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, i64 0, metadata !2331, metadata !1138), !dbg !2334
  %3 = icmp eq i8* %2, null, !dbg !2335
  br i1 %3, label %11, label %4, !dbg !2337

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2333
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2338
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !2339, !tbaa !2340
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2342
  %8 = bitcast i8* %7 to i8***, !dbg !2342
  store i8** %0, i8*** %8, align 8, !dbg !2343, !tbaa !2344
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2345
  %10 = bitcast i8* %9 to i8***, !dbg !2345
  store i8** %0, i8*** %10, align 8, !dbg !2346, !tbaa !2347
  br label %11, !dbg !2348

; <label>:11:                                     ; preds = %1, %4
  %12 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %12, !dbg !2349
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !2350 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2354, metadata !1138), !dbg !2356
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2357
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, i64 0, metadata !2355, metadata !1138), !dbg !2358
  %3 = icmp eq i8* %2, null, !dbg !2359
  br i1 %3, label %8, label %4, !dbg !2361

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2357
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2362
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8, !dbg !2363, !tbaa !2340
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2364
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false), !dbg !2365
  br label %8, !dbg !2366

; <label>:8:                                      ; preds = %1, %4
  %9 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %9, !dbg !2367
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @argv_iter(%struct.argv_iterator* nonnull, i32* nocapture nonnull) local_unnamed_addr #6 !dbg !2368 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2373, metadata !1138), !dbg !2379
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !2374, metadata !1138), !dbg !2380
  %3 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2381
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2381, !tbaa !2340
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2382
  br i1 %5, label %21, label %6, !dbg !2383

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2384
  %8 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 3, !dbg !2385
  %9 = tail call i64 @getdelim(i8** %7, i64* %8, i32 0, %struct._IO_FILE* nonnull %4) #13, !dbg !2386
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2375, metadata !1138), !dbg !2387
  %10 = icmp slt i64 %9, 0, !dbg !2388
  br i1 %10, label %11, label %16, !dbg !2390

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2391, !tbaa !2340
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #13, !dbg !2393
  %14 = icmp ne i32 %13, 0, !dbg !2393
  %15 = select i1 %14, i32 2, i32 4, !dbg !2393
  store i32 %15, i32* %1, align 4, !dbg !2394, !tbaa !1267
  br label %31, !dbg !2395

; <label>:16:                                     ; preds = %6
  store i32 1, i32* %1, align 4, !dbg !2396, !tbaa !1267
  %17 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2397
  %18 = load i64, i64* %17, align 8, !dbg !2398, !tbaa !2399
  %19 = add i64 %18, 1, !dbg !2398
  store i64 %19, i64* %17, align 8, !dbg !2398, !tbaa !2399
  %20 = load i8*, i8** %7, align 8, !dbg !2400, !tbaa !2401
  br label %31, !dbg !2402

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2403
  %23 = load i8**, i8*** %22, align 8, !dbg !2403, !tbaa !2347
  %24 = load i8*, i8** %23, align 8, !dbg !2406, !tbaa !1146
  %25 = icmp eq i8* %24, null, !dbg !2407
  br i1 %25, label %26, label %27, !dbg !2408

; <label>:26:                                     ; preds = %21
  store i32 2, i32* %1, align 4, !dbg !2409, !tbaa !1267
  br label %31, !dbg !2411

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %1, align 4, !dbg !2412, !tbaa !1267
  %28 = load i8**, i8*** %22, align 8, !dbg !2414, !tbaa !2347
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !2414
  store i8** %29, i8*** %22, align 8, !dbg !2414, !tbaa !2347
  %30 = load i8*, i8** %28, align 8, !dbg !2415, !tbaa !1146
  br label %31, !dbg !2416

; <label>:31:                                     ; preds = %11, %16, %27, %26
  %32 = phi i8* [ null, %26 ], [ %30, %27 ], [ null, %11 ], [ %20, %16 ]
  ret i8* %32, !dbg !2417
}

declare i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argv_iter_n_args(%struct.argv_iterator* nocapture nonnull readonly) local_unnamed_addr #9 !dbg !2418 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2424, metadata !1138), !dbg !2425
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2426
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2426, !tbaa !2340
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2427
  br i1 %4, label %8, label %5, !dbg !2427

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2428
  %7 = load i64, i64* %6, align 8, !dbg !2428, !tbaa !2399
  br label %17, !dbg !2430

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2431
  %10 = bitcast i8*** %9 to i64*, !dbg !2431
  %11 = load i64, i64* %10, align 8, !dbg !2431, !tbaa !2347
  %12 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 4, !dbg !2433
  %13 = bitcast i8*** %12 to i64*, !dbg !2433
  %14 = load i64, i64* %13, align 8, !dbg !2433, !tbaa !2344
  %15 = sub i64 %11, %14, !dbg !2434
  %16 = ashr exact i64 %15, 3, !dbg !2434
  br label %17, !dbg !2435

; <label>:17:                                     ; preds = %8, %5
  %18 = phi i64 [ %7, %5 ], [ %16, %8 ], !dbg !2436
  ret i64 %18, !dbg !2438
}

; Function Attrs: nounwind sspstrong uwtable
define void @argv_iter_free(%struct.argv_iterator* nocapture nonnull) local_unnamed_addr #6 !dbg !2439 {
  tail call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, i64 0, metadata !2443, metadata !1138), !dbg !2444
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2445
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2445, !tbaa !2340
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2447
  br i1 %4, label %8, label %5, !dbg !2448

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2449
  %7 = load i8*, i8** %6, align 8, !dbg !2449, !tbaa !2401
  tail call void @free(i8* %7) #13, !dbg !2450
  br label %8, !dbg !2450

; <label>:8:                                      ; preds = %1, %5
  %9 = bitcast %struct.argv_iterator* %0 to i8*, !dbg !2451
  tail call void @free(i8* nonnull %9) #13, !dbg !2452
  ret void, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2454 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !1138), !dbg !2457
  store i8* %0, i8** @file_name, align 8, !dbg !2458, !tbaa !1146
  ret void, !dbg !2459
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2460 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2464, metadata !2465), !dbg !2466
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2467, !tbaa !2468
  ret void, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2471 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2476, !tbaa !1146
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !2477
  %3 = icmp eq i32 %2, 0, !dbg !2478
  br i1 %3, label %21, label %4, !dbg !2479

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2480, !tbaa !2468, !range !2482
  %6 = icmp eq i8 %5, 0, !dbg !2480
  %7 = tail call i32* @__errno_location() #1, !dbg !2483
  br i1 %6, label %11, label %8, !dbg !2485

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2486, !tbaa !1248
  %10 = icmp eq i32 %9, 32, !dbg !2488
  br i1 %10, label %21, label %11, !dbg !2489

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #13, !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2473, metadata !1138), !dbg !2492
  %13 = load i8*, i8** @file_name, align 8, !dbg !2493, !tbaa !1146
  %14 = icmp eq i8* %13, null, !dbg !2493
  %15 = load i32, i32* %7, align 4, !tbaa !1248
  br i1 %14, label %18, label %16, !dbg !2494

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !2495
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %17, i8* %12) #13, !dbg !2497
  br label %19, !dbg !2499

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #13, !dbg !2500
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2501, !tbaa !1248
  tail call void @_exit(i32 %20) #15, !dbg !2502
  unreachable, !dbg !2502

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2503, !tbaa !1146
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #13, !dbg !2505
  %24 = icmp eq i32 %23, 0, !dbg !2506
  br i1 %24, label %27, label %25, !dbg !2507

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2508, !tbaa !1248
  tail call void @_exit(i32 %26) #15, !dbg !2509
  unreachable, !dbg !2509

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2510
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2511 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2517, metadata !1138), !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2518, metadata !1138), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2519, metadata !1138), !dbg !2525
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2520, metadata !1138), !dbg !2526
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #13, !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2521, metadata !1138), !dbg !2527
  ret void, !dbg !2528
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2573, metadata !1138), !dbg !2575
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2574, metadata !1138), !dbg !2576
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2577
  br i1 %3, label %7, label %4, !dbg !2579

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2517, metadata !1138) #13, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2518, metadata !1138) #13, !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2519, metadata !1138) #13, !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2520, metadata !1138) #13, !dbg !2586
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #13, !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2521, metadata !1138) #13, !dbg !2587
  br label %7, !dbg !2588

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2590 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2595, metadata !1138), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2596, metadata !1138), !dbg !2599
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2597, metadata !1138), !dbg !2601
  store i8 0, i8* %3, align 1, !dbg !2602, !tbaa !1267
  br label %4, !dbg !2603

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2597, metadata !1138), !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2595, metadata !1138), !dbg !2598
  %7 = urem i64 %5, 10, !dbg !2604
  %8 = trunc i64 %7 to i8, !dbg !2607
  %9 = or i8 %8, 48, !dbg !2607
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2597, metadata !1138), !dbg !2601
  store i8 %9, i8* %10, align 1, !dbg !2609, !tbaa !1267
  %11 = udiv i64 %5, 10, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2595, metadata !1138), !dbg !2598
  %12 = icmp ugt i64 %5, 9, !dbg !2611
  br i1 %12, label %4, label %13, !dbg !2612, !llvm.loop !2614

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2597, metadata !1138), !dbg !2601
  ret i8* %10, !dbg !2617
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @mb_width_aux(i32) local_unnamed_addr #11 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2623, metadata !1138), !dbg !2625
  %2 = tail call i32 @wcwidth(i32 %0) #13, !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2624, metadata !1138), !dbg !2627
  %3 = icmp sgt i32 %2, -1, !dbg !2628
  br i1 %3, label %8, label %4, !dbg !2629

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #13, !dbg !2630
  %6 = icmp eq i32 %5, 0, !dbg !2630
  %7 = zext i1 %6 to i32, !dbg !2630
  br label %8, !dbg !2632

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ], !dbg !2633
  ret i32 %9, !dbg !2635
}

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #11 !dbg !2636 {
  tail call void @llvm.dbg.value(metadata %struct.mbchar* %0, i64 0, metadata !2654, metadata !1138), !dbg !2656
  tail call void @llvm.dbg.value(metadata %struct.mbchar* %1, i64 0, metadata !2655, metadata !1138), !dbg !2657
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0, !dbg !2658
  %4 = load i8*, i8** %3, align 8, !dbg !2658, !tbaa !2660
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0, !dbg !2662
  %6 = icmp eq i8* %4, %5, !dbg !2663
  br i1 %6, label %9, label %7, !dbg !2664

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2665
  br label %13, !dbg !2664

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0, !dbg !2666
  %11 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2668
  %12 = load i64, i64* %11, align 8, !dbg !2668, !tbaa !2669
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %4, i64 %12, i32 8, i1 false), !dbg !2670
  br label %13, !dbg !2671

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i64* [ %8, %7 ], [ %11, %9 ], !dbg !2665
  %15 = phi i8* [ %4, %7 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0
  store i8* %15, i8** %16, align 8, !tbaa !2660
  %17 = load i64, i64* %14, align 8, !dbg !2665, !tbaa !2669
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1, !dbg !2672
  store i64 %17, i64* %18, align 8, !dbg !2673, !tbaa !2669
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2, !dbg !2674
  %20 = load i8, i8* %19, align 8, !dbg !2674, !tbaa !2676, !range !2482
  %21 = icmp eq i8 %20, 0, !dbg !2674
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2, !dbg !2677
  store i8 %20, i8* %22, align 8, !dbg !2678, !tbaa !2676
  br i1 %21, label %27, label %23, !dbg !2679

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3, !dbg !2680
  %25 = load i32, i32* %24, align 4, !dbg !2680, !tbaa !2681
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3, !dbg !2682
  store i32 %25, i32* %26, align 4, !dbg !2683, !tbaa !2681
  br label %27, !dbg !2684

; <label>:27:                                     ; preds = %13, %23
  ret void, !dbg !2685
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define zeroext i1 @is_basic(i8 signext) local_unnamed_addr #12 !dbg !2686 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !2688, metadata !1138), !dbg !2689
  %2 = zext i8 %0 to i32, !dbg !2690
  %3 = lshr i32 %2, 5, !dbg !2691
  %4 = zext i32 %3 to i64, !dbg !2692
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4, !dbg !2692
  %6 = load i32, i32* %5, align 4, !dbg !2692, !tbaa !1248
  %7 = and i32 %2, 31, !dbg !2693
  %8 = shl i32 1, %7, !dbg !2694
  %9 = and i32 %6, %8, !dbg !2694
  %10 = icmp ne i32 %9, 0, !dbg !2694
  ret i1 %10, !dbg !2695
}

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_total() local_unnamed_addr #6 !dbg !2696 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #13, !dbg !2732
  tail call void @llvm.dbg.value(metadata double %23, i64 0, metadata !2700, metadata !1138), !dbg !2733
  %3 = tail call i64 @sysconf(i32 30) #13, !dbg !2734
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !2702, metadata !1138), !dbg !2735
  %4 = or i64 %3, %2, !dbg !2736
  %5 = icmp sgt i64 %4, -1, !dbg !2736
  br i1 %5, label %21, label %6, !dbg !2736

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2738
  call void @llvm.lifetime.start(i64 112, i8* nonnull %7) #13, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.sysinfo* %1, i64 0, metadata !2703, metadata !1298), !dbg !2739
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2740
  %9 = icmp eq i32 %8, 0, !dbg !2742
  br i1 %9, label %10, label %18, !dbg !2743

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2744
  %12 = load i64, i64* %11, align 8, !dbg !2744, !tbaa !2745
  %13 = uitofp i64 %12 to double, !dbg !2747
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2748
  %15 = load i32, i32* %14, align 8, !dbg !2748, !tbaa !2749
  %16 = uitofp i32 %15 to double, !dbg !2750
  %17 = fmul double %13, %16, !dbg !2751
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #13, !dbg !2752
  br label %19

; <label>:18:                                     ; preds = %6
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #13, !dbg !2752
  br label %19

; <label>:19:                                     ; preds = %10, %18
  %20 = phi double [ 0x4190000000000000, %18 ], [ %17, %10 ]
  ret double %20

; <label>:21:                                     ; preds = %0
  %22 = sitofp i64 %3 to double, !dbg !2734
  %23 = sitofp i64 %2 to double, !dbg !2732
  %24 = fmul double %23, %22, !dbg !2753
  ret double %24, !dbg !2754
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_available() local_unnamed_addr #6 !dbg !2755 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #13, !dbg !2762
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !2757, metadata !1138), !dbg !2763
  %4 = tail call i64 @sysconf(i32 30) #13, !dbg !2764
  tail call void @llvm.dbg.value(metadata double %8, i64 0, metadata !2759, metadata !1138), !dbg !2765
  %5 = or i64 %4, %3, !dbg !2766
  %6 = icmp sgt i64 %5, -1, !dbg !2766
  br i1 %6, label %7, label %11, !dbg !2766

; <label>:7:                                      ; preds = %0
  %8 = sitofp i64 %4 to double, !dbg !2764
  %9 = sitofp i64 %3 to double, !dbg !2762
  %10 = fmul double %9, %8, !dbg !2768
  br label %52

; <label>:11:                                     ; preds = %0
  %12 = bitcast %struct.sysinfo* %2 to i8*, !dbg !2769
  call void @llvm.lifetime.start(i64 112, i8* nonnull %12) #13, !dbg !2769
  tail call void @llvm.dbg.value(metadata %struct.sysinfo* %2, i64 0, metadata !2760, metadata !1298), !dbg !2770
  %13 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #13, !dbg !2771
  %14 = icmp eq i32 %13, 0, !dbg !2773
  br i1 %14, label %15, label %27, !dbg !2774

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 3, !dbg !2775
  %17 = load i64, i64* %16, align 8, !dbg !2775, !tbaa !2776
  %18 = uitofp i64 %17 to double, !dbg !2777
  %19 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 5, !dbg !2778
  %20 = load i64, i64* %19, align 8, !dbg !2778, !tbaa !2779
  %21 = uitofp i64 %20 to double, !dbg !2780
  %22 = fadd double %18, %21, !dbg !2781
  %23 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 12, !dbg !2782
  %24 = load i32, i32* %23, align 8, !dbg !2782, !tbaa !2749
  %25 = uitofp i32 %24 to double, !dbg !2783
  %26 = fmul double %22, %25, !dbg !2784
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #13, !dbg !2785
  br label %52

; <label>:27:                                     ; preds = %11
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #13, !dbg !2785
  %28 = call i64 @sysconf(i32 85) #13, !dbg !2786
  %29 = call i64 @sysconf(i32 30) #13, !dbg !2788
  %30 = or i64 %29, %28, !dbg !2789
  %31 = icmp sgt i64 %30, -1, !dbg !2789
  br i1 %31, label %45, label %32, !dbg !2789

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2790
  call void @llvm.lifetime.start(i64 112, i8* nonnull %33) #13, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.sysinfo* %1, i64 0, metadata !2703, metadata !1298) #13, !dbg !2791
  %34 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2792
  %35 = icmp eq i32 %34, 0, !dbg !2793
  br i1 %35, label %36, label %44, !dbg !2794

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2795
  %38 = load i64, i64* %37, align 8, !dbg !2795, !tbaa !2745
  %39 = uitofp i64 %38 to double, !dbg !2796
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2797
  %41 = load i32, i32* %40, align 8, !dbg !2797, !tbaa !2749
  %42 = uitofp i32 %41 to double, !dbg !2798
  %43 = fmul double %39, %42, !dbg !2799
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #13, !dbg !2800
  br label %49

; <label>:44:                                     ; preds = %32
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #13, !dbg !2800
  br label %49

; <label>:45:                                     ; preds = %27
  %46 = sitofp i64 %29 to double, !dbg !2788
  %47 = sitofp i64 %28 to double, !dbg !2786
  %48 = fmul double %47, %46, !dbg !2801
  br label %49, !dbg !2802

; <label>:49:                                     ; preds = %36, %44, %45
  %50 = phi double [ %48, %45 ], [ 0x4190000000000000, %44 ], [ %43, %36 ]
  %51 = fmul double %50, 2.500000e-01, !dbg !2803
  br label %52, !dbg !2804

; <label>:52:                                     ; preds = %15, %7, %49
  %53 = phi double [ %51, %49 ], [ %26, %15 ], [ %10, %7 ]
  ret double %53, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2806 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2808, metadata !1138), !dbg !2811
  %2 = icmp eq i8* %0, null, !dbg !2812
  br i1 %2, label %3, label %6, !dbg !2814

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2815, !tbaa !1146
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !2817
  tail call void @abort() #15, !dbg !2818
  unreachable, !dbg !2818

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2809, metadata !1138), !dbg !2820
  %8 = icmp ne i8* %7, null, !dbg !2821
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2822
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2810, metadata !1138), !dbg !2825
  %11 = ptrtoint i8* %10 to i64, !dbg !2826
  %12 = ptrtoint i8* %0 to i64, !dbg !2826
  %13 = sub i64 %11, %12, !dbg !2826
  %14 = icmp sgt i64 %13, 6, !dbg !2828
  br i1 %14, label %15, label %24, !dbg !2829

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2830
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #14, !dbg !2830
  %18 = icmp eq i32 %17, 0, !dbg !2832
  br i1 %18, label %19, label %24, !dbg !2833

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2808, metadata !1138), !dbg !2811
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #14, !dbg !2834
  %21 = icmp eq i32 %20, 0, !dbg !2837
  br i1 %21, label %22, label %24, !dbg !2838

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2808, metadata !1138), !dbg !2811
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2841, !tbaa !1146
  br label %24, !dbg !2842

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2808, metadata !1138), !dbg !2811
  store i8* %25, i8** @program_name, align 8, !dbg !2843, !tbaa !1146
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2844, !tbaa !1146
  ret void, !dbg !2845
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2846 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2851, metadata !1138), !dbg !2854
  %2 = tail call i32* @__errno_location() #1, !dbg !2855
  %3 = load i32, i32* %2, align 4, !dbg !2855, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2852, metadata !1138), !dbg !2856
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2857
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2858
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2858
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !2860
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2853, metadata !1138), !dbg !2861
  store i32 %3, i32* %2, align 4, !dbg !2862, !tbaa !1248
  ret %struct.quoting_options* %8, !dbg !2863
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2870, metadata !1138), !dbg !2871
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2872
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2872
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2873
  %5 = load i32, i32* %4, align 8, !dbg !2873, !tbaa !2875
  ret i32 %5, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2878 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2882, metadata !1138), !dbg !2884
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2883, metadata !1138), !dbg !2885
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2886
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2886
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2887
  store i32 %1, i32* %5, align 8, !dbg !2889, !tbaa !2875
  ret void, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2891 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2895, metadata !1138), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2896, metadata !1138), !dbg !2904
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2897, metadata !1138), !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2898, metadata !1138), !dbg !2906
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2907
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2907
  %6 = lshr i8 %1, 5, !dbg !2908
  %7 = zext i8 %6 to i64, !dbg !2908
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2899, metadata !1138), !dbg !2911
  %9 = and i8 %1, 31, !dbg !2912
  %10 = zext i8 %9 to i32, !dbg !2913
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2901, metadata !1138), !dbg !2914
  %11 = load i32, i32* %8, align 4, !dbg !2915, !tbaa !1248
  %12 = lshr i32 %11, %10, !dbg !2916
  %13 = and i32 %12, 1, !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2902, metadata !1138), !dbg !2918
  %14 = and i32 %2, 1, !dbg !2919
  %15 = xor i32 %13, %14, !dbg !2920
  %16 = shl i32 %15, %10, !dbg !2921
  %17 = xor i32 %16, %11, !dbg !2922
  store i32 %17, i32* %8, align 4, !dbg !2922, !tbaa !1248
  ret i32 %13, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2924 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2928, metadata !1138), !dbg !2931
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2929, metadata !1138), !dbg !2932
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2928, metadata !1138), !dbg !2931
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2928, metadata !1138), !dbg !2931
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2936
  %6 = load i32, i32* %5, align 4, !dbg !2936, !tbaa !2937
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2930, metadata !1138), !dbg !2938
  store i32 %1, i32* %5, align 4, !dbg !2939, !tbaa !2937
  ret i32 %6, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2945, metadata !1138), !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !1138), !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2947, metadata !1138), !dbg !2950
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2945, metadata !1138), !dbg !2948
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2945, metadata !1138), !dbg !2948
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2954
  store i32 10, i32* %6, align 8, !dbg !2955, !tbaa !2875
  %7 = icmp ne i8* %1, null, !dbg !2956
  %8 = icmp ne i8* %2, null, !dbg !2958
  %9 = and i1 %7, %8, !dbg !2960
  br i1 %9, label %11, label %10, !dbg !2960

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2961
  unreachable, !dbg !2961

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2962
  store i8* %1, i8** %12, align 8, !dbg !2963, !tbaa !2964
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2965
  store i8* %2, i8** %13, align 8, !dbg !2966, !tbaa !2967
  ret void, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2969 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2973, metadata !1138), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2974, metadata !1138), !dbg !2982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2975, metadata !1138), !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2976, metadata !1138), !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2977, metadata !1138), !dbg !2985
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2986
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2986
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2978, metadata !1138), !dbg !2987
  %8 = tail call i32* @__errno_location() #1, !dbg !2988
  %9 = load i32, i32* %8, align 4, !dbg !2988, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2979, metadata !1138), !dbg !2989
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2990
  %11 = load i32, i32* %10, align 8, !dbg !2990, !tbaa !2875
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2991
  %13 = load i32, i32* %12, align 4, !dbg !2991, !tbaa !2937
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2992
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2993
  %16 = load i8*, i8** %15, align 8, !dbg !2993, !tbaa !2964
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2994
  %18 = load i8*, i8** %17, align 8, !dbg !2994, !tbaa !2967
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2980, metadata !1138), !dbg !2996
  store i32 %9, i32* %8, align 4, !dbg !2997, !tbaa !1248
  ret i64 %19, !dbg !2998
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2999 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3004, metadata !1138), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3005, metadata !1138), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3006, metadata !1138), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3007, metadata !1138), !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3008, metadata !1138), !dbg !3066
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3009, metadata !1138), !dbg !3067
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3010, metadata !1138), !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3011, metadata !1138), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3012, metadata !1138), !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3014, metadata !1138), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3015, metadata !1138), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3016, metadata !1138), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3017, metadata !1138), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3018, metadata !1138), !dbg !3075
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !3076
  %14 = icmp eq i64 %13, 1, !dbg !3077
  %15 = lshr i32 %5, 1, !dbg !3078
  %16 = trunc i32 %15 to i8, !dbg !3078
  %17 = and i8 %16, 1, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3020, metadata !1138), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3021, metadata !1138), !dbg !3079
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3022, metadata !1138), !dbg !3080
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3023, metadata !1138), !dbg !3081
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !3082

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3023, metadata !1138), !dbg !3081
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3018, metadata !1138), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3017, metadata !1138), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3012, metadata !1138), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3011, metadata !1138), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3008, metadata !1138), !dbg !3066
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
  ], !dbg !3083

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3008, metadata !1138), !dbg !3066
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3008, metadata !1138), !dbg !3066
  br label %95, !dbg !3084

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3008, metadata !1138), !dbg !3066
  %43 = and i8 %36, 1, !dbg !3086
  %44 = icmp eq i8 %43, 0, !dbg !3086
  br i1 %44, label %45, label %95, !dbg !3084

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3088
  br i1 %46, label %95, label %47, !dbg !3092

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3094, !tbaa !1267
  br label %95, !dbg !3094

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !3096
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3011, metadata !1138), !dbg !3069
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3012, metadata !1138), !dbg !3070
  br label %51, !dbg !3101

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3012, metadata !1138), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3011, metadata !1138), !dbg !3069
  %54 = and i8 %36, 1, !dbg !3102
  %55 = icmp eq i8 %54, 0, !dbg !3102
  br i1 %55, label %56, label %73, !dbg !3104

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %57 = load i8, i8* %52, align 1, !dbg !3105, !tbaa !1267
  %58 = icmp eq i8 %57, 0, !dbg !3109
  br i1 %58, label %73, label %59, !dbg !3109

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3111

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !3111
  br i1 %64, label %65, label %67, !dbg !3115

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3117
  store i8 %61, i8* %66, align 1, !dbg !3117, !tbaa !1267
  br label %67, !dbg !3117

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %70 = load i8, i8* %69, align 1, !dbg !3105, !tbaa !1267
  %71 = icmp eq i8 %70, 0, !dbg !3109
  br i1 %71, label %72, label %60, !dbg !3109, !llvm.loop !3123

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !3071

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3018, metadata !1138), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3016, metadata !1138), !dbg !3073
  %75 = call i64 @strlen(i8* %53) #14, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3017, metadata !1138), !dbg !3074
  br label %95, !dbg !3127

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3018, metadata !1138), !dbg !3075
  br label %77, !dbg !3128

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3018, metadata !1138), !dbg !3075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3020, metadata !1138), !dbg !3078
  br label %79, !dbg !3129

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3018, metadata !1138), !dbg !3075
  %82 = and i8 %81, 1, !dbg !3130
  %83 = icmp eq i8 %82, 0, !dbg !3130
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3018, metadata !1138), !dbg !3075
  %84 = select i1 %83, i8 1, i8 %80, !dbg !3132
  br label %85, !dbg !3132

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3018, metadata !1138), !dbg !3075
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3008, metadata !1138), !dbg !3066
  %88 = and i8 %87, 1, !dbg !3133
  %89 = icmp eq i8 %88, 0, !dbg !3133
  br i1 %89, label %90, label %95, !dbg !3135

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !3136
  br i1 %91, label %95, label %92, !dbg !3140

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !3142, !tbaa !1267
  br label %95, !dbg !3142

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3020, metadata !1138), !dbg !3078
  br label %95, !dbg !3144

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !3145
  unreachable, !dbg !3145

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3020, metadata !1138), !dbg !3078
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3018, metadata !1138), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3017, metadata !1138), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3012, metadata !1138), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3011, metadata !1138), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3008, metadata !1138), !dbg !3066
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3013, metadata !1138), !dbg !3146
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
  br label %123, !dbg !3147

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3023, metadata !1138), !dbg !3081
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3013, metadata !1138), !dbg !3146
  %132 = icmp eq i64 %127, -1, !dbg !3148
  br i1 %132, label %135, label %133, !dbg !3150

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !3151
  br i1 %134, label %597, label %139, !dbg !3153

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3155
  %137 = load i8, i8* %136, align 1, !dbg !3155, !tbaa !1267
  %138 = icmp eq i8 %137, 0, !dbg !3157
  br i1 %138, label %597, label %139, !dbg !3153

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3029, metadata !1138), !dbg !3158
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3031, metadata !1138), !dbg !3160
  br i1 %109, label %140, label %155, !dbg !3161

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !3163
  %142 = and i1 %110, %132, !dbg !3165
  br i1 %142, label %143, label %145, !dbg !3165

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3007, metadata !1138), !dbg !3065
  br label %145, !dbg !3167

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3007, metadata !1138), !dbg !3065
  %147 = icmp ugt i64 %141, %146, !dbg !3169
  br i1 %147, label %155, label %148, !dbg !3171

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3172
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !3173
  %151 = icmp ne i32 %150, 0, !dbg !3174
  %152 = or i1 %151, %112, !dbg !3174
  %153 = xor i1 %151, true, !dbg !3174
  %154 = zext i1 %153 to i8, !dbg !3174
  br i1 %152, label %155, label %644, !dbg !3174

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3029, metadata !1138), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3007, metadata !1138), !dbg !3065
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3176
  %159 = load i8, i8* %158, align 1, !dbg !3176, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3024, metadata !1138), !dbg !3177
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
  ], !dbg !3178

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !3179

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !3180

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3030, metadata !1138), !dbg !3159
  %163 = and i8 %128, 1, !dbg !3185
  %164 = icmp eq i8 %163, 0, !dbg !3185
  %165 = and i1 %114, %164, !dbg !3188
  br i1 %165, label %166, label %182, !dbg !3188

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !3190
  br i1 %167, label %168, label %170, !dbg !3195

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3197
  store i8 39, i8* %169, align 1, !dbg !3197, !tbaa !1267
  br label %170, !dbg !3197

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %172 = icmp ult i64 %171, %131, !dbg !3201
  br i1 %172, label %173, label %175, !dbg !3205

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3207
  store i8 36, i8* %174, align 1, !dbg !3207, !tbaa !1267
  br label %175, !dbg !3207

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %177 = icmp ult i64 %176, %131, !dbg !3211
  br i1 %177, label %178, label %180, !dbg !3215

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3217
  store i8 39, i8* %179, align 1, !dbg !3217, !tbaa !1267
  br label %180, !dbg !3217

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %182, !dbg !3221

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %185 = icmp ult i64 %183, %131, !dbg !3223
  br i1 %185, label %186, label %188, !dbg !3227

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3229
  store i8 92, i8* %187, align 1, !dbg !3229, !tbaa !1267
  br label %188, !dbg !3229

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3014, metadata !1138), !dbg !3071
  br i1 %106, label %190, label %476, !dbg !3233

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !3235
  %192 = icmp ult i64 %191, %156, !dbg !3237
  br i1 %192, label %193, label %476, !dbg !3238

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3239
  %195 = load i8, i8* %194, align 1, !dbg !3239, !tbaa !1267
  %196 = add i8 %195, -48, !dbg !3241
  %197 = icmp ult i8 %196, 10, !dbg !3241
  br i1 %197, label %198, label %476, !dbg !3241

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !3242
  br i1 %199, label %200, label %202, !dbg !3247

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3249
  store i8 48, i8* %201, align 1, !dbg !3249, !tbaa !1267
  br label %202, !dbg !3249

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %204 = icmp ult i64 %203, %131, !dbg !3253
  br i1 %204, label %205, label %207, !dbg !3257

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3259
  store i8 48, i8* %206, align 1, !dbg !3259, !tbaa !1267
  br label %207, !dbg !3259

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3014, metadata !1138), !dbg !3071
  br label %476, !dbg !3263

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !3264

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !3265

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !3266

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !3268

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !3270
  %215 = icmp ult i64 %214, %156, !dbg !3272
  br i1 %215, label %216, label %476, !dbg !3273

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3274
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3276
  %219 = load i8, i8* %218, align 1, !dbg !3276, !tbaa !1267
  %220 = icmp eq i8 %219, 63, !dbg !3277
  br i1 %220, label %221, label %476, !dbg !3278

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3280
  %223 = load i8, i8* %222, align 1, !dbg !3280, !tbaa !1267
  %224 = sext i8 %223 to i32, !dbg !3280
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
  ], !dbg !3281

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3282

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3013, metadata !1138), !dbg !3146
  %227 = icmp ult i64 %125, %131, !dbg !3284
  br i1 %227, label %228, label %230, !dbg !3288

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3290
  store i8 63, i8* %229, align 1, !dbg !3290, !tbaa !1267
  br label %230, !dbg !3290

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %232 = icmp ult i64 %231, %131, !dbg !3294
  br i1 %232, label %233, label %235, !dbg !3298

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3300
  store i8 34, i8* %234, align 1, !dbg !3300, !tbaa !1267
  br label %235, !dbg !3300

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %237 = icmp ult i64 %236, %131, !dbg !3304
  br i1 %237, label %238, label %240, !dbg !3308

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3310
  store i8 34, i8* %239, align 1, !dbg !3310, !tbaa !1267
  br label %240, !dbg !3310

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %242 = icmp ult i64 %241, %131, !dbg !3314
  br i1 %242, label %243, label %245, !dbg !3318

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3320
  store i8 63, i8* %244, align 1, !dbg !3320, !tbaa !1267
  br label %245, !dbg !3320

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3014, metadata !1138), !dbg !3071
  br label %476, !dbg !3324

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br label %257, !dbg !3326

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br label %257, !dbg !3327

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br label %255, !dbg !3328

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br label %255, !dbg !3329

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br label %257, !dbg !3330

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br i1 %114, label %253, label %254, !dbg !3331

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3332

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3335

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br i1 %118, label %257, label %644, !dbg !3337

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3028, metadata !1138), !dbg !3325
  br i1 %105, label %503, label %476, !dbg !3339

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3340
  br i1 %260, label %261, label %266, !dbg !3342

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3343, !tbaa !1267
  %263 = icmp ne i8 %262, 0, !dbg !3345
  %264 = icmp ne i64 %124, 0, !dbg !3346
  %265 = or i1 %264, %263, !dbg !3348
  br i1 %265, label %476, label %272, !dbg !3348

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3349
  %268 = icmp ne i64 %124, 0, !dbg !3346
  %269 = or i1 %268, %267, !dbg !3351
  br i1 %269, label %476, label %272, !dbg !3351

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3346
  br i1 %271, label %272, label %476, !dbg !3353

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3031, metadata !1138), !dbg !3160
  br label %273, !dbg !3354

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3031, metadata !1138), !dbg !3160
  br i1 %118, label %476, label %644, !dbg !3355

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3031, metadata !1138), !dbg !3160
  br i1 %114, label %276, label %476, !dbg !3357

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3358

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3361
  %279 = icmp ne i64 %126, 0, !dbg !3363
  %280 = or i1 %279, %278, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3005, metadata !1138), !dbg !3063
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3365
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3015, metadata !1138), !dbg !3072
  %283 = icmp ult i64 %125, %282, !dbg !3366
  br i1 %283, label %284, label %286, !dbg !3370

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3372
  store i8 39, i8* %285, align 1, !dbg !3372, !tbaa !1267
  br label %286, !dbg !3372

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %288 = icmp ult i64 %287, %282, !dbg !3376
  br i1 %288, label %289, label %291, !dbg !3380

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3382
  store i8 92, i8* %290, align 1, !dbg !3382, !tbaa !1267
  br label %291, !dbg !3382

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %293 = icmp ult i64 %292, %282, !dbg !3386
  br i1 %293, label %294, label %296, !dbg !3390

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3392
  store i8 39, i8* %295, align 1, !dbg !3392, !tbaa !1267
  br label %296, !dbg !3392

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %476, !dbg !3396

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3397

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3032, metadata !1138), !dbg !3398
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3399
  %301 = load i16*, i16** %300, align 8, !dbg !3399, !tbaa !1146
  %302 = zext i8 %159 to i64, !dbg !3399
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3399
  %304 = load i16, i16* %303, align 2, !dbg !3399, !tbaa !2163
  %305 = lshr i16 %304, 14, !dbg !3401
  %306 = trunc i16 %305 to i8, !dbg !3401
  %307 = and i8 %306, 1, !dbg !3401
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3035, metadata !1138), !dbg !3402
  br label %368, !dbg !3403

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #13, !dbg !3404
  store i64 0, i64* %10, align 8, !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3035, metadata !1138), !dbg !3402
  %309 = icmp eq i64 %156, -1, !dbg !3406
  br i1 %309, label %310, label %312, !dbg !3408, !llvm.loop !3409

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3007, metadata !1138), !dbg !3065
  br label %312, !dbg !3413, !llvm.loop !3409

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3402

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3035, metadata !1138), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #13, !dbg !3414
  %317 = add i64 %315, %124, !dbg !3415
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3416
  %319 = sub i64 %313, %317, !dbg !3417
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3036, metadata !1298), !dbg !3418
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3049, metadata !1298), !dbg !3419
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #13, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3051, metadata !1138), !dbg !3421
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3422

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3032, metadata !1138), !dbg !3398
  %322 = icmp ugt i64 %313, %317, !dbg !3423
  br i1 %322, label %323, label %351, !dbg !3426

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3427

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3427
  %328 = load i8, i8* %327, align 1, !dbg !3427, !tbaa !1267
  %329 = icmp eq i8 %328, 0, !dbg !3429
  br i1 %329, label %348, label %330, !dbg !3430

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3032, metadata !1138), !dbg !3398
  %332 = add i64 %331, %124, !dbg !3433
  %333 = icmp ult i64 %332, %313, !dbg !3423
  br i1 %333, label %324, label %348, !dbg !3426, !llvm.loop !3434

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3436
  %336 = and i1 %116, %335, !dbg !3440
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3052, metadata !1138), !dbg !3441
  br i1 %336, label %337, label %355, !dbg !3440

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3442

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3442
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3443
  %342 = load i8, i8* %341, align 1, !dbg !3443, !tbaa !1267
  %343 = sext i8 %342 to i32, !dbg !3443
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3444

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3052, metadata !1138), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3052, metadata !1138), !dbg !3441
  %346 = icmp ult i64 %345, %320, !dbg !3436
  br i1 %346, label %338, label %354, !dbg !3447, !llvm.loop !3449

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3402

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3402

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3402

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3035, metadata !1138), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13, !dbg !3452
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3453

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3453, !tbaa !1248
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3049, metadata !1138), !dbg !3419
  %357 = call i32 @iswprint(i32 %356) #13, !dbg !3455
  %358 = icmp eq i32 %357, 0, !dbg !3455
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3035, metadata !1138), !dbg !3402
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3456
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3035, metadata !1138), !dbg !3402
  %360 = add i64 %320, %315, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3035, metadata !1138), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3036, metadata !1298), !dbg !3418
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3458
  %362 = icmp eq i32 %361, 0, !dbg !3459
  br i1 %362, label %314, label %363, !dbg !3460, !llvm.loop !3409

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3462

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #13, !dbg !3462
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3035, metadata !1138), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13, !dbg !3452
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #13, !dbg !3462
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3035, metadata !1138), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3032, metadata !1138), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3007, metadata !1138), !dbg !3065
  %372 = and i8 %371, 1, !dbg !3463
  %373 = icmp ne i8 %372, 0, !dbg !3463
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3031, metadata !1138), !dbg !3160
  %374 = icmp ult i64 %370, 2, !dbg !3464
  %375 = or i1 %373, %113, !dbg !3465
  %376 = and i1 %374, %375, !dbg !3467
  br i1 %376, label %476, label %377, !dbg !3467

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3059, metadata !1138), !dbg !3469
  br label %379, !dbg !3470

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3029, metadata !1138), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3013, metadata !1138), !dbg !3146
  br i1 %375, label %432, label %386, !dbg !3471

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3476

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3030, metadata !1138), !dbg !3159
  %388 = and i8 %382, 1, !dbg !3480
  %389 = icmp eq i8 %388, 0, !dbg !3480
  %390 = and i1 %114, %389, !dbg !3483
  br i1 %390, label %391, label %407, !dbg !3483

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3485
  br i1 %392, label %393, label %395, !dbg !3490

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3492
  store i8 39, i8* %394, align 1, !dbg !3492, !tbaa !1267
  br label %395, !dbg !3492

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %397 = icmp ult i64 %396, %131, !dbg !3496
  br i1 %397, label %398, label %400, !dbg !3500

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3502
  store i8 36, i8* %399, align 1, !dbg !3502, !tbaa !1267
  br label %400, !dbg !3502

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %402 = icmp ult i64 %401, %131, !dbg !3506
  br i1 %402, label %403, label %405, !dbg !3510

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3512
  store i8 39, i8* %404, align 1, !dbg !3512, !tbaa !1267
  br label %405, !dbg !3512

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %407, !dbg !3516

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %410 = icmp ult i64 %408, %131, !dbg !3518
  br i1 %410, label %411, label %413, !dbg !3522

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3524
  store i8 92, i8* %412, align 1, !dbg !3524, !tbaa !1267
  br label %413, !dbg !3524

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %415 = icmp ult i64 %414, %131, !dbg !3528
  br i1 %415, label %416, label %420, !dbg !3532

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3534
  %418 = or i8 %417, 48, !dbg !3534
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3534
  store i8 %418, i8* %419, align 1, !dbg !3534, !tbaa !1267
  br label %420, !dbg !3534

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %422 = icmp ult i64 %421, %131, !dbg !3538
  br i1 %422, label %423, label %428, !dbg !3542

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3544
  %425 = and i8 %424, 7, !dbg !3544
  %426 = or i8 %425, 48, !dbg !3544
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3544
  store i8 %426, i8* %427, align 1, !dbg !3544, !tbaa !1267
  br label %428, !dbg !3544

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %430 = and i8 %383, 7, !dbg !3548
  %431 = or i8 %430, 48, !dbg !3549
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3024, metadata !1138), !dbg !3177
  br label %441, !dbg !3550

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3551
  %434 = icmp eq i8 %433, 0, !dbg !3551
  br i1 %434, label %441, label %435, !dbg !3553

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3554
  br i1 %436, label %437, label %439, !dbg !3559

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3561
  store i8 92, i8* %438, align 1, !dbg !3561, !tbaa !1267
  br label %439, !dbg !3561

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3029, metadata !1138), !dbg !3158
  br label %441, !dbg !3565

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3029, metadata !1138), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %447 = add i64 %380, 1, !dbg !3566
  %448 = icmp ugt i64 %378, %447, !dbg !3568
  br i1 %448, label %449, label %541, !dbg !3569

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3570
  %451 = icmp ne i8 %450, 0, !dbg !3570
  %452 = and i8 %446, 1, !dbg !3574
  %453 = icmp eq i8 %452, 0, !dbg !3574
  %454 = and i1 %451, %453, !dbg !3570
  br i1 %454, label %455, label %466, !dbg !3570

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3576
  br i1 %456, label %457, label %459, !dbg !3581

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3583
  store i8 39, i8* %458, align 1, !dbg !3583, !tbaa !1267
  br label %459, !dbg !3583

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %461 = icmp ult i64 %460, %131, !dbg !3587
  br i1 %461, label %462, label %464, !dbg !3591

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3593
  store i8 39, i8* %463, align 1, !dbg !3593, !tbaa !1267
  br label %464, !dbg !3593

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %466, !dbg !3597

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %469 = icmp ult i64 %467, %131, !dbg !3599
  br i1 %469, label %470, label %472, !dbg !3603

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3605
  store i8 %444, i8* %471, align 1, !dbg !3605, !tbaa !1267
  br label %472, !dbg !3605

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3013, metadata !1138), !dbg !3146
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3609
  %475 = load i8, i8* %474, align 1, !dbg !3609, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3024, metadata !1138), !dbg !3177
  br label %379, !dbg !3610, !llvm.loop !3612

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3031, metadata !1138), !dbg !3160
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3029, metadata !1138), !dbg !3158
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3013, metadata !1138), !dbg !3146
  br i1 %107, label %488, label %487, !dbg !3615

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3617

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3618

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3619
  %491 = zext i8 %490 to i64, !dbg !3619
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3621
  %493 = load i32, i32* %492, align 4, !dbg !3621, !tbaa !1248
  %494 = and i8 %483, 31, !dbg !3622
  %495 = zext i8 %494 to i32, !dbg !3623
  %496 = shl i32 1, %495, !dbg !3624
  %497 = and i32 %493, %496, !dbg !3624
  %498 = icmp eq i32 %497, 0, !dbg !3624
  %499 = icmp eq i8 %157, 0, !dbg !3625
  %500 = and i1 %499, %498, !dbg !3626
  br i1 %500, label %542, label %503, !dbg !3626

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3625
  br i1 %502, label %542, label %503, !dbg !3627

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3031, metadata !1138), !dbg !3160
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3013, metadata !1138), !dbg !3146
  br i1 %112, label %513, label %644, !dbg !3629

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3030, metadata !1138), !dbg !3159
  %514 = and i8 %508, 1, !dbg !3632
  %515 = icmp eq i8 %514, 0, !dbg !3632
  %516 = and i1 %114, %515, !dbg !3635
  br i1 %516, label %517, label %533, !dbg !3635

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3637
  br i1 %518, label %519, label %521, !dbg !3642

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3644
  store i8 39, i8* %520, align 1, !dbg !3644, !tbaa !1267
  br label %521, !dbg !3644

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %523 = icmp ult i64 %522, %512, !dbg !3648
  br i1 %523, label %524, label %526, !dbg !3652

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3654
  store i8 36, i8* %525, align 1, !dbg !3654, !tbaa !1267
  br label %526, !dbg !3654

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %528 = icmp ult i64 %527, %512, !dbg !3658
  br i1 %528, label %529, label %531, !dbg !3662

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3664
  store i8 39, i8* %530, align 1, !dbg !3664, !tbaa !1267
  br label %531, !dbg !3664

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %533, !dbg !3668

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %536 = icmp ult i64 %534, %512, !dbg !3670
  br i1 %536, label %537, label %539, !dbg !3674

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3676
  store i8 92, i8* %538, align 1, !dbg !3676, !tbaa !1267
  br label %539, !dbg !3676

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3031, metadata !1138), !dbg !3160
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3013, metadata !1138), !dbg !3146
  br label %569, !dbg !3680

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !3063

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3031, metadata !1138), !dbg !3160
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3030, metadata !1138), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3024, metadata !1138), !dbg !3177
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3022, metadata !1138), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3007, metadata !1138), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3015, metadata !1138), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3013, metadata !1138), !dbg !3146
  %553 = and i8 %547, 1, !dbg !3680
  %554 = icmp ne i8 %553, 0, !dbg !3680
  %555 = and i8 %550, 1, !dbg !3684
  %556 = icmp eq i8 %555, 0, !dbg !3684
  %557 = and i1 %554, %556, !dbg !3680
  br i1 %557, label %558, label %569, !dbg !3680

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3686
  br i1 %559, label %560, label %562, !dbg !3691

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3693
  store i8 39, i8* %561, align 1, !dbg !3693, !tbaa !1267
  br label %562, !dbg !3693

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %564 = icmp ult i64 %563, %552, !dbg !3697
  br i1 %564, label %565, label %567, !dbg !3701

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3703
  store i8 39, i8* %566, align 1, !dbg !3703, !tbaa !1267
  br label %567, !dbg !3703

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3014, metadata !1138), !dbg !3071
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3021, metadata !1138), !dbg !3079
  br label %569, !dbg !3707

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3021, metadata !1138), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %579 = icmp ult i64 %577, %570, !dbg !3709
  br i1 %579, label %580, label %582, !dbg !3713

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3715
  store i8 %572, i8* %581, align 1, !dbg !3715, !tbaa !1267
  br label %582, !dbg !3715

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %584 = and i8 %571, 1, !dbg !3719
  %585 = icmp eq i8 %584, 0, !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3023, metadata !1138), !dbg !3081
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3721
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3023, metadata !1138), !dbg !3081
  br label %587, !dbg !3722

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3013, metadata !1138), !dbg !3146
  br label %123, !dbg !3725, !llvm.loop !3726

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3729
  %600 = and i1 %114, %599, !dbg !3731
  %601 = xor i1 %600, true, !dbg !3731
  %602 = or i1 %112, %601, !dbg !3731
  br i1 %602, label %603, label %648, !dbg !3731

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3732
  %605 = xor i1 %604, true, !dbg !3732
  %606 = and i8 %129, 1, !dbg !3734
  %607 = icmp eq i8 %606, 0, !dbg !3734
  %608 = or i1 %607, %605, !dbg !3732
  br i1 %608, label %618, label %609, !dbg !3732

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3736
  %611 = icmp eq i8 %610, 0, !dbg !3736
  br i1 %611, label %614, label %612, !dbg !3739

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3740
  br label %659, !dbg !3741

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3742
  %616 = icmp ne i64 %126, 0, !dbg !3744
  %617 = and i1 %616, %615, !dbg !3746
  br i1 %617, label %27, label %618, !dbg !3746

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3747
  %620 = and i1 %619, %112, !dbg !3749
  br i1 %620, label %621, label %638, !dbg !3749

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %622 = load i8, i8* %100, align 1, !dbg !3750, !tbaa !1267
  %623 = icmp eq i8 %622, 0, !dbg !3754
  br i1 %623, label %638, label %624, !dbg !3754

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3756

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3756
  br i1 %629, label %630, label %632, !dbg !3760

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3762
  store i8 %626, i8* %631, align 1, !dbg !3762, !tbaa !1267
  br label %632, !dbg !3762

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3016, metadata !1138), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %635 = load i8, i8* %634, align 1, !dbg !3750, !tbaa !1267
  %636 = icmp eq i8 %635, 0, !dbg !3754
  br i1 %636, label %637, label %625, !dbg !3754, !llvm.loop !3768

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !3071

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3014, metadata !1138), !dbg !3071
  %640 = icmp ult i64 %639, %131, !dbg !3771
  br i1 %640, label %641, label %659, !dbg !3773

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3774
  store i8 0, i8* %642, align 1, !dbg !3775, !tbaa !1267
  br label %659, !dbg !3774

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !3063

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !3063

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !3063

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3005, metadata !1138), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3007, metadata !1138), !dbg !3065
  %653 = icmp ne i32 %650, 2, !dbg !3776
  %654 = icmp eq i8 %104, 0, !dbg !3778
  %655 = or i1 %653, %654, !dbg !3780
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3008, metadata !1138), !dbg !3066
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3008, metadata !1138), !dbg !3066
  %657 = and i32 %5, -3, !dbg !3781
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3782
  br label %659, !dbg !3783

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3784
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3789, metadata !1138), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3790, metadata !1138), !dbg !3794
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3795
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3791, metadata !1138), !dbg !3796
  %4 = icmp eq i8* %3, %0, !dbg !3797
  br i1 %4, label %5, label %75, !dbg !3799

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3792, metadata !1138), !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3802, metadata !1138), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3816, metadata !1138), !dbg !3821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3817, metadata !1138), !dbg !3822
  %7 = load i8, i8* %6, align 1, !tbaa !1267
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3823
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3823

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3826, metadata !1138), !dbg !3840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3838, metadata !1138), !dbg !3844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3839, metadata !1138), !dbg !3845
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1267
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3846
  %15 = icmp eq i32 %14, 84, !dbg !3846
  br i1 %15, label %16, label %72, !dbg !3846

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3849, metadata !1138), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3860, metadata !1138), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3861, metadata !1138), !dbg !3867
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1267
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3868
  %21 = icmp eq i32 %20, 70, !dbg !3868
  br i1 %21, label %22, label %72, !dbg !3868

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3871, metadata !1138), !dbg !3883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3881, metadata !1138), !dbg !3887
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3882, metadata !1138), !dbg !3888
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1267
  %25 = icmp eq i8 %24, 45, !dbg !3889
  br i1 %25, label %26, label %72, !dbg !3892

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3894, metadata !1138), !dbg !3905
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3903, metadata !1138), !dbg !3909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3904, metadata !1138), !dbg !3910
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1267
  %29 = icmp eq i8 %28, 56, !dbg !3911
  br i1 %29, label %30, label %72, !dbg !3914

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3916, metadata !1138), !dbg !3926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3924, metadata !1138), !dbg !3930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3925, metadata !1138), !dbg !3931
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1267
  %33 = icmp eq i8 %32, 0, !dbg !3932
  br i1 %33, label %34, label %72, !dbg !3935

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3937, !tbaa !1267
  %36 = icmp eq i8 %35, 96, !dbg !3938
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !3937
  br label %75, !dbg !3939

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3826, metadata !1138), !dbg !3940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3838, metadata !1138), !dbg !3944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3839, metadata !1138), !dbg !3945
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1267
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3946
  %43 = icmp eq i32 %42, 66, !dbg !3946
  br i1 %43, label %44, label %72, !dbg !3946

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3849, metadata !1138), !dbg !3947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3860, metadata !1138), !dbg !3949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3861, metadata !1138), !dbg !3950
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1267
  %47 = icmp eq i8 %46, 49, !dbg !3951
  br i1 %47, label %48, label %72, !dbg !3953

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3871, metadata !1138), !dbg !3955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3881, metadata !1138), !dbg !3957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3882, metadata !1138), !dbg !3958
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1267
  %51 = icmp eq i8 %50, 56, !dbg !3959
  br i1 %51, label %52, label %72, !dbg !3960

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3894, metadata !1138), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3903, metadata !1138), !dbg !3963
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3904, metadata !1138), !dbg !3964
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1267
  %55 = icmp eq i8 %54, 48, !dbg !3965
  br i1 %55, label %56, label %72, !dbg !3966

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3916, metadata !1138), !dbg !3967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3924, metadata !1138), !dbg !3969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3925, metadata !1138), !dbg !3970
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1267
  %59 = icmp eq i8 %58, 51, !dbg !3971
  br i1 %59, label %60, label %72, !dbg !3972

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3973, metadata !1138), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3980, metadata !1138), !dbg !3986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3981, metadata !1138), !dbg !3987
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1267
  %63 = icmp eq i8 %62, 48, !dbg !3988
  br i1 %63, label %64, label %72, !dbg !3991

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3993, metadata !1138), !dbg !4001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3999, metadata !1138), !dbg !4005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4000, metadata !1138), !dbg !4006
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1267
  %67 = icmp eq i8 %66, 0, !dbg !4007
  br i1 %67, label %68, label %72, !dbg !4010

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !4011, !tbaa !1267
  %70 = icmp eq i8 %69, 96, !dbg !4012
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !4011
  br label %75, !dbg !4013

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !4014
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !4015
  br label %75, !dbg !4016

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !4017
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4022, metadata !1138), !dbg !4025
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4023, metadata !1138), !dbg !4026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4024, metadata !1138), !dbg !4027
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4028, metadata !1138) #13, !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4033, metadata !1138) #13, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4034, metadata !1138) #13, !dbg !4044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4035, metadata !1138) #13, !dbg !4045
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !4046
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4036, metadata !1138) #13, !dbg !4047
  %6 = tail call i32* @__errno_location() #1, !dbg !4048
  %7 = load i32, i32* %6, align 4, !dbg !4048, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4037, metadata !1138) #13, !dbg !4049
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4050
  %9 = load i32, i32* %8, align 4, !dbg !4050, !tbaa !2937
  %10 = or i32 %9, 1, !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4038, metadata !1138) #13, !dbg !4052
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4053
  %12 = load i32, i32* %11, align 8, !dbg !4053, !tbaa !2875
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4055
  %15 = load i8*, i8** %14, align 8, !dbg !4055, !tbaa !2964
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4056
  %17 = load i8*, i8** %16, align 8, !dbg !4056, !tbaa !2967
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #13, !dbg !4057
  %19 = add i64 %18, 1, !dbg !4058
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4039, metadata !1138) #13, !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4060, metadata !1138) #13, !dbg !4065
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !4067
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4040, metadata !1138) #13, !dbg !4068
  %21 = load i32, i32* %11, align 8, !dbg !4069, !tbaa !2875
  %22 = load i8*, i8** %14, align 8, !dbg !4070, !tbaa !2964
  %23 = load i8*, i8** %16, align 8, !dbg !4071, !tbaa !2967
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #13, !dbg !4072
  store i32 %7, i32* %6, align 4, !dbg !4073, !tbaa !1248
  ret i8* %20, !dbg !4074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4029 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4028, metadata !1138), !dbg !4075
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4033, metadata !1138), !dbg !4076
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4034, metadata !1138), !dbg !4077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4035, metadata !1138), !dbg !4078
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !4079
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4079
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4036, metadata !1138), !dbg !4080
  %7 = tail call i32* @__errno_location() #1, !dbg !4081
  %8 = load i32, i32* %7, align 4, !dbg !4081, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4037, metadata !1138), !dbg !4082
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4083
  %10 = load i32, i32* %9, align 4, !dbg !4083, !tbaa !2937
  %11 = icmp ne i64* %2, null, !dbg !4084
  %12 = xor i1 %11, true, !dbg !4084
  %13 = zext i1 %12 to i32, !dbg !4084
  %14 = or i32 %10, %13, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4038, metadata !1138), !dbg !4086
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4087
  %16 = load i32, i32* %15, align 8, !dbg !4087, !tbaa !2875
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4088
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4089
  %19 = load i8*, i8** %18, align 8, !dbg !4089, !tbaa !2964
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4090
  %21 = load i8*, i8** %20, align 8, !dbg !4090, !tbaa !2967
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4091
  %23 = add i64 %22, 1, !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4039, metadata !1138), !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4060, metadata !1138) #13, !dbg !4094
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !4096
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4040, metadata !1138), !dbg !4097
  %25 = load i32, i32* %15, align 8, !dbg !4098, !tbaa !2875
  %26 = load i8*, i8** %18, align 8, !dbg !4099, !tbaa !2964
  %27 = load i8*, i8** %20, align 8, !dbg !4100, !tbaa !2967
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4101
  store i32 %8, i32* %7, align 4, !dbg !4102, !tbaa !1248
  br i1 %11, label %29, label %30, !dbg !4103

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !4104, !tbaa !1208
  br label %30, !dbg !4106

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !4107
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !4108 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4112, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4110, metadata !1138), !dbg !4113
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4111, metadata !1138), !dbg !4114
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4111, metadata !1138), !dbg !4114
  %2 = load i32, i32* @nslots, align 4, !dbg !4115, !tbaa !1248
  %3 = icmp sgt i32 %2, 1, !dbg !4119
  br i1 %3, label %4, label %14, !dbg !4120

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4122

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4122
  %8 = load i8*, i8** %7, align 8, !dbg !4122, !tbaa !4123
  tail call void @free(i8* %8) #13, !dbg !4125
  %9 = add nuw i64 %6, 1, !dbg !4126
  %10 = load i32, i32* @nslots, align 4, !dbg !4115, !tbaa !1248
  %11 = sext i32 %10 to i64, !dbg !4119
  %12 = icmp slt i64 %9, %11, !dbg !4119
  br i1 %12, label %5, label %13, !dbg !4120, !llvm.loop !4128

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !4131

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4131
  %16 = load i8*, i8** %15, align 8, !dbg !4131, !tbaa !4123
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4133
  br i1 %17, label %19, label %18, !dbg !4134

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #13, !dbg !4135
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4137, !tbaa !4138
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4139, !tbaa !4123
  br label %19, !dbg !4140

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4141
  br i1 %20, label %23, label %21, !dbg !4143

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4144
  tail call void @free(i8* %22) #13, !dbg !4146
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4147, !tbaa !1146
  br label %23, !dbg !4148

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !4149, !tbaa !1248
  ret void, !dbg !4150
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4151 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4155, metadata !1138), !dbg !4157
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4156, metadata !1138), !dbg !4158
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4159
  ret i8* %3, !dbg !4160
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4161 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4165, metadata !1138), !dbg !4179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4166, metadata !1138), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4167, metadata !1138), !dbg !4181
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4168, metadata !1138), !dbg !4182
  %5 = tail call i32* @__errno_location() #1, !dbg !4183
  %6 = load i32, i32* %5, align 4, !dbg !4183, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4169, metadata !1138), !dbg !4184
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4185, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4170, metadata !1138), !dbg !4186
  %8 = icmp slt i32 %0, 0, !dbg !4187
  br i1 %8, label %9, label %10, !dbg !4189

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !4190
  unreachable, !dbg !4190

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4191, !tbaa !1248
  %12 = icmp sgt i32 %11, %0, !dbg !4192
  br i1 %12, label %34, label %13, !dbg !4193

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4194
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4195
  br i1 %15, label %16, label %17, !dbg !4197

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4198
  unreachable, !dbg !4198

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4199
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4199
  %20 = add nsw i32 %0, 1, !dbg !4201
  %21 = sext i32 %20 to i64, !dbg !4202
  %22 = shl nsw i64 %21, 4, !dbg !4203
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !4204
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4204
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4170, metadata !1138), !dbg !4186
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4205, !tbaa !1146
  br i1 %14, label %25, label %26, !dbg !4206

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4207, !tbaa.struct !4209
  br label %26, !dbg !4210

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4211, !tbaa !1248
  %28 = sext i32 %27 to i64, !dbg !4212
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4212
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4213
  %31 = sub nsw i32 %20, %27, !dbg !4214
  %32 = sext i32 %31 to i64, !dbg !4215
  %33 = shl nsw i64 %32, 4, !dbg !4216
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4213
  store i32 %20, i32* @nslots, align 4, !dbg !4217, !tbaa !1248
  br label %34, !dbg !4218

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4170, metadata !1138), !dbg !4186
  %36 = sext i32 %0 to i64, !dbg !4219
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4220
  %38 = load i64, i64* %37, align 8, !dbg !4220, !tbaa !4138
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4174, metadata !1138), !dbg !4221
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4222
  %40 = load i8*, i8** %39, align 8, !dbg !4222, !tbaa !4123
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4176, metadata !1138), !dbg !4223
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4224
  %42 = load i32, i32* %41, align 4, !dbg !4224, !tbaa !2937
  %43 = or i32 %42, 1, !dbg !4225
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4177, metadata !1138), !dbg !4226
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4227
  %45 = load i32, i32* %44, align 8, !dbg !4227, !tbaa !2875
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4228
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4229
  %48 = load i8*, i8** %47, align 8, !dbg !4229, !tbaa !2964
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4230
  %50 = load i8*, i8** %49, align 8, !dbg !4230, !tbaa !2967
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4231
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4178, metadata !1138), !dbg !4232
  %52 = icmp ugt i64 %38, %51, !dbg !4233
  br i1 %52, label %63, label %53, !dbg !4235

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4174, metadata !1138), !dbg !4221
  store i64 %54, i64* %37, align 8, !dbg !4238, !tbaa !4138
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4239
  br i1 %55, label %57, label %56, !dbg !4241

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !4242
  br label %57, !dbg !4242

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4060, metadata !1138) #13, !dbg !4243
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !4245
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4176, metadata !1138), !dbg !4223
  store i8* %58, i8** %39, align 8, !dbg !4246, !tbaa !4123
  %59 = load i32, i32* %44, align 8, !dbg !4247, !tbaa !2875
  %60 = load i8*, i8** %47, align 8, !dbg !4248, !tbaa !2964
  %61 = load i8*, i8** %49, align 8, !dbg !4249, !tbaa !2967
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4250
  br label %63, !dbg !4251

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4176, metadata !1138), !dbg !4223
  store i32 %6, i32* %5, align 4, !dbg !4252, !tbaa !1248
  ret i8* %64, !dbg !4253
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4254 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4258, metadata !1138), !dbg !4261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4259, metadata !1138), !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4260, metadata !1138), !dbg !4263
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4264
  ret i8* %4, !dbg !4265
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4270, metadata !1138), !dbg !4271
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4155, metadata !1138) #13, !dbg !4272
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4156, metadata !1138) #13, !dbg !4274
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4275
  ret i8* %2, !dbg !4276
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4277 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4281, metadata !1138), !dbg !4283
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4282, metadata !1138), !dbg !4284
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4258, metadata !1138) #13, !dbg !4285
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4259, metadata !1138) #13, !dbg !4287
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4260, metadata !1138) #13, !dbg !4288
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4289
  ret i8* %3, !dbg !4290
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4291 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4299, metadata !4305), !dbg !4306
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4295, metadata !1138), !dbg !4308
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4296, metadata !1138), !dbg !4309
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4297, metadata !1138), !dbg !4310
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4311
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13, !dbg !4311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4298, metadata !1298), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4304, metadata !1138) #13, !dbg !4313
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4314
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4314
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4299, metadata !1138) #13, !dbg !4306
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4306
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4306
  %8 = icmp eq i32 %1, 10, !dbg !4316
  br i1 %8, label %9, label %10, !dbg !4318

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4319, !noalias !4320
  unreachable, !dbg !4319

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4299, metadata !4315) #13, !dbg !4306
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4323
  store i32 %1, i32* %11, align 8, !dbg !4323, !alias.scope !4320
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4323
  %13 = bitcast i32* %12 to i8*, !dbg !4323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !4323
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4298, metadata !1298), !dbg !4312
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4325
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13, !dbg !4326
  ret i8* %14, !dbg !4327
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4328 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4299, metadata !4305), !dbg !4337
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4332, metadata !1138), !dbg !4339
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4333, metadata !1138), !dbg !4340
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4334, metadata !1138), !dbg !4341
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4335, metadata !1138), !dbg !4342
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4343
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13, !dbg !4343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4336, metadata !1298), !dbg !4344
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4304, metadata !1138) #13, !dbg !4345
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4346
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4346
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4299, metadata !1138) #13, !dbg !4337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4337
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4337
  %9 = icmp eq i32 %1, 10, !dbg !4347
  br i1 %9, label %10, label %11, !dbg !4348

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4349, !noalias !4350
  unreachable, !dbg !4349

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4299, metadata !4315) #13, !dbg !4337
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4353
  store i32 %1, i32* %12, align 8, !dbg !4353, !alias.scope !4350
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4353
  %14 = bitcast i32* %13 to i8*, !dbg !4353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #13, !dbg !4353
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4336, metadata !1298), !dbg !4344
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4355
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13, !dbg !4356
  ret i8* %15, !dbg !4357
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4358 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4299, metadata !4305), !dbg !4364
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4362, metadata !1138), !dbg !4367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4363, metadata !1138), !dbg !4368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4295, metadata !1138) #13, !dbg !4369
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4296, metadata !1138) #13, !dbg !4370
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4297, metadata !1138) #13, !dbg !4371
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4372
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13, !dbg !4372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4298, metadata !1298) #13, !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4304, metadata !1138) #13, !dbg !4374
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4375
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4375
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4299, metadata !1138) #13, !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4364
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4364
  %7 = icmp eq i32 %0, 10, !dbg !4376
  br i1 %7, label %8, label %9, !dbg !4377

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !4378, !noalias !4379
  unreachable, !dbg !4378

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4364
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4382
  store i32 %0, i32* %10, align 8, !dbg !4382, !alias.scope !4379
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4382
  %12 = bitcast i32* %11 to i8*, !dbg !4382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #13, !dbg !4382
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4383
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4298, metadata !1298) #13, !dbg !4373
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4384
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13, !dbg !4385
  ret i8* %13, !dbg !4386
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4387 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4299, metadata !4305), !dbg !4394
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4391, metadata !1138), !dbg !4397
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4392, metadata !1138), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4393, metadata !1138), !dbg !4399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4332, metadata !1138) #13, !dbg !4400
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4333, metadata !1138) #13, !dbg !4401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4334, metadata !1138) #13, !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4335, metadata !1138) #13, !dbg !4403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4404
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13, !dbg !4404
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4336, metadata !1298) #13, !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4304, metadata !1138) #13, !dbg !4406
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4407
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4407
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4299, metadata !1138) #13, !dbg !4394
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4394
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4394
  %8 = icmp eq i32 %0, 10, !dbg !4408
  br i1 %8, label %9, label %10, !dbg !4409

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4410, !noalias !4411
  unreachable, !dbg !4410

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4394
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4414
  store i32 %0, i32* %11, align 8, !dbg !4414, !alias.scope !4411
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4414
  %13 = bitcast i32* %12 to i8*, !dbg !4414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13, !dbg !4414
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4336, metadata !1298) #13, !dbg !4405
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #13, !dbg !4416
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13, !dbg !4417
  ret i8* %14, !dbg !4418
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4419 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4423, metadata !1138), !dbg !4427
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4424, metadata !1138), !dbg !4428
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4425, metadata !1138), !dbg !4429
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4430
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13, !dbg !4430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4431, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4426, metadata !1298), !dbg !4433
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2895, metadata !1138), !dbg !4434
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2896, metadata !1138), !dbg !4436
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2897, metadata !1138), !dbg !4437
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2898, metadata !1138), !dbg !4438
  %6 = lshr i8 %2, 5, !dbg !4439
  %7 = zext i8 %6 to i64, !dbg !4439
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4440
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2899, metadata !1138), !dbg !4441
  %9 = and i8 %2, 31, !dbg !4442
  %10 = zext i8 %9 to i32, !dbg !4443
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2901, metadata !1138), !dbg !4444
  %11 = load i32, i32* %8, align 4, !dbg !4445, !tbaa !1248
  %12 = lshr i32 %11, %10, !dbg !4446
  %13 = and i32 %12, 1, !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2902, metadata !1138), !dbg !4448
  %14 = xor i32 %13, 1, !dbg !4449
  %15 = shl i32 %14, %10, !dbg !4450
  %16 = xor i32 %15, %11, !dbg !4451
  store i32 %16, i32* %8, align 4, !dbg !4451, !tbaa !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4426, metadata !1298), !dbg !4433
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4452
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13, !dbg !4453
  ret i8* %17, !dbg !4454
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4455 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4459, metadata !1138), !dbg !4461
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4460, metadata !1138), !dbg !4462
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4423, metadata !1138) #13, !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4424, metadata !1138) #13, !dbg !4465
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4425, metadata !1138) #13, !dbg !4466
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4467
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #13, !dbg !4467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4468, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4426, metadata !1298) #13, !dbg !4469
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2895, metadata !1138) #13, !dbg !4470
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2896, metadata !1138) #13, !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2897, metadata !1138) #13, !dbg !4473
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2898, metadata !1138) #13, !dbg !4474
  %5 = lshr i8 %1, 5, !dbg !4475
  %6 = zext i8 %5 to i64, !dbg !4475
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4476
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2899, metadata !1138) #13, !dbg !4477
  %8 = and i8 %1, 31, !dbg !4478
  %9 = zext i8 %8 to i32, !dbg !4479
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2901, metadata !1138) #13, !dbg !4480
  %10 = load i32, i32* %7, align 4, !dbg !4481, !tbaa !1248
  %11 = lshr i32 %10, %9, !dbg !4482
  %12 = and i32 %11, 1, !dbg !4483
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2902, metadata !1138) #13, !dbg !4484
  %13 = xor i32 %12, 1, !dbg !4485
  %14 = shl i32 %13, %9, !dbg !4486
  %15 = xor i32 %14, %10, !dbg !4487
  store i32 %15, i32* %7, align 4, !dbg !4487, !tbaa !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4426, metadata !1298) #13, !dbg !4469
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !4488
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #13, !dbg !4489
  ret i8* %16, !dbg !4490
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4491 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4493, metadata !1138), !dbg !4494
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4459, metadata !1138) #13, !dbg !4495
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4460, metadata !1138) #13, !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4423, metadata !1138) #13, !dbg !4498
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4424, metadata !1138) #13, !dbg !4500
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4425, metadata !1138) #13, !dbg !4501
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4502
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #13, !dbg !4502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4503, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4426, metadata !1298) #13, !dbg !4504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2895, metadata !1138) #13, !dbg !4505
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2896, metadata !1138) #13, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2897, metadata !1138) #13, !dbg !4508
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2898, metadata !1138) #13, !dbg !4509
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4510
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2899, metadata !1138) #13, !dbg !4511
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2901, metadata !1138) #13, !dbg !4512
  %5 = load i32, i32* %4, align 4, !dbg !4513, !tbaa !1248
  %6 = or i32 %5, 67108864, !dbg !4514
  store i32 %6, i32* %4, align 4, !dbg !4514, !tbaa !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4426, metadata !1298) #13, !dbg !4504
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !4515
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #13, !dbg !4516
  ret i8* %7, !dbg !4517
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4518 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4520, metadata !1138), !dbg !4522
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4521, metadata !1138), !dbg !4523
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4423, metadata !1138) #13, !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4424, metadata !1138) #13, !dbg !4526
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4425, metadata !1138) #13, !dbg !4527
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4528
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #13, !dbg !4528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4529, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4426, metadata !1298) #13, !dbg !4530
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2895, metadata !1138) #13, !dbg !4531
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2896, metadata !1138) #13, !dbg !4533
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2897, metadata !1138) #13, !dbg !4534
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2898, metadata !1138) #13, !dbg !4535
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4536
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2899, metadata !1138) #13, !dbg !4537
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2901, metadata !1138) #13, !dbg !4538
  %6 = load i32, i32* %5, align 4, !dbg !4539, !tbaa !1248
  %7 = or i32 %6, 67108864, !dbg !4540
  store i32 %7, i32* %5, align 4, !dbg !4540, !tbaa !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4426, metadata !1298) #13, !dbg !4530
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !4541
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #13, !dbg !4542
  ret i8* %8, !dbg !4543
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4544 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4299, metadata !4305), !dbg !4550
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4546, metadata !1138), !dbg !4552
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4547, metadata !1138), !dbg !4553
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4548, metadata !1138), !dbg !4554
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4555
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13, !dbg !4555
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4304, metadata !1138) #13, !dbg !4556
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4557
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4557
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4299, metadata !1138) #13, !dbg !4550
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !4315) #13, !dbg !4550
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4550
  %9 = icmp eq i32 %1, 10, !dbg !4558
  br i1 %9, label %10, label %11, !dbg !4559

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4560, !noalias !4561
  unreachable, !dbg !4560

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4299, metadata !4315) #13, !dbg !4550
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4564
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4565
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4566
  store i32 %1, i32* %13, align 8, !dbg !4566
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4566
  %15 = bitcast i32* %14 to i8*, !dbg !4566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4549, metadata !1298), !dbg !4567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !1138), !dbg !4568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2896, metadata !1138), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2897, metadata !1138), !dbg !4571
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2898, metadata !1138), !dbg !4572
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4573
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2899, metadata !1138), !dbg !4574
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2901, metadata !1138), !dbg !4575
  %17 = load i32, i32* %16, align 4, !dbg !4576, !tbaa !1248
  %18 = or i32 %17, 67108864, !dbg !4577
  store i32 %18, i32* %16, align 4, !dbg !4577, !tbaa !1248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4549, metadata !1298), !dbg !4567
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4578
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13, !dbg !4579
  ret i8* %19, !dbg !4580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4581 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4585, metadata !1138), !dbg !4589
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4586, metadata !1138), !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4587, metadata !1138), !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4588, metadata !1138), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4593, metadata !1138) #13, !dbg !4603
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4598, metadata !1138) #13, !dbg !4605
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4599, metadata !1138) #13, !dbg !4606
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4600, metadata !1138) #13, !dbg !4607
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4601, metadata !1138) #13, !dbg !4608
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4609
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13, !dbg !4609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4610, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4602, metadata !1298) #13, !dbg !4611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2945, metadata !1138) #13, !dbg !4612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !1138) #13, !dbg !4614
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2947, metadata !1138) #13, !dbg !4615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2945, metadata !1138) #13, !dbg !4612
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2945, metadata !1138) #13, !dbg !4612
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4616
  store i32 10, i32* %7, align 8, !dbg !4617, !tbaa !2875
  %8 = icmp ne i8* %1, null, !dbg !4618
  %9 = icmp ne i8* %2, null, !dbg !4619
  %10 = and i1 %8, %9, !dbg !4620
  br i1 %10, label %12, label %11, !dbg !4620

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4621
  unreachable, !dbg !4621

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4622
  store i8* %1, i8** %13, align 8, !dbg !4623, !tbaa !2964
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4624
  store i8* %2, i8** %14, align 8, !dbg !4625, !tbaa !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4602, metadata !1298) #13, !dbg !4611
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !4626
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13, !dbg !4627
  ret i8* %15, !dbg !4628
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4594 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4593, metadata !1138), !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4598, metadata !1138), !dbg !4630
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4599, metadata !1138), !dbg !4631
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4600, metadata !1138), !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4601, metadata !1138), !dbg !4633
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4634
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13, !dbg !4634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4635, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4602, metadata !1298), !dbg !4636
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2945, metadata !1138) #13, !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !1138) #13, !dbg !4639
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2947, metadata !1138) #13, !dbg !4640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2945, metadata !1138) #13, !dbg !4637
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2945, metadata !1138) #13, !dbg !4637
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4641
  store i32 10, i32* %8, align 8, !dbg !4642, !tbaa !2875
  %9 = icmp ne i8* %1, null, !dbg !4643
  %10 = icmp ne i8* %2, null, !dbg !4644
  %11 = and i1 %9, %10, !dbg !4645
  br i1 %11, label %13, label %12, !dbg !4645

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !4646
  unreachable, !dbg !4646

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4647
  store i8* %1, i8** %14, align 8, !dbg !4648, !tbaa !2964
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4649
  store i8* %2, i8** %15, align 8, !dbg !4650, !tbaa !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4602, metadata !1298), !dbg !4636
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4651
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13, !dbg !4652
  ret i8* %16, !dbg !4653
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4654 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4658, metadata !1138), !dbg !4661
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4659, metadata !1138), !dbg !4662
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4660, metadata !1138), !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4585, metadata !1138) #13, !dbg !4664
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4586, metadata !1138) #13, !dbg !4666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4587, metadata !1138) #13, !dbg !4667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4588, metadata !1138) #13, !dbg !4668
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4593, metadata !1138) #13, !dbg !4669
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4598, metadata !1138) #13, !dbg !4671
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4599, metadata !1138) #13, !dbg !4672
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4600, metadata !1138) #13, !dbg !4673
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4601, metadata !1138) #13, !dbg !4674
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4675
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13, !dbg !4675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4676, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4602, metadata !1298) #13, !dbg !4677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2945, metadata !1138) #13, !dbg !4678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2946, metadata !1138) #13, !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2947, metadata !1138) #13, !dbg !4681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2945, metadata !1138) #13, !dbg !4678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2945, metadata !1138) #13, !dbg !4678
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4682
  store i32 10, i32* %6, align 8, !dbg !4683, !tbaa !2875
  %7 = icmp ne i8* %0, null, !dbg !4684
  %8 = icmp ne i8* %1, null, !dbg !4685
  %9 = and i1 %7, %8, !dbg !4686
  br i1 %9, label %11, label %10, !dbg !4686

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4687
  unreachable, !dbg !4687

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4688
  store i8* %0, i8** %12, align 8, !dbg !4689, !tbaa !2964
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4690
  store i8* %1, i8** %13, align 8, !dbg !4691, !tbaa !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4602, metadata !1298) #13, !dbg !4677
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4692
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13, !dbg !4693
  ret i8* %14, !dbg !4694
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4695 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4699, metadata !1138), !dbg !4703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4700, metadata !1138), !dbg !4704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4701, metadata !1138), !dbg !4705
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4702, metadata !1138), !dbg !4706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4593, metadata !1138) #13, !dbg !4707
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4598, metadata !1138) #13, !dbg !4709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4599, metadata !1138) #13, !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4600, metadata !1138) #13, !dbg !4711
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4601, metadata !1138) #13, !dbg !4712
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4713
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13, !dbg !4713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13, !dbg !4714, !tbaa.struct !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4602, metadata !1298) #13, !dbg !4715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2945, metadata !1138) #13, !dbg !4716
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2946, metadata !1138) #13, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2947, metadata !1138) #13, !dbg !4719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2945, metadata !1138) #13, !dbg !4716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2945, metadata !1138) #13, !dbg !4716
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4720
  store i32 10, i32* %7, align 8, !dbg !4721, !tbaa !2875
  %8 = icmp ne i8* %0, null, !dbg !4722
  %9 = icmp ne i8* %1, null, !dbg !4723
  %10 = and i1 %8, %9, !dbg !4724
  br i1 %10, label %12, label %11, !dbg !4724

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4725
  unreachable, !dbg !4725

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4726
  store i8* %0, i8** %13, align 8, !dbg !4727, !tbaa !2964
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4728
  store i8* %1, i8** %14, align 8, !dbg !4729, !tbaa !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4602, metadata !1298) #13, !dbg !4715
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4730
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13, !dbg !4731
  ret i8* %15, !dbg !4732
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4733 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4737, metadata !1138), !dbg !4740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4738, metadata !1138), !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4739, metadata !1138), !dbg !4742
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4743
  ret i8* %4, !dbg !4744
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4745 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4749, metadata !1138), !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4750, metadata !1138), !dbg !4752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4737, metadata !1138) #13, !dbg !4753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4738, metadata !1138) #13, !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4739, metadata !1138) #13, !dbg !4756
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4757
  ret i8* %3, !dbg !4758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4759 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4763, metadata !1138), !dbg !4765
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4764, metadata !1138), !dbg !4766
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4737, metadata !1138) #13, !dbg !4767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4738, metadata !1138) #13, !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4739, metadata !1138) #13, !dbg !4770
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4771
  ret i8* %3, !dbg !4772
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4773 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4777, metadata !1138), !dbg !4778
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4763, metadata !1138) #13, !dbg !4779
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4764, metadata !1138) #13, !dbg !4781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4737, metadata !1138) #13, !dbg !4782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4738, metadata !1138) #13, !dbg !4784
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4739, metadata !1138) #13, !dbg !4785
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4786
  ret i8* %2, !dbg !4787
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_init(%struct.Tokens*) local_unnamed_addr #6 !dbg !4788 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4835, metadata !1138), !dbg !4836
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4837
  %3 = bitcast %struct.Tokens* %0 to i8*, !dbg !4837
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false), !dbg !4838
  %4 = tail call i32 @_obstack_begin(%struct.obstack* %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4837
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4839
  %6 = tail call i32 @_obstack_begin(%struct.obstack* %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4839
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4840
  %8 = tail call i32 @_obstack_begin(%struct.obstack* %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_free(%struct.Tokens*) local_unnamed_addr #6 !dbg !4842 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !4844, metadata !1138), !dbg !4855
  tail call void @llvm.dbg.value(metadata %struct.obstack* %2, i64 0, metadata !4845, metadata !1138), !dbg !4856
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4848, metadata !1138), !dbg !4856
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4856
  tail call void @_obstack_free(%struct.obstack* %2, i8* null) #13, !dbg !4857
  tail call void @llvm.dbg.value(metadata %struct.obstack* %3, i64 0, metadata !4849, metadata !1138), !dbg !4860
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4851, metadata !1138), !dbg !4860
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4860
  tail call void @_obstack_free(%struct.obstack* %3, i8* null) #13, !dbg !4861
  tail call void @llvm.dbg.value(metadata %struct.obstack* %4, i64 0, metadata !4852, metadata !1138), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4854, metadata !1138), !dbg !4864
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4864
  tail call void @_obstack_free(%struct.obstack* %4, i8* null) #13, !dbg !4865
  ret void, !dbg !4868
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @readtokens0(%struct._IO_FILE* nocapture, %struct.Tokens*) local_unnamed_addr #6 !dbg !4869 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4913, metadata !1138), !dbg !4950
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %1, i64 0, metadata !4914, metadata !1138), !dbg !4951
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4915, metadata !1138), !dbg !4953
  %4 = icmp eq i32 %3, -1, !dbg !4954
  br i1 %4, label %5, label %9, !dbg !4955

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, !dbg !4956
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3, !dbg !4956
  %8 = bitcast i8** %7 to i64*, !dbg !4956
  br label %16, !dbg !4955

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %11 = bitcast i8** %10 to i64*
  %12 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %13 = bitcast i8** %12 to i64*
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  br label %36, !dbg !4955

; <label>:15:                                     ; preds = %49
  br label %16, !dbg !4956

; <label>:16:                                     ; preds = %15, %5
  %17 = phi i64* [ %8, %5 ], [ %13, %15 ], !dbg !4956
  %18 = phi i8** [ %7, %5 ], [ %12, %15 ], !dbg !4956
  %19 = phi %struct.obstack* [ %6, %5 ], [ %14, %15 ], !dbg !4956
  tail call void @llvm.dbg.value(metadata %struct.obstack* %19, i64 0, metadata !4920, metadata !1138), !dbg !4956
  %20 = load i64, i64* %17, align 8, !dbg !4956, !tbaa !4957
  %21 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 2, !dbg !4956
  %22 = bitcast i8** %21 to i64*, !dbg !4956
  %23 = load i64, i64* %22, align 8, !dbg !4956, !tbaa !4958
  %24 = icmp eq i64 %20, %23, !dbg !4959
  br i1 %24, label %53, label %25, !dbg !4960

; <label>:25:                                     ; preds = %16
  %26 = inttoptr i64 %20 to i8*, !dbg !4960
  tail call void @llvm.dbg.value(metadata %struct.obstack* %19, i64 0, metadata !4924, metadata !1138), !dbg !4961
  tail call void @llvm.dbg.value(metadata %struct.obstack* %19, i64 0, metadata !4928, metadata !1138), !dbg !4962
  %27 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4, !dbg !4962
  %28 = bitcast i8** %27 to i64*, !dbg !4962
  %29 = load i64, i64* %28, align 8, !dbg !4962, !tbaa !4963
  %30 = icmp eq i64 %29, %20, !dbg !4964
  br i1 %30, label %31, label %33, !dbg !4961

; <label>:31:                                     ; preds = %25
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %19, i64 1) #13, !dbg !4965
  %32 = load i8*, i8** %18, align 8, !tbaa !4957
  br label %33, !dbg !4965

; <label>:33:                                     ; preds = %31, %25
  %34 = phi i8* [ %32, %31 ], [ %26, %25 ], !dbg !4967
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !4967
  store i8* %35, i8** %18, align 8, !dbg !4967, !tbaa !4957
  store i8 0, i8* %34, align 1, !dbg !4967, !tbaa !1267
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4969
  br label %53

; <label>:36:                                     ; preds = %9, %49
  %37 = phi i32 [ %3, %9 ], [ %50, %49 ]
  tail call void @llvm.dbg.value(metadata %struct.obstack* %14, i64 0, metadata !4931, metadata !1138), !dbg !4970
  tail call void @llvm.dbg.value(metadata %struct.obstack* %14, i64 0, metadata !4933, metadata !1138), !dbg !4971
  %38 = load i64, i64* %11, align 8, !dbg !4971, !tbaa !4963
  %39 = load i64, i64* %13, align 8, !dbg !4971, !tbaa !4957
  %40 = icmp eq i64 %38, %39, !dbg !4972
  %41 = inttoptr i64 %39 to i8*, !dbg !4970
  br i1 %40, label %42, label %44, !dbg !4970

; <label>:42:                                     ; preds = %36
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %14, i64 1) #13, !dbg !4973
  %43 = load i8*, i8** %12, align 8, !tbaa !4957
  br label %44, !dbg !4973

; <label>:44:                                     ; preds = %42, %36
  %45 = phi i8* [ %43, %42 ], [ %41, %36 ], !dbg !4975
  %46 = trunc i32 %37 to i8, !dbg !4975
  %47 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !4975
  store i8* %47, i8** %12, align 8, !dbg !4975, !tbaa !4957
  store i8 %46, i8* %45, align 1, !dbg !4975, !tbaa !1267
  %48 = icmp eq i32 %37, 0, !dbg !4977
  br i1 %48, label %52, label %49, !dbg !4979

; <label>:49:                                     ; preds = %44, %52
  %50 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !4915, metadata !1138), !dbg !4953
  %51 = icmp eq i32 %50, -1, !dbg !4954
  br i1 %51, label %15, label %36, !dbg !4955

; <label>:52:                                     ; preds = %44
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4980
  br label %49, !dbg !4980

; <label>:53:                                     ; preds = %16, %33
  tail call void @llvm.dbg.value(metadata %struct.obstack* %65, i64 0, metadata !4936, metadata !1138), !dbg !4981
  tail call void @llvm.dbg.value(metadata %struct.obstack* %65, i64 0, metadata !4938, metadata !1138), !dbg !4982
  %54 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 4, !dbg !4982
  %55 = bitcast i8** %54 to i64*, !dbg !4982
  %56 = load i64, i64* %55, align 8, !dbg !4982, !tbaa !4963
  %57 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 3, !dbg !4982
  %58 = bitcast i8** %57 to i64*, !dbg !4982
  %59 = load i64, i64* %58, align 8, !dbg !4982, !tbaa !4957
  %60 = sub i64 %56, %59, !dbg !4982
  %61 = icmp ult i64 %60, 8, !dbg !4983
  br i1 %61, label %64, label %62, !dbg !4981

; <label>:62:                                     ; preds = %53
  %63 = inttoptr i64 %59 to i8**, !dbg !4981
  br label %68, !dbg !4981

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, !dbg !4981
  tail call void @_obstack_newchunk(%struct.obstack* %65, i64 8) #13, !dbg !4984
  %66 = bitcast i8** %57 to i8***
  %67 = load i8**, i8*** %66, align 8, !tbaa !4957
  br label %68, !dbg !4984

; <label>:68:                                     ; preds = %62, %64
  %69 = phi i8** [ %67, %64 ], [ %63, %62 ], !dbg !4986
  tail call void @llvm.dbg.value(metadata %struct.obstack* %65, i64 0, metadata !4941, metadata !1138), !dbg !4988
  store i8* null, i8** %69, align 8, !dbg !4986, !tbaa !1146
  %70 = load i8*, i8** %57, align 8, !dbg !4986, !tbaa !4957
  %71 = getelementptr inbounds i8, i8* %70, i64 8, !dbg !4986
  store i8* %71, i8** %57, align 8, !dbg !4986, !tbaa !4957
  tail call void @llvm.dbg.value(metadata %struct.obstack* %65, i64 0, metadata !4944, metadata !1138), !dbg !4989
  %72 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 2, !dbg !4989
  %73 = load i8*, i8** %72, align 8, !dbg !4989, !tbaa !4958
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !4946, metadata !1138), !dbg !4989
  %74 = icmp eq i8* %71, %73, !dbg !4990
  %75 = ptrtoint i8* %71 to i64, !dbg !4989
  br i1 %74, label %76, label %80, !dbg !4989

; <label>:76:                                     ; preds = %68
  %77 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 10, !dbg !4992
  %78 = load i8, i8* %77, align 8, !dbg !4992
  %79 = or i8 %78, 2, !dbg !4992
  store i8 %79, i8* %77, align 8, !dbg !4992
  br label %80, !dbg !4992

; <label>:80:                                     ; preds = %76, %68
  %81 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 6, !dbg !4994
  %82 = load i64, i64* %81, align 8, !dbg !4994, !tbaa !4996
  %83 = add i64 %82, %75, !dbg !4994
  %84 = xor i64 %82, -1, !dbg !4994
  %85 = and i64 %83, %84, !dbg !4994
  %86 = getelementptr inbounds i8, i8* null, i64 %85, !dbg !4994
  store i8* %86, i8** %57, align 8, !dbg !4994, !tbaa !4957
  %87 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 1, !dbg !4997
  %88 = bitcast %struct._obstack_chunk** %87 to i64*, !dbg !4997
  %89 = load i64, i64* %88, align 8, !dbg !4997, !tbaa !5000
  %90 = ptrtoint i8* %86 to i64, !dbg !4997
  %91 = sub i64 %90, %89, !dbg !4997
  %92 = load i8*, i8** %54, align 8, !dbg !4997, !tbaa !4963
  %93 = ptrtoint i8* %92 to i64, !dbg !4997
  %94 = sub i64 %93, %89, !dbg !4997
  %95 = icmp ugt i64 %91, %94, !dbg !4997
  br i1 %95, label %96, label %97, !dbg !4994

; <label>:96:                                     ; preds = %80
  store i8* %92, i8** %57, align 8, !dbg !5001, !tbaa !4957
  br label %97, !dbg !5001

; <label>:97:                                     ; preds = %96, %80
  %98 = phi i64 [ %93, %96 ], [ %90, %80 ], !dbg !5003
  %99 = bitcast i8** %72 to i64*, !dbg !5003
  store i64 %98, i64* %99, align 8, !dbg !5003, !tbaa !4958
  %100 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 1, !dbg !5005
  %101 = bitcast i8*** %100 to i8**, !dbg !5007
  store i8* %73, i8** %101, align 8, !dbg !5007, !tbaa !1347
  %102 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 2, !dbg !5008
  %103 = load i8*, i8** %102, align 8, !dbg !5008, !tbaa !4958
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4949, metadata !1138), !dbg !5008
  %104 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 3, !dbg !5009
  %105 = load i8*, i8** %104, align 8, !dbg !5009, !tbaa !4957
  %106 = icmp eq i8* %105, %103, !dbg !5009
  %107 = ptrtoint i8* %105 to i64, !dbg !5008
  br i1 %106, label %108, label %112, !dbg !5008

; <label>:108:                                    ; preds = %97
  %109 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 10, !dbg !5011
  %110 = load i8, i8* %109, align 8, !dbg !5011
  %111 = or i8 %110, 2, !dbg !5011
  store i8 %111, i8* %109, align 8, !dbg !5011
  br label %112, !dbg !5011

; <label>:112:                                    ; preds = %108, %97
  %113 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 6, !dbg !5013
  %114 = load i64, i64* %113, align 8, !dbg !5013, !tbaa !4996
  %115 = add i64 %114, %107, !dbg !5013
  %116 = xor i64 %114, -1, !dbg !5013
  %117 = and i64 %115, %116, !dbg !5013
  %118 = getelementptr inbounds i8, i8* null, i64 %117, !dbg !5013
  store i8* %118, i8** %104, align 8, !dbg !5013, !tbaa !4957
  %119 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 1, !dbg !5015
  %120 = bitcast %struct._obstack_chunk** %119 to i64*, !dbg !5015
  %121 = load i64, i64* %120, align 8, !dbg !5015, !tbaa !5000
  %122 = ptrtoint i8* %118 to i64, !dbg !5015
  %123 = sub i64 %122, %121, !dbg !5015
  %124 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 4, !dbg !5015
  %125 = load i8*, i8** %124, align 8, !dbg !5015, !tbaa !4963
  %126 = ptrtoint i8* %125 to i64, !dbg !5015
  %127 = sub i64 %126, %121, !dbg !5015
  %128 = icmp ugt i64 %123, %127, !dbg !5015
  br i1 %128, label %129, label %130, !dbg !5013

; <label>:129:                                    ; preds = %112
  store i8* %125, i8** %104, align 8, !dbg !5018, !tbaa !4957
  br label %130, !dbg !5018

; <label>:130:                                    ; preds = %129, %112
  %131 = phi i64 [ %126, %129 ], [ %122, %112 ], !dbg !5020
  %132 = bitcast i8** %102 to i64*, !dbg !5020
  store i64 %131, i64* %132, align 8, !dbg !5020, !tbaa !4958
  %133 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 2, !dbg !5022
  %134 = bitcast i64** %133 to i8**, !dbg !5023
  store i8* %103, i8** %134, align 8, !dbg !5023, !tbaa !5024
  %135 = tail call i32 @ferror(%struct._IO_FILE* %0) #13, !dbg !5025
  %136 = icmp eq i32 %135, 0, !dbg !5026
  ret i1 %136, !dbg !5027
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_token(%struct.Tokens*) unnamed_addr #6 !dbg !5028 {
  tail call void @llvm.dbg.value(metadata %struct.Tokens* %0, i64 0, metadata !5030, metadata !1138), !dbg !5052
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 3, !dbg !5053
  %3 = bitcast i8** %2 to i64*, !dbg !5053
  %4 = load i64, i64* %3, align 8, !dbg !5053, !tbaa !4957
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 2, !dbg !5053
  %6 = bitcast i8** %5 to i64*, !dbg !5053
  %7 = load i64, i64* %6, align 8, !dbg !5053, !tbaa !4958
  %8 = add i64 %4, -1, !dbg !5053
  %9 = sub i64 %8, %7, !dbg !5054
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5031, metadata !1138), !dbg !5055
  %10 = inttoptr i64 %7 to i8*, !dbg !5056
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !5037, metadata !1138), !dbg !5056
  %11 = inttoptr i64 %4 to i8*, !dbg !5057
  %12 = icmp eq i8* %11, %10, !dbg !5057
  br i1 %12, label %13, label %17, !dbg !5056

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 10, !dbg !5059
  %15 = load i8, i8* %14, align 8, !dbg !5059
  %16 = or i8 %15, 2, !dbg !5059
  store i8 %16, i8* %14, align 8, !dbg !5059
  br label %17, !dbg !5059

; <label>:17:                                     ; preds = %13, %1
  %18 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 6, !dbg !5061
  %19 = load i64, i64* %18, align 8, !dbg !5061, !tbaa !4996
  %20 = add i64 %19, %4, !dbg !5061
  %21 = xor i64 %19, -1, !dbg !5061
  %22 = and i64 %20, %21, !dbg !5061
  %23 = getelementptr inbounds i8, i8* null, i64 %22, !dbg !5061
  store i8* %23, i8** %2, align 8, !dbg !5061, !tbaa !4957
  %24 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 1, !dbg !5063
  %25 = bitcast %struct._obstack_chunk** %24 to i64*, !dbg !5063
  %26 = load i64, i64* %25, align 8, !dbg !5063, !tbaa !5000
  %27 = ptrtoint i8* %23 to i64, !dbg !5063
  %28 = sub i64 %27, %26, !dbg !5063
  %29 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 4, !dbg !5063
  %30 = load i8*, i8** %29, align 8, !dbg !5063, !tbaa !4963
  %31 = ptrtoint i8* %30 to i64, !dbg !5063
  %32 = sub i64 %31, %26, !dbg !5063
  %33 = icmp ugt i64 %28, %32, !dbg !5063
  br i1 %33, label %34, label %35, !dbg !5061

; <label>:34:                                     ; preds = %17
  store i8* %30, i8** %2, align 8, !dbg !5066, !tbaa !4957
  br label %35, !dbg !5066

; <label>:35:                                     ; preds = %34, %17
  %36 = phi i64 [ %31, %34 ], [ %27, %17 ], !dbg !5068
  store i64 %36, i64* %6, align 8, !dbg !5068, !tbaa !4958
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !5034, metadata !1138), !dbg !5070
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !5038, metadata !1138), !dbg !5071
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !5040, metadata !1138), !dbg !5072
  %37 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 4, !dbg !5072
  %38 = bitcast i8** %37 to i64*, !dbg !5072
  %39 = load i64, i64* %38, align 8, !dbg !5072, !tbaa !4963
  %40 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 3, !dbg !5072
  %41 = bitcast i8** %40 to i64*, !dbg !5072
  %42 = load i64, i64* %41, align 8, !dbg !5072, !tbaa !4957
  %43 = sub i64 %39, %42, !dbg !5072
  %44 = icmp ult i64 %43, 8, !dbg !5073
  br i1 %44, label %47, label %45, !dbg !5071

; <label>:45:                                     ; preds = %35
  %46 = inttoptr i64 %42 to i8**, !dbg !5071
  br label %51, !dbg !5071

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !5071
  tail call void @_obstack_newchunk(%struct.obstack* %48, i64 8) #13, !dbg !5074
  %49 = bitcast i8** %40 to i8***
  %50 = load i8**, i8*** %49, align 8, !tbaa !4957
  br label %51, !dbg !5074

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8** [ %50, %47 ], [ %46, %45 ], !dbg !5076
  tail call void @llvm.dbg.value(metadata %struct.obstack* %48, i64 0, metadata !5043, metadata !1138), !dbg !5078
  store i8* %10, i8** %52, align 8, !dbg !5076, !tbaa !1146
  %53 = load i8*, i8** %40, align 8, !dbg !5076, !tbaa !4957
  %54 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !5076
  store i8* %54, i8** %40, align 8, !dbg !5076, !tbaa !4957
  tail call void @llvm.dbg.value(metadata %struct.obstack* %66, i64 0, metadata !5046, metadata !1138), !dbg !5079
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !5048, metadata !1138), !dbg !5079
  tail call void @llvm.dbg.value(metadata %struct.obstack* %66, i64 0, metadata !5049, metadata !1138), !dbg !5080
  %55 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 4, !dbg !5080
  %56 = bitcast i8** %55 to i64*, !dbg !5080
  %57 = load i64, i64* %56, align 8, !dbg !5080, !tbaa !4963
  %58 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 3, !dbg !5080
  %59 = bitcast i8** %58 to i64*, !dbg !5080
  %60 = load i64, i64* %59, align 8, !dbg !5080, !tbaa !4957
  %61 = sub i64 %57, %60, !dbg !5080
  %62 = icmp ult i64 %61, 8, !dbg !5081
  br i1 %62, label %65, label %63, !dbg !5079

; <label>:63:                                     ; preds = %51
  %64 = inttoptr i64 %60 to i64*, !dbg !5079
  br label %69, !dbg !5079

; <label>:65:                                     ; preds = %51
  %66 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !5079
  tail call void @_obstack_newchunk(%struct.obstack* %66, i64 8) #13, !dbg !5082
  %67 = bitcast i8** %58 to i64**
  %68 = load i64*, i64** %67, align 8, !tbaa !4957
  br label %69, !dbg !5082

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i64* [ %68, %65 ], [ %64, %63 ], !dbg !5084
  store i64 %9, i64* %70, align 1, !dbg !5079
  %71 = load i8*, i8** %58, align 8, !dbg !5084, !tbaa !4957
  %72 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !5084
  store i8* %72, i8** %58, align 8, !dbg !5084, !tbaa !4957
  %73 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 0, !dbg !5086
  %74 = load i64, i64* %73, align 8, !dbg !5087, !tbaa !1352
  %75 = add i64 %74, 1, !dbg !5087
  store i64 %75, i64* %73, align 8, !dbg !5087, !tbaa !1352
  ret void, !dbg !5088
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !1071 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1075, metadata !1138), !dbg !5089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1076, metadata !1138), !dbg !5090
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1077, metadata !1138), !dbg !5091
  br label %4, !dbg !5092

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !5091

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1077, metadata !1138), !dbg !5091
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #13, !dbg !5093
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1078, metadata !1138), !dbg !5094
  %8 = icmp sgt i64 %7, -1, !dbg !5095
  br i1 %8, label %17, label %9, !dbg !5097

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !5098
  %11 = load i32, i32* %10, align 4, !dbg !5098, !tbaa !1248
  %12 = icmp eq i32 %11, 4, !dbg !5098
  br i1 %12, label %6, label %13, !dbg !5100, !llvm.loop !5101

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !5104
  %15 = icmp ugt i64 %5, 2147475456, !dbg !5106
  %16 = and i1 %15, %14, !dbg !5108
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !5109

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !5109

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !5109
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !5110 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5155, metadata !1138), !dbg !5161
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5156, metadata !1138), !dbg !5162
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5157, metadata !1138), !dbg !5163
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5158, metadata !1138), !dbg !5164
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5159, metadata !1138), !dbg !5165
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5160, metadata !1138), !dbg !5166
  %7 = icmp eq i8* %1, null, !dbg !5167
  br i1 %7, label %10, label %8, !dbg !5169

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !5170
  br label %12, !dbg !5170

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.108, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !5171
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.109, i64 0, i64 0), i32 5) #13, !dbg !5172
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #13, !dbg !5173
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.110, i64 0, i64 0), i32 5) #13, !dbg !5175
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #13, !dbg !5176
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
  ], !dbg !5177

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !5178
  unreachable, !dbg !5178

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.111, i64 0, i64 0), i32 5) #13, !dbg !5180
  %20 = load i8*, i8** %4, align 8, !dbg !5180, !tbaa !1146
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13, !dbg !5181
  br label %146, !dbg !5183

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.112, i64 0, i64 0), i32 5) #13, !dbg !5184
  %24 = load i8*, i8** %4, align 8, !dbg !5184, !tbaa !1146
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5184
  %26 = load i8*, i8** %25, align 8, !dbg !5184, !tbaa !1146
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13, !dbg !5185
  br label %146, !dbg !5186

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.113, i64 0, i64 0), i32 5) #13, !dbg !5187
  %30 = load i8*, i8** %4, align 8, !dbg !5187, !tbaa !1146
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5187
  %32 = load i8*, i8** %31, align 8, !dbg !5187, !tbaa !1146
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5187
  %34 = load i8*, i8** %33, align 8, !dbg !5187, !tbaa !1146
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13, !dbg !5188
  br label %146, !dbg !5189

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.114, i64 0, i64 0), i32 5) #13, !dbg !5190
  %38 = load i8*, i8** %4, align 8, !dbg !5190, !tbaa !1146
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5190
  %40 = load i8*, i8** %39, align 8, !dbg !5190, !tbaa !1146
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5190
  %42 = load i8*, i8** %41, align 8, !dbg !5190, !tbaa !1146
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5190
  %44 = load i8*, i8** %43, align 8, !dbg !5190, !tbaa !1146
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #13, !dbg !5191
  br label %146, !dbg !5192

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.115, i64 0, i64 0), i32 5) #13, !dbg !5193
  %48 = load i8*, i8** %4, align 8, !dbg !5193, !tbaa !1146
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5193
  %50 = load i8*, i8** %49, align 8, !dbg !5193, !tbaa !1146
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5193
  %52 = load i8*, i8** %51, align 8, !dbg !5193, !tbaa !1146
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5193
  %54 = load i8*, i8** %53, align 8, !dbg !5193, !tbaa !1146
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5193
  %56 = load i8*, i8** %55, align 8, !dbg !5193, !tbaa !1146
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #13, !dbg !5194
  br label %146, !dbg !5195

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.116, i64 0, i64 0), i32 5) #13, !dbg !5196
  %60 = load i8*, i8** %4, align 8, !dbg !5196, !tbaa !1146
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5196
  %62 = load i8*, i8** %61, align 8, !dbg !5196, !tbaa !1146
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5196
  %64 = load i8*, i8** %63, align 8, !dbg !5196, !tbaa !1146
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5196
  %66 = load i8*, i8** %65, align 8, !dbg !5196, !tbaa !1146
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5196
  %68 = load i8*, i8** %67, align 8, !dbg !5196, !tbaa !1146
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5196
  %70 = load i8*, i8** %69, align 8, !dbg !5196, !tbaa !1146
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #13, !dbg !5197
  br label %146, !dbg !5198

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.117, i64 0, i64 0), i32 5) #13, !dbg !5199
  %74 = load i8*, i8** %4, align 8, !dbg !5199, !tbaa !1146
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5199
  %76 = load i8*, i8** %75, align 8, !dbg !5199, !tbaa !1146
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5199
  %78 = load i8*, i8** %77, align 8, !dbg !5199, !tbaa !1146
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5199
  %80 = load i8*, i8** %79, align 8, !dbg !5199, !tbaa !1146
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5199
  %82 = load i8*, i8** %81, align 8, !dbg !5199, !tbaa !1146
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5199
  %84 = load i8*, i8** %83, align 8, !dbg !5199, !tbaa !1146
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5199
  %86 = load i8*, i8** %85, align 8, !dbg !5199, !tbaa !1146
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #13, !dbg !5200
  br label %146, !dbg !5201

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.118, i64 0, i64 0), i32 5) #13, !dbg !5202
  %90 = load i8*, i8** %4, align 8, !dbg !5202, !tbaa !1146
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5202
  %92 = load i8*, i8** %91, align 8, !dbg !5202, !tbaa !1146
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5202
  %94 = load i8*, i8** %93, align 8, !dbg !5202, !tbaa !1146
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5202
  %96 = load i8*, i8** %95, align 8, !dbg !5202, !tbaa !1146
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5202
  %98 = load i8*, i8** %97, align 8, !dbg !5202, !tbaa !1146
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5202
  %100 = load i8*, i8** %99, align 8, !dbg !5202, !tbaa !1146
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5202
  %102 = load i8*, i8** %101, align 8, !dbg !5202, !tbaa !1146
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5202
  %104 = load i8*, i8** %103, align 8, !dbg !5202, !tbaa !1146
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #13, !dbg !5203
  br label %146, !dbg !5204

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.119, i64 0, i64 0), i32 5) #13, !dbg !5205
  %108 = load i8*, i8** %4, align 8, !dbg !5205, !tbaa !1146
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5205
  %110 = load i8*, i8** %109, align 8, !dbg !5205, !tbaa !1146
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5205
  %112 = load i8*, i8** %111, align 8, !dbg !5205, !tbaa !1146
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5205
  %114 = load i8*, i8** %113, align 8, !dbg !5205, !tbaa !1146
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5205
  %116 = load i8*, i8** %115, align 8, !dbg !5205, !tbaa !1146
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5205
  %118 = load i8*, i8** %117, align 8, !dbg !5205, !tbaa !1146
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5205
  %120 = load i8*, i8** %119, align 8, !dbg !5205, !tbaa !1146
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5205
  %122 = load i8*, i8** %121, align 8, !dbg !5205, !tbaa !1146
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5205
  %124 = load i8*, i8** %123, align 8, !dbg !5205, !tbaa !1146
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #13, !dbg !5206
  br label %146, !dbg !5207

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.120, i64 0, i64 0), i32 5) #13, !dbg !5208
  %128 = load i8*, i8** %4, align 8, !dbg !5208, !tbaa !1146
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5208
  %130 = load i8*, i8** %129, align 8, !dbg !5208, !tbaa !1146
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5208
  %132 = load i8*, i8** %131, align 8, !dbg !5208, !tbaa !1146
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5208
  %134 = load i8*, i8** %133, align 8, !dbg !5208, !tbaa !1146
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5208
  %136 = load i8*, i8** %135, align 8, !dbg !5208, !tbaa !1146
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5208
  %138 = load i8*, i8** %137, align 8, !dbg !5208, !tbaa !1146
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5208
  %140 = load i8*, i8** %139, align 8, !dbg !5208, !tbaa !1146
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5208
  %142 = load i8*, i8** %141, align 8, !dbg !5208, !tbaa !1146
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5208
  %144 = load i8*, i8** %143, align 8, !dbg !5208, !tbaa !1146
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #13, !dbg !5209
  br label %146, !dbg !5210

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !5211
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !5212 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5216, metadata !1138), !dbg !5222
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5217, metadata !1138), !dbg !5223
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5218, metadata !1138), !dbg !5224
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5219, metadata !1138), !dbg !5225
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5220, metadata !1138), !dbg !5226
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5221, metadata !1138), !dbg !5227
  br label %6, !dbg !5228

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5221, metadata !1138), !dbg !5227
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5230
  %9 = load i8*, i8** %8, align 8, !dbg !5230, !tbaa !1146
  %10 = icmp eq i8* %9, null, !dbg !5233
  %11 = add i64 %7, 1, !dbg !5235
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5221, metadata !1138), !dbg !5227
  br i1 %10, label %12, label %6, !dbg !5233, !llvm.loop !5237

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5240
  ret void, !dbg !5241
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !5242 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5253, metadata !1138), !dbg !5261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5254, metadata !1138), !dbg !5262
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5255, metadata !1138), !dbg !5263
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5256, metadata !1138), !dbg !5264
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5257, metadata !1138), !dbg !5265
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5266
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #13, !dbg !5266
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5259, metadata !1138), !dbg !5267
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !5269
  %12 = icmp ult i32 %11, 41, !dbg !5269
  br i1 %12, label %13, label %18, !dbg !5269

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !5273
  %15 = sext i32 %11 to i64, !dbg !5273
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !5273
  %17 = add i32 %11, 8, !dbg !5273
  store i32 %17, i32* %8, align 8, !dbg !5273
  br label %21, !dbg !5273

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !5275
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !5275
  store i8* %20, i8** %10, align 8, !dbg !5275
  br label %21, !dbg !5275

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5269
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !5277
  %25 = load i8*, i8** %24, align 8, !dbg !5277
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5279
  store i8* %25, i8** %26, align 16, !dbg !5280, !tbaa !1146
  %27 = icmp eq i8* %25, null, !dbg !5281
  br i1 %27, label %30, label %28, !dbg !5282

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %29 = icmp ult i32 %22, 41, !dbg !5269
  br i1 %29, label %35, label %32, !dbg !5269

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5284
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #13, !dbg !5285
  ret void, !dbg !5285

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !5275
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !5275
  store i8* %34, i8** %10, align 8, !dbg !5275
  br label %40, !dbg !5275

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !5273
  %37 = sext i32 %22 to i64, !dbg !5273
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !5273
  %39 = add i32 %22, 8, !dbg !5273
  store i32 %39, i32* %8, align 8, !dbg !5273
  br label %40, !dbg !5273

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5269
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !5277
  %44 = load i8*, i8** %43, align 8, !dbg !5277
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5279
  store i8* %44, i8** %45, align 8, !dbg !5280, !tbaa !1146
  %46 = icmp eq i8* %44, null, !dbg !5281
  br i1 %46, label %30, label %47, !dbg !5282

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %48 = icmp ult i32 %41, 41, !dbg !5269
  br i1 %48, label %52, label %49, !dbg !5269

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !5275
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !5275
  store i8* %51, i8** %10, align 8, !dbg !5275
  br label %57, !dbg !5275

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !5273
  %54 = sext i32 %41 to i64, !dbg !5273
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !5273
  %56 = add i32 %41, 8, !dbg !5273
  store i32 %56, i32* %8, align 8, !dbg !5273
  br label %57, !dbg !5273

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5269
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !5277
  %61 = load i8*, i8** %60, align 8, !dbg !5277
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5279
  store i8* %61, i8** %62, align 16, !dbg !5280, !tbaa !1146
  %63 = icmp eq i8* %61, null, !dbg !5281
  br i1 %63, label %30, label %64, !dbg !5282

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %65 = icmp ult i32 %58, 41, !dbg !5269
  br i1 %65, label %69, label %66, !dbg !5269

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !5275
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5275
  store i8* %68, i8** %10, align 8, !dbg !5275
  br label %74, !dbg !5275

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !5273
  %71 = sext i32 %58 to i64, !dbg !5273
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !5273
  %73 = add i32 %58, 8, !dbg !5273
  store i32 %73, i32* %8, align 8, !dbg !5273
  br label %74, !dbg !5273

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5269
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !5277
  %78 = load i8*, i8** %77, align 8, !dbg !5277
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5279
  store i8* %78, i8** %79, align 8, !dbg !5280, !tbaa !1146
  %80 = icmp eq i8* %78, null, !dbg !5281
  br i1 %80, label %30, label %81, !dbg !5282

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %82 = icmp ult i32 %75, 41, !dbg !5269
  br i1 %82, label %86, label %83, !dbg !5269

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !5275
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !5275
  store i8* %85, i8** %10, align 8, !dbg !5275
  br label %91, !dbg !5275

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !5273
  %88 = sext i32 %75 to i64, !dbg !5273
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !5273
  %90 = add i32 %75, 8, !dbg !5273
  store i32 %90, i32* %8, align 8, !dbg !5273
  br label %91, !dbg !5273

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5269
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !5277
  %95 = load i8*, i8** %94, align 8, !dbg !5277
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5279
  store i8* %95, i8** %96, align 16, !dbg !5280, !tbaa !1146
  %97 = icmp eq i8* %95, null, !dbg !5281
  br i1 %97, label %30, label %98, !dbg !5282

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %99 = icmp ult i32 %92, 41, !dbg !5269
  br i1 %99, label %103, label %100, !dbg !5269

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !5275
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !5275
  store i8* %102, i8** %10, align 8, !dbg !5275
  br label %108, !dbg !5275

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !5273
  %105 = sext i32 %92 to i64, !dbg !5273
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !5273
  %107 = add i32 %92, 8, !dbg !5273
  store i32 %107, i32* %8, align 8, !dbg !5273
  br label %108, !dbg !5273

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !5277
  %111 = load i8*, i8** %110, align 8, !dbg !5277
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5279
  store i8* %111, i8** %112, align 8, !dbg !5280, !tbaa !1146
  %113 = icmp eq i8* %111, null, !dbg !5281
  br i1 %113, label %30, label %114, !dbg !5282

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %115 = load i8*, i8** %10, align 8, !dbg !5275
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !5275
  store i8* %116, i8** %10, align 8, !dbg !5275
  %117 = bitcast i8* %115 to i8**, !dbg !5277
  %118 = load i8*, i8** %117, align 8, !dbg !5277
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5279
  store i8* %118, i8** %119, align 16, !dbg !5280, !tbaa !1146
  %120 = icmp eq i8* %118, null, !dbg !5281
  br i1 %120, label %30, label %121, !dbg !5282

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %122 = load i8*, i8** %10, align 8, !dbg !5275
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !5275
  store i8* %123, i8** %10, align 8, !dbg !5275
  %124 = bitcast i8* %122 to i8**, !dbg !5277
  %125 = load i8*, i8** %124, align 8, !dbg !5277
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5279
  store i8* %125, i8** %126, align 8, !dbg !5280, !tbaa !1146
  %127 = icmp eq i8* %125, null, !dbg !5281
  br i1 %127, label %30, label %128, !dbg !5282

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %129 = load i8*, i8** %10, align 8, !dbg !5275
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !5275
  store i8* %130, i8** %10, align 8, !dbg !5275
  %131 = bitcast i8* %129 to i8**, !dbg !5277
  %132 = load i8*, i8** %131, align 8, !dbg !5277
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5279
  store i8* %132, i8** %133, align 16, !dbg !5280, !tbaa !1146
  %134 = icmp eq i8* %132, null, !dbg !5281
  br i1 %134, label %30, label %135, !dbg !5282

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %136 = load i8*, i8** %10, align 8, !dbg !5275
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !5275
  store i8* %137, i8** %10, align 8, !dbg !5275
  %138 = bitcast i8* %136 to i8**, !dbg !5277
  %139 = load i8*, i8** %138, align 8, !dbg !5277
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5279
  store i8* %139, i8** %140, align 8, !dbg !5280, !tbaa !1146
  %141 = icmp eq i8* %139, null, !dbg !5281
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5258, metadata !1138), !dbg !5268
  %142 = select i1 %141, i64 9, i64 10, !dbg !5282
  br label %30, !dbg !5282
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !5286 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5290, metadata !1138), !dbg !5300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5291, metadata !1138), !dbg !5301
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5292, metadata !1138), !dbg !5302
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5293, metadata !1138), !dbg !5303
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5304
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #13, !dbg !5304
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5294, metadata !1138), !dbg !5305
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5306
  call void @llvm.va_start(i8* nonnull %6), !dbg !5306
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5307
  call void @llvm.va_end(i8* nonnull %6), !dbg !5308
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #13, !dbg !5309
  ret void, !dbg !5309
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !5310 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.123, i64 0, i64 0), i32 5) #13, !dbg !5311
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.124, i64 0, i64 0)) #13, !dbg !5312
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.125, i64 0, i64 0), i32 5) #13, !dbg !5314
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.126, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.127, i64 0, i64 0)) #13, !dbg !5315
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.128, i64 0, i64 0), i32 5) #13, !dbg !5316
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5316, !tbaa !1146
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #13, !dbg !5317
  ret void, !dbg !5318
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #11 !dbg !5319 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5321, metadata !1138), !dbg !5323
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5322, metadata !1138), !dbg !5324
  %3 = udiv i64 9223372036854775807, %1, !dbg !5325
  %4 = icmp ult i64 %3, %0, !dbg !5325
  br i1 %4, label %5, label %6, !dbg !5327

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !5328
  unreachable, !dbg !5328

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5329
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5330, metadata !1138) #13, !dbg !5335
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !5337
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5334, metadata !1138) #13, !dbg !5338
  %9 = icmp eq i8* %8, null, !dbg !5339
  %10 = icmp ne i64 %7, 0, !dbg !5341
  %11 = and i1 %10, %9, !dbg !5343
  br i1 %11, label %12, label %13, !dbg !5343

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !5344
  unreachable, !dbg !5344

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !5345
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5331 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5330, metadata !1138), !dbg !5346
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5347
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5334, metadata !1138), !dbg !5348
  %3 = icmp eq i8* %2, null, !dbg !5349
  %4 = icmp ne i64 %0, 0, !dbg !5350
  %5 = and i1 %4, %3, !dbg !5351
  br i1 %5, label %6, label %7, !dbg !5351

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !5352
  unreachable, !dbg !5352

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5353
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #11 !dbg !5354 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5358, metadata !1138), !dbg !5361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5359, metadata !1138), !dbg !5362
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5360, metadata !1138), !dbg !5363
  %4 = udiv i64 9223372036854775807, %2, !dbg !5364
  %5 = icmp ult i64 %4, %1, !dbg !5364
  br i1 %5, label %6, label %7, !dbg !5366

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !5367
  unreachable, !dbg !5367

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !5368
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138) #13, !dbg !5373
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5372, metadata !1138) #13, !dbg !5375
  %9 = icmp eq i64 %8, 0, !dbg !5376
  %10 = icmp ne i8* %0, null, !dbg !5378
  %11 = and i1 %10, %9, !dbg !5380
  br i1 %11, label %12, label %13, !dbg !5380

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !5381
  br label %19, !dbg !5383

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !5384
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5369, metadata !1138) #13, !dbg !5373
  %15 = icmp eq i8* %14, null, !dbg !5385
  %16 = icmp ne i64 %8, 0, !dbg !5387
  %17 = and i1 %16, %15, !dbg !5389
  br i1 %17, label %18, label %19, !dbg !5389

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !5390
  unreachable, !dbg !5390

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !5391
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5370 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138), !dbg !5392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5372, metadata !1138), !dbg !5393
  %3 = icmp eq i64 %1, 0, !dbg !5394
  %4 = icmp ne i8* %0, null, !dbg !5395
  %5 = and i1 %4, %3, !dbg !5396
  br i1 %5, label %6, label %7, !dbg !5396

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !5397
  br label %13, !dbg !5398

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !5399
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5369, metadata !1138), !dbg !5392
  %9 = icmp eq i8* %8, null, !dbg !5400
  %10 = icmp ne i64 %1, 0, !dbg !5401
  %11 = and i1 %10, %9, !dbg !5402
  br i1 %11, label %12, label %13, !dbg !5402

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !5403
  unreachable, !dbg !5403

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5404
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #11 !dbg !1099 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1103, metadata !1138), !dbg !5405
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1104, metadata !1138), !dbg !5406
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1105, metadata !1138), !dbg !5407
  %4 = load i64, i64* %1, align 8, !dbg !5408, !tbaa !1208
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1106, metadata !1138), !dbg !5409
  %5 = icmp eq i8* %0, null, !dbg !5410
  br i1 %5, label %6, label %13, !dbg !5412

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5413
  br i1 %7, label %8, label %17, !dbg !5416

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5417
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1106, metadata !1138), !dbg !5409
  %10 = icmp ugt i64 %2, 128, !dbg !5419
  %11 = zext i1 %10 to i64, !dbg !5419
  %12 = add nuw nsw i64 %9, %11, !dbg !5420
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !1106, metadata !1138), !dbg !5409
  br label %17, !dbg !5421

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5422
  %15 = icmp ugt i64 %14, %4, !dbg !5425
  br i1 %15, label %20, label %16, !dbg !5426

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !5427
  unreachable, !dbg !5427

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1106, metadata !1138), !dbg !5409
  store i64 %18, i64* %1, align 8, !dbg !5428, !tbaa !1208
  %19 = mul i64 %18, %2, !dbg !5429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138) #13, !dbg !5430
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5372, metadata !1138) #13, !dbg !5432
  br label %27, !dbg !5433

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5434
  %22 = add i64 %4, 1, !dbg !5435
  %23 = add i64 %22, %21, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1106, metadata !1138), !dbg !5409
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1106, metadata !1138), !dbg !5409
  store i64 %23, i64* %1, align 8, !dbg !5428, !tbaa !1208
  %24 = mul i64 %23, %2, !dbg !5429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138) #13, !dbg !5430
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5372, metadata !1138) #13, !dbg !5432
  %25 = icmp eq i64 %24, 0, !dbg !5437
  br i1 %25, label %26, label %27, !dbg !5433

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #13, !dbg !5438
  br label %34, !dbg !5439

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #13, !dbg !5440
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5369, metadata !1138) #13, !dbg !5430
  %30 = icmp eq i8* %29, null, !dbg !5441
  %31 = icmp ne i64 %28, 0, !dbg !5442
  %32 = and i1 %31, %30, !dbg !5443
  br i1 %32, label %33, label %34, !dbg !5443

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !5444
  unreachable, !dbg !5444

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5445
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #11 !dbg !5446 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5448, metadata !1138), !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5330, metadata !1138) #13, !dbg !5450
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5452
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5334, metadata !1138) #13, !dbg !5453
  %3 = icmp eq i8* %2, null, !dbg !5454
  %4 = icmp ne i64 %0, 0, !dbg !5455
  %5 = and i1 %4, %3, !dbg !5456
  br i1 %5, label %6, label %7, !dbg !5456

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !5457
  unreachable, !dbg !5457

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5458
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5459 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5463, metadata !1138), !dbg !5465
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5464, metadata !1138), !dbg !5466
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1103, metadata !1138) #13, !dbg !5467
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1104, metadata !1138) #13, !dbg !5469
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1105, metadata !1138) #13, !dbg !5470
  %3 = load i64, i64* %1, align 8, !dbg !5471, !tbaa !1208
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  %4 = icmp eq i8* %0, null, !dbg !5473
  br i1 %4, label %5, label %8, !dbg !5474

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5475
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5476
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  store i64 %7, i64* %1, align 8, !dbg !5477, !tbaa !1208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138) #13, !dbg !5478
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5372, metadata !1138) #13, !dbg !5480
  br label %17, !dbg !5481

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5482
  br i1 %9, label %11, label %10, !dbg !5483

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !5484
  unreachable, !dbg !5484

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5485
  %13 = add i64 %3, 1, !dbg !5486
  %14 = add i64 %13, %12, !dbg !5487
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1106, metadata !1138) #13, !dbg !5472
  store i64 %14, i64* %1, align 8, !dbg !5477, !tbaa !1208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5369, metadata !1138) #13, !dbg !5478
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5372, metadata !1138) #13, !dbg !5480
  %15 = icmp eq i64 %14, 0, !dbg !5488
  br i1 %15, label %16, label %17, !dbg !5481

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #13, !dbg !5489
  br label %24, !dbg !5490

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #13, !dbg !5491
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5369, metadata !1138) #13, !dbg !5478
  %20 = icmp eq i8* %19, null, !dbg !5492
  %21 = icmp ne i64 %18, 0, !dbg !5493
  %22 = and i1 %21, %20, !dbg !5494
  br i1 %22, label %23, label %24, !dbg !5494

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !5495
  unreachable, !dbg !5495

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5496
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5497 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5499, metadata !1138), !dbg !5500
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5330, metadata !1138) #13, !dbg !5501
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5503
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5334, metadata !1138) #13, !dbg !5504
  %3 = icmp eq i8* %2, null, !dbg !5505
  %4 = icmp ne i64 %0, 0, !dbg !5506
  %5 = and i1 %4, %3, !dbg !5507
  br i1 %5, label %6, label %7, !dbg !5507

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !5508
  unreachable, !dbg !5508

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5509
  ret i8* %2, !dbg !5510
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5511 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5513, metadata !1138), !dbg !5516
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5514, metadata !1138), !dbg !5517
  %3 = udiv i64 9223372036854775807, %1, !dbg !5518
  %4 = icmp ult i64 %3, %0, !dbg !5518
  br i1 %4, label %8, label %5, !dbg !5520

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !5521
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5515, metadata !1138), !dbg !5523
  %7 = icmp eq i8* %6, null, !dbg !5524
  br i1 %7, label %8, label %9, !dbg !5525

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !5527
  unreachable, !dbg !5527

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5528
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5529 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5533, metadata !1138), !dbg !5535
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5534, metadata !1138), !dbg !5536
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5330, metadata !1138) #13, !dbg !5537
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !5539
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5334, metadata !1138) #13, !dbg !5540
  %4 = icmp eq i8* %3, null, !dbg !5541
  %5 = icmp ne i64 %1, 0, !dbg !5542
  %6 = and i1 %5, %4, !dbg !5543
  br i1 %6, label %7, label %8, !dbg !5543

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !5544
  unreachable, !dbg !5544

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5545
  ret i8* %3, !dbg !5546
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5547 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5549, metadata !1138), !dbg !5550
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !5551
  %3 = add i64 %2, 1, !dbg !5552
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5533, metadata !1138) #13, !dbg !5553
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5534, metadata !1138) #13, !dbg !5556
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5330, metadata !1138) #13, !dbg !5557
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !5559
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5334, metadata !1138) #13, !dbg !5560
  %5 = icmp eq i8* %4, null, !dbg !5561
  %6 = icmp ne i64 %3, 0, !dbg !5562
  %7 = and i1 %6, %5, !dbg !5563
  br i1 %7, label %8, label %9, !dbg !5563

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !5564
  unreachable, !dbg !5564

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #13, !dbg !5565
  ret i8* %4, !dbg !5566
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5567 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5569, !tbaa !1248
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #13, !dbg !5570
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #13, !dbg !5571
  tail call void @abort() #15, !dbg !5573
  unreachable, !dbg !5573
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5574 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5577, metadata !1138), !dbg !5583
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5578, metadata !1138), !dbg !5584
  %3 = icmp eq i64 %0, 0, !dbg !5585
  %4 = icmp eq i64 %1, 0, !dbg !5586
  %5 = or i1 %3, %4, !dbg !5588
  br i1 %5, label %12, label %6, !dbg !5588

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5589
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5580, metadata !1138), !dbg !5590
  %8 = udiv i64 %7, %1, !dbg !5591
  %9 = icmp eq i64 %8, %0, !dbg !5593
  br i1 %9, label %12, label %10, !dbg !5594

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5595
  store i32 12, i32* %11, align 4, !dbg !5597, !tbaa !1248
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5577, metadata !1138), !dbg !5583
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5578, metadata !1138), !dbg !5584
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #13, !dbg !5598
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5579, metadata !1138), !dbg !5599
  br label %16, !dbg !5600

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5601
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5602 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5647, metadata !1138), !dbg !5651
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5648, metadata !1138), !dbg !5652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5650, metadata !1138), !dbg !5653
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5654
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5649, metadata !1138), !dbg !5655
  %3 = icmp slt i32 %2, 0, !dbg !5656
  br i1 %3, label %4, label %6, !dbg !5658

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5659
  br label %24, !dbg !5660

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5661
  %8 = icmp eq i32 %7, 0, !dbg !5661
  br i1 %8, label %13, label %9, !dbg !5663

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5664
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !5666
  %12 = icmp eq i64 %11, -1, !dbg !5668
  br i1 %12, label %16, label %13, !dbg !5669

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !5670
  %15 = icmp eq i32 %14, 0, !dbg !5670
  br i1 %15, label %16, label %18, !dbg !5671

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5648, metadata !1138), !dbg !5652
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5673
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5650, metadata !1138), !dbg !5653
  br label %24, !dbg !5674

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5675
  %20 = load i32, i32* %19, align 4, !dbg !5675, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5648, metadata !1138), !dbg !5652
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5648, metadata !1138), !dbg !5652
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5673
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5650, metadata !1138), !dbg !5653
  %22 = icmp eq i32 %20, 0, !dbg !5676
  br i1 %22, label %24, label %23, !dbg !5674

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5678, !tbaa !1248
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5650, metadata !1138), !dbg !5653
  br label %24, !dbg !5680

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5681
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5682 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5727, metadata !1138), !dbg !5728
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5729
  br i1 %2, label %6, label %3, !dbg !5731

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5732
  %5 = icmp eq i32 %4, 0, !dbg !5732
  br i1 %5, label %6, label %8, !dbg !5734

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5736
  br label %17, !dbg !5737

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5738, metadata !1138) #13, !dbg !5743
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5745
  %10 = load i32, i32* %9, align 8, !dbg !5745, !tbaa !5747
  %11 = and i32 %10, 256, !dbg !5748
  %12 = icmp eq i32 %11, 0, !dbg !5748
  br i1 %12, label %15, label %13, !dbg !5749

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !5750
  br label %15, !dbg !5750

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5751
  br label %17, !dbg !5752

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5753
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5754 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5799, metadata !1138), !dbg !5805
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5800, metadata !1138), !dbg !5806
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5801, metadata !1138), !dbg !5807
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5808
  %5 = load i8*, i8** %4, align 8, !dbg !5808, !tbaa !5809
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5810
  %7 = load i8*, i8** %6, align 8, !dbg !5810, !tbaa !5811
  %8 = icmp eq i8* %5, %7, !dbg !5812
  br i1 %8, label %9, label %28, !dbg !5813

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5814
  %11 = load i8*, i8** %10, align 8, !dbg !5814, !tbaa !2267
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5816
  %13 = load i8*, i8** %12, align 8, !dbg !5816, !tbaa !5817
  %14 = icmp eq i8* %11, %13, !dbg !5818
  br i1 %14, label %15, label %28, !dbg !5819

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5820
  %17 = load i8*, i8** %16, align 8, !dbg !5820, !tbaa !5821
  %18 = icmp eq i8* %17, null, !dbg !5822
  br i1 %18, label %19, label %28, !dbg !5823

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5825
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !5826
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5802, metadata !1138), !dbg !5828
  %22 = icmp eq i64 %21, -1, !dbg !5829
  br i1 %22, label %30, label %23, !dbg !5831

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5832
  %25 = load i32, i32* %24, align 8, !dbg !5833, !tbaa !5747
  %26 = and i32 %25, -17, !dbg !5833
  store i32 %26, i32* %24, align 8, !dbg !5833, !tbaa !5747
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5834
  store i64 %21, i64* %27, align 8, !dbg !5835, !tbaa !5836
  br label %30, !dbg !5837

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5838
  br label %30, !dbg !5839

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5840
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5841 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5858, metadata !1138), !dbg !5867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5859, metadata !1138), !dbg !5868
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5860, metadata !1138), !dbg !5869
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5861, metadata !1138), !dbg !5870
  %6 = bitcast i32* %5 to i8*, !dbg !5871
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #13, !dbg !5871
  %7 = icmp eq i32* %0, null, !dbg !5872
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5858, metadata !1138), !dbg !5867
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5874
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5858, metadata !1138), !dbg !5867
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !5875
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5862, metadata !1138), !dbg !5876
  %10 = icmp ugt i64 %9, -3, !dbg !5877
  %11 = icmp ne i64 %2, 0, !dbg !5878
  %12 = and i1 %11, %10, !dbg !5880
  br i1 %12, label %13, label %18, !dbg !5880

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !5881
  br i1 %14, label %18, label %15, !dbg !5883

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5885, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5864, metadata !1138), !dbg !5886
  %17 = zext i8 %16 to i32, !dbg !5887
  store i32 %17, i32* %8, align 4, !dbg !5888, !tbaa !1248
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #13, !dbg !5889
  ret i64 %19, !dbg !5889
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !5890 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5891, !tbaa !1146
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.151, i64 0, i64 0), i32 5) #13, !dbg !5891
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i64 0, i64 0), i8* %2) #13, !dbg !5892
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !5894, !tbaa !1248
  tail call void @exit(i32 %4) #15, !dbg !5895
  unreachable, !dbg !5895
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #6 !dbg !5896 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5934, metadata !1138), !dbg !5939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5935, metadata !1138), !dbg !5940
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5936, metadata !1138), !dbg !5941
  tail call void @llvm.dbg.value(metadata i8* (i64)* %3, i64 0, metadata !5937, metadata !1138), !dbg !5942
  tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !5938, metadata !1138), !dbg !5943
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !5944
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !5945, !tbaa !1146
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !5946
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !5947, !tbaa !1146
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5948
  %9 = load i8, i8* %8, align 8, !dbg !5949
  %10 = and i8 %9, -2, !dbg !5949
  store i8 %10, i8* %8, align 8, !dbg !5949
  %11 = icmp eq i64 %2, 0, !dbg !5950
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !5958, metadata !1138) #13, !dbg !5964
  %12 = select i1 %11, i64 16, i64 %2, !dbg !5965
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !5958, metadata !1138) #13, !dbg !5964
  %13 = icmp eq i64 %1, 0, !dbg !5966
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !5957, metadata !1138) #13, !dbg !5967
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !5968
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5957, metadata !1138) #13, !dbg !5967
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5969
  store i64 %14, i64* %15, align 8, !dbg !5970, !tbaa !5971
  %16 = add i64 %12, -1, !dbg !5972
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5973
  store i64 %16, i64* %17, align 8, !dbg !5974, !tbaa !4996
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5975, metadata !1138) #13, !dbg !5981
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5980, metadata !1138) #13, !dbg !5983
  %18 = tail call i8* %3(i64 %14) #13, !dbg !5984
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5986
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !5987
  store i8* %18, i8** %20, align 8, !dbg !5987, !tbaa !5000
  %21 = icmp eq i8* %18, null, !dbg !5988
  br i1 %21, label %22, label %24, !dbg !5990

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5991, !tbaa !1146
  tail call void %23() #15, !dbg !5992
  unreachable, !dbg !5992

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !5993
  %26 = ptrtoint i8* %25 to i64, !dbg !5993
  %27 = add i64 %26, %16, !dbg !5993
  %28 = sub i64 0, %12, !dbg !5993
  %29 = and i64 %27, %28, !dbg !5993
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !5993
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5994
  store i8* %30, i8** %31, align 8, !dbg !5995, !tbaa !4958
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5996
  store i8* %30, i8** %32, align 8, !dbg !5997, !tbaa !4957
  %33 = load i64, i64* %15, align 8, !dbg !5998, !tbaa !5971
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !5999
  %35 = bitcast i8* %18 to i8**, !dbg !6000
  store i8* %34, i8** %35, align 8, !dbg !6001, !tbaa !1146
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !6002
  store i8* %34, i8** %36, align 8, !dbg !6003, !tbaa !4963
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !6004
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !6004
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !6005, !tbaa !1146
  %39 = load i8, i8* %8, align 8, !dbg !6006
  %40 = and i8 %39, -7, !dbg !6007
  store i8 %40, i8* %8, align 8, !dbg !6007
  ret i32 1, !dbg !6008
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #6 !dbg !6009 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6013, metadata !1138), !dbg !6019
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6014, metadata !1138), !dbg !6020
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !6015, metadata !1138), !dbg !6021
  tail call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, i64 0, metadata !6016, metadata !1138), !dbg !6022
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, i64 0, metadata !6017, metadata !1138), !dbg !6023
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6018, metadata !1138), !dbg !6024
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !6025
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !6026
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !6027, !tbaa !1146
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !6028
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !6029
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !6030, !tbaa !1146
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !6031
  store i8* %5, i8** %11, align 8, !dbg !6032, !tbaa !6033
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !6034
  %13 = load i8, i8* %12, align 8, !dbg !6035
  %14 = or i8 %13, 1, !dbg !6035
  store i8 %14, i8* %12, align 8, !dbg !6035
  %15 = icmp eq i64 %2, 0, !dbg !6036
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !5958, metadata !1138) #13, !dbg !6038
  %16 = select i1 %15, i64 16, i64 %2, !dbg !6039
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !5958, metadata !1138) #13, !dbg !6038
  %17 = icmp eq i64 %1, 0, !dbg !6040
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !5957, metadata !1138) #13, !dbg !6041
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !6042
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5957, metadata !1138) #13, !dbg !6041
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !6043
  store i64 %18, i64* %19, align 8, !dbg !6044, !tbaa !5971
  %20 = add i64 %16, -1, !dbg !6045
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !6046
  store i64 %20, i64* %21, align 8, !dbg !6047, !tbaa !4996
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5975, metadata !1138) #13, !dbg !6048
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5980, metadata !1138) #13, !dbg !6050
  %22 = tail call i8* %3(i8* %5, i64 %18) #13, !dbg !6051
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !6052
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !6053
  store i8* %22, i8** %24, align 8, !dbg !6053, !tbaa !5000
  %25 = icmp eq i8* %22, null, !dbg !6054
  br i1 %25, label %26, label %28, !dbg !6055

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !6056, !tbaa !1146
  tail call void %27() #15, !dbg !6057
  unreachable, !dbg !6057

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !6058
  %30 = ptrtoint i8* %29 to i64, !dbg !6058
  %31 = add i64 %30, %20, !dbg !6058
  %32 = sub i64 0, %16, !dbg !6058
  %33 = and i64 %31, %32, !dbg !6058
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !6058
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !6059
  store i8* %34, i8** %35, align 8, !dbg !6060, !tbaa !4958
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !6061
  store i8* %34, i8** %36, align 8, !dbg !6062, !tbaa !4957
  %37 = load i64, i64* %19, align 8, !dbg !6063, !tbaa !5971
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !6064
  %39 = bitcast i8* %22 to i8**, !dbg !6065
  store i8* %38, i8** %39, align 8, !dbg !6066, !tbaa !1146
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !6067
  store i8* %38, i8** %40, align 8, !dbg !6068, !tbaa !4963
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !6069
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !6069
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !6070, !tbaa !1146
  %43 = load i8, i8* %12, align 8, !dbg !6071
  %44 = and i8 %43, -7, !dbg !6072
  store i8 %44, i8* %12, align 8, !dbg !6072
  ret i32 1, !dbg !6073
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #6 !dbg !6074 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6078, metadata !1138), !dbg !6087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6079, metadata !1138), !dbg !6088
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !6089
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !6089, !tbaa !5000
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !6080, metadata !1138), !dbg !6090
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, i64 0, metadata !6081, metadata !1138), !dbg !6091
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !6092
  %6 = bitcast i8** %5 to i64*, !dbg !6092
  %7 = load i64, i64* %6, align 8, !dbg !6092, !tbaa !4957
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !6093
  %9 = bitcast i8** %8 to i64*, !dbg !6093
  %10 = load i64, i64* %9, align 8, !dbg !6093, !tbaa !4958
  %11 = sub i64 %7, %10, !dbg !6094
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !6082, metadata !1138), !dbg !6095
  %12 = add i64 %11, %1, !dbg !6096
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !6084, metadata !1138), !dbg !6097
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !6098
  %14 = load i64, i64* %13, align 8, !dbg !6098, !tbaa !4996
  %15 = add i64 %12, %14, !dbg !6099
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !6085, metadata !1138), !dbg !6100
  %16 = lshr i64 %11, 3, !dbg !6101
  %17 = add nuw nsw i64 %16, 100, !dbg !6102
  %18 = add i64 %17, %15, !dbg !6103
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !6086, metadata !1138), !dbg !6104
  %19 = icmp ult i64 %18, %15, !dbg !6105
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !6086, metadata !1138), !dbg !6104
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !6107
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !6086, metadata !1138), !dbg !6104
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !6108
  %22 = load i64, i64* %21, align 8, !dbg !6108, !tbaa !5971
  %23 = icmp ult i64 %20, %22, !dbg !6110
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6086, metadata !1138), !dbg !6104
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !6111
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !6086, metadata !1138), !dbg !6104
  %25 = icmp ugt i64 %11, %12, !dbg !6112
  %26 = icmp ugt i64 %12, %15, !dbg !6114
  %27 = or i1 %25, %26, !dbg !6116
  br i1 %27, label %47, label %28, !dbg !6116

; <label>:28:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5975, metadata !1138) #13, !dbg !6117
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5980, metadata !1138) #13, !dbg !6119
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !6120
  %30 = load i8, i8* %29, align 8, !dbg !6120
  %31 = and i8 %30, 1, !dbg !6120
  %32 = icmp eq i8 %31, 0, !dbg !6121
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  br i1 %32, label %40, label %34, !dbg !6122

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !6123
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !6123, !tbaa !1146
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !6124
  %38 = load i8*, i8** %37, align 8, !dbg !6124, !tbaa !6033
  %39 = tail call i8* %36(i8* %38, i64 %24) #13, !dbg !6125
  br label %44, !dbg !6126

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !6127
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !6127, !tbaa !1146
  %43 = tail call i8* %42(i64 %24) #13, !dbg !6128
  br label %44, !dbg !6129

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ]
  %46 = icmp eq i8* %45, null, !dbg !6130
  br i1 %46, label %47, label %49, !dbg !6132

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !6133, !tbaa !1146
  tail call void %48() #15, !dbg !6134
  unreachable, !dbg !6134

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !6135
  store i8* %45, i8** %50, align 8, !dbg !6135, !tbaa !5000
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !6136
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !6136
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !6137, !tbaa !1146
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !6138
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !6139
  store i8* %53, i8** %54, align 8, !dbg !6140, !tbaa !4963
  %55 = bitcast i8* %45 to i8**, !dbg !6141
  store i8* %53, i8** %55, align 8, !dbg !6142, !tbaa !1146
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !6143
  %57 = ptrtoint i8* %56 to i64, !dbg !6143
  %58 = load i64, i64* %13, align 8, !dbg !6143, !tbaa !4996
  %59 = add i64 %58, %57, !dbg !6143
  %60 = xor i64 %58, -1, !dbg !6143
  %61 = and i64 %59, %60, !dbg !6143
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !6143
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !6083, metadata !1138), !dbg !6144
  %63 = load i8*, i8** %8, align 8, !dbg !6145, !tbaa !4958
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %11, i32 1, i1 false), !dbg !6146
  %64 = load i8, i8* %29, align 8, !dbg !6147
  %65 = and i8 %64, 2, !dbg !6147
  %66 = icmp eq i8 %65, 0, !dbg !6149
  br i1 %66, label %67, label %92, !dbg !6150

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !6151
  %69 = ptrtoint i8* %68 to i64, !dbg !6151
  %70 = add i64 %58, %69, !dbg !6151
  %71 = and i64 %70, %60, !dbg !6151
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !6151
  %73 = icmp eq i8* %63, %72, !dbg !6152
  br i1 %73, label %74, label %92, !dbg !6153

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !6155
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !6155
  %77 = load i64, i64* %76, align 8, !dbg !6155, !tbaa !1146
  %78 = bitcast i8* %51 to i64*, !dbg !6157
  store i64 %77, i64* %78, align 8, !dbg !6157, !tbaa !1146
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !6158
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6159, metadata !1138) #13, !dbg !6165
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !6164, metadata !1138) #13, !dbg !6167
  %80 = load i8, i8* %29, align 8, !dbg !6168
  %81 = and i8 %80, 1, !dbg !6168
  %82 = icmp eq i8 %81, 0, !dbg !6170
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  br i1 %82, label %89, label %84, !dbg !6171

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !6172
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !6172, !tbaa !1146
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !6173
  %88 = load i8*, i8** %87, align 8, !dbg !6173, !tbaa !6033
  tail call void %86(i8* %88, i8* %79) #13, !dbg !6174
  br label %92, !dbg !6174

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !6175
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !6175, !tbaa !1146
  tail call void %91(i8* %79) #13, !dbg !6176
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !6177, !tbaa !4958
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !6178
  store i8* %93, i8** %5, align 8, !dbg !6179, !tbaa !4957
  %94 = load i8, i8* %29, align 8, !dbg !6180
  %95 = and i8 %94, -3, !dbg !6180
  store i8 %95, i8* %29, align 8, !dbg !6180
  ret void, !dbg !6181
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #9 !dbg !6182 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6186, metadata !1138), !dbg !6190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6187, metadata !1138), !dbg !6191
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !6192
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !6188, metadata !1138), !dbg !6193
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !6194
  br i1 %5, label %21, label %6, !dbg !6196

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !6197

; <label>:7:                                      ; preds = %6, %15
  %8 = phi %struct._obstack_chunk* [ %17, %15 ], [ %4, %6 ]
  %9 = bitcast %struct._obstack_chunk* %8 to i8*, !dbg !6197
  %10 = icmp ult i8* %9, %1, !dbg !6199
  br i1 %10, label %11, label %15, !dbg !6200

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0, !dbg !6201
  %13 = load i8*, i8** %12, align 8, !dbg !6201, !tbaa !1146
  %14 = icmp ult i8* %13, %1, !dbg !6203
  br i1 %14, label %15, label %19, !dbg !6204

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1, !dbg !6206
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, i64 0, metadata !6188, metadata !1138), !dbg !6193
  %18 = icmp eq %struct._obstack_chunk* %17, null, !dbg !6194
  br i1 %18, label %19, label %7, !dbg !6196, !llvm.loop !6208

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i32 [ 0, %15 ], [ 1, %11 ]
  br label %21, !dbg !6211

; <label>:21:                                     ; preds = %19, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %19 ]
  ret i32 %22, !dbg !6211
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #6 !dbg !6212 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6214, metadata !1138), !dbg !6218
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6215, metadata !1138), !dbg !6219
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !6220
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !6220, !tbaa !5000
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !6216, metadata !1138), !dbg !6221
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !6216, metadata !1138), !dbg !6221
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !6222
  br i1 %5, label %43, label %6, !dbg !6224

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !6224

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !6225
  %15 = icmp ult i8* %14, %1, !dbg !6227
  br i1 %15, label %16, label %20, !dbg !6228

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !6229
  %18 = load i8*, i8** %17, align 8, !dbg !6229, !tbaa !1146
  %19 = icmp ult i8* %18, %1, !dbg !6231
  br i1 %19, label %20, label %35, !dbg !6232

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !6234
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !6234, !tbaa !1146
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !6217, metadata !1138), !dbg !6236
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6159, metadata !1138) #13, !dbg !6237
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !6164, metadata !1138) #13, !dbg !6239
  %23 = load i8, i8* %7, align 8, !dbg !6240
  %24 = and i8 %23, 1, !dbg !6240
  %25 = icmp eq i8 %24, 0, !dbg !6241
  br i1 %25, label %29, label %26, !dbg !6242

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !6243, !tbaa !1146
  %28 = load i8*, i8** %11, align 8, !dbg !6244, !tbaa !6033
  tail call void %27(i8* %28, i8* nonnull %14) #13, !dbg !6245
  br label %31, !dbg !6245

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !6246, !tbaa !1146
  tail call void %30(i8* nonnull %14) #13, !dbg !6247
  br label %31

; <label>:31:                                     ; preds = %26, %29
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !6216, metadata !1138), !dbg !6221
  %32 = load i8, i8* %7, align 8, !dbg !6248
  %33 = or i8 %32, 2, !dbg !6248
  store i8 %33, i8* %7, align 8, !dbg !6248
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !6216, metadata !1138), !dbg !6221
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !6222
  br i1 %34, label %42, label %12, !dbg !6224, !llvm.loop !6249

; <label>:35:                                     ; preds = %16
  %36 = bitcast %struct._obstack_chunk* %13 to i64*
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !6252
  store i8* %1, i8** %37, align 8, !dbg !6255, !tbaa !4957
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !6256
  store i8* %1, i8** %38, align 8, !dbg !6257, !tbaa !4958
  %39 = load i64, i64* %36, align 8, !dbg !6258, !tbaa !1146
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !6259
  %41 = bitcast i8** %40 to i64*, !dbg !6260
  store i64 %39, i64* %41, align 8, !dbg !6260, !tbaa !4963
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !6261, !tbaa !5000
  br label %46, !dbg !6262

; <label>:42:                                     ; preds = %31
  br label %43, !dbg !6263

; <label>:43:                                     ; preds = %42, %2
  %44 = icmp eq i8* %1, null, !dbg !6263
  br i1 %44, label %46, label %45, !dbg !6265

; <label>:45:                                     ; preds = %43
  tail call void @abort() #15, !dbg !6266
  unreachable, !dbg !6266

; <label>:46:                                     ; preds = %43, %35
  ret void, !dbg !6267
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #9 !dbg !6268 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !6272, metadata !1138), !dbg !6275
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6274, metadata !1138), !dbg !6276
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !6277
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6274, metadata !1138), !dbg !6276
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, i64 0, metadata !6273, metadata !1138), !dbg !6279
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !6280
  br i1 %4, label %18, label %5, !dbg !6283

; <label>:5:                                      ; preds = %1
  br label %6, !dbg !6285

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct._obstack_chunk* [ %15, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %13, %6 ], [ 0, %5 ]
  %9 = bitcast %struct._obstack_chunk* %7 to i64*, !dbg !6285
  %10 = load i64, i64* %9, align 8, !dbg !6285, !tbaa !1146
  %11 = ptrtoint %struct._obstack_chunk* %7 to i64, !dbg !6287
  %12 = sub i64 %8, %11, !dbg !6287
  %13 = add i64 %12, %10, !dbg !6288
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !6274, metadata !1138), !dbg !6276
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !6289
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !6274, metadata !1138), !dbg !6276
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !6273, metadata !1138), !dbg !6279
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !6280
  br i1 %16, label %17, label %6, !dbg !6283, !llvm.loop !6291

; <label>:17:                                     ; preds = %6
  br label %18, !dbg !6294

; <label>:18:                                     ; preds = %17, %1
  %19 = phi i64 [ 0, %1 ], [ %13, %17 ]
  ret i64 %19, !dbg !6294
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6295 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6340, metadata !1138), !dbg !6345
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !6346
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6347, metadata !1138), !dbg !6350
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6352
  %4 = load i32, i32* %3, align 8, !dbg !6352, !tbaa !5747
  %5 = and i32 %4, 32, !dbg !6352
  %6 = icmp eq i32 %5, 0, !dbg !6353
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !6354
  %8 = icmp ne i32 %7, 0, !dbg !6355
  br i1 %6, label %9, label %19, !dbg !6356

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !6358
  %11 = icmp ne i64 %2, 0, !dbg !6358
  %12 = or i1 %11, %10, !dbg !6358
  %13 = sext i1 %8 to i32, !dbg !6358
  br i1 %12, label %22, label %14, !dbg !6358

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !6360
  %16 = load i32, i32* %15, align 4, !dbg !6360, !tbaa !1248
  %17 = icmp ne i32 %16, 9, !dbg !6362
  %18 = sext i1 %17 to i32, !dbg !6362
  br label %22, !dbg !6362

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !6364

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !6366
  store i32 0, i32* %21, align 4, !dbg !6368, !tbaa !1248
  br label %22, !dbg !6366

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !6369
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !6370 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !6375, metadata !1138), !dbg !6395
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !6376, metadata !1138), !dbg !6396
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !6397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6377, metadata !1138), !dbg !6398
  %3 = icmp eq i8* %2, null, !dbg !6399
  br i1 %3, label %15, label %4, !dbg !6400

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !6385, metadata !1138), !dbg !6401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6386, metadata !1138), !dbg !6402
  %5 = load i8, i8* %2, align 1, !dbg !6403, !tbaa !1267
  %6 = icmp eq i8 %5, 67, !dbg !6405
  br i1 %6, label %7, label %11, !dbg !6408

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !6410
  %9 = load i8, i8* %8, align 1, !dbg !6410, !tbaa !1267
  %10 = icmp eq i8 %9, 0, !dbg !6413
  br i1 %10, label %14, label %11, !dbg !6415

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !6391, metadata !1138), !dbg !6417
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0)) #13, !dbg !6418
  %13 = icmp eq i32 %12, 0, !dbg !6420
  br i1 %13, label %14, label %15, !dbg !6422

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !6376, metadata !1138), !dbg !6396
  br label %15, !dbg !6424

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !6425
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !6426 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !6438, metadata !1138), !dbg !6512
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6505, metadata !1138), !dbg !6514
  %3 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !6515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !6430, metadata !1138), !dbg !6516
  %4 = icmp eq i8* %3, null, !dbg !6517
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), i8* %3, !dbg !6519
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6430, metadata !1138), !dbg !6516
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6520, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6452, metadata !1138) #13, !dbg !6521
  %7 = icmp eq i8* %6, null, !dbg !6522
  br i1 %7, label %8, label %127, !dbg !6523

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.167, i64 0, i64 0)) #13, !dbg !6524
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6453, metadata !1138) #13, !dbg !6525
  %10 = icmp eq i8* %9, null, !dbg !6526
  br i1 %10, label %14, label %11, !dbg !6528

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !6529, !tbaa !1267
  %13 = icmp eq i8 %12, 0, !dbg !6531
  br i1 %13, label %14, label %15, !dbg !6532

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !6534

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.168, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6453, metadata !1138) #13, !dbg !6525
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !6535
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6456, metadata !1138) #13, !dbg !6536
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6458, metadata !1138) #13, !dbg !6537
  %18 = icmp eq i64 %17, 0, !dbg !6538
  br i1 %18, label %24, label %19, !dbg !6539

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !6540
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6540
  %22 = load i8, i8* %21, align 1, !dbg !6540, !tbaa !1267
  %23 = icmp ne i8 %22, 47, !dbg !6542
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !6543
  %27 = add i64 %17, 14, !dbg !6544
  %28 = add i64 %27, %26, !dbg !6545
  %29 = tail call noalias i8* @malloc(i64 %28) #13, !dbg !6546
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6455, metadata !1138) #13, !dbg !6547
  %30 = icmp eq i8* %29, null, !dbg !6548
  br i1 %30, label %125, label %31, !dbg !6548

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #13, !dbg !6549
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !6552

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !6553, !tbaa !1267
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6555
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.169, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !6556
  br label %37, !dbg !6557

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6555
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.169, i64 0, i64 0), i64 14, i32 1, i1 false) #13, !dbg !6556
  br label %37, !dbg !6557

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #13, !dbg !6558
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6460, metadata !1138) #13, !dbg !6559
  %39 = icmp slt i32 %38, 0, !dbg !6560
  br i1 %39, label %123, label %40, !dbg !6561

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.170, i64 0, i64 0)) #13, !dbg !6562
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6461, metadata !1138) #13, !dbg !6563
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6564
  br i1 %42, label %48, label %43, !dbg !6565

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !6566

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #13, !dbg !6567
  br label %123, !dbg !6569

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #13, !dbg !6571
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #13, !dbg !6572
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6573, metadata !1138) #13, !dbg !6578
  %53 = load i8*, i8** %46, align 8, !dbg !6580, !tbaa !5811
  %54 = load i8*, i8** %47, align 8, !dbg !6580, !tbaa !5809
  %55 = icmp ult i8* %53, %54, !dbg !6580
  br i1 %55, label %58, label %56, !dbg !6580, !prof !2270

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !6581
  br label %62, !dbg !6581

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6583
  store i8* %59, i8** %46, align 8, !dbg !6583, !tbaa !5811
  %60 = load i8, i8* %53, align 1, !dbg !6583, !tbaa !1267
  %61 = zext i8 %60 to i32, !dbg !6583
  br label %62, !dbg !6583

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6585
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6504, metadata !1138) #13, !dbg !6587
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !6588

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !6589

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6573, metadata !1138) #13, !dbg !6589
  %66 = load i8*, i8** %46, align 8, !dbg !6593, !tbaa !5811
  %67 = load i8*, i8** %47, align 8, !dbg !6593, !tbaa !5809
  %68 = icmp ult i8* %66, %67, !dbg !6593
  br i1 %68, label %71, label %69, !dbg !6593, !prof !2270

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13, !dbg !6594
  br label %75, !dbg !6594

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6595
  store i8* %72, i8** %46, align 8, !dbg !6595, !tbaa !5811
  %73 = load i8, i8* %66, align 1, !dbg !6595, !tbaa !1267
  %74 = zext i8 %73 to i32, !dbg !6595
  br label %75, !dbg !6595

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6596
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6504, metadata !1138) #13, !dbg !6587
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !6597, !llvm.loop !6599

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #13, !dbg !6602
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.171, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #13, !dbg !6603
  %80 = icmp slt i32 %79, 2, !dbg !6605
  br i1 %80, label %115, label %81, !dbg !6606

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !6607
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6509, metadata !1138) #13, !dbg !6608
  %83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !6609
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6510, metadata !1138) #13, !dbg !6610
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6511, metadata !1138) #13, !dbg !6611
  %84 = icmp eq i64 %51, 0, !dbg !6612
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !6614

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  %89 = add i64 %86, 2, !dbg !6615
  %90 = call noalias i8* @malloc(i64 %89) #13, !dbg !6617
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  br label %95, !dbg !6618

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !6619
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  %93 = add i64 %92, 1, !dbg !6621
  %94 = call i8* @realloc(i8* %52, i64 %93) #13, !dbg !6622
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  %98 = icmp eq i8* %97, null, !dbg !6623
  br i1 %98, label %99, label %100, !dbg !6625

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  call void @free(i8* %52) #13, !dbg !6626
  br label %116, !dbg !6628

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6629
  %102 = xor i64 %83, -1, !dbg !6630
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6630
  %104 = xor i64 %82, -1, !dbg !6631
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6631
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6632, metadata !1138) #13, !dbg !6641
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6640, metadata !1138) #13, !dbg !6641
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #13, !dbg !6643
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #13, !dbg !6644
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6632, metadata !1138) #13, !dbg !6645
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6640, metadata !1138) #13, !dbg !6645
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #13, !dbg !6647
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #13, !dbg !6648
  br label %111, !dbg !6649

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !6566

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #13, !dbg !6649
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #13, !dbg !6649
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !6566

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !6566

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6502, metadata !1138) #13, !dbg !6566
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6503, metadata !1138) #13, !dbg !6570
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #13, !dbg !6649
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #13, !dbg !6649
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #13, !dbg !6650
  %120 = icmp eq i64 %117, 0, !dbg !6651
  br i1 %120, label %123, label %121, !dbg !6653

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6654
  store i8 0, i8* %122, align 1, !dbg !6656, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6452, metadata !1138) #13, !dbg !6521
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6452, metadata !1138) #13, !dbg !6521
  call void @free(i8* %29) #13, !dbg !6657
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6452, metadata !1138) #13, !dbg !6521
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6658, !tbaa !1146
  br label %127, !dbg !6659

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !6431, metadata !1138), !dbg !6660
  %129 = load i8, i8* %128, align 1, !dbg !6661, !tbaa !1267
  %130 = icmp eq i8 %129, 0, !dbg !6662
  br i1 %130, label %157, label %131, !dbg !6663

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !6665

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #13, !dbg !6665
  %136 = icmp eq i32 %135, 0, !dbg !6666
  br i1 %136, label %143, label %137, !dbg !6667

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !6668
  br i1 %138, label %139, label %147, !dbg !6670

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6671
  %141 = load i8, i8* %140, align 1, !dbg !6671, !tbaa !1267
  %142 = icmp eq i8 %141, 0, !dbg !6673
  br i1 %142, label %143, label %147, !dbg !6674

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14, !dbg !6676
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6678
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6679
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !6430, metadata !1138), !dbg !6516
  br label %157, !dbg !6680

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14, !dbg !6681
  %149 = add i64 %148, 1, !dbg !6682
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6683
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !6431, metadata !1138), !dbg !6660
  %151 = call i64 @strlen(i8* %150) #14, !dbg !6684
  %152 = add i64 %151, 1, !dbg !6685
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6686
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6431, metadata !1138), !dbg !6660
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6431, metadata !1138), !dbg !6660
  %154 = load i8, i8* %153, align 1, !dbg !6661, !tbaa !1267
  %155 = icmp eq i8 %154, 0, !dbg !6662
  br i1 %155, label %156, label %132, !dbg !6663, !llvm.loop !6687

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !6516

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !6430, metadata !1138), !dbg !6516
  %159 = load i8, i8* %158, align 1, !dbg !6690, !tbaa !1267
  %160 = icmp eq i8 %159, 0, !dbg !6692
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i64 0, i64 0), i8* %158, !dbg !6693
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !6430, metadata !1138), !dbg !6516
  ret i8* %161, !dbg !6694
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2, !374, !829, !380, !388, !833, !836, !395, !839, !406, !413, !1062, !1066, !1087, !464, !1094, !1110, !1112, !1114, !1116, !1118, !1120, !473, !1123, !1125, !483}
!llvm.ident = !{!1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128, !1128}
!llvm.module.flags = !{!1129, !1130, !1131, !1132}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "page_size", scope: !2, file: !3, line: 75, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !66)
!3 = !DIFile(filename: "src/wc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !26, !35}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !20, line: 25, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/argv-iter.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "AI_ERR_OK", value: 1)
!23 = !DIEnumerator(name: "AI_ERR_EOF", value: 2)
!24 = !DIEnumerator(name: "AI_ERR_MEM", value: 3)
!25 = !DIEnumerator(name: "AI_ERR_READ", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 45, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!30 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!31 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!32 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!33 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!34 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !{!51, !53, !54, !57, !59, !62, !64, !65, !61}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !{!67, !281, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !0, !308, !338, !352}
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "stdin_only", scope: !69, file: !3, line: 765, type: !280, isLocal: true, isDefinition: true)
!69 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 648, type: !70, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !73)
!70 = !DISubroutineType(types: !71)
!71 = !{!64, !64, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!73 = !{!74, !75, !76, !78, !79, !80, !81, !82, !128, !188, !189, !192, !247, !250, !251, !253, !254, !255, !256, !260, !261, !262, !265, !266, !268, !269, !271, !272, !274, !275}
!74 = !DILocalVariable(name: "argc", arg: 1, scope: !69, file: !3, line: 648, type: !64)
!75 = !DILocalVariable(name: "argv", arg: 2, scope: !69, file: !3, line: 648, type: !72)
!76 = !DILocalVariable(name: "ok", scope: !69, file: !3, line: 650, type: !77)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !DILocalVariable(name: "optc", scope: !69, file: !3, line: 651, type: !64)
!79 = !DILocalVariable(name: "nfiles", scope: !69, file: !3, line: 652, type: !54)
!80 = !DILocalVariable(name: "files", scope: !69, file: !3, line: 653, type: !72)
!81 = !DILocalVariable(name: "files_from", scope: !69, file: !3, line: 654, type: !51)
!82 = !DILocalVariable(name: "fstatus", scope: !69, file: !3, line: 655, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fstatus", file: !3, line: 78, size: 1216, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !84, file: !3, line: 82, baseType: !64, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !84, file: !3, line: 85, baseType: !88, size: 1152, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !89, line: 46, size: 1152, elements: !90)
!89 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!91, !94, !96, !98, !101, !103, !105, !106, !107, !110, !112, !114, !122, !123, !124}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !88, file: !89, line: 48, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !93, line: 133, baseType: !56)
!93 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !88, file: !89, line: 53, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !93, line: 136, baseType: !56)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !88, file: !89, line: 61, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !93, line: 139, baseType: !56)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !88, file: !89, line: 62, baseType: !99, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !93, line: 138, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !88, file: !89, line: 64, baseType: !102, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !93, line: 134, baseType: !100)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !88, file: !89, line: 65, baseType: !104, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !93, line: 135, baseType: !100)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !88, file: !89, line: 67, baseType: !64, size: 32, offset: 288)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !88, file: !89, line: 69, baseType: !92, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !88, file: !89, line: 74, baseType: !108, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 140, baseType: !109)
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !88, file: !89, line: 78, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !93, line: 162, baseType: !109)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !88, file: !89, line: 80, baseType: !113, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !93, line: 167, baseType: !109)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !88, file: !89, line: 91, baseType: !115, size: 128, offset: 576)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !116, line: 8, size: 128, elements: !117)
!116 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !115, file: !116, line: 10, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !93, line: 148, baseType: !109)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !115, file: !116, line: 11, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !93, line: 184, baseType: !109)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !88, file: !89, line: 92, baseType: !115, size: 128, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !88, file: !89, line: 93, baseType: !115, size: 128, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !88, file: !89, line: 106, baseType: !125, size: 192, offset: 960)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DILocalVariable(name: "tok", scope: !69, file: !3, line: 656, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !130, line: 28, size: 2304, elements: !131)
!130 = !DIFile(filename: "./lib/readtokens0.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !136, !186, !187}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !129, file: !130, line: 30, baseType: !54, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !129, file: !130, line: 31, baseType: !72, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !129, file: !130, line: 32, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !129, file: !130, line: 33, baseType: !137, size: 704, offset: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !138, line: 174, size: 704, elements: !139)
!138 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!140, !141, !151, !152, !153, !154, !159, !160, !171, !182, !183, !184, !185}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !137, file: !138, line: 176, baseType: !54, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !137, file: !138, line: 177, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !138, line: 167, size: 128, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !143, file: !138, line: 169, baseType: !51, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !138, line: 170, baseType: !142, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !143, file: !138, line: 171, baseType: !148, offset: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: -1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !137, file: !138, line: 178, baseType: !51, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !137, file: !138, line: 179, baseType: !51, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !137, file: !138, line: 180, baseType: !51, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !137, file: !138, line: 185, baseType: !155, size: 64, offset: 320)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !138, line: 181, size: 64, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !155, file: !138, line: 183, baseType: !54, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !155, file: !138, line: 184, baseType: !53, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !137, file: !138, line: 186, baseType: !54, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !137, file: !138, line: 193, baseType: !161, size: 64, offset: 448)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !138, line: 189, size: 64, elements: !162)
!162 = !{!163, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !161, file: !138, line: 191, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!53, !54}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !161, file: !138, line: 192, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!53, !53, !54}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !137, file: !138, line: 198, baseType: !172, size: 64, offset: 512)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !138, line: 194, size: 64, elements: !173)
!173 = !{!174, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !172, file: !138, line: 196, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !53}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !172, file: !138, line: 197, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !53, !53}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !137, file: !138, line: 200, baseType: !53, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !137, file: !138, line: 201, baseType: !100, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !137, file: !138, line: 202, baseType: !100, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !137, file: !138, line: 206, baseType: !100, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !129, file: !130, line: 34, baseType: !137, size: 704, offset: 896)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !129, file: !130, line: 35, baseType: !137, size: 704, offset: 1600)
!188 = !DILocalVariable(name: "read_tokens", scope: !69, file: !3, line: 714, type: !77)
!189 = !DILocalVariable(name: "ai", scope: !69, file: !3, line: 715, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !20, line: 23, flags: DIFlagFwdDecl)
!192 = !DILocalVariable(name: "stream", scope: !193, file: !3, line: 718, type: !195)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 717, column: 5)
!194 = distinct !DILexicalBlock(scope: !69, file: !3, line: 716, column: 7)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !198)
!197 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !200)
!199 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !221, !222, !223, !224, !225, !226, !228, !232, !235, !237, !238, !239, !240, !241, !242, !243}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !198, file: !199, line: 242, baseType: !64, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !198, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !198, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !198, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !198, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !198, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !198, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !198, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !198, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !198, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !198, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !198, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !198, file: !199, line: 260, baseType: !214, size: 64, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !216)
!216 = !{!217, !218, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !215, file: !199, line: 157, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !215, file: !199, line: 158, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !215, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !198, file: !199, line: 262, baseType: !219, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !198, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !198, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !198, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !198, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !198, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!227 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !198, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 1)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !198, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !199, line: 150, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !198, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 141, baseType: !109)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !198, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !198, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !198, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !198, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !198, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !198, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !198, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 20)
!247 = !DILocalVariable(name: "__s1_len", scope: !248, file: !3, line: 730, type: !54)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 730, column: 11)
!249 = distinct !DILexicalBlock(scope: !193, file: !3, line: 730, column: 11)
!250 = !DILocalVariable(name: "__s2_len", scope: !248, file: !3, line: 730, type: !54)
!251 = !DILocalVariable(name: "__s2", scope: !252, file: !3, line: 730, type: !59)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 730, column: 11)
!253 = !DILocalVariable(name: "__result", scope: !252, file: !3, line: 730, type: !64)
!254 = !DILocalVariable(name: "st", scope: !193, file: !3, line: 742, type: !88)
!255 = !DILocalVariable(name: "i", scope: !69, file: !3, line: 777, type: !64)
!256 = !DILocalVariable(name: "skip_file", scope: !257, file: !3, line: 781, type: !77)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 780, column: 5)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 779, column: 3)
!259 = distinct !DILexicalBlock(scope: !69, file: !3, line: 779, column: 3)
!260 = !DILocalVariable(name: "ai_err", scope: !257, file: !3, line: 782, type: !19)
!261 = !DILocalVariable(name: "file_name", scope: !257, file: !3, line: 783, type: !51)
!262 = !DILocalVariable(name: "__s1_len", scope: !263, file: !3, line: 801, type: !54)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 801, column: 25)
!264 = distinct !DILexicalBlock(scope: !257, file: !3, line: 801, column: 11)
!265 = !DILocalVariable(name: "__s2_len", scope: !263, file: !3, line: 801, type: !54)
!266 = !DILocalVariable(name: "__s2", scope: !267, file: !3, line: 801, type: !59)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 801, column: 25)
!268 = !DILocalVariable(name: "__result", scope: !267, file: !3, line: 801, type: !64)
!269 = !DILocalVariable(name: "__s1_len", scope: !270, file: !3, line: 801, type: !54)
!270 = distinct !DILexicalBlock(scope: !264, file: !3, line: 801, column: 52)
!271 = !DILocalVariable(name: "__s2_len", scope: !270, file: !3, line: 801, type: !54)
!272 = !DILocalVariable(name: "__s2", scope: !273, file: !3, line: 801, type: !59)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 801, column: 52)
!274 = !DILocalVariable(name: "__result", scope: !273, file: !3, line: 801, type: !64)
!275 = !DILocalVariable(name: "file_number", scope: !276, file: !3, line: 824, type: !56)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 820, column: 13)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 817, column: 15)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 812, column: 9)
!279 = distinct !DILexicalBlock(scope: !257, file: !3, line: 811, column: 11)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !230)
!281 = !DIGlobalVariableExpression(var: !282)
!282 = distinct !DIGlobalVariable(name: "total_lines", scope: !2, file: !3, line: 58, type: !283, isLocal: true, isDefinition: true)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !284, line: 136, baseType: !285)
!284 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !93, line: 62, baseType: !56)
!286 = !DIGlobalVariableExpression(var: !287)
!287 = distinct !DIGlobalVariable(name: "total_words", scope: !2, file: !3, line: 59, type: !283, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289)
!289 = distinct !DIGlobalVariable(name: "total_chars", scope: !2, file: !3, line: 60, type: !283, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291)
!291 = distinct !DIGlobalVariable(name: "total_bytes", scope: !2, file: !3, line: 61, type: !283, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "max_line_length", scope: !2, file: !3, line: 62, type: !283, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295)
!295 = distinct !DIGlobalVariable(name: "print_lines", scope: !2, file: !3, line: 65, type: !77, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297)
!297 = distinct !DIGlobalVariable(name: "print_words", scope: !2, file: !3, line: 65, type: !77, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299)
!299 = distinct !DIGlobalVariable(name: "print_chars", scope: !2, file: !3, line: 65, type: !77, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301)
!301 = distinct !DIGlobalVariable(name: "print_bytes", scope: !2, file: !3, line: 65, type: !77, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303)
!303 = distinct !DIGlobalVariable(name: "print_linelength", scope: !2, file: !3, line: 66, type: !77, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "number_width", scope: !2, file: !3, line: 69, type: !64, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !77, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309)
!309 = distinct !DIGlobalVariable(name: "infomap", scope: !310, file: !311, line: 632, type: !335, isLocal: true, isDefinition: true)
!310 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !311, file: !311, line: 630, type: !312, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !314)
!311 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!312 = !DISubroutineType(types: !313)
!313 = !{null, !62}
!314 = !{!315, !316, !317, !324, !326, !327, !328, !331, !332, !334}
!315 = !DILocalVariable(name: "program", arg: 1, scope: !310, file: !311, line: 630, type: !62)
!316 = !DILocalVariable(name: "node", scope: !310, file: !311, line: 642, type: !62)
!317 = !DILocalVariable(name: "map_prog", scope: !310, file: !311, line: 643, type: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !310, file: !311, line: 632, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !320, file: !311, line: 632, baseType: !62, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !320, file: !311, line: 632, baseType: !62, size: 64, offset: 64)
!324 = !DILocalVariable(name: "__s1_len", scope: !325, file: !311, line: 645, type: !54)
!325 = distinct !DILexicalBlock(scope: !310, file: !311, line: 645, column: 33)
!326 = !DILocalVariable(name: "__s2_len", scope: !325, file: !311, line: 645, type: !54)
!327 = !DILocalVariable(name: "lc_messages", scope: !310, file: !311, line: 655, type: !62)
!328 = !DILocalVariable(name: "__s1_len", scope: !329, file: !311, line: 656, type: !54)
!329 = distinct !DILexicalBlock(scope: !330, file: !311, line: 656, column: 22)
!330 = distinct !DILexicalBlock(scope: !310, file: !311, line: 656, column: 7)
!331 = !DILocalVariable(name: "__s2_len", scope: !329, file: !311, line: 656, type: !54)
!332 = !DILocalVariable(name: "__s2", scope: !333, file: !311, line: 656, type: !59)
!333 = distinct !DILexicalBlock(scope: !329, file: !311, line: 656, column: 22)
!334 = !DILocalVariable(name: "__result", scope: !333, file: !311, line: 656, type: !64)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 896, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 7)
!338 = !DIGlobalVariableExpression(var: !339)
!339 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 95, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 2304, elements: !350)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !343, line: 104, size: 256, elements: !344)
!343 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!344 = !{!345, !346, !347, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !343, line: 106, baseType: !62, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !342, file: !343, line: 109, baseType: !64, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !342, file: !343, line: 110, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !342, file: !343, line: 111, baseType: !64, size: 32, offset: 192)
!350 = !{!351}
!351 = !DISubrange(count: 9)
!352 = !DIGlobalVariableExpression(var: !353)
!353 = distinct !DIGlobalVariable(name: "format_sp_int", scope: !354, file: !3, line: 160, type: !369, isLocal: true, isDefinition: true)
!354 = distinct !DISubprogram(name: "write_counts", scope: !3, file: !3, line: 153, type: !355, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !283, !283, !283, !283, !283, !62}
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365}
!358 = !DILocalVariable(name: "lines", arg: 1, scope: !354, file: !3, line: 153, type: !283)
!359 = !DILocalVariable(name: "words", arg: 2, scope: !354, file: !3, line: 154, type: !283)
!360 = !DILocalVariable(name: "chars", arg: 3, scope: !354, file: !3, line: 155, type: !283)
!361 = !DILocalVariable(name: "bytes", arg: 4, scope: !354, file: !3, line: 156, type: !283)
!362 = !DILocalVariable(name: "linelength", arg: 5, scope: !354, file: !3, line: 157, type: !283)
!363 = !DILocalVariable(name: "file", arg: 6, scope: !354, file: !3, line: 158, type: !62)
!364 = !DILocalVariable(name: "format_int", scope: !354, file: !3, line: 161, type: !62)
!365 = !DILocalVariable(name: "buf", scope: !354, file: !3, line: 162, type: !366)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 168, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 21)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 40, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 5)
!372 = !DIGlobalVariableExpression(var: !373)
!373 = distinct !DIGlobalVariable(name: "Version", scope: !374, file: !375, line: 2, type: !62, isLocal: false, isDefinition: true)
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, globals: !377)
!375 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!376 = !{}
!377 = !{!372}
!378 = !DIGlobalVariableExpression(var: !379)
!379 = distinct !DIGlobalVariable(name: "file_name", scope: !380, file: !385, line: 36, type: !62, isLocal: true, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, globals: !382)
!381 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!382 = !{!378, !383}
!383 = !DIGlobalVariableExpression(var: !384)
!384 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !380, file: !385, line: 46, type: !77, isLocal: true, isDefinition: true)
!385 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!386 = !DIGlobalVariableExpression(var: !387)
!387 = distinct !DIGlobalVariable(name: "exit_failure", scope: !388, file: !391, line: 24, type: !392, isLocal: false, isDefinition: true)
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !389, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, globals: !390)
!389 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!390 = !{!386}
!391 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!392 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!393 = !DIGlobalVariableExpression(var: !394)
!394 = distinct !DIGlobalVariable(name: "is_basic_table", scope: !395, file: !399, line: 28, type: !400, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !397, globals: !398)
!396 = !DIFile(filename: "./lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!397 = !{!61}
!398 = !{!393}
!399 = !DIFile(filename: "lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 256, elements: !402)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIGlobalVariableExpression(var: !405)
!405 = distinct !DIGlobalVariable(name: "program_name", scope: !406, file: !410, line: 33, type: !62, isLocal: false, isDefinition: true)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !408, globals: !409)
!407 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!408 = !{!53, !51}
!409 = !{!404}
!410 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!411 = !DIGlobalVariableExpression(var: !412)
!412 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !413, file: !425, line: 77, type: !458, isLocal: false, isDefinition: true)
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !415, retainedTypes: !421, globals: !422)
!414 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!415 = !{!5, !416, !35}
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !417)
!417 = !{!418, !419, !420}
!418 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!419 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!420 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!421 = !{!64, !65, !54, !51}
!422 = !{!411, !423, !430, !440, !442, !447, !454, !456}
!423 = !DIGlobalVariableExpression(var: !424)
!424 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !413, file: !425, line: 93, type: !426, isLocal: false, isDefinition: true)
!425 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 320, elements: !428)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!428 = !{!429}
!429 = !DISubrange(count: 10)
!430 = !DIGlobalVariableExpression(var: !431)
!431 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !413, file: !425, line: 1043, type: !432, isLocal: false, isDefinition: true)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !425, line: 57, size: 448, elements: !433)
!433 = !{!434, !435, !436, !438, !439}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !432, file: !425, line: 60, baseType: !5, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !425, line: 63, baseType: !64, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !432, file: !425, line: 67, baseType: !437, size: 256, offset: 64)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !402)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !432, file: !425, line: 70, baseType: !62, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !432, file: !425, line: 73, baseType: !62, size: 64, offset: 384)
!440 = !DIGlobalVariableExpression(var: !441)
!441 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !413, file: !425, line: 108, type: !432, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443)
!443 = distinct !DIGlobalVariable(name: "slot0", scope: !413, file: !425, line: 834, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 256)
!447 = !DIGlobalVariableExpression(var: !448)
!448 = distinct !DIGlobalVariable(name: "slotvec", scope: !413, file: !425, line: 837, type: !449, isLocal: true, isDefinition: true)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !425, line: 826, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !450, file: !425, line: 828, baseType: !54, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !450, file: !425, line: 829, baseType: !51, size: 64, offset: 64)
!454 = !DIGlobalVariableExpression(var: !455)
!455 = distinct !DIGlobalVariable(name: "nslots", scope: !413, file: !425, line: 835, type: !64, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457)
!457 = distinct !DIGlobalVariable(name: "slotvec0", scope: !413, file: !425, line: 836, type: !450, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 704, elements: !460)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!460 = !{!461}
!461 = !DISubrange(count: 11)
!462 = !DIGlobalVariableExpression(var: !463)
!463 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !464, file: !467, line: 26, type: !468, isLocal: false, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C99, file: !465, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, globals: !466)
!465 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!466 = !{!462}
!467 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 376, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 47)
!471 = !DIGlobalVariableExpression(var: !472)
!472 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !473, file: !477, line: 351, type: !478, isLocal: false, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C99, file: !474, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !475, globals: !476)
!474 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!475 = !{!51, !53}
!476 = !{!471}
!477 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null}
!481 = !DIGlobalVariableExpression(var: !482)
!482 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !483, file: !827, line: 120, type: !828, isLocal: true, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !485, retainedTypes: !824, globals: !826)
!484 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!485 = !{!486}
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 41, size: 32, elements: !488)
!487 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!489 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!490 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!491 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!492 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!493 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!494 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!495 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!496 = !DIEnumerator(name: "DAY_1", value: 131079)
!497 = !DIEnumerator(name: "DAY_2", value: 131080)
!498 = !DIEnumerator(name: "DAY_3", value: 131081)
!499 = !DIEnumerator(name: "DAY_4", value: 131082)
!500 = !DIEnumerator(name: "DAY_5", value: 131083)
!501 = !DIEnumerator(name: "DAY_6", value: 131084)
!502 = !DIEnumerator(name: "DAY_7", value: 131085)
!503 = !DIEnumerator(name: "ABMON_1", value: 131086)
!504 = !DIEnumerator(name: "ABMON_2", value: 131087)
!505 = !DIEnumerator(name: "ABMON_3", value: 131088)
!506 = !DIEnumerator(name: "ABMON_4", value: 131089)
!507 = !DIEnumerator(name: "ABMON_5", value: 131090)
!508 = !DIEnumerator(name: "ABMON_6", value: 131091)
!509 = !DIEnumerator(name: "ABMON_7", value: 131092)
!510 = !DIEnumerator(name: "ABMON_8", value: 131093)
!511 = !DIEnumerator(name: "ABMON_9", value: 131094)
!512 = !DIEnumerator(name: "ABMON_10", value: 131095)
!513 = !DIEnumerator(name: "ABMON_11", value: 131096)
!514 = !DIEnumerator(name: "ABMON_12", value: 131097)
!515 = !DIEnumerator(name: "MON_1", value: 131098)
!516 = !DIEnumerator(name: "MON_2", value: 131099)
!517 = !DIEnumerator(name: "MON_3", value: 131100)
!518 = !DIEnumerator(name: "MON_4", value: 131101)
!519 = !DIEnumerator(name: "MON_5", value: 131102)
!520 = !DIEnumerator(name: "MON_6", value: 131103)
!521 = !DIEnumerator(name: "MON_7", value: 131104)
!522 = !DIEnumerator(name: "MON_8", value: 131105)
!523 = !DIEnumerator(name: "MON_9", value: 131106)
!524 = !DIEnumerator(name: "MON_10", value: 131107)
!525 = !DIEnumerator(name: "MON_11", value: 131108)
!526 = !DIEnumerator(name: "MON_12", value: 131109)
!527 = !DIEnumerator(name: "AM_STR", value: 131110)
!528 = !DIEnumerator(name: "PM_STR", value: 131111)
!529 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!530 = !DIEnumerator(name: "D_FMT", value: 131113)
!531 = !DIEnumerator(name: "T_FMT", value: 131114)
!532 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!533 = !DIEnumerator(name: "ERA", value: 131116)
!534 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!535 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!536 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!537 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!538 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!539 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!540 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!541 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!542 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!543 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!544 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!545 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!546 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!547 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!548 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!549 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!550 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!551 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!552 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!553 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!554 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!555 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!556 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!557 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!558 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!559 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!560 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!561 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!562 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!563 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!564 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!565 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!566 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!567 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!568 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!569 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!570 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!571 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!572 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!573 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!574 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!575 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!576 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!577 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!578 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!579 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!580 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!581 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!582 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!583 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!584 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!585 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!586 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!587 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!588 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!589 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!590 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!591 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!592 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!593 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!594 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!595 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!596 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!597 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!598 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!599 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!600 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!601 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!602 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!603 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!604 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!605 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!606 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!607 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!608 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!609 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!610 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!611 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!612 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!613 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!614 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!615 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!616 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!617 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!618 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!619 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!620 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!621 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!622 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!623 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!624 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!625 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!626 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!627 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!628 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!629 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!630 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!631 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!632 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!633 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!634 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!635 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!636 = !DIEnumerator(name: "CODESET", value: 14)
!637 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!638 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!639 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!640 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!644 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!645 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!646 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!647 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!648 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!649 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!650 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!651 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!652 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!653 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!654 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!655 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!656 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!657 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!658 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!659 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!660 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!661 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!662 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!664 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!665 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!666 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!667 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!668 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!669 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!670 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!671 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!672 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!673 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!674 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!675 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!676 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!677 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!678 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!679 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!680 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!681 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!682 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!683 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!684 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!685 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!686 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!687 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!688 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!689 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!690 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!691 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!692 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!693 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!694 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!695 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!696 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!697 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!698 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!699 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!700 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!701 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!702 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!703 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!704 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!705 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!706 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!707 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!708 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!709 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!710 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!711 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!712 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!713 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!714 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!715 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!716 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!717 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!718 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!719 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!720 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!721 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!722 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!723 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!724 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!725 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!726 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!727 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!728 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!729 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!730 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!732 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!733 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!734 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!735 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!736 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!737 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!738 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!739 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!740 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!741 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!742 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!743 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!744 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!745 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!746 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!747 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!748 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!749 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!750 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!751 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!752 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!753 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!754 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!755 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!756 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!757 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!758 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!759 = !DIEnumerator(name: "THOUSEP", value: 65537)
!760 = !DIEnumerator(name: "__GROUPING", value: 65538)
!761 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!762 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!763 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!764 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!765 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!766 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!767 = !DIEnumerator(name: "__YESSTR", value: 327682)
!768 = !DIEnumerator(name: "__NOSTR", value: 327683)
!769 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!770 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!771 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!772 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!773 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!774 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!775 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!776 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!777 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!778 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!779 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!780 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!781 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!782 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!783 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!784 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!785 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!786 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!787 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!788 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!789 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!790 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!791 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!792 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!793 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!794 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!795 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!796 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!797 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!798 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!799 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!800 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!801 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!802 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!803 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!804 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!805 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!806 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!807 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!808 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!809 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!810 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!811 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!812 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!813 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!814 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!815 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!816 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!817 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!818 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!819 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!820 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!821 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!822 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!823 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!824 = !{!53, !51, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!826 = !{!481}
!827 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!828 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!829 = distinct !DICompileUnit(language: DW_LANG_C99, file: !830, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !831, retainedTypes: !832)
!830 = !DIFile(filename: "./lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!831 = !{!19}
!832 = !{!53}
!833 = distinct !DICompileUnit(language: DW_LANG_C99, file: !834, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !835)
!834 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!835 = !{!26}
!836 = distinct !DICompileUnit(language: DW_LANG_C99, file: !837, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !838)
!837 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!838 = !{!283}
!839 = distinct !DICompileUnit(language: DW_LANG_C99, file: !840, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !841, retainedTypes: !1060)
!840 = !DIFile(filename: "./lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!841 = !{!842}
!842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 71, size: 32, elements: !844)
!843 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!845 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!846 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!847 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!848 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!849 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!850 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!851 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!852 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!853 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!854 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!855 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!856 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!857 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!858 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!859 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!860 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!861 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!862 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!863 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!864 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!865 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!866 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!867 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!868 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!869 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!870 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!871 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!872 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!873 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!874 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!875 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!876 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!877 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!878 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!879 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!880 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!881 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!882 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!883 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!884 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!885 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!886 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!887 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!888 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!889 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!890 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!891 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!892 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!893 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!894 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!895 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!896 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!897 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!898 = !DIEnumerator(name: "_SC_PII", value: 53)
!899 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!900 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!901 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!902 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!903 = !DIEnumerator(name: "_SC_POLL", value: 58)
!904 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!905 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!906 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!907 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!908 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!909 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!910 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!911 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!912 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!913 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!914 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!915 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!916 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!917 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!918 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!919 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!920 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!921 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!922 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!923 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!924 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!925 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!926 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!927 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!928 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!929 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!930 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!931 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!932 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!933 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!934 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!935 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!936 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!937 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!938 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!939 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!940 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!941 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!942 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!943 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!944 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!945 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!946 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!947 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!948 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!949 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!950 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!951 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!952 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!953 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!954 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!955 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!956 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!957 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!958 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!959 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!960 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!961 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!962 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!963 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!964 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!965 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!966 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!967 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!968 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!969 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!970 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!971 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!972 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!973 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!974 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!975 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!976 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!977 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!978 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!979 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!980 = !DIEnumerator(name: "_SC_BASE", value: 134)
!981 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!982 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!983 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!984 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!985 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!986 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!987 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!988 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!989 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!990 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!991 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!992 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!993 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!994 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!995 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!996 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!997 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!998 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!999 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!1000 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!1001 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!1002 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!1003 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!1004 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!1005 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!1006 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!1007 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!1008 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!1009 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!1010 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!1011 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!1012 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!1013 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!1014 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!1015 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!1016 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!1017 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!1018 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!1019 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!1020 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!1021 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!1022 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!1023 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!1024 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!1025 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!1026 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!1027 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!1028 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!1029 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!1030 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!1031 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!1032 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!1033 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!1034 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!1035 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!1036 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!1037 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!1038 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!1039 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!1040 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!1041 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!1042 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!1043 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!1044 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!1045 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!1046 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!1047 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!1048 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!1049 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!1050 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!1051 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!1052 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!1053 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!1054 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!1055 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!1056 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!1057 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!1058 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!1059 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!1060 = !{!1061}
!1061 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1062 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1063, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !1064)
!1063 = !DIFile(filename: "./lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1064 = !{!53, !51, !54, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1066 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1067, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1068)
!1067 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1068 = !{!1069}
!1069 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1071, file: !1070, line: 62, size: 32, elements: !1085)
!1070 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1071 = distinct !DISubprogram(name: "safe_read", scope: !1070, file: !1070, line: 56, type: !1072, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1066, variables: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!54, !64, !53, !54}
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = !DILocalVariable(name: "fd", arg: 1, scope: !1071, file: !1070, line: 56, type: !64)
!1076 = !DILocalVariable(name: "buf", arg: 2, scope: !1071, file: !1070, line: 56, type: !53)
!1077 = !DILocalVariable(name: "count", arg: 3, scope: !1071, file: !1070, line: 56, type: !54)
!1078 = !DILocalVariable(name: "result", scope: !1079, file: !1070, line: 66, type: !1082)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1070, line: 65, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !1070, line: 64, column: 3)
!1081 = distinct !DILexicalBlock(scope: !1071, file: !1070, line: 64, column: 3)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1083, line: 109, baseType: !1084)
!1083 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !93, line: 181, baseType: !109)
!1085 = !{!1086}
!1086 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!1087 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1088, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1089, retainedTypes: !832)
!1088 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1089 = !{!1090}
!1090 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1091, line: 41, size: 32, elements: !1092)
!1091 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1092 = !{!1093}
!1093 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!1094 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1095, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1096, retainedTypes: !1109)
!1095 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1096 = !{!1097}
!1097 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1099, file: !1098, line: 192, size: 32, elements: !1107)
!1098 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1099 = distinct !DISubprogram(name: "x2nrealloc", scope: !1098, file: !1098, line: 180, type: !1100, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!53, !53, !135, !54}
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = !DILocalVariable(name: "p", arg: 1, scope: !1099, file: !1098, line: 180, type: !53)
!1104 = !DILocalVariable(name: "pn", arg: 2, scope: !1099, file: !1098, line: 180, type: !135)
!1105 = !DILocalVariable(name: "s", arg: 3, scope: !1099, file: !1098, line: 180, type: !54)
!1106 = !DILocalVariable(name: "n", scope: !1099, file: !1098, line: 182, type: !54)
!1107 = !{!1108}
!1108 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1109 = !{!54, !51, !53}
!1110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1111, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376)
!1111 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1113, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !832)
!1113 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376)
!1115 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1117, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !832)
!1117 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1119, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !832)
!1119 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1121, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !1122)
!1121 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1122 = !{!54}
!1123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1124, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376)
!1124 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1126, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !1127)
!1126 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1127 = !{!54, !57, !59, !62}
!1128 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1129 = !{i32 2, !"Dwarf Version", i32 4}
!1130 = !{i32 2, !"Debug Info Version", i32 3}
!1131 = !{i32 1, !"PIC Level", i32 2}
!1132 = !{i32 1, !"PIE Level", i32 2}
!1133 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 109, type: !1134, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !64}
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "status", arg: 1, scope: !1133, file: !3, line: 109, type: !64)
!1138 = !DIExpression()
!1139 = !DILocation(line: 109, column: 12, scope: !1133)
!1140 = !DILocation(line: 111, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 111, column: 7)
!1142 = !DILocation(line: 111, column: 7, scope: !1133)
!1143 = !DILocation(line: 112, column: 5, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 1)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 112, column: 5)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"any pointer", !1148, i64 0}
!1148 = !{!"omnipotent char", !1149, i64 0}
!1149 = !{!"Simple C/C++ TBAA"}
!1150 = !DILocation(line: 112, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 3)
!1152 = !DILocation(line: 112, column: 5, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 2)
!1154 = !DILocation(line: 115, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 114, column: 5)
!1156 = !DILocation(line: 115, column: 7, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 1)
!1158 = !DILocation(line: 120, column: 7, scope: !1155)
!1159 = !DILocation(line: 120, column: 7, scope: !1157)
!1160 = !DILocation(line: 580, column: 3, scope: !1161, inlinedAt: !1162)
!1161 = distinct !DISubprogram(name: "emit_stdin_note", scope: !311, file: !311, line: 578, type: !479, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !376)
!1162 = distinct !DILocation(line: 126, column: 7, scope: !1155)
!1163 = !DILocation(line: 580, column: 3, scope: !1164, inlinedAt: !1162)
!1164 = !DILexicalBlockFile(scope: !1161, file: !311, discriminator: 1)
!1165 = !DILocation(line: 128, column: 7, scope: !1155)
!1166 = !DILocation(line: 128, column: 7, scope: !1157)
!1167 = !DILocation(line: 136, column: 7, scope: !1155)
!1168 = !DILocation(line: 136, column: 7, scope: !1157)
!1169 = !DILocation(line: 143, column: 7, scope: !1155)
!1170 = !DILocation(line: 143, column: 7, scope: !1157)
!1171 = !DILocation(line: 144, column: 7, scope: !1155)
!1172 = !DILocation(line: 144, column: 7, scope: !1157)
!1173 = !DILocation(line: 642, column: 15, scope: !310, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 145, column: 7, scope: !1155)
!1175 = !DILocation(line: 651, column: 3, scope: !310, inlinedAt: !1174)
!1176 = !DILocation(line: 651, column: 3, scope: !1177, inlinedAt: !1174)
!1177 = !DILexicalBlockFile(scope: !310, file: !311, discriminator: 1)
!1178 = !DILocation(line: 655, column: 29, scope: !310, inlinedAt: !1174)
!1179 = !DILocation(line: 655, column: 15, scope: !310, inlinedAt: !1174)
!1180 = !DILocation(line: 656, column: 7, scope: !330, inlinedAt: !1174)
!1181 = !DILocation(line: 656, column: 19, scope: !330, inlinedAt: !1174)
!1182 = !DILocation(line: 656, column: 22, scope: !1183, inlinedAt: !1174)
!1183 = !DILexicalBlockFile(scope: !330, file: !311, discriminator: 16)
!1184 = !DILocation(line: 656, column: 7, scope: !1185, inlinedAt: !1174)
!1185 = !DILexicalBlockFile(scope: !310, file: !311, discriminator: 16)
!1186 = !DILocation(line: 662, column: 7, scope: !1187, inlinedAt: !1174)
!1187 = distinct !DILexicalBlock(scope: !330, file: !311, line: 657, column: 5)
!1188 = !DILocation(line: 662, column: 7, scope: !1189, inlinedAt: !1174)
!1189 = !DILexicalBlockFile(scope: !1187, file: !311, discriminator: 1)
!1190 = !DILocation(line: 664, column: 5, scope: !1187, inlinedAt: !1174)
!1191 = !DILocation(line: 665, column: 3, scope: !310, inlinedAt: !1174)
!1192 = !DILocation(line: 665, column: 3, scope: !1177, inlinedAt: !1174)
!1193 = !DILocation(line: 667, column: 3, scope: !310, inlinedAt: !1174)
!1194 = !DILocation(line: 667, column: 3, scope: !1177, inlinedAt: !1174)
!1195 = !DILocation(line: 147, column: 3, scope: !1133)
!1196 = !DILocation(line: 648, column: 11, scope: !69)
!1197 = !DILocation(line: 648, column: 24, scope: !69)
!1198 = !DILocation(line: 654, column: 9, scope: !69)
!1199 = !DILocation(line: 656, column: 3, scope: !69)
!1200 = !DILocation(line: 659, column: 21, scope: !69)
!1201 = !DILocation(line: 659, column: 3, scope: !69)
!1202 = !DILocation(line: 660, column: 3, scope: !69)
!1203 = !DILocation(line: 661, column: 3, scope: !69)
!1204 = !DILocation(line: 662, column: 3, scope: !69)
!1205 = !DILocation(line: 664, column: 3, scope: !69)
!1206 = !DILocation(line: 666, column: 15, scope: !69)
!1207 = !DILocation(line: 666, column: 13, scope: !69)
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"long", !1148, i64 0}
!1210 = !DILocation(line: 669, column: 12, scope: !69)
!1211 = !DILocation(line: 669, column: 3, scope: !69)
!1212 = !DILocation(line: 673, column: 75, scope: !69)
!1213 = !DILocation(line: 673, column: 57, scope: !69)
!1214 = !DILocation(line: 673, column: 43, scope: !69)
!1215 = !DILocation(line: 673, column: 29, scope: !69)
!1216 = !DILocation(line: 673, column: 15, scope: !69)
!1217 = !DILocation(line: 675, column: 3, scope: !69)
!1218 = !DILocation(line: 675, column: 18, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !69, file: !3, discriminator: 1)
!1220 = !DILocation(line: 651, column: 7, scope: !69)
!1221 = !DILocation(line: 675, column: 3, scope: !1219)
!1222 = !DILocation(line: 680, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !69, file: !3, line: 677, column: 7)
!1224 = !DILocation(line: 688, column: 9, scope: !1223)
!1225 = !DILocation(line: 692, column: 9, scope: !1223)
!1226 = !DILocation(line: 696, column: 9, scope: !1223)
!1227 = distinct !{!1227, !1217, !1228}
!1228 = !DILocation(line: 708, column: 7, scope: !69)
!1229 = !DILocation(line: 699, column: 22, scope: !1223)
!1230 = !DILocation(line: 700, column: 9, scope: !1223)
!1231 = !DILocation(line: 702, column: 7, scope: !1223)
!1232 = !DILocation(line: 704, column: 7, scope: !1223)
!1233 = !DILocation(line: 704, column: 7, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1223, file: !3, discriminator: 1)
!1235 = !DILocation(line: 707, column: 9, scope: !1223)
!1236 = !DILocation(line: 710, column: 22, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !69, file: !3, line: 710, column: 7)
!1238 = !DILocation(line: 710, column: 37, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1237, file: !3, discriminator: 1)
!1240 = !DILocation(line: 710, column: 52, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1237, file: !3, discriminator: 2)
!1242 = !DILocation(line: 711, column: 10, scope: !1237)
!1243 = !DILocation(line: 710, column: 7, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !69, file: !3, discriminator: 4)
!1245 = !DILocation(line: 712, column: 5, scope: !1237)
!1246 = !DILocation(line: 714, column: 8, scope: !69)
!1247 = !DILocation(line: 716, column: 7, scope: !194)
!1248 = !{!1249, !1249, i64 0}
!1249 = !{!"int", !1148, i64 0}
!1250 = !DILocation(line: 716, column: 7, scope: !69)
!1251 = !DILocation(line: 722, column: 11, scope: !193)
!1252 = !DILocation(line: 724, column: 24, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 723, column: 9)
!1254 = distinct !DILexicalBlock(scope: !193, file: !3, line: 722, column: 11)
!1255 = !DILocation(line: 724, column: 47, scope: !1253)
!1256 = !DILocation(line: 724, column: 47, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1253, file: !3, discriminator: 1)
!1258 = !DILocation(line: 724, column: 11, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1253, file: !3, discriminator: 2)
!1260 = !DILocation(line: 725, column: 11, scope: !1253)
!1261 = !DILocation(line: 725, column: 11, scope: !1257)
!1262 = !DILocation(line: 727, column: 11, scope: !1253)
!1263 = !DILocation(line: 730, column: 11, scope: !248)
!1264 = !DILocation(line: 730, column: 11, scope: !252)
!1265 = !DILocation(line: 730, column: 11, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !252, file: !3, discriminator: 2)
!1267 = !{!1148, !1148, i64 0}
!1268 = !DILocation(line: 730, column: 11, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 3)
!1270 = distinct !DILexicalBlock(scope: !252, file: !3, line: 730, column: 11)
!1271 = !DILocation(line: 730, column: 11, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 2)
!1273 = !DILocation(line: 730, column: 11, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !3, discriminator: 4)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 730, column: 11)
!1276 = !DILocation(line: 730, column: 11, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !249, file: !3, discriminator: 13)
!1278 = !DILocation(line: 730, column: 11, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !193, file: !3, discriminator: 13)
!1280 = !DILocation(line: 731, column: 18, scope: !249)
!1281 = !DILocation(line: 718, column: 13, scope: !193)
!1282 = !DILocation(line: 731, column: 9, scope: !249)
!1283 = !DILocation(line: 734, column: 20, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !249, file: !3, line: 733, column: 9)
!1285 = !DILocation(line: 735, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 735, column: 15)
!1287 = !DILocation(line: 735, column: 15, scope: !1284)
!1288 = !DILocation(line: 736, column: 13, scope: !1286)
!1289 = !DILocation(line: 736, column: 13, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1286, file: !3, discriminator: 1)
!1291 = !DILocation(line: 736, column: 13, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1286, file: !3, discriminator: 2)
!1293 = !DILocation(line: 736, column: 13, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1286, file: !3, discriminator: 3)
!1295 = !DILocation(line: 742, column: 7, scope: !193)
!1296 = !DILocation(line: 743, column: 18, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !193, file: !3, line: 743, column: 11)
!1298 = !DIExpression(DW_OP_deref)
!1299 = !DILocation(line: 742, column: 19, scope: !193)
!1300 = !DILocalVariable(name: "__fd", arg: 1, scope: !1301, file: !1302, line: 463, type: !64)
!1301 = distinct !DISubprogram(name: "fstat", scope: !1302, file: !1302, line: 463, type: !1303, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1306)
!1302 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!64, !64, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1306 = !{!1300, !1307}
!1307 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1301, file: !1302, line: 463, type: !1305)
!1308 = !DILocation(line: 463, column: 1, scope: !1301, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 743, column: 11, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 2)
!1311 = !DILocation(line: 465, column: 10, scope: !1301, inlinedAt: !1309)
!1312 = !DILocation(line: 743, column: 40, scope: !1297)
!1313 = !DILocation(line: 744, column: 11, scope: !1297)
!1314 = !DILocation(line: 744, column: 14, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 1)
!1316 = !{!1317, !1249, i64 24}
!1317 = !{!"stat", !1209, i64 0, !1209, i64 8, !1209, i64 16, !1249, i64 24, !1249, i64 28, !1249, i64 32, !1249, i64 36, !1209, i64 40, !1209, i64 48, !1209, i64 56, !1209, i64 64, !1318, i64 72, !1318, i64 88, !1318, i64 104, !1148, i64 120}
!1318 = !{!"timespec", !1209, i64 0, !1209, i64 8}
!1319 = !DILocation(line: 745, column: 11, scope: !1297)
!1320 = !DILocation(line: 745, column: 17, scope: !1315)
!1321 = !{!1317, !1209, i64 48}
!1322 = !DILocation(line: 745, column: 14, scope: !1315)
!1323 = !DILocation(line: 745, column: 28, scope: !1315)
!1324 = !DILocation(line: 745, column: 28, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 3)
!1326 = !DILocation(line: 745, column: 28, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 4)
!1328 = !DILocation(line: 745, column: 25, scope: !1327)
!1329 = !DILocation(line: 743, column: 11, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !193, file: !3, discriminator: 1)
!1331 = !DILocation(line: 656, column: 17, scope: !69)
!1332 = !DILocation(line: 748, column: 11, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 746, column: 9)
!1334 = !DILocation(line: 749, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 749, column: 15)
!1336 = !DILocation(line: 749, column: 44, scope: !1335)
!1337 = !DILocation(line: 749, column: 47, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1335, file: !3, discriminator: 1)
!1339 = !DILocation(line: 749, column: 63, scope: !1338)
!1340 = !DILocation(line: 749, column: 15, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1333, file: !3, discriminator: 1)
!1342 = !DILocation(line: 750, column: 13, scope: !1335)
!1343 = !DILocation(line: 750, column: 13, scope: !1338)
!1344 = !DILocation(line: 750, column: 13, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1335, file: !3, discriminator: 2)
!1346 = !DILocation(line: 752, column: 23, scope: !1333)
!1347 = !{!1348, !1147, i64 8}
!1348 = !{!"Tokens", !1209, i64 0, !1147, i64 8, !1147, i64 16, !1349, i64 24, !1349, i64 112, !1349, i64 200}
!1349 = !{!"obstack", !1209, i64 0, !1147, i64 8, !1147, i64 16, !1147, i64 24, !1147, i64 32, !1148, i64 40, !1209, i64 48, !1148, i64 56, !1148, i64 64, !1147, i64 72, !1249, i64 80, !1249, i64 80, !1249, i64 80}
!1350 = !DILocation(line: 653, column: 10, scope: !69)
!1351 = !DILocation(line: 753, column: 24, scope: !1333)
!1352 = !{!1348, !1209, i64 0}
!1353 = !DILocation(line: 652, column: 10, scope: !69)
!1354 = !DILocation(line: 754, column: 16, scope: !1333)
!1355 = !DILocation(line: 715, column: 25, scope: !69)
!1356 = !DILocation(line: 755, column: 9, scope: !1333)
!1357 = !DILocation(line: 760, column: 16, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 757, column: 9)
!1359 = !DILocation(line: 762, column: 5, scope: !194)
!1360 = !DILocation(line: 762, column: 5, scope: !193)
!1361 = !DILocation(line: 766, column: 37, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1363, file: !3, discriminator: 1)
!1363 = distinct !DILexicalBlock(scope: !194, file: !3, line: 764, column: 5)
!1364 = !DILocation(line: 766, column: 16, scope: !1363)
!1365 = !DILocation(line: 767, column: 38, scope: !1362)
!1366 = !DILocation(line: 767, column: 16, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1363, file: !3, discriminator: 3)
!1368 = !DILocation(line: 768, column: 12, scope: !1363)
!1369 = !DILocation(line: 771, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !69, file: !3, line: 771, column: 7)
!1371 = !DILocation(line: 771, column: 7, scope: !69)
!1372 = !DILocation(line: 772, column: 5, scope: !1370)
!1373 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1374, file: !3, line: 590, type: !54)
!1374 = distinct !DISubprogram(name: "get_input_fstatus", scope: !3, file: !3, line: 590, type: !1375, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1379)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!83, !54, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1379 = !{!1373, !1380, !1381, !1382, !1385, !1389, !1390, !1392}
!1380 = !DILocalVariable(name: "file", arg: 2, scope: !1374, file: !3, line: 590, type: !1377)
!1381 = !DILocalVariable(name: "fstatus", scope: !1374, file: !3, line: 592, type: !83)
!1382 = !DILocalVariable(name: "i", scope: !1383, file: !3, line: 602, type: !54)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 601, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 594, column: 7)
!1385 = !DILocalVariable(name: "__s1_len", scope: !1386, file: !3, line: 605, type: !54)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 605, column: 43)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 604, column: 7)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 604, column: 7)
!1389 = !DILocalVariable(name: "__s2_len", scope: !1386, file: !3, line: 605, type: !54)
!1390 = !DILocalVariable(name: "__s2", scope: !1391, file: !3, line: 605, type: !59)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 605, column: 43)
!1392 = !DILocalVariable(name: "__result", scope: !1391, file: !3, line: 605, type: !64)
!1393 = !DILocation(line: 590, column: 27, scope: !1374, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 774, column: 13, scope: !69)
!1395 = !DILocation(line: 590, column: 48, scope: !1374, inlinedAt: !1394)
!1396 = !DILocation(line: 592, column: 39, scope: !1374, inlinedAt: !1394)
!1397 = !DILocalVariable(name: "n", arg: 1, scope: !1398, file: !1098, line: 105, type: !54)
!1398 = distinct !DISubprogram(name: "xnmalloc", scope: !1098, file: !1098, line: 105, type: !1399, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!53, !54, !54}
!1401 = !{!1397, !1402}
!1402 = !DILocalVariable(name: "s", arg: 2, scope: !1398, file: !1098, line: 105, type: !54)
!1403 = !DILocation(line: 105, column: 18, scope: !1398, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 592, column: 29, scope: !1405, inlinedAt: !1394)
!1405 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 3)
!1406 = !DILocation(line: 105, column: 28, scope: !1398, inlinedAt: !1404)
!1407 = !DILocation(line: 107, column: 7, scope: !1408, inlinedAt: !1404)
!1408 = distinct !DILexicalBlock(scope: !1398, file: !1098, line: 107, column: 7)
!1409 = !DILocation(line: 107, column: 7, scope: !1398, inlinedAt: !1404)
!1410 = !DILocation(line: 108, column: 5, scope: !1408, inlinedAt: !1404)
!1411 = !DILocation(line: 109, column: 21, scope: !1398, inlinedAt: !1404)
!1412 = !DILocation(line: 109, column: 10, scope: !1398, inlinedAt: !1404)
!1413 = !DILocation(line: 592, column: 29, scope: !1405, inlinedAt: !1394)
!1414 = !DILocation(line: 592, column: 19, scope: !1374, inlinedAt: !1394)
!1415 = !DILocation(line: 595, column: 7, scope: !1384, inlinedAt: !1394)
!1416 = !DILocation(line: 596, column: 16, scope: !1417, inlinedAt: !1394)
!1417 = !DILexicalBlockFile(scope: !1384, file: !3, discriminator: 1)
!1418 = !DILocation(line: 596, column: 30, scope: !1417, inlinedAt: !1394)
!1419 = !DILocation(line: 596, column: 28, scope: !1417, inlinedAt: !1394)
!1420 = !DILocation(line: 596, column: 44, scope: !1417, inlinedAt: !1394)
!1421 = !DILocation(line: 596, column: 42, scope: !1417, inlinedAt: !1394)
!1422 = !DILocation(line: 597, column: 18, scope: !1384, inlinedAt: !1394)
!1423 = !DILocation(line: 597, column: 16, scope: !1384, inlinedAt: !1394)
!1424 = !DILocation(line: 597, column: 32, scope: !1384, inlinedAt: !1394)
!1425 = !DILocation(line: 597, column: 30, scope: !1384, inlinedAt: !1394)
!1426 = !DILocation(line: 598, column: 15, scope: !1384, inlinedAt: !1394)
!1427 = !DILocation(line: 594, column: 7, scope: !1428, inlinedAt: !1394)
!1428 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 1)
!1429 = !DILocation(line: 605, column: 32, scope: !1387, inlinedAt: !1394)
!1430 = !DILocation(line: 599, column: 16, scope: !1384, inlinedAt: !1394)
!1431 = !DILocation(line: 599, column: 23, scope: !1384, inlinedAt: !1394)
!1432 = !{!1433, !1249, i64 0}
!1433 = !{!"fstatus", !1249, i64 0, !1317, i64 8}
!1434 = !DILocation(line: 599, column: 5, scope: !1384, inlinedAt: !1394)
!1435 = !DILocation(line: 605, column: 40, scope: !1387, inlinedAt: !1394)
!1436 = !DILocation(line: 605, column: 43, scope: !1386, inlinedAt: !1394)
!1437 = !DILocation(line: 605, column: 43, scope: !1391, inlinedAt: !1394)
!1438 = !DILocation(line: 605, column: 43, scope: !1439, inlinedAt: !1394)
!1439 = !DILexicalBlockFile(scope: !1391, file: !3, discriminator: 3)
!1440 = !DILocation(line: 605, column: 43, scope: !1441, inlinedAt: !1394)
!1441 = !DILexicalBlockFile(scope: !1442, file: !3, discriminator: 4)
!1442 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 605, column: 43)
!1443 = !DILocation(line: 605, column: 43, scope: !1444, inlinedAt: !1394)
!1444 = !DILexicalBlockFile(scope: !1442, file: !3, discriminator: 3)
!1445 = !DILocation(line: 605, column: 43, scope: !1446, inlinedAt: !1394)
!1446 = !DILexicalBlockFile(scope: !1447, file: !3, discriminator: 5)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 605, column: 43)
!1448 = !DILocation(line: 605, column: 43, scope: !1449, inlinedAt: !1394)
!1449 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 14)
!1450 = !DILocation(line: 605, column: 30, scope: !1449, inlinedAt: !1394)
!1451 = !DILocation(line: 606, column: 65, scope: !1387, inlinedAt: !1394)
!1452 = !DILocation(line: 463, column: 1, scope: !1301, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 606, column: 32, scope: !1387, inlinedAt: !1394)
!1454 = !DILocation(line: 465, column: 10, scope: !1301, inlinedAt: !1453)
!1455 = !DILocation(line: 605, column: 30, scope: !1456, inlinedAt: !1394)
!1456 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 15)
!1457 = !DILocation(line: 607, column: 59, scope: !1387, inlinedAt: !1394)
!1458 = !DILocalVariable(name: "__path", arg: 1, scope: !1459, file: !1302, line: 449, type: !62)
!1459 = distinct !DISubprogram(name: "stat", scope: !1302, file: !1302, line: 449, type: !1460, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!64, !62, !1305}
!1462 = !{!1458, !1463}
!1463 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1459, file: !1302, line: 449, type: !1305)
!1464 = !DILocation(line: 449, column: 1, scope: !1459, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 607, column: 32, scope: !1387, inlinedAt: !1394)
!1466 = !DILocation(line: 451, column: 10, scope: !1459, inlinedAt: !1465)
!1467 = !DILocation(line: 605, column: 30, scope: !1468, inlinedAt: !1394)
!1468 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 16)
!1469 = !DILocation(line: 605, column: 30, scope: !1470, inlinedAt: !1394)
!1470 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 17)
!1471 = !DILocation(line: 605, column: 20, scope: !1470, inlinedAt: !1394)
!1472 = !DILocation(line: 605, column: 27, scope: !1470, inlinedAt: !1394)
!1473 = !DILocation(line: 604, column: 32, scope: !1474, inlinedAt: !1394)
!1474 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 2)
!1475 = !DILocation(line: 602, column: 14, scope: !1383, inlinedAt: !1394)
!1476 = !DILocation(line: 604, column: 21, scope: !1477, inlinedAt: !1394)
!1477 = !DILexicalBlockFile(scope: !1387, file: !3, discriminator: 1)
!1478 = !DILocation(line: 604, column: 7, scope: !1479, inlinedAt: !1394)
!1479 = !DILexicalBlockFile(scope: !1388, file: !3, discriminator: 1)
!1480 = distinct !{!1480, !1481, !1482}
!1481 = !DILocation(line: 604, column: 7, scope: !1388)
!1482 = !DILocation(line: 607, column: 62, scope: !1388)
!1483 = !DILocation(line: 655, column: 19, scope: !69)
!1484 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1485, file: !3, line: 618, type: !54)
!1485 = distinct !DISubprogram(name: "compute_number_width", scope: !3, file: !3, line: 618, type: !1486, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1490)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!64, !54, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1490 = !{!1484, !1491, !1492, !1493, !1496, !1497}
!1491 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1485, file: !3, line: 618, type: !1488)
!1492 = !DILocalVariable(name: "width", scope: !1485, file: !3, line: 620, type: !64)
!1493 = !DILocalVariable(name: "minimum_width", scope: !1494, file: !3, line: 624, type: !64)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 623, column: 5)
!1495 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 622, column: 7)
!1496 = !DILocalVariable(name: "regular_total", scope: !1494, file: !3, line: 625, type: !283)
!1497 = !DILocalVariable(name: "i", scope: !1494, file: !3, line: 626, type: !54)
!1498 = !DILocation(line: 618, column: 30, scope: !1485, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 775, column: 18, scope: !69)
!1500 = !DILocation(line: 618, column: 60, scope: !1485, inlinedAt: !1499)
!1501 = !DILocation(line: 620, column: 7, scope: !1485, inlinedAt: !1499)
!1502 = !DILocation(line: 622, column: 9, scope: !1495, inlinedAt: !1499)
!1503 = !DILocation(line: 622, column: 18, scope: !1495, inlinedAt: !1499)
!1504 = !DILocation(line: 622, column: 32, scope: !1505, inlinedAt: !1499)
!1505 = !DILexicalBlockFile(scope: !1495, file: !3, discriminator: 1)
!1506 = !DILocation(line: 622, column: 39, scope: !1505, inlinedAt: !1499)
!1507 = !DILocation(line: 622, column: 7, scope: !1508, inlinedAt: !1499)
!1508 = !DILexicalBlockFile(scope: !1485, file: !3, discriminator: 1)
!1509 = !DILocation(line: 629, column: 15, scope: !1510, inlinedAt: !1499)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 629, column: 13)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 628, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 628, column: 7)
!1513 = !DILocation(line: 625, column: 17, scope: !1494, inlinedAt: !1499)
!1514 = !DILocation(line: 637, column: 17, scope: !1515, inlinedAt: !1499)
!1515 = !DILexicalBlockFile(scope: !1516, file: !3, discriminator: 1)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 637, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 637, column: 7)
!1518 = !DILocation(line: 637, column: 7, scope: !1519, inlinedAt: !1499)
!1519 = !DILexicalBlockFile(scope: !1517, file: !3, discriminator: 1)
!1520 = !DILocation(line: 638, column: 14, scope: !1516, inlinedAt: !1499)
!1521 = !DILocation(line: 629, column: 26, scope: !1510, inlinedAt: !1499)
!1522 = !DILocation(line: 629, column: 13, scope: !1511, inlinedAt: !1499)
!1523 = !DILocation(line: 631, column: 17, scope: !1524, inlinedAt: !1499)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 631, column: 17)
!1525 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 630, column: 11)
!1526 = !{!1433, !1249, i64 32}
!1527 = !DILocation(line: 631, column: 17, scope: !1525, inlinedAt: !1499)
!1528 = !DILocation(line: 632, column: 46, scope: !1524, inlinedAt: !1499)
!1529 = !{!1433, !1209, i64 56}
!1530 = !DILocation(line: 632, column: 29, scope: !1524, inlinedAt: !1499)
!1531 = !DILocation(line: 632, column: 15, scope: !1524, inlinedAt: !1499)
!1532 = !DILocation(line: 624, column: 11, scope: !1494, inlinedAt: !1499)
!1533 = !DILocation(line: 628, column: 32, scope: !1534, inlinedAt: !1499)
!1534 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 2)
!1535 = !DILocation(line: 626, column: 14, scope: !1494, inlinedAt: !1499)
!1536 = !DILocation(line: 628, column: 21, scope: !1537, inlinedAt: !1499)
!1537 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 1)
!1538 = !DILocation(line: 628, column: 7, scope: !1539, inlinedAt: !1499)
!1539 = !DILexicalBlockFile(scope: !1512, file: !3, discriminator: 1)
!1540 = distinct !{!1540, !1541, !1542}
!1541 = !DILocation(line: 628, column: 7, scope: !1512)
!1542 = !DILocation(line: 635, column: 11, scope: !1512)
!1543 = !DILocation(line: 637, column: 49, scope: !1544, inlinedAt: !1499)
!1544 = !DILexicalBlockFile(scope: !1516, file: !3, discriminator: 2)
!1545 = distinct !{!1545, !1546, !1547}
!1546 = !DILocation(line: 637, column: 7, scope: !1517)
!1547 = !DILocation(line: 638, column: 14, scope: !1517)
!1548 = !DILocation(line: 639, column: 17, scope: !1549, inlinedAt: !1499)
!1549 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 639, column: 11)
!1550 = !DILocation(line: 639, column: 11, scope: !1494, inlinedAt: !1499)
!1551 = !DILocation(line: 641, column: 5, scope: !1494, inlinedAt: !1499)
!1552 = !DILocation(line: 775, column: 16, scope: !69)
!1553 = !DILocation(line: 650, column: 8, scope: !69)
!1554 = !DILocation(line: 777, column: 7, scope: !69)
!1555 = !DILocation(line: 781, column: 12, scope: !257)
!1556 = !DILocation(line: 782, column: 7, scope: !257)
!1557 = !DILocation(line: 782, column: 26, scope: !257)
!1558 = !DILocation(line: 783, column: 25, scope: !257)
!1559 = !DILocation(line: 783, column: 13, scope: !257)
!1560 = !DILocation(line: 784, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !257, file: !3, line: 784, column: 11)
!1562 = !DILocation(line: 784, column: 11, scope: !257)
!1563 = !DILocation(line: 786, column: 19, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 785, column: 9)
!1565 = !DILocation(line: 786, column: 11, scope: !1564)
!1566 = !DILocation(line: 791, column: 25, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 787, column: 13)
!1568 = !DILocation(line: 791, column: 32, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1567, file: !3, discriminator: 1)
!1570 = !DILocation(line: 792, column: 22, scope: !1567)
!1571 = !DILocation(line: 791, column: 15, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1567, file: !3, discriminator: 2)
!1573 = !DILocation(line: 838, column: 5, scope: !258)
!1574 = !DILocation(line: 844, column: 10, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !69, file: !3, line: 844, column: 7)
!1576 = !DILocation(line: 796, column: 15, scope: !1567)
!1577 = !DILocation(line: 798, column: 15, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 798, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 798, column: 15)
!1580 = !DILocation(line: 801, column: 22, scope: !264)
!1581 = !DILocation(line: 801, column: 25, scope: !263)
!1582 = !DILocation(line: 801, column: 25, scope: !267)
!1583 = !DILocation(line: 801, column: 25, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !267, file: !3, discriminator: 3)
!1585 = !DILocation(line: 801, column: 25, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 4)
!1587 = distinct !DILexicalBlock(scope: !267, file: !3, line: 801, column: 25)
!1588 = !DILocation(line: 801, column: 25, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 3)
!1590 = !DILocation(line: 801, column: 25, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1592, file: !3, discriminator: 5)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 801, column: 25)
!1593 = !DILocation(line: 801, column: 25, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !264, file: !3, discriminator: 14)
!1595 = !DILocation(line: 801, column: 49, scope: !1594)
!1596 = !DILocation(line: 801, column: 52, scope: !270)
!1597 = !DILocation(line: 801, column: 52, scope: !273)
!1598 = !DILocation(line: 801, column: 52, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !273, file: !3, discriminator: 17)
!1600 = !DILocation(line: 801, column: 52, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 18)
!1602 = distinct !DILexicalBlock(scope: !273, file: !3, line: 801, column: 52)
!1603 = !DILocation(line: 801, column: 52, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 17)
!1605 = !DILocation(line: 801, column: 52, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !3, discriminator: 19)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 801, column: 52)
!1608 = !DILocation(line: 801, column: 52, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !264, file: !3, discriminator: 28)
!1610 = !DILocation(line: 801, column: 11, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !257, file: !3, discriminator: 28)
!1612 = !DILocation(line: 805, column: 24, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !264, file: !3, line: 802, column: 9)
!1614 = !DILocation(line: 807, column: 18, scope: !1613)
!1615 = !DILocation(line: 805, column: 11, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1613, file: !3, discriminator: 1)
!1617 = !DILocation(line: 809, column: 9, scope: !1613)
!1618 = !DILocation(line: 811, column: 12, scope: !279)
!1619 = !DILocation(line: 811, column: 11, scope: !257)
!1620 = !DILocation(line: 817, column: 15, scope: !278)
!1621 = !DILocation(line: 818, column: 32, scope: !277)
!1622 = !DILocation(line: 818, column: 13, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !277, file: !3, discriminator: 1)
!1624 = !DILocation(line: 818, column: 13, scope: !277)
!1625 = !DILocation(line: 824, column: 47, scope: !276)
!1626 = !DILocation(line: 824, column: 33, scope: !276)
!1627 = !DILocation(line: 825, column: 42, scope: !276)
!1628 = !DILocation(line: 826, column: 35, scope: !276)
!1629 = !DILocation(line: 825, column: 15, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !276, file: !3, discriminator: 1)
!1631 = !DILocation(line: 831, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !257, file: !3, line: 831, column: 11)
!1633 = !DILocation(line: 831, column: 11, scope: !257)
!1634 = !DILocation(line: 834, column: 36, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1632, file: !3, discriminator: 3)
!1636 = !DILocalVariable(name: "file", arg: 1, scope: !1637, file: !3, line: 554, type: !62)
!1637 = distinct !DISubprogram(name: "wc_file", scope: !3, file: !3, line: 554, type: !1638, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!77, !62, !83}
!1640 = !{!1636, !1641, !1642, !1645, !1646, !1648, !1649, !1651}
!1641 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1637, file: !3, line: 554, type: !83)
!1642 = !DILocalVariable(name: "__s1_len", scope: !1643, file: !3, line: 556, type: !54)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 556, column: 17)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 556, column: 7)
!1645 = !DILocalVariable(name: "__s2_len", scope: !1643, file: !3, line: 556, type: !54)
!1646 = !DILocalVariable(name: "__s2", scope: !1647, file: !3, line: 556, type: !59)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 556, column: 17)
!1648 = !DILocalVariable(name: "__result", scope: !1647, file: !3, line: 556, type: !64)
!1649 = !DILocalVariable(name: "fd", scope: !1650, file: !3, line: 564, type: !64)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 563, column: 5)
!1651 = !DILocalVariable(name: "ok", scope: !1652, file: !3, line: 572, type: !77)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 571, column: 9)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 565, column: 11)
!1654 = !DILocation(line: 554, column: 22, scope: !1637, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 834, column: 15, scope: !1635)
!1656 = !DILocation(line: 554, column: 44, scope: !1637, inlinedAt: !1655)
!1657 = !DILocation(line: 556, column: 17, scope: !1643, inlinedAt: !1655)
!1658 = !DILocation(line: 556, column: 17, scope: !1647, inlinedAt: !1655)
!1659 = !DILocation(line: 556, column: 17, scope: !1660, inlinedAt: !1655)
!1660 = !DILexicalBlockFile(scope: !1661, file: !3, discriminator: 4)
!1661 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 556, column: 17)
!1662 = !DILocation(line: 556, column: 17, scope: !1663, inlinedAt: !1655)
!1663 = !DILexicalBlockFile(scope: !1661, file: !3, discriminator: 3)
!1664 = !DILocation(line: 556, column: 17, scope: !1665, inlinedAt: !1655)
!1665 = !DILexicalBlockFile(scope: !1666, file: !3, discriminator: 5)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 556, column: 17)
!1667 = !DILocation(line: 556, column: 17, scope: !1668, inlinedAt: !1655)
!1668 = !DILexicalBlockFile(scope: !1643, file: !3, discriminator: 12)
!1669 = !DILocation(line: 556, column: 7, scope: !1670, inlinedAt: !1655)
!1670 = !DILexicalBlockFile(scope: !1637, file: !3, discriminator: 14)
!1671 = !DILocation(line: 560, column: 14, scope: !1672, inlinedAt: !1655)
!1672 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 557, column: 5)
!1673 = !DILocation(line: 560, column: 7, scope: !1672, inlinedAt: !1655)
!1674 = !DILocation(line: 564, column: 16, scope: !1650, inlinedAt: !1655)
!1675 = !DILocation(line: 564, column: 11, scope: !1650, inlinedAt: !1655)
!1676 = !DILocation(line: 565, column: 14, scope: !1653, inlinedAt: !1655)
!1677 = !DILocation(line: 565, column: 11, scope: !1650, inlinedAt: !1655)
!1678 = !DILocation(line: 567, column: 21, scope: !1679, inlinedAt: !1655)
!1679 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 566, column: 9)
!1680 = !DILocation(line: 567, column: 34, scope: !1681, inlinedAt: !1655)
!1681 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 1)
!1682 = !DILocation(line: 567, column: 11, scope: !1683, inlinedAt: !1655)
!1683 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 2)
!1684 = !DILocation(line: 568, column: 11, scope: !1679, inlinedAt: !1655)
!1685 = !DILocation(line: 572, column: 21, scope: !1652, inlinedAt: !1655)
!1686 = !DILocation(line: 573, column: 15, scope: !1687, inlinedAt: !1655)
!1687 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 573, column: 15)
!1688 = !DILocation(line: 573, column: 26, scope: !1687, inlinedAt: !1655)
!1689 = !DILocation(line: 573, column: 15, scope: !1652, inlinedAt: !1655)
!1690 = !DILocation(line: 575, column: 25, scope: !1691, inlinedAt: !1655)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 574, column: 13)
!1692 = !DILocation(line: 575, column: 38, scope: !1693, inlinedAt: !1655)
!1693 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 1)
!1694 = !DILocation(line: 575, column: 15, scope: !1695, inlinedAt: !1655)
!1695 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 2)
!1696 = !DILocation(line: 576, column: 15, scope: !1691, inlinedAt: !1655)
!1697 = !DILocation(line: 834, column: 15, scope: !1635)
!1698 = !DILocation(line: 834, column: 12, scope: !1635)
!1699 = !DILocation(line: 836, column: 11, scope: !257)
!1700 = !DILocation(line: 837, column: 27, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !257, file: !3, line: 836, column: 11)
!1702 = !DILocation(line: 837, column: 9, scope: !1701)
!1703 = !DILocation(line: 779, column: 23, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !258, file: !3, discriminator: 1)
!1705 = distinct !{!1705, !1706, !1707}
!1706 = !DILocation(line: 779, column: 3, scope: !259)
!1707 = !DILocation(line: 838, column: 5, scope: !259)
!1708 = !DILocation(line: 844, column: 7, scope: !1575)
!1709 = !DILocation(line: 844, column: 28, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 2)
!1711 = !DILocation(line: 844, column: 50, scope: !1710)
!1712 = !DILocation(line: 844, column: 7, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !69, file: !3, discriminator: 2)
!1714 = !DILocation(line: 554, column: 22, scope: !1637, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 845, column: 11, scope: !1575)
!1716 = !DILocation(line: 554, column: 44, scope: !1637, inlinedAt: !1715)
!1717 = !DILocation(line: 560, column: 14, scope: !1672, inlinedAt: !1715)
!1718 = !DILocation(line: 845, column: 11, scope: !1575)
!1719 = !DILocation(line: 845, column: 8, scope: !1575)
!1720 = !DILocation(line: 845, column: 5, scope: !1575)
!1721 = !DILocation(line: 847, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !69, file: !3, line: 847, column: 7)
!1723 = !DILocation(line: 847, column: 7, scope: !69)
!1724 = !DILocation(line: 848, column: 5, scope: !1722)
!1725 = !DILocation(line: 850, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !69, file: !3, line: 850, column: 7)
!1727 = !DILocation(line: 850, column: 9, scope: !1726)
!1728 = !DILocation(line: 850, column: 7, scope: !69)
!1729 = !DILocation(line: 851, column: 19, scope: !1726)
!1730 = !DILocation(line: 851, column: 32, scope: !1726)
!1731 = !DILocation(line: 851, column: 45, scope: !1726)
!1732 = !DILocation(line: 851, column: 58, scope: !1726)
!1733 = !DILocation(line: 852, column: 19, scope: !1726)
!1734 = !DILocation(line: 852, column: 36, scope: !1726)
!1735 = !DILocation(line: 851, column: 5, scope: !1726)
!1736 = !DILocation(line: 854, column: 3, scope: !69)
!1737 = !DILocation(line: 856, column: 3, scope: !69)
!1738 = !DILocation(line: 858, column: 23, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !69, file: !3, line: 858, column: 7)
!1740 = !DILocation(line: 858, column: 26, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1739, file: !3, discriminator: 1)
!1742 = !DILocation(line: 858, column: 47, scope: !1741)
!1743 = !DILocation(line: 858, column: 7, scope: !1219)
!1744 = !DILocation(line: 859, column: 5, scope: !1739)
!1745 = !DILocation(line: 859, column: 5, scope: !1741)
!1746 = !DILocation(line: 861, column: 10, scope: !69)
!1747 = !DILocation(line: 862, column: 1, scope: !69)
!1748 = distinct !DISubprogram(name: "wc", scope: !3, file: !3, line: 198, type: !1749, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1752)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!77, !64, !62, !83, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !197, line: 91, baseType: !108)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1775, !1778, !1781, !1784, !1786, !1787, !1788, !1791, !1792, !1807, !1808, !1809, !1811, !1812, !1815, !1816, !1820, !1822, !1823}
!1753 = !DILocalVariable(name: "fd", arg: 1, scope: !1748, file: !3, line: 198, type: !64)
!1754 = !DILocalVariable(name: "file_x", arg: 2, scope: !1748, file: !3, line: 198, type: !62)
!1755 = !DILocalVariable(name: "fstatus", arg: 3, scope: !1748, file: !3, line: 198, type: !83)
!1756 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1748, file: !3, line: 198, type: !1751)
!1757 = !DILocalVariable(name: "ok", scope: !1748, file: !3, line: 200, type: !77)
!1758 = !DILocalVariable(name: "buf", scope: !1748, file: !3, line: 201, type: !1759)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 131080, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 16385)
!1762 = !DILocalVariable(name: "bytes_read", scope: !1748, file: !3, line: 202, type: !54)
!1763 = !DILocalVariable(name: "lines", scope: !1748, file: !3, line: 203, type: !283)
!1764 = !DILocalVariable(name: "words", scope: !1748, file: !3, line: 203, type: !283)
!1765 = !DILocalVariable(name: "chars", scope: !1748, file: !3, line: 203, type: !283)
!1766 = !DILocalVariable(name: "bytes", scope: !1748, file: !3, line: 203, type: !283)
!1767 = !DILocalVariable(name: "linelength", scope: !1748, file: !3, line: 203, type: !283)
!1768 = !DILocalVariable(name: "count_bytes", scope: !1748, file: !3, line: 204, type: !77)
!1769 = !DILocalVariable(name: "count_chars", scope: !1748, file: !3, line: 204, type: !77)
!1770 = !DILocalVariable(name: "count_complicated", scope: !1748, file: !3, line: 204, type: !77)
!1771 = !DILocalVariable(name: "file", scope: !1748, file: !3, line: 205, type: !62)
!1772 = !DILocalVariable(name: "skip_read", scope: !1773, file: !3, line: 241, type: !77)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 240, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 239, column: 7)
!1775 = !DILocalVariable(name: "end_pos", scope: !1776, file: !3, line: 252, type: !54)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 251, column: 9)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 249, column: 11)
!1778 = !DILocalVariable(name: "hi_pos", scope: !1779, file: !3, line: 271, type: !1751)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 270, column: 13)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 256, column: 15)
!1781 = !DILocalVariable(name: "long_lines", scope: !1782, file: !3, line: 297, type: !77)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 294, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 293, column: 12)
!1784 = !DILocalVariable(name: "p", scope: !1785, file: !3, line: 309, type: !51)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 299, column: 9)
!1786 = !DILocalVariable(name: "end", scope: !1785, file: !3, line: 310, type: !51)
!1787 = !DILocalVariable(name: "plines", scope: !1785, file: !3, line: 311, type: !283)
!1788 = !DILocalVariable(name: "in_word", scope: !1789, file: !3, line: 345, type: !77)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 344, column: 5)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 343, column: 12)
!1791 = !DILocalVariable(name: "linepos", scope: !1789, file: !3, line: 346, type: !283)
!1792 = !DILocalVariable(name: "state", scope: !1789, file: !3, line: 347, type: !1793)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1794, line: 107, baseType: !1795)
!1794 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1794, line: 95, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 83, size: 64, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1796, file: !1794, line: 85, baseType: !64, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1796, file: !1794, line: 94, baseType: !1800, size: 32, offset: 32)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1794, line: 86, size: 32, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1800, file: !1794, line: 89, baseType: !100, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1800, file: !1794, line: 93, baseType: !1804, size: 32)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !1805)
!1805 = !{!1806}
!1806 = !DISubrange(count: 4)
!1807 = !DILocalVariable(name: "in_shift", scope: !1789, file: !3, line: 348, type: !77)
!1808 = !DILocalVariable(name: "prev", scope: !1789, file: !3, line: 357, type: !54)
!1809 = !DILocalVariable(name: "p", scope: !1810, file: !3, line: 364, type: !62)
!1810 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 363, column: 9)
!1811 = !DILocalVariable(name: "backup_state", scope: !1810, file: !3, line: 366, type: !1793)
!1812 = !DILocalVariable(name: "wide_char", scope: !1813, file: !3, line: 380, type: !1814)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 379, column: 13)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !55, line: 90, baseType: !64)
!1815 = !DILocalVariable(name: "n", scope: !1813, file: !3, line: 381, type: !54)
!1816 = !DILocalVariable(name: "width", scope: !1817, file: !3, line: 450, type: !64)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 449, column: 21)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 448, column: 23)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 426, column: 17)
!1820 = !DILocalVariable(name: "in_word", scope: !1821, file: !3, line: 483, type: !77)
!1821 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 482, column: 5)
!1822 = !DILocalVariable(name: "linepos", scope: !1821, file: !3, line: 484, type: !283)
!1823 = !DILocalVariable(name: "p", scope: !1824, file: !3, line: 488, type: !62)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 487, column: 9)
!1825 = !DILocation(line: 198, column: 9, scope: !1748)
!1826 = !DILocation(line: 198, column: 25, scope: !1748)
!1827 = !DILocation(line: 198, column: 49, scope: !1748)
!1828 = !DILocation(line: 198, column: 64, scope: !1748)
!1829 = !DILocation(line: 200, column: 8, scope: !1748)
!1830 = !DILocation(line: 201, column: 3, scope: !1748)
!1831 = !DILocation(line: 201, column: 8, scope: !1748)
!1832 = !DILocation(line: 205, column: 22, scope: !1748)
!1833 = !DILocation(line: 205, column: 40, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1748, file: !3, discriminator: 2)
!1835 = !DILocation(line: 205, column: 22, scope: !1834)
!1836 = !DILocation(line: 205, column: 22, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1748, file: !3, discriminator: 3)
!1838 = !DILocation(line: 205, column: 15, scope: !1748)
!1839 = !DILocation(line: 203, column: 41, scope: !1748)
!1840 = !DILocation(line: 203, column: 34, scope: !1748)
!1841 = !DILocation(line: 203, column: 27, scope: !1748)
!1842 = !DILocation(line: 203, column: 20, scope: !1748)
!1843 = !DILocation(line: 203, column: 13, scope: !1748)
!1844 = !DILocation(line: 212, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 212, column: 7)
!1846 = !DILocation(line: 212, column: 18, scope: !1845)
!1847 = !DILocation(line: 212, column: 7, scope: !1748)
!1848 = !DILocation(line: 214, column: 19, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 213, column: 5)
!1850 = !DILocation(line: 204, column: 8, scope: !1748)
!1851 = !DILocation(line: 215, column: 19, scope: !1849)
!1852 = !DILocation(line: 204, column: 21, scope: !1748)
!1853 = !DILocation(line: 216, column: 5, scope: !1849)
!1854 = !DILocation(line: 220, column: 33, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 219, column: 5)
!1856 = !DILocation(line: 220, column: 19, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1855, file: !3, discriminator: 2)
!1858 = !DILocation(line: 223, column: 35, scope: !1748)
!1859 = !DILocation(line: 226, column: 8, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 226, column: 7)
!1861 = !DILocation(line: 226, column: 23, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1860, file: !3, discriminator: 1)
!1863 = !DILocation(line: 226, column: 20, scope: !1860)
!1864 = !DILocation(line: 226, column: 50, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1860, file: !3, discriminator: 2)
!1866 = !DILocation(line: 227, column: 5, scope: !1860)
!1867 = !DILocation(line: 239, column: 51, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1774, file: !3, discriminator: 2)
!1869 = !DILocation(line: 239, column: 19, scope: !1774)
!1870 = !DILocation(line: 241, column: 12, scope: !1773)
!1871 = !DILocation(line: 243, column: 24, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 243, column: 11)
!1873 = !DILocation(line: 243, column: 13, scope: !1872)
!1874 = !DILocation(line: 243, column: 11, scope: !1773)
!1875 = !DILocation(line: 244, column: 48, scope: !1872)
!1876 = !DILocation(line: 463, column: 1, scope: !1301, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 244, column: 27, scope: !1872)
!1878 = !DILocation(line: 465, column: 10, scope: !1301, inlinedAt: !1877)
!1879 = !DILocation(line: 244, column: 25, scope: !1872)
!1880 = !DILocation(line: 244, column: 9, scope: !1872)
!1881 = !DILocation(line: 249, column: 22, scope: !1777)
!1882 = !DILocation(line: 249, column: 13, scope: !1777)
!1883 = !DILocation(line: 249, column: 29, scope: !1777)
!1884 = !DILocation(line: 703, column: 11, scope: !1885, inlinedAt: !1892)
!1885 = distinct !DISubprogram(name: "usable_st_size", scope: !311, file: !311, line: 701, type: !1886, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1890)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!77, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "sb", arg: 1, scope: !1885, file: !311, line: 701, type: !1888)
!1892 = distinct !DILocation(line: 249, column: 32, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1777, file: !3, discriminator: 1)
!1894 = !DILocation(line: 703, column: 33, scope: !1885, inlinedAt: !1892)
!1895 = !DILocation(line: 250, column: 31, scope: !1893)
!1896 = !DILocation(line: 250, column: 16, scope: !1893)
!1897 = !DILocation(line: 249, column: 11, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1773, file: !3, discriminator: 2)
!1899 = !DILocation(line: 252, column: 18, scope: !1776)
!1900 = !DILocation(line: 253, column: 27, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 253, column: 15)
!1902 = !DILocation(line: 253, column: 15, scope: !1776)
!1903 = !DILocation(line: 254, column: 27, scope: !1901)
!1904 = !DILocation(line: 254, column: 13, scope: !1901)
!1905 = !DILocation(line: 256, column: 25, scope: !1780)
!1906 = !DILocation(line: 256, column: 23, scope: !1780)
!1907 = !DILocation(line: 256, column: 15, scope: !1776)
!1908 = !DILocation(line: 266, column: 31, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 257, column: 13)
!1910 = !DILocation(line: 266, column: 59, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1909, file: !3, discriminator: 2)
!1912 = !DILocation(line: 266, column: 23, scope: !1909)
!1913 = !DILocation(line: 278, column: 11, scope: !1773)
!1914 = !DILocation(line: 271, column: 51, scope: !1779)
!1915 = !{!1433, !1209, i64 64}
!1916 = !DILocation(line: 271, column: 51, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1779, file: !3, discriminator: 1)
!1918 = !DILocation(line: 271, column: 51, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1779, file: !3, discriminator: 2)
!1920 = !DILocation(line: 271, column: 48, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1779, file: !3, discriminator: 4)
!1922 = !DILocation(line: 271, column: 38, scope: !1921)
!1923 = !DILocation(line: 271, column: 21, scope: !1779)
!1924 = !DILocation(line: 272, column: 21, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 272, column: 19)
!1926 = !DILocation(line: 272, column: 51, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1925, file: !3, discriminator: 1)
!1928 = !DILocation(line: 272, column: 36, scope: !1925)
!1929 = !DILocation(line: 273, column: 27, scope: !1927)
!1930 = !DILocation(line: 273, column: 24, scope: !1927)
!1931 = !DILocation(line: 274, column: 32, scope: !1925)
!1932 = !DILocation(line: 272, column: 19, scope: !1919)
!1933 = !DILocation(line: 280, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 279, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 278, column: 11)
!1936 = !DILocation(line: 281, column: 11, scope: !1934)
!1937 = !DILocation(line: 281, column: 32, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1934, file: !3, discriminator: 1)
!1939 = !DILocation(line: 202, column: 10, scope: !1748)
!1940 = !DILocation(line: 281, column: 11, scope: !1938)
!1941 = !DILocation(line: 285, column: 29, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 284, column: 17)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 283, column: 19)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 282, column: 13)
!1945 = !DILocation(line: 285, column: 42, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 1)
!1947 = !DILocation(line: 285, column: 19, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 2)
!1949 = !DILocation(line: 287, column: 19, scope: !1942)
!1950 = !DILocation(line: 289, column: 21, scope: !1944)
!1951 = !DILocation(line: 281, column: 11, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1934, file: !3, discriminator: 2)
!1953 = distinct !{!1953, !1936, !1954}
!1954 = !DILocation(line: 290, column: 13, scope: !1934)
!1955 = !DILocation(line: 293, column: 25, scope: !1783)
!1956 = !DILocation(line: 297, column: 12, scope: !1782)
!1957 = !DILocation(line: 298, column: 28, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1782, file: !3, discriminator: 1)
!1959 = !DILocation(line: 298, column: 7, scope: !1958)
!1960 = !DILocation(line: 302, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 301, column: 13)
!1962 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 300, column: 15)
!1963 = !DILocation(line: 302, column: 38, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1961, file: !3, discriminator: 1)
!1965 = !DILocation(line: 302, column: 15, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1961, file: !3, discriminator: 2)
!1967 = !DILocation(line: 304, column: 15, scope: !1961)
!1968 = !DILocation(line: 307, column: 17, scope: !1785)
!1969 = !DILocation(line: 309, column: 17, scope: !1785)
!1970 = !DILocation(line: 310, column: 25, scope: !1785)
!1971 = !DILocation(line: 310, column: 17, scope: !1785)
!1972 = !DILocation(line: 311, column: 21, scope: !1785)
!1973 = !DILocation(line: 313, column: 17, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 313, column: 15)
!1975 = !DILocation(line: 313, column: 15, scope: !1785)
!1976 = !DILocation(line: 317, column: 28, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 314, column: 13)
!1978 = !DILocation(line: 317, column: 26, scope: !1977)
!1979 = !DILocation(line: 317, column: 31, scope: !1977)
!1980 = !DILocation(line: 317, column: 23, scope: !1977)
!1981 = !DILocation(line: 316, column: 15, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1977, file: !3, discriminator: 1)
!1983 = distinct !{!1983, !1984}
!1984 = !{!"llvm.loop.unroll.disable"}
!1985 = !DILocation(line: 322, column: 48, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !3, discriminator: 1)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 320, column: 13)
!1988 = !DILocation(line: 322, column: 27, scope: !1986)
!1989 = !DILocation(line: 322, column: 15, scope: !1986)
!1990 = !DILocation(line: 324, column: 19, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 323, column: 17)
!1992 = !DILocation(line: 316, column: 24, scope: !1982)
!1993 = distinct !{!1993, !1994, !1995}
!1994 = !DILocation(line: 316, column: 15, scope: !1977)
!1995 = !DILocation(line: 317, column: 34, scope: !1977)
!1996 = !DILocation(line: 325, column: 19, scope: !1991)
!1997 = distinct !{!1997, !1998, !1999}
!1998 = !DILocation(line: 322, column: 15, scope: !1987)
!1999 = !DILocation(line: 326, column: 17, scope: !1987)
!2000 = !DILocation(line: 335, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 335, column: 15)
!2002 = !DILocation(line: 335, column: 44, scope: !2001)
!2003 = !DILocation(line: 298, column: 7, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1782, file: !3, discriminator: 2)
!2005 = distinct !{!2005, !2006, !2007}
!2006 = !DILocation(line: 298, column: 7, scope: !1782)
!2007 = !DILocation(line: 339, column: 9, scope: !1782)
!2008 = !DILocation(line: 343, column: 12, scope: !1790)
!2009 = !DILocation(line: 343, column: 23, scope: !1790)
!2010 = !DILocation(line: 343, column: 12, scope: !1783)
!2011 = !DILocation(line: 484, column: 17, scope: !1821)
!2012 = !DILocation(line: 345, column: 12, scope: !1789)
!2013 = !DILocation(line: 346, column: 17, scope: !1789)
!2014 = !DILocation(line: 347, column: 7, scope: !1789)
!2015 = !DILocation(line: 347, column: 17, scope: !1789)
!2016 = !DILocation(line: 348, column: 12, scope: !1789)
!2017 = !DILocation(line: 357, column: 14, scope: !1789)
!2018 = !DILocation(line: 362, column: 7, scope: !1789)
!2019 = !DILocation(line: 362, column: 47, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1789, file: !3, discriminator: 1)
!2021 = !DILocation(line: 362, column: 67, scope: !2020)
!2022 = !DILocation(line: 362, column: 28, scope: !2020)
!2023 = !DILocation(line: 362, column: 7, scope: !2020)
!2024 = !DILocation(line: 375, column: 17, scope: !1810)
!2025 = !DILocation(line: 364, column: 23, scope: !1810)
!2026 = !DILocation(line: 377, column: 22, scope: !1810)
!2027 = !DILocation(line: 378, column: 11, scope: !1810)
!2028 = distinct !{!2028, !2027, !2029}
!2029 = !DILocation(line: 460, column: 32, scope: !1810)
!2030 = !DILocation(line: 380, column: 15, scope: !1813)
!2031 = !DILocation(line: 383, column: 20, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 383, column: 19)
!2033 = !DILocation(line: 383, column: 29, scope: !2032)
!2034 = !DILocation(line: 383, column: 42, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2032, file: !3, discriminator: 1)
!2036 = !DILocalVariable(name: "c", arg: 1, scope: !2037, file: !2038, line: 316, type: !52)
!2037 = distinct !DISubprogram(name: "is_basic", scope: !2038, file: !2038, line: 316, type: !2039, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2041)
!2038 = !DIFile(filename: "./lib/mbchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!77, !52}
!2041 = !{!2036}
!2042 = !DILocation(line: 316, column: 16, scope: !2037, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 383, column: 32, scope: !2035)
!2044 = !DILocation(line: 318, column: 27, scope: !2037, inlinedAt: !2043)
!2045 = !DILocation(line: 318, column: 45, scope: !2037, inlinedAt: !2043)
!2046 = !DILocation(line: 318, column: 11, scope: !2037, inlinedAt: !2043)
!2047 = !DILocation(line: 318, column: 73, scope: !2037, inlinedAt: !2043)
!2048 = !DILocation(line: 318, column: 10, scope: !2037, inlinedAt: !2043)
!2049 = !DILocation(line: 383, column: 19, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !1813, file: !3, discriminator: 1)
!2051 = !DILocation(line: 381, column: 22, scope: !1813)
!2052 = !DILocation(line: 388, column: 31, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 384, column: 17)
!2054 = !DILocation(line: 380, column: 23, scope: !1813)
!2055 = !DILocation(line: 388, column: 29, scope: !2053)
!2056 = !DILocation(line: 389, column: 17, scope: !2053)
!2057 = !DILocation(line: 394, column: 34, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 391, column: 17)
!2059 = !DILocation(line: 396, column: 23, scope: !2058)
!2060 = !DILocation(line: 397, column: 23, scope: !2058)
!2061 = !DILocation(line: 400, column: 31, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 398, column: 21)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 397, column: 23)
!2064 = !DILocation(line: 459, column: 13, scope: !1810)
!2065 = !DILocation(line: 460, column: 29, scope: !1810)
!2066 = !DILocation(line: 463, column: 15, scope: !1810)
!2067 = !DILocation(line: 410, column: 24, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 405, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 404, column: 23)
!2070 = !DILocation(line: 411, column: 33, scope: !2068)
!2071 = !DILocation(line: 412, column: 23, scope: !2068)
!2072 = !DILocation(line: 414, column: 23, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 414, column: 23)
!2074 = !DILocation(line: 414, column: 23, scope: !2058)
!2075 = !DILocation(line: 416, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 416, column: 23)
!2077 = !DILocation(line: 416, column: 23, scope: !2058)
!2078 = !DILocation(line: 418, column: 33, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 417, column: 21)
!2080 = !DILocation(line: 422, column: 17, scope: !1813)
!2081 = !DILocation(line: 423, column: 26, scope: !1813)
!2082 = !DILocation(line: 424, column: 20, scope: !1813)
!2083 = !DILocation(line: 425, column: 15, scope: !1813)
!2084 = !DILocation(line: 425, column: 23, scope: !1813)
!2085 = !DILocation(line: 428, column: 24, scope: !1819)
!2086 = !DILocation(line: 428, column: 19, scope: !1819)
!2087 = !DILocation(line: 432, column: 31, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 432, column: 23)
!2089 = !DILocation(line: 432, column: 23, scope: !1819)
!2090 = !DILocation(line: 435, column: 19, scope: !1819)
!2091 = !DILocation(line: 437, column: 43, scope: !1819)
!2092 = !DILocation(line: 437, column: 32, scope: !1819)
!2093 = !DILocation(line: 437, column: 27, scope: !1819)
!2094 = !DILocation(line: 438, column: 19, scope: !1819)
!2095 = !DILocation(line: 440, column: 26, scope: !1819)
!2096 = !DILocation(line: 440, column: 19, scope: !1819)
!2097 = !DILocation(line: 444, column: 28, scope: !1819)
!2098 = !DILocation(line: 444, column: 25, scope: !1819)
!2099 = !DILocation(line: 446, column: 19, scope: !1819)
!2100 = !DILocation(line: 448, column: 23, scope: !1818)
!2101 = !DILocation(line: 448, column: 23, scope: !1819)
!2102 = !DILocation(line: 450, column: 44, scope: !1817)
!2103 = !DILocation(line: 450, column: 35, scope: !1817)
!2104 = !DILocation(line: 450, column: 27, scope: !1817)
!2105 = !DILocation(line: 451, column: 27, scope: !1817)
!2106 = !DILocation(line: 453, column: 37, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 453, column: 27)
!2108 = !DILocation(line: 453, column: 27, scope: !2107)
!2109 = !DILocation(line: 465, column: 30, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 465, column: 19)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 464, column: 13)
!2112 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 463, column: 15)
!2113 = !DILocation(line: 468, column: 20, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 466, column: 17)
!2115 = !DILocation(line: 465, column: 19, scope: !2111)
!2116 = !DILocation(line: 471, column: 15, scope: !2111)
!2117 = !DILocation(line: 472, column: 13, scope: !2111)
!2118 = !DILocation(line: 370, column: 25, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 369, column: 13)
!2120 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 368, column: 15)
!2121 = !DILocation(line: 370, column: 38, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2119, file: !3, discriminator: 1)
!2123 = !DILocation(line: 370, column: 15, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2119, file: !3, discriminator: 2)
!2125 = !DILocation(line: 476, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 476, column: 11)
!2127 = !DILocation(line: 476, column: 11, scope: !1789)
!2128 = !DILocation(line: 478, column: 16, scope: !1789)
!2129 = !DILocation(line: 478, column: 13, scope: !1789)
!2130 = !DILocation(line: 479, column: 5, scope: !1790)
!2131 = !DILocation(line: 479, column: 5, scope: !1789)
!2132 = !DILocation(line: 496, column: 17, scope: !1824)
!2133 = !DILocation(line: 483, column: 12, scope: !1821)
!2134 = !DILocation(line: 486, column: 28, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !1821, file: !3, discriminator: 1)
!2136 = !DILocation(line: 486, column: 7, scope: !2135)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 497, column: 11, scope: !1824)
!2139 = !DILocation(line: 532, column: 30, scope: !1824)
!2140 = !DILocation(line: 488, column: 23, scope: !1824)
!2141 = !DILocation(line: 499, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 498, column: 13)
!2143 = !DILocation(line: 499, column: 23, scope: !2142)
!2144 = !DILocation(line: 499, column: 15, scope: !2142)
!2145 = !DILocation(line: 502, column: 24, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 500, column: 17)
!2147 = !DILocation(line: 502, column: 19, scope: !2146)
!2148 = !DILocation(line: 506, column: 31, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 506, column: 23)
!2150 = !DILocation(line: 506, column: 23, scope: !2146)
!2151 = !DILocation(line: 509, column: 19, scope: !2146)
!2152 = !DILocation(line: 511, column: 43, scope: !2146)
!2153 = !DILocation(line: 511, column: 32, scope: !2146)
!2154 = !DILocation(line: 511, column: 27, scope: !2146)
!2155 = !DILocation(line: 512, column: 19, scope: !2146)
!2156 = !DILocation(line: 514, column: 26, scope: !2146)
!2157 = !DILocation(line: 514, column: 19, scope: !2146)
!2158 = !DILocation(line: 518, column: 28, scope: !2146)
!2159 = !DILocation(line: 518, column: 25, scope: !2146)
!2160 = !DILocation(line: 520, column: 19, scope: !2146)
!2161 = !DILocation(line: 522, column: 23, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 522, column: 23)
!2163 = !{!2164, !2164, i64 0}
!2164 = !{!"short", !1148, i64 0}
!2165 = !DILocation(line: 522, column: 23, scope: !2146)
!2166 = !DILocation(line: 524, column: 30, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 523, column: 21)
!2168 = !DILocation(line: 525, column: 27, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 525, column: 27)
!2170 = !DILocation(line: 525, column: 27, scope: !2167)
!2171 = !DILocation(line: 532, column: 18, scope: !1824)
!2172 = !DILocation(line: 531, column: 13, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2142, file: !3, discriminator: 1)
!2174 = !DILocation(line: 491, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 490, column: 13)
!2176 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 489, column: 15)
!2177 = !DILocation(line: 491, column: 38, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2175, file: !3, discriminator: 1)
!2179 = !DILocation(line: 491, column: 15, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2175, file: !3, discriminator: 2)
!2181 = !DILocation(line: 534, column: 19, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 534, column: 11)
!2183 = !DILocation(line: 534, column: 11, scope: !1821)
!2184 = !DILocation(line: 536, column: 16, scope: !1821)
!2185 = !DILocation(line: 536, column: 13, scope: !1821)
!2186 = !DILocation(line: 539, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 539, column: 7)
!2188 = !DILocation(line: 539, column: 21, scope: !2187)
!2189 = !DILocation(line: 539, column: 19, scope: !2187)
!2190 = !DILocation(line: 539, column: 7, scope: !1748)
!2191 = !DILocation(line: 542, column: 3, scope: !1748)
!2192 = !DILocation(line: 543, column: 15, scope: !1748)
!2193 = !DILocation(line: 544, column: 15, scope: !1748)
!2194 = !DILocation(line: 545, column: 15, scope: !1748)
!2195 = !DILocation(line: 546, column: 15, scope: !1748)
!2196 = !DILocation(line: 547, column: 20, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 547, column: 7)
!2198 = !DILocation(line: 547, column: 18, scope: !2197)
!2199 = !DILocation(line: 547, column: 7, scope: !1748)
!2200 = !DILocation(line: 548, column: 21, scope: !2197)
!2201 = !DILocation(line: 548, column: 5, scope: !2197)
!2202 = !DILocation(line: 550, column: 10, scope: !1748)
!2203 = !DILocation(line: 551, column: 1, scope: !1748)
!2204 = !DILocation(line: 550, column: 3, scope: !1748)
!2205 = !DILocation(line: 153, column: 25, scope: !354)
!2206 = !DILocation(line: 154, column: 25, scope: !354)
!2207 = !DILocation(line: 155, column: 25, scope: !354)
!2208 = !DILocation(line: 156, column: 25, scope: !354)
!2209 = !DILocation(line: 157, column: 25, scope: !354)
!2210 = !DILocation(line: 158, column: 27, scope: !354)
!2211 = !DILocation(line: 162, column: 3, scope: !354)
!2212 = !DILocation(line: 162, column: 8, scope: !354)
!2213 = !DILocation(line: 164, column: 7, scope: !354)
!2214 = !DILocation(line: 166, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 165, column: 5)
!2216 = distinct !DILexicalBlock(scope: !354, file: !3, line: 164, column: 7)
!2217 = !DILocation(line: 166, column: 7, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2215, file: !3, discriminator: 1)
!2219 = !DILocation(line: 168, column: 5, scope: !2215)
!2220 = !DILocation(line: 161, column: 15, scope: !354)
!2221 = !DILocation(line: 169, column: 7, scope: !354)
!2222 = !DILocation(line: 171, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 170, column: 5)
!2224 = distinct !DILexicalBlock(scope: !354, file: !3, line: 169, column: 7)
!2225 = !DILocation(line: 171, column: 7, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2223, file: !3, discriminator: 1)
!2227 = !DILocation(line: 173, column: 5, scope: !2223)
!2228 = !DILocation(line: 174, column: 7, scope: !354)
!2229 = !DILocation(line: 176, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 175, column: 5)
!2231 = distinct !DILexicalBlock(scope: !354, file: !3, line: 174, column: 7)
!2232 = !DILocation(line: 176, column: 7, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2230, file: !3, discriminator: 1)
!2234 = !DILocation(line: 178, column: 5, scope: !2230)
!2235 = !DILocation(line: 179, column: 7, scope: !354)
!2236 = !DILocation(line: 181, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 180, column: 5)
!2238 = distinct !DILexicalBlock(scope: !354, file: !3, line: 179, column: 7)
!2239 = !DILocation(line: 181, column: 7, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !3, discriminator: 1)
!2241 = !DILocation(line: 183, column: 5, scope: !2237)
!2242 = !DILocation(line: 184, column: 7, scope: !354)
!2243 = !DILocation(line: 186, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 185, column: 5)
!2245 = distinct !DILexicalBlock(scope: !354, file: !3, line: 184, column: 7)
!2246 = !DILocation(line: 186, column: 7, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2244, file: !3, discriminator: 1)
!2248 = !DILocation(line: 187, column: 5, scope: !2244)
!2249 = !DILocation(line: 188, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !354, file: !3, line: 188, column: 7)
!2251 = !DILocation(line: 188, column: 7, scope: !354)
!2252 = !DILocation(line: 189, column: 5, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2250, file: !3, discriminator: 2)
!2254 = !DILocation(line: 189, column: 5, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2250, file: !3, discriminator: 3)
!2256 = !DILocation(line: 189, column: 5, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2250, file: !3, discriminator: 5)
!2258 = !DILocalVariable(name: "__c", arg: 1, scope: !2259, file: !2260, line: 105, type: !64)
!2259 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2260, file: !2260, line: 105, type: !2261, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2263)
!2260 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!64, !64}
!2263 = !{!2258}
!2264 = !DILocation(line: 105, column: 23, scope: !2259, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 190, column: 3, scope: !354)
!2266 = !DILocation(line: 107, column: 10, scope: !2259, inlinedAt: !2265)
!2267 = !{!2268, !1147, i64 40}
!2268 = !{!"_IO_FILE", !1249, i64 0, !1147, i64 8, !1147, i64 16, !1147, i64 24, !1147, i64 32, !1147, i64 40, !1147, i64 48, !1147, i64 56, !1147, i64 64, !1147, i64 72, !1147, i64 80, !1147, i64 88, !1147, i64 96, !1147, i64 104, !1249, i64 112, !1249, i64 116, !1209, i64 120, !2164, i64 128, !1148, i64 130, !1148, i64 131, !1147, i64 136, !1209, i64 144, !1147, i64 152, !1147, i64 160, !1147, i64 168, !1147, i64 176, !1209, i64 184, !1249, i64 192, !1148, i64 196}
!2269 = !{!2268, !1147, i64 48}
!2270 = !{!"branch_weights", i32 2000, i32 1}
!2271 = !DILocation(line: 107, column: 10, scope: !2272, inlinedAt: !2265)
!2272 = !DILexicalBlockFile(scope: !2259, file: !2260, discriminator: 1)
!2273 = !DILocation(line: 107, column: 10, scope: !2274, inlinedAt: !2265)
!2274 = !DILexicalBlockFile(scope: !2259, file: !2260, discriminator: 2)
!2275 = !DILocation(line: 191, column: 1, scope: !354)
!2276 = distinct !DISubprogram(name: "argv_iter_init_argv", scope: !2277, file: !2277, line: 40, type: !2278, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !829, variables: !2329)
!2277 = !DIFile(filename: "lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2280, !72}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !2277, line: 25, size: 384, elements: !2282)
!2282 = !{!2283, !2324, !2325, !2326, !2327, !2328}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2281, file: !2277, line: 29, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2286, file: !199, line: 242, baseType: !64, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2286, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2286, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2286, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2286, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2286, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2286, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2286, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2286, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2286, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2286, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2286, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2286, file: !199, line: 260, baseType: !2301, size: 64, offset: 768)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !2303)
!2303 = !{!2304, !2305, !2307}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2302, file: !199, line: 157, baseType: !2301, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2302, file: !199, line: 158, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2302, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2286, file: !199, line: 262, baseType: !2306, size: 64, offset: 832)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2286, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2286, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2286, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2286, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2286, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2286, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2286, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2286, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2286, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2286, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2286, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2286, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2286, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2286, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2286, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "item_idx", scope: !2281, file: !2277, line: 30, baseType: !54, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !2281, file: !2277, line: 31, baseType: !51, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !2281, file: !2277, line: 32, baseType: !54, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !2281, file: !2277, line: 35, baseType: !72, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2281, file: !2277, line: 36, baseType: !72, size: 64, offset: 320)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "argv", arg: 1, scope: !2276, file: !2277, line: 40, type: !72)
!2331 = !DILocalVariable(name: "ai", scope: !2276, file: !2277, line: 42, type: !2280)
!2332 = !DILocation(line: 40, column: 29, scope: !2276)
!2333 = !DILocation(line: 42, column: 30, scope: !2276)
!2334 = !DILocation(line: 42, column: 25, scope: !2276)
!2335 = !DILocation(line: 43, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2276, file: !2277, line: 43, column: 7)
!2337 = !DILocation(line: 43, column: 7, scope: !2276)
!2338 = !DILocation(line: 45, column: 7, scope: !2276)
!2339 = !DILocation(line: 45, column: 10, scope: !2276)
!2340 = !{!2341, !1147, i64 0}
!2341 = !{!"argv_iterator", !1147, i64 0, !1209, i64 8, !1147, i64 16, !1209, i64 24, !1147, i64 32, !1147, i64 40}
!2342 = !DILocation(line: 46, column: 7, scope: !2276)
!2343 = !DILocation(line: 46, column: 16, scope: !2276)
!2344 = !{!2341, !1147, i64 32}
!2345 = !DILocation(line: 47, column: 7, scope: !2276)
!2346 = !DILocation(line: 47, column: 9, scope: !2276)
!2347 = !{!2341, !1147, i64 40}
!2348 = !DILocation(line: 48, column: 3, scope: !2276)
!2349 = !DILocation(line: 49, column: 1, scope: !2276)
!2350 = distinct !DISubprogram(name: "argv_iter_init_stream", scope: !2277, file: !2277, line: 54, type: !2351, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !829, variables: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2280, !2284}
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "fp", arg: 1, scope: !2350, file: !2277, line: 54, type: !2284)
!2355 = !DILocalVariable(name: "ai", scope: !2350, file: !2277, line: 56, type: !2280)
!2356 = !DILocation(line: 54, column: 30, scope: !2350)
!2357 = !DILocation(line: 56, column: 30, scope: !2350)
!2358 = !DILocation(line: 56, column: 25, scope: !2350)
!2359 = !DILocation(line: 57, column: 8, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2350, file: !2277, line: 57, column: 7)
!2361 = !DILocation(line: 57, column: 7, scope: !2350)
!2362 = !DILocation(line: 59, column: 7, scope: !2350)
!2363 = !DILocation(line: 59, column: 10, scope: !2350)
!2364 = !DILocation(line: 63, column: 7, scope: !2350)
!2365 = !DILocation(line: 63, column: 16, scope: !2350)
!2366 = !DILocation(line: 65, column: 3, scope: !2350)
!2367 = !DILocation(line: 66, column: 1, scope: !2350)
!2368 = distinct !DISubprogram(name: "argv_iter", scope: !2277, file: !2277, line: 69, type: !2369, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !829, variables: !2372)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!51, !2280, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "ai", arg: 1, scope: !2368, file: !2277, line: 69, type: !2280)
!2374 = !DILocalVariable(name: "err", arg: 2, scope: !2368, file: !2277, line: 69, type: !2371)
!2375 = !DILocalVariable(name: "len", scope: !2376, file: !2277, line: 73, type: !2378)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2277, line: 72, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !2277, line: 71, column: 7)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !197, line: 105, baseType: !1084)
!2379 = !DILocation(line: 69, column: 34, scope: !2368)
!2380 = !DILocation(line: 69, column: 58, scope: !2368)
!2381 = !DILocation(line: 71, column: 11, scope: !2377)
!2382 = !DILocation(line: 71, column: 7, scope: !2377)
!2383 = !DILocation(line: 71, column: 7, scope: !2368)
!2384 = !DILocation(line: 73, column: 36, scope: !2376)
!2385 = !DILocation(line: 73, column: 46, scope: !2376)
!2386 = !DILocation(line: 73, column: 21, scope: !2376)
!2387 = !DILocation(line: 73, column: 15, scope: !2376)
!2388 = !DILocation(line: 74, column: 15, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2376, file: !2277, line: 74, column: 11)
!2390 = !DILocation(line: 74, column: 11, scope: !2376)
!2391 = !DILocation(line: 76, column: 28, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !2277, line: 75, column: 9)
!2393 = !DILocation(line: 76, column: 18, scope: !2392)
!2394 = !DILocation(line: 76, column: 16, scope: !2392)
!2395 = !DILocation(line: 77, column: 11, scope: !2392)
!2396 = !DILocation(line: 80, column: 12, scope: !2376)
!2397 = !DILocation(line: 81, column: 11, scope: !2376)
!2398 = !DILocation(line: 81, column: 19, scope: !2376)
!2399 = !{!2341, !1209, i64 8}
!2400 = !DILocation(line: 82, column: 18, scope: !2376)
!2401 = !{!2341, !1147, i64 16}
!2402 = !DILocation(line: 82, column: 7, scope: !2376)
!2403 = !DILocation(line: 86, column: 17, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !2277, line: 86, column: 11)
!2405 = distinct !DILexicalBlock(scope: !2377, file: !2277, line: 85, column: 5)
!2406 = !DILocation(line: 86, column: 11, scope: !2404)
!2407 = !DILocation(line: 86, column: 20, scope: !2404)
!2408 = !DILocation(line: 86, column: 11, scope: !2405)
!2409 = !DILocation(line: 88, column: 16, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2404, file: !2277, line: 87, column: 9)
!2411 = !DILocation(line: 89, column: 11, scope: !2410)
!2412 = !DILocation(line: 93, column: 16, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2404, file: !2277, line: 92, column: 9)
!2414 = !DILocation(line: 94, column: 25, scope: !2413)
!2415 = !DILocation(line: 94, column: 18, scope: !2413)
!2416 = !DILocation(line: 94, column: 11, scope: !2413)
!2417 = !DILocation(line: 97, column: 1, scope: !2368)
!2418 = distinct !DISubprogram(name: "argv_iter_n_args", scope: !2277, file: !2277, line: 100, type: !2419, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !829, variables: !2423)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!54, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "ai", arg: 1, scope: !2418, file: !2277, line: 100, type: !2421)
!2425 = !DILocation(line: 100, column: 47, scope: !2418)
!2426 = !DILocation(line: 102, column: 14, scope: !2418)
!2427 = !DILocation(line: 102, column: 10, scope: !2418)
!2428 = !DILocation(line: 102, column: 23, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2418, file: !2277, discriminator: 1)
!2430 = !DILocation(line: 102, column: 10, scope: !2429)
!2431 = !DILocation(line: 102, column: 38, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2418, file: !2277, discriminator: 2)
!2433 = !DILocation(line: 102, column: 46, scope: !2432)
!2434 = !DILocation(line: 102, column: 40, scope: !2432)
!2435 = !DILocation(line: 102, column: 10, scope: !2432)
!2436 = !DILocation(line: 102, column: 10, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2418, file: !2277, discriminator: 3)
!2438 = !DILocation(line: 102, column: 3, scope: !2437)
!2439 = distinct !DISubprogram(name: "argv_iter_free", scope: !2277, file: !2277, line: 106, type: !2440, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !829, variables: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2280}
!2442 = !{!2443}
!2443 = !DILocalVariable(name: "ai", arg: 1, scope: !2439, file: !2277, line: 106, type: !2280)
!2444 = !DILocation(line: 106, column: 39, scope: !2439)
!2445 = !DILocation(line: 108, column: 11, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2439, file: !2277, line: 108, column: 7)
!2447 = !DILocation(line: 108, column: 7, scope: !2446)
!2448 = !DILocation(line: 108, column: 7, scope: !2439)
!2449 = !DILocation(line: 109, column: 15, scope: !2446)
!2450 = !DILocation(line: 109, column: 5, scope: !2446)
!2451 = !DILocation(line: 110, column: 9, scope: !2439)
!2452 = !DILocation(line: 110, column: 3, scope: !2439)
!2453 = !DILocation(line: 111, column: 1, scope: !2439)
!2454 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !385, file: !385, line: 41, type: !312, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !2455)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "file", arg: 1, scope: !2454, file: !385, line: 41, type: !62)
!2457 = !DILocation(line: 41, column: 41, scope: !2454)
!2458 = !DILocation(line: 43, column: 13, scope: !2454)
!2459 = !DILocation(line: 44, column: 1, scope: !2454)
!2460 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !385, file: !385, line: 78, type: !2461, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !77}
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "ignore", arg: 1, scope: !2460, file: !385, line: 78, type: !77)
!2465 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!2466 = !DILocation(line: 78, column: 37, scope: !2460)
!2467 = !DILocation(line: 80, column: 16, scope: !2460)
!2468 = !{!2469, !2469, i64 0}
!2469 = !{!"_Bool", !1148, i64 0}
!2470 = !DILocation(line: 81, column: 1, scope: !2460)
!2471 = distinct !DISubprogram(name: "close_stdout", scope: !385, file: !385, line: 107, type: !479, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !380, variables: !2472)
!2472 = !{!2473}
!2473 = !DILocalVariable(name: "write_error", scope: !2474, file: !385, line: 112, type: !62)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !385, line: 111, column: 5)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !385, line: 109, column: 7)
!2476 = !DILocation(line: 109, column: 21, scope: !2475)
!2477 = !DILocation(line: 109, column: 7, scope: !2475)
!2478 = !DILocation(line: 109, column: 29, scope: !2475)
!2479 = !DILocation(line: 110, column: 7, scope: !2475)
!2480 = !DILocation(line: 110, column: 12, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2475, file: !385, discriminator: 1)
!2482 = !{i8 0, i8 2}
!2483 = !DILocation(line: 114, column: 19, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !385, line: 113, column: 11)
!2485 = !DILocation(line: 110, column: 25, scope: !2481)
!2486 = !DILocation(line: 110, column: 28, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2475, file: !385, discriminator: 2)
!2488 = !DILocation(line: 110, column: 34, scope: !2487)
!2489 = !DILocation(line: 109, column: 7, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2471, file: !385, discriminator: 1)
!2491 = !DILocation(line: 112, column: 33, scope: !2474)
!2492 = !DILocation(line: 112, column: 19, scope: !2474)
!2493 = !DILocation(line: 113, column: 11, scope: !2484)
!2494 = !DILocation(line: 113, column: 11, scope: !2474)
!2495 = !DILocation(line: 114, column: 36, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2484, file: !385, discriminator: 1)
!2497 = !DILocation(line: 114, column: 9, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2484, file: !385, discriminator: 2)
!2499 = !DILocation(line: 114, column: 9, scope: !2484)
!2500 = !DILocation(line: 117, column: 9, scope: !2496)
!2501 = !DILocation(line: 119, column: 14, scope: !2474)
!2502 = !DILocation(line: 119, column: 7, scope: !2474)
!2503 = !DILocation(line: 122, column: 22, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2471, file: !385, line: 122, column: 8)
!2505 = !DILocation(line: 122, column: 8, scope: !2504)
!2506 = !DILocation(line: 122, column: 30, scope: !2504)
!2507 = !DILocation(line: 122, column: 8, scope: !2471)
!2508 = !DILocation(line: 123, column: 13, scope: !2504)
!2509 = !DILocation(line: 123, column: 6, scope: !2504)
!2510 = !DILocation(line: 124, column: 1, scope: !2471)
!2511 = distinct !DISubprogram(name: "fdadvise", scope: !2512, file: !2512, line: 31, type: !2513, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !833, variables: !2516)
!2512 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !64, !1751, !1751, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !27, line: 52, baseType: !26)
!2516 = !{!2517, !2518, !2519, !2520, !2521}
!2517 = !DILocalVariable(name: "fd", arg: 1, scope: !2511, file: !2512, line: 31, type: !64)
!2518 = !DILocalVariable(name: "offset", arg: 2, scope: !2511, file: !2512, line: 31, type: !1751)
!2519 = !DILocalVariable(name: "len", arg: 3, scope: !2511, file: !2512, line: 31, type: !1751)
!2520 = !DILocalVariable(name: "advice", arg: 4, scope: !2511, file: !2512, line: 31, type: !2515)
!2521 = !DILocalVariable(name: "__x", scope: !2522, file: !2512, line: 34, type: !64)
!2522 = distinct !DILexicalBlock(scope: !2511, file: !2512, line: 34, column: 3)
!2523 = !DILocation(line: 31, column: 15, scope: !2511)
!2524 = !DILocation(line: 31, column: 25, scope: !2511)
!2525 = !DILocation(line: 31, column: 39, scope: !2511)
!2526 = !DILocation(line: 31, column: 54, scope: !2511)
!2527 = !DILocation(line: 34, column: 3, scope: !2522)
!2528 = !DILocation(line: 36, column: 1, scope: !2511)
!2529 = distinct !DISubprogram(name: "fadvise", scope: !2512, file: !2512, line: 39, type: !2530, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !833, variables: !2572)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2532, !2515}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2534, file: !199, line: 242, baseType: !64, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2534, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2534, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2534, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2534, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2534, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2534, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2534, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2534, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2534, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2534, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2534, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2534, file: !199, line: 260, baseType: !2549, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !2551)
!2551 = !{!2552, !2553, !2555}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2550, file: !199, line: 157, baseType: !2549, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2550, file: !199, line: 158, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2550, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2534, file: !199, line: 262, baseType: !2554, size: 64, offset: 832)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2534, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2534, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2534, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2534, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2534, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2534, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2534, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2534, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2534, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2534, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2534, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2534, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2534, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2534, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2534, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "fp", arg: 1, scope: !2529, file: !2512, line: 39, type: !2532)
!2574 = !DILocalVariable(name: "advice", arg: 2, scope: !2529, file: !2512, line: 39, type: !2515)
!2575 = !DILocation(line: 39, column: 16, scope: !2529)
!2576 = !DILocation(line: 39, column: 30, scope: !2529)
!2577 = !DILocation(line: 41, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2529, file: !2512, line: 41, column: 7)
!2579 = !DILocation(line: 41, column: 7, scope: !2529)
!2580 = !DILocation(line: 42, column: 15, scope: !2578)
!2581 = !DILocation(line: 31, column: 15, scope: !2511, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 42, column: 5, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2578, file: !2512, discriminator: 1)
!2584 = !DILocation(line: 31, column: 25, scope: !2511, inlinedAt: !2582)
!2585 = !DILocation(line: 31, column: 39, scope: !2511, inlinedAt: !2582)
!2586 = !DILocation(line: 31, column: 54, scope: !2511, inlinedAt: !2582)
!2587 = !DILocation(line: 34, column: 3, scope: !2522, inlinedAt: !2582)
!2588 = !DILocation(line: 42, column: 5, scope: !2578)
!2589 = !DILocation(line: 43, column: 1, scope: !2529)
!2590 = distinct !DISubprogram(name: "umaxtostr", scope: !2591, file: !2591, line: 36, type: !2592, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !836, variables: !2594)
!2591 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!51, !283, !51}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "i", arg: 1, scope: !2590, file: !2591, line: 36, type: !283)
!2596 = !DILocalVariable(name: "buf", arg: 2, scope: !2590, file: !2591, line: 36, type: !51)
!2597 = !DILocalVariable(name: "p", scope: !2590, file: !2591, line: 38, type: !51)
!2598 = !DILocation(line: 36, column: 19, scope: !2590)
!2599 = !DILocation(line: 36, column: 28, scope: !2590)
!2600 = !DILocation(line: 38, column: 17, scope: !2590)
!2601 = !DILocation(line: 38, column: 9, scope: !2590)
!2602 = !DILocation(line: 39, column: 6, scope: !2590)
!2603 = !DILocation(line: 41, column: 7, scope: !2590)
!2604 = !DILocation(line: 52, column: 24, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !2591, line: 50, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2590, file: !2591, line: 41, column: 7)
!2607 = !DILocation(line: 52, column: 16, scope: !2605)
!2608 = !DILocation(line: 52, column: 10, scope: !2605)
!2609 = !DILocation(line: 52, column: 14, scope: !2605)
!2610 = !DILocation(line: 53, column: 17, scope: !2605)
!2611 = !DILocation(line: 53, column: 24, scope: !2605)
!2612 = !DILocation(line: 52, column: 9, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2605, file: !2591, discriminator: 1)
!2614 = distinct !{!2614, !2615, !2616}
!2615 = !DILocation(line: 51, column: 7, scope: !2605)
!2616 = !DILocation(line: 53, column: 28, scope: !2605)
!2617 = !DILocation(line: 56, column: 3, scope: !2590)
!2618 = distinct !DISubprogram(name: "mb_width_aux", scope: !2038, file: !2038, line: 247, type: !2619, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !2622)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!64, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !55, line: 132, baseType: !100)
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "wc", arg: 1, scope: !2618, file: !2038, line: 247, type: !2621)
!2624 = !DILocalVariable(name: "w", scope: !2618, file: !2038, line: 249, type: !64)
!2625 = !DILocation(line: 247, column: 22, scope: !2618)
!2626 = !DILocation(line: 249, column: 11, scope: !2618)
!2627 = !DILocation(line: 249, column: 7, scope: !2618)
!2628 = !DILocation(line: 252, column: 13, scope: !2618)
!2629 = !DILocation(line: 252, column: 11, scope: !2618)
!2630 = !DILocation(line: 252, column: 24, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2618, file: !2038, discriminator: 2)
!2632 = !DILocation(line: 252, column: 11, scope: !2631)
!2633 = !DILocation(line: 252, column: 11, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2618, file: !2038, discriminator: 3)
!2635 = !DILocation(line: 252, column: 3, scope: !2634)
!2636 = distinct !DISubprogram(name: "mb_copy", scope: !2038, file: !2038, line: 268, type: !2637, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !2653)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2639, !2651}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !2038, line: 181, baseType: !2641)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !2038, line: 169, size: 384, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2641, file: !2038, line: 171, baseType: !62, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2641, file: !2038, line: 172, baseType: !54, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2641, file: !2038, line: 173, baseType: !77, size: 8, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2641, file: !2038, line: 174, baseType: !1814, size: 32, offset: 160)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2641, file: !2038, line: 175, baseType: !2648, size: 192, offset: 192)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !2649)
!2649 = !{!2650}
!2650 = !DISubrange(count: 24)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !2636, file: !2038, line: 268, type: !2639)
!2655 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !2636, file: !2038, line: 268, type: !2651)
!2656 = !DILocation(line: 268, column: 20, scope: !2636)
!2657 = !DILocation(line: 268, column: 45, scope: !2636)
!2658 = !DILocation(line: 270, column: 16, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2636, file: !2038, line: 270, column: 7)
!2660 = !{!2661, !1147, i64 0}
!2661 = !{!"mbchar", !1147, i64 0, !1209, i64 8, !2469, i64 16, !1249, i64 20, !1148, i64 24}
!2662 = !DILocation(line: 270, column: 24, scope: !2659)
!2663 = !DILocation(line: 270, column: 20, scope: !2659)
!2664 = !DILocation(line: 270, column: 7, scope: !2636)
!2665 = !DILocation(line: 277, column: 29, scope: !2636)
!2666 = !DILocation(line: 272, column: 16, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2659, file: !2038, line: 271, column: 5)
!2668 = !DILocation(line: 272, column: 60, scope: !2667)
!2669 = !{!2661, !1209, i64 8}
!2670 = !DILocation(line: 272, column: 7, scope: !2667)
!2671 = !DILocation(line: 274, column: 5, scope: !2667)
!2672 = !DILocation(line: 277, column: 12, scope: !2636)
!2673 = !DILocation(line: 277, column: 18, scope: !2636)
!2674 = !DILocation(line: 278, column: 37, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2636, file: !2038, line: 278, column: 7)
!2676 = !{!2661, !2469, i64 16}
!2677 = !DILocation(line: 278, column: 17, scope: !2675)
!2678 = !DILocation(line: 278, column: 26, scope: !2675)
!2679 = !DILocation(line: 278, column: 7, scope: !2636)
!2680 = !DILocation(line: 279, column: 28, scope: !2675)
!2681 = !{!2661, !1249, i64 20}
!2682 = !DILocation(line: 279, column: 14, scope: !2675)
!2683 = !DILocation(line: 279, column: 17, scope: !2675)
!2684 = !DILocation(line: 279, column: 5, scope: !2675)
!2685 = !DILocation(line: 280, column: 1, scope: !2636)
!2686 = distinct !DISubprogram(name: "is_basic", scope: !2038, file: !2038, line: 316, type: !2039, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !2687)
!2687 = !{!2688}
!2688 = !DILocalVariable(name: "c", arg: 1, scope: !2686, file: !2038, line: 316, type: !52)
!2689 = !DILocation(line: 316, column: 16, scope: !2686)
!2690 = !DILocation(line: 318, column: 27, scope: !2686)
!2691 = !DILocation(line: 318, column: 45, scope: !2686)
!2692 = !DILocation(line: 318, column: 11, scope: !2686)
!2693 = !DILocation(line: 318, column: 73, scope: !2686)
!2694 = !DILocation(line: 318, column: 10, scope: !2686)
!2695 = !DILocation(line: 318, column: 3, scope: !2686)
!2696 = distinct !DISubprogram(name: "physmem_total", scope: !2697, file: !2697, line: 85, type: !2698, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !839, variables: !2699)
!2697 = !DIFile(filename: "lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2698 = !DISubroutineType(types: !1060)
!2699 = !{!2700, !2702, !2703}
!2700 = !DILocalVariable(name: "pages", scope: !2701, file: !2697, line: 89, type: !1061)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !2697, line: 88, column: 3)
!2702 = !DILocalVariable(name: "pagesize", scope: !2701, file: !2697, line: 90, type: !1061)
!2703 = !DILocalVariable(name: "si", scope: !2704, file: !2697, line: 98, type: !2705)
!2704 = distinct !DILexicalBlock(scope: !2696, file: !2697, line: 97, column: 3)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !2706, line: 7, size: 896, elements: !2707)
!2706 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2707 = !{!2708, !2711, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2723, !2724, !2725, !2726, !2728}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2705, file: !2706, line: 8, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !2710, line: 14, baseType: !109)
!2710 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2705, file: !2706, line: 9, baseType: !2712, size: 192, offset: 64)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 192, elements: !126)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2710, line: 15, baseType: !56)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2705, file: !2706, line: 10, baseType: !2713, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2705, file: !2706, line: 11, baseType: !2713, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2705, file: !2706, line: 12, baseType: !2713, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2705, file: !2706, line: 13, baseType: !2713, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2705, file: !2706, line: 14, baseType: !2713, size: 64, offset: 512)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2705, file: !2706, line: 15, baseType: !2713, size: 64, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2705, file: !2706, line: 16, baseType: !2721, size: 16, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !2722, line: 23, baseType: !65)
!2722 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2705, file: !2706, line: 17, baseType: !2721, size: 16, offset: 656)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2705, file: !2706, line: 18, baseType: !2713, size: 64, offset: 704)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2705, file: !2706, line: 19, baseType: !2713, size: 64, offset: 768)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2705, file: !2706, line: 20, baseType: !2727, size: 32, offset: 832)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !2722, line: 26, baseType: !100)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2705, file: !2706, line: 21, baseType: !2729, offset: 864)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !2730)
!2730 = !{!2731}
!2731 = !DISubrange(count: 0)
!2732 = !DILocation(line: 89, column: 20, scope: !2701)
!2733 = !DILocation(line: 89, column: 12, scope: !2701)
!2734 = !DILocation(line: 90, column: 23, scope: !2701)
!2735 = !DILocation(line: 90, column: 12, scope: !2701)
!2736 = !DILocation(line: 91, column: 20, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2701, file: !2697, line: 91, column: 9)
!2738 = !DILocation(line: 98, column: 5, scope: !2704)
!2739 = !DILocation(line: 98, column: 20, scope: !2704)
!2740 = !DILocation(line: 99, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2704, file: !2697, line: 99, column: 9)
!2742 = !DILocation(line: 99, column: 22, scope: !2741)
!2743 = !DILocation(line: 99, column: 9, scope: !2704)
!2744 = !DILocation(line: 100, column: 26, scope: !2741)
!2745 = !{!2746, !1209, i64 32}
!2746 = !{!"sysinfo", !1209, i64 0, !1148, i64 8, !1209, i64 32, !1209, i64 40, !1209, i64 48, !1209, i64 56, !1209, i64 64, !1209, i64 72, !2164, i64 80, !2164, i64 82, !1209, i64 88, !1209, i64 96, !1249, i64 104, !1148, i64 108}
!2747 = !DILocation(line: 100, column: 14, scope: !2741)
!2748 = !DILocation(line: 100, column: 40, scope: !2741)
!2749 = !{!2746, !1249, i64 104}
!2750 = !DILocation(line: 100, column: 37, scope: !2741)
!2751 = !DILocation(line: 100, column: 35, scope: !2741)
!2752 = !DILocation(line: 101, column: 3, scope: !2696)
!2753 = !DILocation(line: 92, column: 20, scope: !2737)
!2754 = !DILocation(line: 193, column: 1, scope: !2696)
!2755 = distinct !DISubprogram(name: "physmem_available", scope: !2697, file: !2697, line: 197, type: !2698, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !839, variables: !2756)
!2756 = !{!2757, !2759, !2760}
!2757 = !DILocalVariable(name: "pages", scope: !2758, file: !2697, line: 201, type: !1061)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !2697, line: 200, column: 3)
!2759 = !DILocalVariable(name: "pagesize", scope: !2758, file: !2697, line: 202, type: !1061)
!2760 = !DILocalVariable(name: "si", scope: !2761, file: !2697, line: 210, type: !2705)
!2761 = distinct !DILexicalBlock(scope: !2755, file: !2697, line: 209, column: 3)
!2762 = !DILocation(line: 201, column: 20, scope: !2758)
!2763 = !DILocation(line: 201, column: 12, scope: !2758)
!2764 = !DILocation(line: 202, column: 23, scope: !2758)
!2765 = !DILocation(line: 202, column: 12, scope: !2758)
!2766 = !DILocation(line: 203, column: 20, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2758, file: !2697, line: 203, column: 9)
!2768 = !DILocation(line: 204, column: 20, scope: !2767)
!2769 = !DILocation(line: 210, column: 5, scope: !2761)
!2770 = !DILocation(line: 210, column: 20, scope: !2761)
!2771 = !DILocation(line: 211, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2761, file: !2697, line: 211, column: 9)
!2773 = !DILocation(line: 211, column: 22, scope: !2772)
!2774 = !DILocation(line: 211, column: 9, scope: !2761)
!2775 = !DILocation(line: 212, column: 27, scope: !2772)
!2776 = !{!2746, !1209, i64 40}
!2777 = !DILocation(line: 212, column: 15, scope: !2772)
!2778 = !DILocation(line: 212, column: 40, scope: !2772)
!2779 = !{!2746, !1209, i64 56}
!2780 = !DILocation(line: 212, column: 37, scope: !2772)
!2781 = !DILocation(line: 212, column: 35, scope: !2772)
!2782 = !DILocation(line: 212, column: 56, scope: !2772)
!2783 = !DILocation(line: 212, column: 53, scope: !2772)
!2784 = !DILocation(line: 212, column: 51, scope: !2772)
!2785 = !DILocation(line: 213, column: 3, scope: !2755)
!2786 = !DILocation(line: 89, column: 20, scope: !2701, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 301, column: 10, scope: !2755)
!2788 = !DILocation(line: 90, column: 23, scope: !2701, inlinedAt: !2787)
!2789 = !DILocation(line: 91, column: 20, scope: !2737, inlinedAt: !2787)
!2790 = !DILocation(line: 98, column: 5, scope: !2704, inlinedAt: !2787)
!2791 = !DILocation(line: 98, column: 20, scope: !2704, inlinedAt: !2787)
!2792 = !DILocation(line: 99, column: 9, scope: !2741, inlinedAt: !2787)
!2793 = !DILocation(line: 99, column: 22, scope: !2741, inlinedAt: !2787)
!2794 = !DILocation(line: 99, column: 9, scope: !2704, inlinedAt: !2787)
!2795 = !DILocation(line: 100, column: 26, scope: !2741, inlinedAt: !2787)
!2796 = !DILocation(line: 100, column: 14, scope: !2741, inlinedAt: !2787)
!2797 = !DILocation(line: 100, column: 40, scope: !2741, inlinedAt: !2787)
!2798 = !DILocation(line: 100, column: 37, scope: !2741, inlinedAt: !2787)
!2799 = !DILocation(line: 100, column: 35, scope: !2741, inlinedAt: !2787)
!2800 = !DILocation(line: 101, column: 3, scope: !2696, inlinedAt: !2787)
!2801 = !DILocation(line: 92, column: 20, scope: !2737, inlinedAt: !2787)
!2802 = !DILocation(line: 193, column: 1, scope: !2696, inlinedAt: !2787)
!2803 = !DILocation(line: 301, column: 27, scope: !2755)
!2804 = !DILocation(line: 301, column: 3, scope: !2755)
!2805 = !DILocation(line: 302, column: 1, scope: !2755)
!2806 = distinct !DISubprogram(name: "set_program_name", scope: !410, file: !410, line: 39, type: !312, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !406, variables: !2807)
!2807 = !{!2808, !2809, !2810}
!2808 = !DILocalVariable(name: "argv0", arg: 1, scope: !2806, file: !410, line: 39, type: !62)
!2809 = !DILocalVariable(name: "slash", scope: !2806, file: !410, line: 46, type: !62)
!2810 = !DILocalVariable(name: "base", scope: !2806, file: !410, line: 47, type: !62)
!2811 = !DILocation(line: 39, column: 31, scope: !2806)
!2812 = !DILocation(line: 51, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2806, file: !410, line: 51, column: 7)
!2814 = !DILocation(line: 51, column: 7, scope: !2806)
!2815 = !DILocation(line: 55, column: 14, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !410, line: 52, column: 5)
!2817 = !DILocation(line: 54, column: 7, scope: !2816)
!2818 = !DILocation(line: 56, column: 7, scope: !2816)
!2819 = !DILocation(line: 59, column: 11, scope: !2806)
!2820 = !DILocation(line: 46, column: 15, scope: !2806)
!2821 = !DILocation(line: 60, column: 17, scope: !2806)
!2822 = !DILocation(line: 60, column: 33, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2806, file: !410, discriminator: 1)
!2824 = !DILocation(line: 60, column: 11, scope: !2806)
!2825 = !DILocation(line: 47, column: 15, scope: !2806)
!2826 = !DILocation(line: 61, column: 12, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2806, file: !410, line: 61, column: 7)
!2828 = !DILocation(line: 61, column: 20, scope: !2827)
!2829 = !DILocation(line: 61, column: 25, scope: !2827)
!2830 = !DILocation(line: 61, column: 28, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2827, file: !410, discriminator: 1)
!2832 = !DILocation(line: 61, column: 61, scope: !2831)
!2833 = !DILocation(line: 61, column: 7, scope: !2823)
!2834 = !DILocation(line: 64, column: 11, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !410, line: 64, column: 11)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !410, line: 62, column: 5)
!2837 = !DILocation(line: 64, column: 36, scope: !2835)
!2838 = !DILocation(line: 64, column: 11, scope: !2836)
!2839 = !DILocation(line: 66, column: 24, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !410, line: 65, column: 9)
!2841 = !DILocation(line: 70, column: 41, scope: !2840)
!2842 = !DILocation(line: 72, column: 9, scope: !2840)
!2843 = !DILocation(line: 84, column: 16, scope: !2806)
!2844 = !DILocation(line: 90, column: 27, scope: !2806)
!2845 = !DILocation(line: 92, column: 1, scope: !2806)
!2846 = distinct !DISubprogram(name: "clone_quoting_options", scope: !425, file: !425, line: 114, type: !2847, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2850)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2849, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "o", arg: 1, scope: !2846, file: !425, line: 114, type: !2849)
!2852 = !DILocalVariable(name: "e", scope: !2846, file: !425, line: 116, type: !64)
!2853 = !DILocalVariable(name: "p", scope: !2846, file: !425, line: 117, type: !2849)
!2854 = !DILocation(line: 114, column: 48, scope: !2846)
!2855 = !DILocation(line: 116, column: 11, scope: !2846)
!2856 = !DILocation(line: 116, column: 7, scope: !2846)
!2857 = !DILocation(line: 117, column: 40, scope: !2846)
!2858 = !DILocation(line: 117, column: 40, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2846, file: !425, discriminator: 3)
!2860 = !DILocation(line: 117, column: 31, scope: !2859)
!2861 = !DILocation(line: 117, column: 27, scope: !2846)
!2862 = !DILocation(line: 119, column: 9, scope: !2846)
!2863 = !DILocation(line: 120, column: 3, scope: !2846)
!2864 = distinct !DISubprogram(name: "get_quoting_style", scope: !425, file: !425, line: 125, type: !2865, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2869)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!5, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "o", arg: 1, scope: !2864, file: !425, line: 125, type: !2867)
!2871 = !DILocation(line: 125, column: 50, scope: !2864)
!2872 = !DILocation(line: 127, column: 11, scope: !2864)
!2873 = !DILocation(line: 127, column: 46, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2864, file: !425, discriminator: 3)
!2875 = !{!2876, !1148, i64 0}
!2876 = !{!"quoting_options", !1148, i64 0, !1249, i64 4, !1148, i64 8, !1147, i64 40, !1147, i64 48}
!2877 = !DILocation(line: 127, column: 3, scope: !2874)
!2878 = distinct !DISubprogram(name: "set_quoting_style", scope: !425, file: !425, line: 133, type: !2879, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2849, !5}
!2881 = !{!2882, !2883}
!2882 = !DILocalVariable(name: "o", arg: 1, scope: !2878, file: !425, line: 133, type: !2849)
!2883 = !DILocalVariable(name: "s", arg: 2, scope: !2878, file: !425, line: 133, type: !5)
!2884 = !DILocation(line: 133, column: 44, scope: !2878)
!2885 = !DILocation(line: 133, column: 66, scope: !2878)
!2886 = !DILocation(line: 135, column: 4, scope: !2878)
!2887 = !DILocation(line: 135, column: 39, scope: !2888)
!2888 = !DILexicalBlockFile(scope: !2878, file: !425, discriminator: 3)
!2889 = !DILocation(line: 135, column: 45, scope: !2888)
!2890 = !DILocation(line: 136, column: 1, scope: !2878)
!2891 = distinct !DISubprogram(name: "set_char_quoting", scope: !425, file: !425, line: 144, type: !2892, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!64, !2849, !52, !64}
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2901, !2902}
!2895 = !DILocalVariable(name: "o", arg: 1, scope: !2891, file: !425, line: 144, type: !2849)
!2896 = !DILocalVariable(name: "c", arg: 2, scope: !2891, file: !425, line: 144, type: !52)
!2897 = !DILocalVariable(name: "i", arg: 3, scope: !2891, file: !425, line: 144, type: !64)
!2898 = !DILocalVariable(name: "uc", scope: !2891, file: !425, line: 146, type: !61)
!2899 = !DILocalVariable(name: "p", scope: !2891, file: !425, line: 147, type: !2900)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2901 = !DILocalVariable(name: "shift", scope: !2891, file: !425, line: 149, type: !64)
!2902 = !DILocalVariable(name: "r", scope: !2891, file: !425, line: 150, type: !64)
!2903 = !DILocation(line: 144, column: 43, scope: !2891)
!2904 = !DILocation(line: 144, column: 51, scope: !2891)
!2905 = !DILocation(line: 144, column: 58, scope: !2891)
!2906 = !DILocation(line: 146, column: 17, scope: !2891)
!2907 = !DILocation(line: 148, column: 6, scope: !2891)
!2908 = !DILocation(line: 148, column: 62, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2891, file: !425, discriminator: 3)
!2910 = !DILocation(line: 148, column: 57, scope: !2909)
!2911 = !DILocation(line: 147, column: 17, scope: !2891)
!2912 = !DILocation(line: 149, column: 18, scope: !2891)
!2913 = !DILocation(line: 149, column: 15, scope: !2891)
!2914 = !DILocation(line: 149, column: 7, scope: !2891)
!2915 = !DILocation(line: 150, column: 12, scope: !2891)
!2916 = !DILocation(line: 150, column: 15, scope: !2891)
!2917 = !DILocation(line: 150, column: 25, scope: !2891)
!2918 = !DILocation(line: 150, column: 7, scope: !2891)
!2919 = !DILocation(line: 151, column: 13, scope: !2891)
!2920 = !DILocation(line: 151, column: 18, scope: !2891)
!2921 = !DILocation(line: 151, column: 23, scope: !2891)
!2922 = !DILocation(line: 151, column: 6, scope: !2891)
!2923 = !DILocation(line: 152, column: 3, scope: !2891)
!2924 = distinct !DISubprogram(name: "set_quoting_flags", scope: !425, file: !425, line: 160, type: !2925, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!64, !2849, !64}
!2927 = !{!2928, !2929, !2930}
!2928 = !DILocalVariable(name: "o", arg: 1, scope: !2924, file: !425, line: 160, type: !2849)
!2929 = !DILocalVariable(name: "i", arg: 2, scope: !2924, file: !425, line: 160, type: !64)
!2930 = !DILocalVariable(name: "r", scope: !2924, file: !425, line: 162, type: !64)
!2931 = !DILocation(line: 160, column: 44, scope: !2924)
!2932 = !DILocation(line: 160, column: 51, scope: !2924)
!2933 = !DILocation(line: 163, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2924, file: !425, line: 163, column: 7)
!2935 = !DILocation(line: 163, column: 7, scope: !2924)
!2936 = !DILocation(line: 165, column: 10, scope: !2924)
!2937 = !{!2876, !1249, i64 4}
!2938 = !DILocation(line: 162, column: 7, scope: !2924)
!2939 = !DILocation(line: 166, column: 12, scope: !2924)
!2940 = !DILocation(line: 167, column: 3, scope: !2924)
!2941 = distinct !DISubprogram(name: "set_custom_quoting", scope: !425, file: !425, line: 171, type: !2942, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2849, !62, !62}
!2944 = !{!2945, !2946, !2947}
!2945 = !DILocalVariable(name: "o", arg: 1, scope: !2941, file: !425, line: 171, type: !2849)
!2946 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2941, file: !425, line: 172, type: !62)
!2947 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2941, file: !425, line: 172, type: !62)
!2948 = !DILocation(line: 171, column: 45, scope: !2941)
!2949 = !DILocation(line: 172, column: 33, scope: !2941)
!2950 = !DILocation(line: 172, column: 57, scope: !2941)
!2951 = !DILocation(line: 174, column: 8, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2941, file: !425, line: 174, column: 7)
!2953 = !DILocation(line: 174, column: 7, scope: !2941)
!2954 = !DILocation(line: 176, column: 6, scope: !2941)
!2955 = !DILocation(line: 176, column: 12, scope: !2941)
!2956 = !DILocation(line: 177, column: 8, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2941, file: !425, line: 177, column: 7)
!2958 = !DILocation(line: 177, column: 23, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2957, file: !425, discriminator: 1)
!2960 = !DILocation(line: 177, column: 19, scope: !2957)
!2961 = !DILocation(line: 178, column: 5, scope: !2957)
!2962 = !DILocation(line: 179, column: 6, scope: !2941)
!2963 = !DILocation(line: 179, column: 17, scope: !2941)
!2964 = !{!2876, !1147, i64 40}
!2965 = !DILocation(line: 180, column: 6, scope: !2941)
!2966 = !DILocation(line: 180, column: 18, scope: !2941)
!2967 = !{!2876, !1147, i64 48}
!2968 = !DILocation(line: 181, column: 1, scope: !2941)
!2969 = distinct !DISubprogram(name: "quotearg_buffer", scope: !425, file: !425, line: 776, type: !2970, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!54, !51, !54, !62, !54, !2867}
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2973 = !DILocalVariable(name: "buffer", arg: 1, scope: !2969, file: !425, line: 776, type: !51)
!2974 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2969, file: !425, line: 776, type: !54)
!2975 = !DILocalVariable(name: "arg", arg: 3, scope: !2969, file: !425, line: 777, type: !62)
!2976 = !DILocalVariable(name: "argsize", arg: 4, scope: !2969, file: !425, line: 777, type: !54)
!2977 = !DILocalVariable(name: "o", arg: 5, scope: !2969, file: !425, line: 778, type: !2867)
!2978 = !DILocalVariable(name: "p", scope: !2969, file: !425, line: 780, type: !2867)
!2979 = !DILocalVariable(name: "e", scope: !2969, file: !425, line: 781, type: !64)
!2980 = !DILocalVariable(name: "r", scope: !2969, file: !425, line: 782, type: !54)
!2981 = !DILocation(line: 776, column: 24, scope: !2969)
!2982 = !DILocation(line: 776, column: 39, scope: !2969)
!2983 = !DILocation(line: 777, column: 30, scope: !2969)
!2984 = !DILocation(line: 777, column: 42, scope: !2969)
!2985 = !DILocation(line: 778, column: 48, scope: !2969)
!2986 = !DILocation(line: 780, column: 37, scope: !2969)
!2987 = !DILocation(line: 780, column: 33, scope: !2969)
!2988 = !DILocation(line: 781, column: 11, scope: !2969)
!2989 = !DILocation(line: 781, column: 7, scope: !2969)
!2990 = !DILocation(line: 783, column: 43, scope: !2969)
!2991 = !DILocation(line: 783, column: 53, scope: !2969)
!2992 = !DILocation(line: 783, column: 60, scope: !2969)
!2993 = !DILocation(line: 784, column: 43, scope: !2969)
!2994 = !DILocation(line: 784, column: 58, scope: !2969)
!2995 = !DILocation(line: 782, column: 14, scope: !2969)
!2996 = !DILocation(line: 782, column: 10, scope: !2969)
!2997 = !DILocation(line: 785, column: 9, scope: !2969)
!2998 = !DILocation(line: 786, column: 3, scope: !2969)
!2999 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !425, file: !425, line: 248, type: !3000, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3003)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!54, !51, !54, !62, !54, !5, !64, !3002, !62, !62}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3028, !3029, !3030, !3031, !3032, !3035, !3036, !3049, !3051, !3052, !3059}
!3004 = !DILocalVariable(name: "buffer", arg: 1, scope: !2999, file: !425, line: 248, type: !51)
!3005 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2999, file: !425, line: 248, type: !54)
!3006 = !DILocalVariable(name: "arg", arg: 3, scope: !2999, file: !425, line: 249, type: !62)
!3007 = !DILocalVariable(name: "argsize", arg: 4, scope: !2999, file: !425, line: 249, type: !54)
!3008 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2999, file: !425, line: 250, type: !5)
!3009 = !DILocalVariable(name: "flags", arg: 6, scope: !2999, file: !425, line: 250, type: !64)
!3010 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2999, file: !425, line: 251, type: !3002)
!3011 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2999, file: !425, line: 252, type: !62)
!3012 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2999, file: !425, line: 253, type: !62)
!3013 = !DILocalVariable(name: "i", scope: !2999, file: !425, line: 255, type: !54)
!3014 = !DILocalVariable(name: "len", scope: !2999, file: !425, line: 256, type: !54)
!3015 = !DILocalVariable(name: "orig_buffersize", scope: !2999, file: !425, line: 257, type: !54)
!3016 = !DILocalVariable(name: "quote_string", scope: !2999, file: !425, line: 258, type: !62)
!3017 = !DILocalVariable(name: "quote_string_len", scope: !2999, file: !425, line: 259, type: !54)
!3018 = !DILocalVariable(name: "backslash_escapes", scope: !2999, file: !425, line: 260, type: !77)
!3019 = !DILocalVariable(name: "unibyte_locale", scope: !2999, file: !425, line: 261, type: !77)
!3020 = !DILocalVariable(name: "elide_outer_quotes", scope: !2999, file: !425, line: 262, type: !77)
!3021 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2999, file: !425, line: 263, type: !77)
!3022 = !DILocalVariable(name: "encountered_single_quote", scope: !2999, file: !425, line: 264, type: !77)
!3023 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2999, file: !425, line: 265, type: !77)
!3024 = !DILocalVariable(name: "c", scope: !3025, file: !425, line: 394, type: !61)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !425, line: 393, column: 5)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !425, line: 392, column: 3)
!3027 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 392, column: 3)
!3028 = !DILocalVariable(name: "esc", scope: !3025, file: !425, line: 395, type: !61)
!3029 = !DILocalVariable(name: "is_right_quote", scope: !3025, file: !425, line: 396, type: !77)
!3030 = !DILocalVariable(name: "escaping", scope: !3025, file: !425, line: 397, type: !77)
!3031 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3025, file: !425, line: 398, type: !77)
!3032 = !DILocalVariable(name: "m", scope: !3033, file: !425, line: 602, type: !54)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 600, column: 11)
!3034 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 418, column: 9)
!3035 = !DILocalVariable(name: "printable", scope: !3033, file: !425, line: 604, type: !77)
!3036 = !DILocalVariable(name: "mbstate", scope: !3037, file: !425, line: 613, type: !3039)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !425, line: 612, column: 15)
!3038 = distinct !DILexicalBlock(scope: !3033, file: !425, line: 606, column: 17)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1794, line: 107, baseType: !3040)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1794, line: 95, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 83, size: 64, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3041, file: !1794, line: 85, baseType: !64, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3041, file: !1794, line: 94, baseType: !3045, size: 32, offset: 32)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3041, file: !1794, line: 86, size: 32, elements: !3046)
!3046 = !{!3047, !3048}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3045, file: !1794, line: 89, baseType: !100, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3045, file: !1794, line: 93, baseType: !1804, size: 32)
!3049 = !DILocalVariable(name: "w", scope: !3050, file: !425, line: 623, type: !1814)
!3050 = distinct !DILexicalBlock(scope: !3037, file: !425, line: 622, column: 19)
!3051 = !DILocalVariable(name: "bytes", scope: !3050, file: !425, line: 624, type: !54)
!3052 = !DILocalVariable(name: "j", scope: !3053, file: !425, line: 649, type: !54)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !425, line: 648, column: 27)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !425, line: 646, column: 29)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !425, line: 641, column: 23)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !425, line: 633, column: 30)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !425, line: 628, column: 30)
!3058 = distinct !DILexicalBlock(scope: !3050, file: !425, line: 626, column: 25)
!3059 = !DILocalVariable(name: "ilim", scope: !3060, file: !425, line: 676, type: !54)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !425, line: 673, column: 15)
!3061 = distinct !DILexicalBlock(scope: !3033, file: !425, line: 672, column: 17)
!3062 = !DILocation(line: 248, column: 33, scope: !2999)
!3063 = !DILocation(line: 248, column: 48, scope: !2999)
!3064 = !DILocation(line: 249, column: 39, scope: !2999)
!3065 = !DILocation(line: 249, column: 51, scope: !2999)
!3066 = !DILocation(line: 250, column: 46, scope: !2999)
!3067 = !DILocation(line: 250, column: 65, scope: !2999)
!3068 = !DILocation(line: 251, column: 47, scope: !2999)
!3069 = !DILocation(line: 252, column: 39, scope: !2999)
!3070 = !DILocation(line: 253, column: 39, scope: !2999)
!3071 = !DILocation(line: 256, column: 10, scope: !2999)
!3072 = !DILocation(line: 257, column: 10, scope: !2999)
!3073 = !DILocation(line: 258, column: 15, scope: !2999)
!3074 = !DILocation(line: 259, column: 10, scope: !2999)
!3075 = !DILocation(line: 260, column: 8, scope: !2999)
!3076 = !DILocation(line: 261, column: 25, scope: !2999)
!3077 = !DILocation(line: 261, column: 36, scope: !2999)
!3078 = !DILocation(line: 262, column: 8, scope: !2999)
!3079 = !DILocation(line: 263, column: 8, scope: !2999)
!3080 = !DILocation(line: 264, column: 8, scope: !2999)
!3081 = !DILocation(line: 265, column: 8, scope: !2999)
!3082 = !DILocation(line: 265, column: 3, scope: !2999)
!3083 = !DILocation(line: 308, column: 3, scope: !2999)
!3084 = !DILocation(line: 315, column: 11, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 309, column: 5)
!3086 = !DILocation(line: 315, column: 12, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3085, file: !425, line: 315, column: 11)
!3088 = !DILocation(line: 316, column: 9, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3090, file: !425, discriminator: 1)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !425, line: 316, column: 9)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !425, line: 316, column: 9)
!3092 = !DILocation(line: 316, column: 9, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3091, file: !425, discriminator: 1)
!3094 = !DILocation(line: 316, column: 9, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3090, file: !425, discriminator: 2)
!3096 = !DILocation(line: 354, column: 26, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !425, line: 332, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !425, line: 331, column: 13)
!3099 = distinct !DILexicalBlock(scope: !3085, file: !425, line: 330, column: 7)
!3100 = !DILocation(line: 355, column: 27, scope: !3097)
!3101 = !DILocation(line: 356, column: 11, scope: !3097)
!3102 = !DILocation(line: 357, column: 14, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !425, line: 357, column: 13)
!3104 = !DILocation(line: 357, column: 13, scope: !3099)
!3105 = !DILocation(line: 358, column: 43, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3107, file: !425, discriminator: 1)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !425, line: 358, column: 11)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !425, line: 358, column: 11)
!3109 = !DILocation(line: 358, column: 11, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3108, file: !425, discriminator: 1)
!3111 = !DILocation(line: 359, column: 13, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3113, file: !425, discriminator: 1)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !425, line: 359, column: 13)
!3114 = distinct !DILexicalBlock(scope: !3107, file: !425, line: 359, column: 13)
!3115 = !DILocation(line: 359, column: 13, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3114, file: !425, discriminator: 1)
!3117 = !DILocation(line: 359, column: 13, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3113, file: !425, discriminator: 2)
!3119 = !DILocation(line: 359, column: 13, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3114, file: !425, discriminator: 3)
!3121 = !DILocation(line: 358, column: 70, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !3107, file: !425, discriminator: 2)
!3123 = distinct !{!3123, !3124, !3125}
!3124 = !DILocation(line: 358, column: 11, scope: !3108)
!3125 = !DILocation(line: 359, column: 13, scope: !3108)
!3126 = !DILocation(line: 362, column: 28, scope: !3099)
!3127 = !DILocation(line: 364, column: 7, scope: !3085)
!3128 = !DILocation(line: 367, column: 7, scope: !3085)
!3129 = !DILocation(line: 370, column: 7, scope: !3085)
!3130 = !DILocation(line: 373, column: 12, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3085, file: !425, line: 373, column: 11)
!3132 = !DILocation(line: 373, column: 11, scope: !3085)
!3133 = !DILocation(line: 378, column: 12, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3085, file: !425, line: 378, column: 11)
!3135 = !DILocation(line: 378, column: 11, scope: !3085)
!3136 = !DILocation(line: 379, column: 9, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !425, discriminator: 1)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !425, line: 379, column: 9)
!3139 = distinct !DILexicalBlock(scope: !3134, file: !425, line: 379, column: 9)
!3140 = !DILocation(line: 379, column: 9, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3139, file: !425, discriminator: 1)
!3142 = !DILocation(line: 379, column: 9, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3138, file: !425, discriminator: 2)
!3144 = !DILocation(line: 386, column: 7, scope: !3085)
!3145 = !DILocation(line: 389, column: 7, scope: !3085)
!3146 = !DILocation(line: 255, column: 10, scope: !2999)
!3147 = !DILocation(line: 392, column: 8, scope: !3027)
!3148 = !DILocation(line: 392, column: 27, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3026, file: !425, discriminator: 1)
!3150 = !DILocation(line: 392, column: 19, scope: !3149)
!3151 = !DILocation(line: 392, column: 60, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3026, file: !425, discriminator: 3)
!3153 = !DILocation(line: 392, column: 3, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3027, file: !425, discriminator: 4)
!3155 = !DILocation(line: 392, column: 41, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3026, file: !425, discriminator: 2)
!3157 = !DILocation(line: 392, column: 48, scope: !3156)
!3158 = !DILocation(line: 396, column: 12, scope: !3025)
!3159 = !DILocation(line: 397, column: 12, scope: !3025)
!3160 = !DILocation(line: 398, column: 12, scope: !3025)
!3161 = !DILocation(line: 401, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 400, column: 11)
!3163 = !DILocation(line: 403, column: 17, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3162, file: !425, discriminator: 1)
!3165 = !DILocation(line: 404, column: 39, scope: !3162)
!3166 = !DILocation(line: 408, column: 32, scope: !3162)
!3167 = !DILocation(line: 404, column: 19, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3162, file: !425, discriminator: 2)
!3169 = !DILocation(line: 404, column: 15, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3162, file: !425, discriminator: 4)
!3171 = !DILocation(line: 409, column: 11, scope: !3162)
!3172 = !DILocation(line: 409, column: 26, scope: !3164)
!3173 = !DILocation(line: 409, column: 14, scope: !3164)
!3174 = !DILocation(line: 400, column: 11, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3025, file: !425, discriminator: 1)
!3176 = !DILocation(line: 416, column: 11, scope: !3025)
!3177 = !DILocation(line: 394, column: 21, scope: !3025)
!3178 = !DILocation(line: 417, column: 7, scope: !3025)
!3179 = !DILocation(line: 420, column: 15, scope: !3034)
!3180 = !DILocation(line: 422, column: 15, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3182, file: !425, discriminator: 1)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !425, line: 422, column: 15)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !425, line: 421, column: 13)
!3184 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 420, column: 15)
!3185 = !DILocation(line: 422, column: 15, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3187, file: !425, discriminator: 4)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !425, line: 422, column: 15)
!3188 = !DILocation(line: 422, column: 15, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3187, file: !425, discriminator: 3)
!3190 = !DILocation(line: 422, column: 15, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !425, discriminator: 6)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !425, line: 422, column: 15)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !425, line: 422, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3187, file: !425, line: 422, column: 15)
!3195 = !DILocation(line: 422, column: 15, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3193, file: !425, discriminator: 6)
!3197 = !DILocation(line: 422, column: 15, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3192, file: !425, discriminator: 7)
!3199 = !DILocation(line: 422, column: 15, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3193, file: !425, discriminator: 8)
!3201 = !DILocation(line: 422, column: 15, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3203, file: !425, discriminator: 11)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !425, line: 422, column: 15)
!3204 = distinct !DILexicalBlock(scope: !3194, file: !425, line: 422, column: 15)
!3205 = !DILocation(line: 422, column: 15, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3204, file: !425, discriminator: 11)
!3207 = !DILocation(line: 422, column: 15, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3203, file: !425, discriminator: 12)
!3209 = !DILocation(line: 422, column: 15, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3204, file: !425, discriminator: 13)
!3211 = !DILocation(line: 422, column: 15, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3213, file: !425, discriminator: 16)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !425, line: 422, column: 15)
!3214 = distinct !DILexicalBlock(scope: !3194, file: !425, line: 422, column: 15)
!3215 = !DILocation(line: 422, column: 15, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3214, file: !425, discriminator: 16)
!3217 = !DILocation(line: 422, column: 15, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3213, file: !425, discriminator: 17)
!3219 = !DILocation(line: 422, column: 15, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3214, file: !425, discriminator: 18)
!3221 = !DILocation(line: 422, column: 15, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3194, file: !425, discriminator: 20)
!3223 = !DILocation(line: 422, column: 15, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3225, file: !425, discriminator: 22)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !425, line: 422, column: 15)
!3226 = distinct !DILexicalBlock(scope: !3182, file: !425, line: 422, column: 15)
!3227 = !DILocation(line: 422, column: 15, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3226, file: !425, discriminator: 22)
!3229 = !DILocation(line: 422, column: 15, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3225, file: !425, discriminator: 23)
!3231 = !DILocation(line: 422, column: 15, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3226, file: !425, discriminator: 24)
!3233 = !DILocation(line: 430, column: 19, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3183, file: !425, line: 429, column: 19)
!3235 = !DILocation(line: 430, column: 24, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3234, file: !425, discriminator: 1)
!3237 = !DILocation(line: 430, column: 28, scope: !3236)
!3238 = !DILocation(line: 430, column: 38, scope: !3236)
!3239 = !DILocation(line: 430, column: 48, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3234, file: !425, discriminator: 2)
!3241 = !DILocation(line: 430, column: 59, scope: !3240)
!3242 = !DILocation(line: 432, column: 19, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3244, file: !425, discriminator: 1)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !425, line: 432, column: 19)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !425, line: 432, column: 19)
!3246 = distinct !DILexicalBlock(scope: !3234, file: !425, line: 431, column: 17)
!3247 = !DILocation(line: 432, column: 19, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3245, file: !425, discriminator: 1)
!3249 = !DILocation(line: 432, column: 19, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3244, file: !425, discriminator: 2)
!3251 = !DILocation(line: 432, column: 19, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3245, file: !425, discriminator: 3)
!3253 = !DILocation(line: 433, column: 19, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3255, file: !425, discriminator: 1)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !425, line: 433, column: 19)
!3256 = distinct !DILexicalBlock(scope: !3246, file: !425, line: 433, column: 19)
!3257 = !DILocation(line: 433, column: 19, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3256, file: !425, discriminator: 1)
!3259 = !DILocation(line: 433, column: 19, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3255, file: !425, discriminator: 2)
!3261 = !DILocation(line: 433, column: 19, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !3256, file: !425, discriminator: 3)
!3263 = !DILocation(line: 434, column: 17, scope: !3246)
!3264 = !DILocation(line: 441, column: 20, scope: !3184)
!3265 = !DILocation(line: 446, column: 11, scope: !3034)
!3266 = !DILocation(line: 449, column: 19, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 447, column: 13)
!3268 = !DILocation(line: 455, column: 19, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3267, file: !425, line: 454, column: 19)
!3270 = !DILocation(line: 455, column: 24, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3269, file: !425, discriminator: 1)
!3272 = !DILocation(line: 455, column: 28, scope: !3271)
!3273 = !DILocation(line: 455, column: 38, scope: !3271)
!3274 = !DILocation(line: 455, column: 47, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3269, file: !425, discriminator: 2)
!3276 = !DILocation(line: 455, column: 41, scope: !3275)
!3277 = !DILocation(line: 455, column: 52, scope: !3275)
!3278 = !DILocation(line: 454, column: 19, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3267, file: !425, discriminator: 1)
!3280 = !DILocation(line: 456, column: 25, scope: !3269)
!3281 = !DILocation(line: 456, column: 17, scope: !3269)
!3282 = !DILocation(line: 463, column: 25, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3269, file: !425, line: 457, column: 19)
!3284 = !DILocation(line: 467, column: 21, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3286, file: !425, discriminator: 1)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !425, line: 467, column: 21)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !425, line: 467, column: 21)
!3288 = !DILocation(line: 467, column: 21, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3287, file: !425, discriminator: 1)
!3290 = !DILocation(line: 467, column: 21, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3286, file: !425, discriminator: 2)
!3292 = !DILocation(line: 467, column: 21, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3287, file: !425, discriminator: 3)
!3294 = !DILocation(line: 468, column: 21, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3296, file: !425, discriminator: 1)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !425, line: 468, column: 21)
!3297 = distinct !DILexicalBlock(scope: !3283, file: !425, line: 468, column: 21)
!3298 = !DILocation(line: 468, column: 21, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3297, file: !425, discriminator: 1)
!3300 = !DILocation(line: 468, column: 21, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3296, file: !425, discriminator: 2)
!3302 = !DILocation(line: 468, column: 21, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3297, file: !425, discriminator: 3)
!3304 = !DILocation(line: 469, column: 21, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3306, file: !425, discriminator: 1)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !425, line: 469, column: 21)
!3307 = distinct !DILexicalBlock(scope: !3283, file: !425, line: 469, column: 21)
!3308 = !DILocation(line: 469, column: 21, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3307, file: !425, discriminator: 1)
!3310 = !DILocation(line: 469, column: 21, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3306, file: !425, discriminator: 2)
!3312 = !DILocation(line: 469, column: 21, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3307, file: !425, discriminator: 3)
!3314 = !DILocation(line: 470, column: 21, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3316, file: !425, discriminator: 1)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !425, line: 470, column: 21)
!3317 = distinct !DILexicalBlock(scope: !3283, file: !425, line: 470, column: 21)
!3318 = !DILocation(line: 470, column: 21, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3317, file: !425, discriminator: 1)
!3320 = !DILocation(line: 470, column: 21, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3316, file: !425, discriminator: 2)
!3322 = !DILocation(line: 470, column: 21, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3317, file: !425, discriminator: 3)
!3324 = !DILocation(line: 471, column: 21, scope: !3283)
!3325 = !DILocation(line: 395, column: 21, scope: !3025)
!3326 = !DILocation(line: 484, column: 31, scope: !3034)
!3327 = !DILocation(line: 485, column: 31, scope: !3034)
!3328 = !DILocation(line: 487, column: 31, scope: !3034)
!3329 = !DILocation(line: 488, column: 31, scope: !3034)
!3330 = !DILocation(line: 489, column: 31, scope: !3034)
!3331 = !DILocation(line: 492, column: 15, scope: !3034)
!3332 = !DILocation(line: 494, column: 19, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !425, line: 493, column: 13)
!3334 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 492, column: 15)
!3335 = !DILocation(line: 501, column: 33, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 501, column: 15)
!3337 = !DILocation(line: 506, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 505, column: 15)
!3339 = !DILocation(line: 510, column: 15, scope: !3034)
!3340 = !DILocation(line: 518, column: 26, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 518, column: 15)
!3342 = !DILocation(line: 518, column: 15, scope: !3034)
!3343 = !DILocation(line: 518, column: 40, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3341, file: !425, discriminator: 1)
!3345 = !DILocation(line: 518, column: 47, scope: !3344)
!3346 = !DILocation(line: 522, column: 17, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 522, column: 15)
!3348 = !DILocation(line: 518, column: 18, scope: !3344)
!3349 = !DILocation(line: 518, column: 65, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3341, file: !425, discriminator: 2)
!3351 = !DILocation(line: 518, column: 15, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3034, file: !425, discriminator: 2)
!3353 = !DILocation(line: 522, column: 15, scope: !3034)
!3354 = !DILocation(line: 526, column: 11, scope: !3034)
!3355 = !DILocation(line: 541, column: 15, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 540, column: 15)
!3357 = !DILocation(line: 548, column: 15, scope: !3034)
!3358 = !DILocation(line: 550, column: 19, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !425, line: 549, column: 13)
!3360 = distinct !DILexicalBlock(scope: !3034, file: !425, line: 548, column: 15)
!3361 = !DILocation(line: 553, column: 19, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 553, column: 19)
!3363 = !DILocation(line: 553, column: 35, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !3362, file: !425, discriminator: 1)
!3365 = !DILocation(line: 553, column: 30, scope: !3362)
!3366 = !DILocation(line: 562, column: 15, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3368, file: !425, discriminator: 1)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !425, line: 562, column: 15)
!3369 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 562, column: 15)
!3370 = !DILocation(line: 562, column: 15, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3369, file: !425, discriminator: 1)
!3372 = !DILocation(line: 562, column: 15, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3368, file: !425, discriminator: 2)
!3374 = !DILocation(line: 562, column: 15, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3369, file: !425, discriminator: 3)
!3376 = !DILocation(line: 563, column: 15, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3378, file: !425, discriminator: 1)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !425, line: 563, column: 15)
!3379 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 563, column: 15)
!3380 = !DILocation(line: 563, column: 15, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3379, file: !425, discriminator: 1)
!3382 = !DILocation(line: 563, column: 15, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3378, file: !425, discriminator: 2)
!3384 = !DILocation(line: 563, column: 15, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3379, file: !425, discriminator: 3)
!3386 = !DILocation(line: 564, column: 15, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3388, file: !425, discriminator: 1)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !425, line: 564, column: 15)
!3389 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 564, column: 15)
!3390 = !DILocation(line: 564, column: 15, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3389, file: !425, discriminator: 1)
!3392 = !DILocation(line: 564, column: 15, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3388, file: !425, discriminator: 2)
!3394 = !DILocation(line: 564, column: 15, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3389, file: !425, discriminator: 3)
!3396 = !DILocation(line: 566, column: 13, scope: !3359)
!3397 = !DILocation(line: 606, column: 17, scope: !3033)
!3398 = !DILocation(line: 602, column: 20, scope: !3033)
!3399 = !DILocation(line: 609, column: 29, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3038, file: !425, line: 607, column: 15)
!3401 = !DILocation(line: 609, column: 27, scope: !3400)
!3402 = !DILocation(line: 604, column: 18, scope: !3033)
!3403 = !DILocation(line: 610, column: 15, scope: !3400)
!3404 = !DILocation(line: 613, column: 17, scope: !3037)
!3405 = !DILocation(line: 614, column: 17, scope: !3037)
!3406 = !DILocation(line: 618, column: 29, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3037, file: !425, line: 618, column: 21)
!3408 = !DILocation(line: 618, column: 21, scope: !3037)
!3409 = distinct !{!3409, !3410, !3411}
!3410 = !DILocation(line: 621, column: 17, scope: !3037)
!3411 = !DILocation(line: 667, column: 44, scope: !3037)
!3412 = !DILocation(line: 619, column: 29, scope: !3407)
!3413 = !DILocation(line: 619, column: 19, scope: !3407)
!3414 = !DILocation(line: 623, column: 21, scope: !3050)
!3415 = !DILocation(line: 624, column: 56, scope: !3050)
!3416 = !DILocation(line: 624, column: 50, scope: !3050)
!3417 = !DILocation(line: 625, column: 53, scope: !3050)
!3418 = !DILocation(line: 613, column: 27, scope: !3037)
!3419 = !DILocation(line: 623, column: 29, scope: !3050)
!3420 = !DILocation(line: 624, column: 36, scope: !3050)
!3421 = !DILocation(line: 624, column: 28, scope: !3050)
!3422 = !DILocation(line: 626, column: 25, scope: !3050)
!3423 = !DILocation(line: 636, column: 38, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3425, file: !425, discriminator: 1)
!3425 = distinct !DILexicalBlock(scope: !3056, file: !425, line: 634, column: 23)
!3426 = !DILocation(line: 636, column: 48, scope: !3424)
!3427 = !DILocation(line: 636, column: 51, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3425, file: !425, discriminator: 2)
!3429 = !DILocation(line: 636, column: 48, scope: !3428)
!3430 = !DILocation(line: 636, column: 25, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3425, file: !425, discriminator: 3)
!3432 = !DILocation(line: 637, column: 28, scope: !3425)
!3433 = !DILocation(line: 636, column: 34, scope: !3424)
!3434 = distinct !{!3434, !3435, !3432}
!3435 = !DILocation(line: 636, column: 25, scope: !3425)
!3436 = !DILocation(line: 650, column: 43, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3438, file: !425, discriminator: 1)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !425, line: 650, column: 29)
!3439 = distinct !DILexicalBlock(scope: !3053, file: !425, line: 650, column: 29)
!3440 = !DILocation(line: 647, column: 29, scope: !3054)
!3441 = !DILocation(line: 649, column: 36, scope: !3053)
!3442 = !DILocation(line: 651, column: 49, scope: !3438)
!3443 = !DILocation(line: 651, column: 39, scope: !3438)
!3444 = !DILocation(line: 651, column: 31, scope: !3438)
!3445 = !DILocation(line: 650, column: 53, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !3438, file: !425, discriminator: 2)
!3447 = !DILocation(line: 650, column: 29, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3439, file: !425, discriminator: 1)
!3449 = distinct !{!3449, !3450, !3451}
!3450 = !DILocation(line: 650, column: 29, scope: !3439)
!3451 = !DILocation(line: 659, column: 33, scope: !3439)
!3452 = !DILocation(line: 666, column: 19, scope: !3037)
!3453 = !DILocation(line: 662, column: 41, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3055, file: !425, line: 662, column: 29)
!3455 = !DILocation(line: 662, column: 31, scope: !3454)
!3456 = !DILocation(line: 662, column: 29, scope: !3055)
!3457 = !DILocation(line: 664, column: 27, scope: !3055)
!3458 = !DILocation(line: 667, column: 26, scope: !3037)
!3459 = !DILocation(line: 667, column: 24, scope: !3037)
!3460 = !DILocation(line: 666, column: 19, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3050, file: !425, discriminator: 3)
!3462 = !DILocation(line: 668, column: 15, scope: !3038)
!3463 = !DILocation(line: 670, column: 40, scope: !3033)
!3464 = !DILocation(line: 672, column: 19, scope: !3061)
!3465 = !DILocation(line: 672, column: 45, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3061, file: !425, discriminator: 1)
!3467 = !DILocation(line: 672, column: 23, scope: !3061)
!3468 = !DILocation(line: 676, column: 33, scope: !3060)
!3469 = !DILocation(line: 676, column: 24, scope: !3060)
!3470 = !DILocation(line: 678, column: 17, scope: !3060)
!3471 = !DILocation(line: 680, column: 43, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !425, line: 680, column: 25)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !425, line: 679, column: 19)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !425, line: 678, column: 17)
!3475 = distinct !DILexicalBlock(scope: !3060, file: !425, line: 678, column: 17)
!3476 = !DILocation(line: 682, column: 25, scope: !3477)
!3477 = !DILexicalBlockFile(scope: !3478, file: !425, discriminator: 1)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !425, line: 682, column: 25)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !425, line: 681, column: 23)
!3480 = !DILocation(line: 682, column: 25, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3482, file: !425, discriminator: 4)
!3482 = distinct !DILexicalBlock(scope: !3478, file: !425, line: 682, column: 25)
!3483 = !DILocation(line: 682, column: 25, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3482, file: !425, discriminator: 3)
!3485 = !DILocation(line: 682, column: 25, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3487, file: !425, discriminator: 6)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !425, line: 682, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !425, line: 682, column: 25)
!3489 = distinct !DILexicalBlock(scope: !3482, file: !425, line: 682, column: 25)
!3490 = !DILocation(line: 682, column: 25, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3488, file: !425, discriminator: 6)
!3492 = !DILocation(line: 682, column: 25, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3487, file: !425, discriminator: 7)
!3494 = !DILocation(line: 682, column: 25, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3488, file: !425, discriminator: 8)
!3496 = !DILocation(line: 682, column: 25, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !425, discriminator: 11)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !425, line: 682, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3489, file: !425, line: 682, column: 25)
!3500 = !DILocation(line: 682, column: 25, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3499, file: !425, discriminator: 11)
!3502 = !DILocation(line: 682, column: 25, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3498, file: !425, discriminator: 12)
!3504 = !DILocation(line: 682, column: 25, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3499, file: !425, discriminator: 13)
!3506 = !DILocation(line: 682, column: 25, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3508, file: !425, discriminator: 16)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !425, line: 682, column: 25)
!3509 = distinct !DILexicalBlock(scope: !3489, file: !425, line: 682, column: 25)
!3510 = !DILocation(line: 682, column: 25, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3509, file: !425, discriminator: 16)
!3512 = !DILocation(line: 682, column: 25, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3508, file: !425, discriminator: 17)
!3514 = !DILocation(line: 682, column: 25, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3509, file: !425, discriminator: 18)
!3516 = !DILocation(line: 682, column: 25, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3489, file: !425, discriminator: 20)
!3518 = !DILocation(line: 682, column: 25, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3520, file: !425, discriminator: 22)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !425, line: 682, column: 25)
!3521 = distinct !DILexicalBlock(scope: !3478, file: !425, line: 682, column: 25)
!3522 = !DILocation(line: 682, column: 25, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3521, file: !425, discriminator: 22)
!3524 = !DILocation(line: 682, column: 25, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3520, file: !425, discriminator: 23)
!3526 = !DILocation(line: 682, column: 25, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3521, file: !425, discriminator: 24)
!3528 = !DILocation(line: 683, column: 25, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3530, file: !425, discriminator: 1)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !425, line: 683, column: 25)
!3531 = distinct !DILexicalBlock(scope: !3479, file: !425, line: 683, column: 25)
!3532 = !DILocation(line: 683, column: 25, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3531, file: !425, discriminator: 1)
!3534 = !DILocation(line: 683, column: 25, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3530, file: !425, discriminator: 2)
!3536 = !DILocation(line: 683, column: 25, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3531, file: !425, discriminator: 3)
!3538 = !DILocation(line: 684, column: 25, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3540, file: !425, discriminator: 1)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !425, line: 684, column: 25)
!3541 = distinct !DILexicalBlock(scope: !3479, file: !425, line: 684, column: 25)
!3542 = !DILocation(line: 684, column: 25, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3541, file: !425, discriminator: 1)
!3544 = !DILocation(line: 684, column: 25, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3540, file: !425, discriminator: 2)
!3546 = !DILocation(line: 684, column: 25, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3541, file: !425, discriminator: 3)
!3548 = !DILocation(line: 685, column: 38, scope: !3479)
!3549 = !DILocation(line: 685, column: 33, scope: !3479)
!3550 = !DILocation(line: 686, column: 23, scope: !3479)
!3551 = !DILocation(line: 687, column: 30, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3472, file: !425, line: 687, column: 30)
!3553 = !DILocation(line: 687, column: 30, scope: !3472)
!3554 = !DILocation(line: 689, column: 25, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3556, file: !425, discriminator: 1)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !425, line: 689, column: 25)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !425, line: 689, column: 25)
!3558 = distinct !DILexicalBlock(scope: !3552, file: !425, line: 688, column: 23)
!3559 = !DILocation(line: 689, column: 25, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3557, file: !425, discriminator: 1)
!3561 = !DILocation(line: 689, column: 25, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3556, file: !425, discriminator: 2)
!3563 = !DILocation(line: 689, column: 25, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3557, file: !425, discriminator: 3)
!3565 = !DILocation(line: 691, column: 23, scope: !3558)
!3566 = !DILocation(line: 692, column: 35, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3473, file: !425, line: 692, column: 25)
!3568 = !DILocation(line: 692, column: 30, scope: !3567)
!3569 = !DILocation(line: 692, column: 25, scope: !3473)
!3570 = !DILocation(line: 694, column: 21, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3572, file: !425, discriminator: 1)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !425, line: 694, column: 21)
!3573 = distinct !DILexicalBlock(scope: !3473, file: !425, line: 694, column: 21)
!3574 = !DILocation(line: 694, column: 21, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3572, file: !425, discriminator: 2)
!3576 = !DILocation(line: 694, column: 21, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3578, file: !425, discriminator: 4)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !425, line: 694, column: 21)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !425, line: 694, column: 21)
!3580 = distinct !DILexicalBlock(scope: !3572, file: !425, line: 694, column: 21)
!3581 = !DILocation(line: 694, column: 21, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3579, file: !425, discriminator: 4)
!3583 = !DILocation(line: 694, column: 21, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3578, file: !425, discriminator: 5)
!3585 = !DILocation(line: 694, column: 21, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3579, file: !425, discriminator: 6)
!3587 = !DILocation(line: 694, column: 21, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3589, file: !425, discriminator: 9)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !425, line: 694, column: 21)
!3590 = distinct !DILexicalBlock(scope: !3580, file: !425, line: 694, column: 21)
!3591 = !DILocation(line: 694, column: 21, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3590, file: !425, discriminator: 9)
!3593 = !DILocation(line: 694, column: 21, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3589, file: !425, discriminator: 10)
!3595 = !DILocation(line: 694, column: 21, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3590, file: !425, discriminator: 11)
!3597 = !DILocation(line: 694, column: 21, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3580, file: !425, discriminator: 13)
!3599 = !DILocation(line: 695, column: 21, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3601, file: !425, discriminator: 1)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !425, line: 695, column: 21)
!3602 = distinct !DILexicalBlock(scope: !3473, file: !425, line: 695, column: 21)
!3603 = !DILocation(line: 695, column: 21, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !3602, file: !425, discriminator: 1)
!3605 = !DILocation(line: 695, column: 21, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3601, file: !425, discriminator: 2)
!3607 = !DILocation(line: 695, column: 21, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3602, file: !425, discriminator: 3)
!3609 = !DILocation(line: 696, column: 25, scope: !3473)
!3610 = !DILocation(line: 678, column: 17, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3474, file: !425, discriminator: 1)
!3612 = distinct !{!3612, !3613, !3614}
!3613 = !DILocation(line: 678, column: 17, scope: !3475)
!3614 = !DILocation(line: 697, column: 19, scope: !3475)
!3615 = !DILocation(line: 704, column: 34, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 704, column: 11)
!3617 = !DILocation(line: 706, column: 14, scope: !3616)
!3618 = !DILocation(line: 707, column: 14, scope: !3616)
!3619 = !DILocation(line: 707, column: 35, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !3616, file: !425, discriminator: 1)
!3621 = !DILocation(line: 707, column: 17, scope: !3620)
!3622 = !DILocation(line: 707, column: 53, scope: !3620)
!3623 = !DILocation(line: 707, column: 47, scope: !3620)
!3624 = !DILocation(line: 707, column: 65, scope: !3620)
!3625 = !DILocation(line: 708, column: 15, scope: !3620)
!3626 = !DILocation(line: 708, column: 11, scope: !3616)
!3627 = !DILocation(line: 704, column: 11, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3025, file: !425, discriminator: 2)
!3629 = !DILocation(line: 712, column: 7, scope: !3630)
!3630 = !DILexicalBlockFile(scope: !3631, file: !425, discriminator: 1)
!3631 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 712, column: 7)
!3632 = !DILocation(line: 712, column: 7, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3634, file: !425, discriminator: 4)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !425, line: 712, column: 7)
!3635 = !DILocation(line: 712, column: 7, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3634, file: !425, discriminator: 3)
!3637 = !DILocation(line: 712, column: 7, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !3639, file: !425, discriminator: 6)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !425, line: 712, column: 7)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !425, line: 712, column: 7)
!3641 = distinct !DILexicalBlock(scope: !3634, file: !425, line: 712, column: 7)
!3642 = !DILocation(line: 712, column: 7, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3640, file: !425, discriminator: 6)
!3644 = !DILocation(line: 712, column: 7, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3639, file: !425, discriminator: 7)
!3646 = !DILocation(line: 712, column: 7, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3640, file: !425, discriminator: 8)
!3648 = !DILocation(line: 712, column: 7, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3650, file: !425, discriminator: 11)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !425, line: 712, column: 7)
!3651 = distinct !DILexicalBlock(scope: !3641, file: !425, line: 712, column: 7)
!3652 = !DILocation(line: 712, column: 7, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3651, file: !425, discriminator: 11)
!3654 = !DILocation(line: 712, column: 7, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3650, file: !425, discriminator: 12)
!3656 = !DILocation(line: 712, column: 7, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3651, file: !425, discriminator: 13)
!3658 = !DILocation(line: 712, column: 7, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3660, file: !425, discriminator: 16)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !425, line: 712, column: 7)
!3661 = distinct !DILexicalBlock(scope: !3641, file: !425, line: 712, column: 7)
!3662 = !DILocation(line: 712, column: 7, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3661, file: !425, discriminator: 16)
!3664 = !DILocation(line: 712, column: 7, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3660, file: !425, discriminator: 17)
!3666 = !DILocation(line: 712, column: 7, scope: !3667)
!3667 = !DILexicalBlockFile(scope: !3661, file: !425, discriminator: 18)
!3668 = !DILocation(line: 712, column: 7, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3641, file: !425, discriminator: 20)
!3670 = !DILocation(line: 712, column: 7, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3672, file: !425, discriminator: 22)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !425, line: 712, column: 7)
!3673 = distinct !DILexicalBlock(scope: !3631, file: !425, line: 712, column: 7)
!3674 = !DILocation(line: 712, column: 7, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3673, file: !425, discriminator: 22)
!3676 = !DILocation(line: 712, column: 7, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3672, file: !425, discriminator: 23)
!3678 = !DILocation(line: 712, column: 7, scope: !3679)
!3679 = !DILexicalBlockFile(scope: !3673, file: !425, discriminator: 24)
!3680 = !DILocation(line: 715, column: 7, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3682, file: !425, discriminator: 1)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !425, line: 715, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 715, column: 7)
!3684 = !DILocation(line: 715, column: 7, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3682, file: !425, discriminator: 2)
!3686 = !DILocation(line: 715, column: 7, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3688, file: !425, discriminator: 4)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !425, line: 715, column: 7)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !425, line: 715, column: 7)
!3690 = distinct !DILexicalBlock(scope: !3682, file: !425, line: 715, column: 7)
!3691 = !DILocation(line: 715, column: 7, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3689, file: !425, discriminator: 4)
!3693 = !DILocation(line: 715, column: 7, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3688, file: !425, discriminator: 5)
!3695 = !DILocation(line: 715, column: 7, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3689, file: !425, discriminator: 6)
!3697 = !DILocation(line: 715, column: 7, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !3699, file: !425, discriminator: 9)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !425, line: 715, column: 7)
!3700 = distinct !DILexicalBlock(scope: !3690, file: !425, line: 715, column: 7)
!3701 = !DILocation(line: 715, column: 7, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3700, file: !425, discriminator: 9)
!3703 = !DILocation(line: 715, column: 7, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3699, file: !425, discriminator: 10)
!3705 = !DILocation(line: 715, column: 7, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3700, file: !425, discriminator: 11)
!3707 = !DILocation(line: 715, column: 7, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3690, file: !425, discriminator: 13)
!3709 = !DILocation(line: 716, column: 7, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3711, file: !425, discriminator: 1)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !425, line: 716, column: 7)
!3712 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 716, column: 7)
!3713 = !DILocation(line: 716, column: 7, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !3712, file: !425, discriminator: 1)
!3715 = !DILocation(line: 716, column: 7, scope: !3716)
!3716 = !DILexicalBlockFile(scope: !3711, file: !425, discriminator: 2)
!3717 = !DILocation(line: 716, column: 7, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !3712, file: !425, discriminator: 3)
!3719 = !DILocation(line: 718, column: 13, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3025, file: !425, line: 718, column: 11)
!3721 = !DILocation(line: 718, column: 11, scope: !3025)
!3722 = !DILocation(line: 720, column: 5, scope: !3026)
!3723 = !DILocation(line: 392, column: 75, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3026, file: !425, discriminator: 5)
!3725 = !DILocation(line: 392, column: 3, scope: !3724)
!3726 = distinct !{!3726, !3727, !3728}
!3727 = !DILocation(line: 392, column: 3, scope: !3027)
!3728 = !DILocation(line: 720, column: 5, scope: !3027)
!3729 = !DILocation(line: 722, column: 11, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 722, column: 7)
!3731 = !DILocation(line: 722, column: 16, scope: !3730)
!3732 = !DILocation(line: 730, column: 51, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 730, column: 7)
!3734 = !DILocation(line: 731, column: 10, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3733, file: !425, discriminator: 1)
!3736 = !DILocation(line: 733, column: 11, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !425, line: 733, column: 11)
!3738 = distinct !DILexicalBlock(scope: !3733, file: !425, line: 732, column: 5)
!3739 = !DILocation(line: 733, column: 11, scope: !3738)
!3740 = !DILocation(line: 734, column: 16, scope: !3737)
!3741 = !DILocation(line: 734, column: 9, scope: !3737)
!3742 = !DILocation(line: 738, column: 18, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3737, file: !425, line: 738, column: 16)
!3744 = !DILocation(line: 738, column: 32, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !3743, file: !425, discriminator: 1)
!3746 = !DILocation(line: 738, column: 29, scope: !3743)
!3747 = !DILocation(line: 747, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 747, column: 7)
!3749 = !DILocation(line: 747, column: 20, scope: !3748)
!3750 = !DILocation(line: 748, column: 12, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3752, file: !425, discriminator: 1)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !425, line: 748, column: 5)
!3753 = distinct !DILexicalBlock(scope: !3748, file: !425, line: 748, column: 5)
!3754 = !DILocation(line: 748, column: 5, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3753, file: !425, discriminator: 1)
!3756 = !DILocation(line: 749, column: 7, scope: !3757)
!3757 = !DILexicalBlockFile(scope: !3758, file: !425, discriminator: 1)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !425, line: 749, column: 7)
!3759 = distinct !DILexicalBlock(scope: !3752, file: !425, line: 749, column: 7)
!3760 = !DILocation(line: 749, column: 7, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !3759, file: !425, discriminator: 1)
!3762 = !DILocation(line: 749, column: 7, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3758, file: !425, discriminator: 2)
!3764 = !DILocation(line: 749, column: 7, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3759, file: !425, discriminator: 3)
!3766 = !DILocation(line: 748, column: 39, scope: !3767)
!3767 = !DILexicalBlockFile(scope: !3752, file: !425, discriminator: 2)
!3768 = distinct !{!3768, !3769, !3770}
!3769 = !DILocation(line: 748, column: 5, scope: !3753)
!3770 = !DILocation(line: 749, column: 7, scope: !3753)
!3771 = !DILocation(line: 751, column: 11, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 751, column: 7)
!3773 = !DILocation(line: 751, column: 7, scope: !2999)
!3774 = !DILocation(line: 752, column: 5, scope: !3772)
!3775 = !DILocation(line: 752, column: 17, scope: !3772)
!3776 = !DILocation(line: 758, column: 21, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !2999, file: !425, line: 758, column: 7)
!3778 = !DILocation(line: 758, column: 54, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !3777, file: !425, discriminator: 1)
!3780 = !DILocation(line: 758, column: 51, scope: !3777)
!3781 = !DILocation(line: 762, column: 42, scope: !2999)
!3782 = !DILocation(line: 760, column: 10, scope: !2999)
!3783 = !DILocation(line: 760, column: 3, scope: !2999)
!3784 = !DILocation(line: 764, column: 1, scope: !2999)
!3785 = distinct !DISubprogram(name: "gettext_quote", scope: !425, file: !425, line: 199, type: !3786, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!62, !62, !5}
!3788 = !{!3789, !3790, !3791, !3792}
!3789 = !DILocalVariable(name: "msgid", arg: 1, scope: !3785, file: !425, line: 199, type: !62)
!3790 = !DILocalVariable(name: "s", arg: 2, scope: !3785, file: !425, line: 199, type: !5)
!3791 = !DILocalVariable(name: "translation", scope: !3785, file: !425, line: 201, type: !62)
!3792 = !DILocalVariable(name: "locale_code", scope: !3785, file: !425, line: 202, type: !62)
!3793 = !DILocation(line: 199, column: 28, scope: !3785)
!3794 = !DILocation(line: 199, column: 54, scope: !3785)
!3795 = !DILocation(line: 201, column: 29, scope: !3785)
!3796 = !DILocation(line: 201, column: 15, scope: !3785)
!3797 = !DILocation(line: 204, column: 19, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3785, file: !425, line: 204, column: 7)
!3799 = !DILocation(line: 204, column: 7, scope: !3785)
!3800 = !DILocation(line: 225, column: 17, scope: !3785)
!3801 = !DILocation(line: 202, column: 15, scope: !3785)
!3802 = !DILocalVariable(name: "s2", arg: 2, scope: !3803, file: !3804, line: 160, type: !62)
!3803 = distinct !DISubprogram(name: "strcaseeq0", scope: !3804, file: !3804, line: 160, type: !3805, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3807)
!3804 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!64, !62, !62, !52, !52, !52, !52, !52, !52, !52, !52, !52}
!3807 = !{!3808, !3802, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3808 = !DILocalVariable(name: "s1", arg: 1, scope: !3803, file: !3804, line: 160, type: !62)
!3809 = !DILocalVariable(name: "s20", arg: 3, scope: !3803, file: !3804, line: 160, type: !52)
!3810 = !DILocalVariable(name: "s21", arg: 4, scope: !3803, file: !3804, line: 160, type: !52)
!3811 = !DILocalVariable(name: "s22", arg: 5, scope: !3803, file: !3804, line: 160, type: !52)
!3812 = !DILocalVariable(name: "s23", arg: 6, scope: !3803, file: !3804, line: 160, type: !52)
!3813 = !DILocalVariable(name: "s24", arg: 7, scope: !3803, file: !3804, line: 160, type: !52)
!3814 = !DILocalVariable(name: "s25", arg: 8, scope: !3803, file: !3804, line: 160, type: !52)
!3815 = !DILocalVariable(name: "s26", arg: 9, scope: !3803, file: !3804, line: 160, type: !52)
!3816 = !DILocalVariable(name: "s27", arg: 10, scope: !3803, file: !3804, line: 160, type: !52)
!3817 = !DILocalVariable(name: "s28", arg: 11, scope: !3803, file: !3804, line: 160, type: !52)
!3818 = !DILocation(line: 160, column: 41, scope: !3803, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 226, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3785, file: !425, line: 226, column: 7)
!3821 = !DILocation(line: 160, column: 120, scope: !3803, inlinedAt: !3819)
!3822 = !DILocation(line: 160, column: 130, scope: !3803, inlinedAt: !3819)
!3823 = !DILocation(line: 162, column: 7, scope: !3824, inlinedAt: !3819)
!3824 = !DILexicalBlockFile(scope: !3825, file: !3804, discriminator: 1)
!3825 = distinct !DILexicalBlock(scope: !3803, file: !3804, line: 162, column: 7)
!3826 = !DILocalVariable(name: "s2", arg: 2, scope: !3827, file: !3804, line: 146, type: !62)
!3827 = distinct !DISubprogram(name: "strcaseeq1", scope: !3804, file: !3804, line: 146, type: !3828, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!64, !62, !62, !52, !52, !52, !52, !52, !52, !52, !52}
!3830 = !{!3831, !3826, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839}
!3831 = !DILocalVariable(name: "s1", arg: 1, scope: !3827, file: !3804, line: 146, type: !62)
!3832 = !DILocalVariable(name: "s21", arg: 3, scope: !3827, file: !3804, line: 146, type: !52)
!3833 = !DILocalVariable(name: "s22", arg: 4, scope: !3827, file: !3804, line: 146, type: !52)
!3834 = !DILocalVariable(name: "s23", arg: 5, scope: !3827, file: !3804, line: 146, type: !52)
!3835 = !DILocalVariable(name: "s24", arg: 6, scope: !3827, file: !3804, line: 146, type: !52)
!3836 = !DILocalVariable(name: "s25", arg: 7, scope: !3827, file: !3804, line: 146, type: !52)
!3837 = !DILocalVariable(name: "s26", arg: 8, scope: !3827, file: !3804, line: 146, type: !52)
!3838 = !DILocalVariable(name: "s27", arg: 9, scope: !3827, file: !3804, line: 146, type: !52)
!3839 = !DILocalVariable(name: "s28", arg: 10, scope: !3827, file: !3804, line: 146, type: !52)
!3840 = !DILocation(line: 146, column: 41, scope: !3827, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 167, column: 16, scope: !3842, inlinedAt: !3819)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3804, line: 164, column: 11)
!3843 = distinct !DILexicalBlock(scope: !3825, file: !3804, line: 163, column: 5)
!3844 = !DILocation(line: 146, column: 110, scope: !3827, inlinedAt: !3841)
!3845 = !DILocation(line: 146, column: 120, scope: !3827, inlinedAt: !3841)
!3846 = !DILocation(line: 148, column: 7, scope: !3847, inlinedAt: !3841)
!3847 = !DILexicalBlockFile(scope: !3848, file: !3804, discriminator: 1)
!3848 = distinct !DILexicalBlock(scope: !3827, file: !3804, line: 148, column: 7)
!3849 = !DILocalVariable(name: "s2", arg: 2, scope: !3850, file: !3804, line: 132, type: !62)
!3850 = distinct !DISubprogram(name: "strcaseeq2", scope: !3804, file: !3804, line: 132, type: !3851, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!64, !62, !62, !52, !52, !52, !52, !52, !52, !52}
!3853 = !{!3854, !3849, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3854 = !DILocalVariable(name: "s1", arg: 1, scope: !3850, file: !3804, line: 132, type: !62)
!3855 = !DILocalVariable(name: "s22", arg: 3, scope: !3850, file: !3804, line: 132, type: !52)
!3856 = !DILocalVariable(name: "s23", arg: 4, scope: !3850, file: !3804, line: 132, type: !52)
!3857 = !DILocalVariable(name: "s24", arg: 5, scope: !3850, file: !3804, line: 132, type: !52)
!3858 = !DILocalVariable(name: "s25", arg: 6, scope: !3850, file: !3804, line: 132, type: !52)
!3859 = !DILocalVariable(name: "s26", arg: 7, scope: !3850, file: !3804, line: 132, type: !52)
!3860 = !DILocalVariable(name: "s27", arg: 8, scope: !3850, file: !3804, line: 132, type: !52)
!3861 = !DILocalVariable(name: "s28", arg: 9, scope: !3850, file: !3804, line: 132, type: !52)
!3862 = !DILocation(line: 132, column: 41, scope: !3850, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 153, column: 16, scope: !3864, inlinedAt: !3841)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !3804, line: 150, column: 11)
!3865 = distinct !DILexicalBlock(scope: !3848, file: !3804, line: 149, column: 5)
!3866 = !DILocation(line: 132, column: 100, scope: !3850, inlinedAt: !3863)
!3867 = !DILocation(line: 132, column: 110, scope: !3850, inlinedAt: !3863)
!3868 = !DILocation(line: 134, column: 7, scope: !3869, inlinedAt: !3863)
!3869 = !DILexicalBlockFile(scope: !3870, file: !3804, discriminator: 1)
!3870 = distinct !DILexicalBlock(scope: !3850, file: !3804, line: 134, column: 7)
!3871 = !DILocalVariable(name: "s2", arg: 2, scope: !3872, file: !3804, line: 118, type: !62)
!3872 = distinct !DISubprogram(name: "strcaseeq3", scope: !3804, file: !3804, line: 118, type: !3873, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!64, !62, !62, !52, !52, !52, !52, !52, !52}
!3875 = !{!3876, !3871, !3877, !3878, !3879, !3880, !3881, !3882}
!3876 = !DILocalVariable(name: "s1", arg: 1, scope: !3872, file: !3804, line: 118, type: !62)
!3877 = !DILocalVariable(name: "s23", arg: 3, scope: !3872, file: !3804, line: 118, type: !52)
!3878 = !DILocalVariable(name: "s24", arg: 4, scope: !3872, file: !3804, line: 118, type: !52)
!3879 = !DILocalVariable(name: "s25", arg: 5, scope: !3872, file: !3804, line: 118, type: !52)
!3880 = !DILocalVariable(name: "s26", arg: 6, scope: !3872, file: !3804, line: 118, type: !52)
!3881 = !DILocalVariable(name: "s27", arg: 7, scope: !3872, file: !3804, line: 118, type: !52)
!3882 = !DILocalVariable(name: "s28", arg: 8, scope: !3872, file: !3804, line: 118, type: !52)
!3883 = !DILocation(line: 118, column: 41, scope: !3872, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 139, column: 16, scope: !3885, inlinedAt: !3863)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3804, line: 136, column: 11)
!3886 = distinct !DILexicalBlock(scope: !3870, file: !3804, line: 135, column: 5)
!3887 = !DILocation(line: 118, column: 90, scope: !3872, inlinedAt: !3884)
!3888 = !DILocation(line: 118, column: 100, scope: !3872, inlinedAt: !3884)
!3889 = !DILocation(line: 120, column: 7, scope: !3890, inlinedAt: !3884)
!3890 = !DILexicalBlockFile(scope: !3891, file: !3804, discriminator: 2)
!3891 = distinct !DILexicalBlock(scope: !3872, file: !3804, line: 120, column: 7)
!3892 = !DILocation(line: 120, column: 7, scope: !3893, inlinedAt: !3884)
!3893 = !DILexicalBlockFile(scope: !3872, file: !3804, discriminator: 2)
!3894 = !DILocalVariable(name: "s2", arg: 2, scope: !3895, file: !3804, line: 104, type: !62)
!3895 = distinct !DISubprogram(name: "strcaseeq4", scope: !3804, file: !3804, line: 104, type: !3896, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!64, !62, !62, !52, !52, !52, !52, !52}
!3898 = !{!3899, !3894, !3900, !3901, !3902, !3903, !3904}
!3899 = !DILocalVariable(name: "s1", arg: 1, scope: !3895, file: !3804, line: 104, type: !62)
!3900 = !DILocalVariable(name: "s24", arg: 3, scope: !3895, file: !3804, line: 104, type: !52)
!3901 = !DILocalVariable(name: "s25", arg: 4, scope: !3895, file: !3804, line: 104, type: !52)
!3902 = !DILocalVariable(name: "s26", arg: 5, scope: !3895, file: !3804, line: 104, type: !52)
!3903 = !DILocalVariable(name: "s27", arg: 6, scope: !3895, file: !3804, line: 104, type: !52)
!3904 = !DILocalVariable(name: "s28", arg: 7, scope: !3895, file: !3804, line: 104, type: !52)
!3905 = !DILocation(line: 104, column: 41, scope: !3895, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 125, column: 16, scope: !3907, inlinedAt: !3884)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !3804, line: 122, column: 11)
!3908 = distinct !DILexicalBlock(scope: !3891, file: !3804, line: 121, column: 5)
!3909 = !DILocation(line: 104, column: 80, scope: !3895, inlinedAt: !3906)
!3910 = !DILocation(line: 104, column: 90, scope: !3895, inlinedAt: !3906)
!3911 = !DILocation(line: 106, column: 7, scope: !3912, inlinedAt: !3906)
!3912 = !DILexicalBlockFile(scope: !3913, file: !3804, discriminator: 2)
!3913 = distinct !DILexicalBlock(scope: !3895, file: !3804, line: 106, column: 7)
!3914 = !DILocation(line: 106, column: 7, scope: !3915, inlinedAt: !3906)
!3915 = !DILexicalBlockFile(scope: !3895, file: !3804, discriminator: 2)
!3916 = !DILocalVariable(name: "s2", arg: 2, scope: !3917, file: !3804, line: 90, type: !62)
!3917 = distinct !DISubprogram(name: "strcaseeq5", scope: !3804, file: !3804, line: 90, type: !3918, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!64, !62, !62, !52, !52, !52, !52}
!3920 = !{!3921, !3916, !3922, !3923, !3924, !3925}
!3921 = !DILocalVariable(name: "s1", arg: 1, scope: !3917, file: !3804, line: 90, type: !62)
!3922 = !DILocalVariable(name: "s25", arg: 3, scope: !3917, file: !3804, line: 90, type: !52)
!3923 = !DILocalVariable(name: "s26", arg: 4, scope: !3917, file: !3804, line: 90, type: !52)
!3924 = !DILocalVariable(name: "s27", arg: 5, scope: !3917, file: !3804, line: 90, type: !52)
!3925 = !DILocalVariable(name: "s28", arg: 6, scope: !3917, file: !3804, line: 90, type: !52)
!3926 = !DILocation(line: 90, column: 41, scope: !3917, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 111, column: 16, scope: !3928, inlinedAt: !3906)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3804, line: 108, column: 11)
!3929 = distinct !DILexicalBlock(scope: !3913, file: !3804, line: 107, column: 5)
!3930 = !DILocation(line: 90, column: 70, scope: !3917, inlinedAt: !3927)
!3931 = !DILocation(line: 90, column: 80, scope: !3917, inlinedAt: !3927)
!3932 = !DILocation(line: 92, column: 7, scope: !3933, inlinedAt: !3927)
!3933 = !DILexicalBlockFile(scope: !3934, file: !3804, discriminator: 2)
!3934 = distinct !DILexicalBlock(scope: !3917, file: !3804, line: 92, column: 7)
!3935 = !DILocation(line: 92, column: 7, scope: !3936, inlinedAt: !3927)
!3936 = !DILexicalBlockFile(scope: !3917, file: !3804, discriminator: 2)
!3937 = !DILocation(line: 227, column: 12, scope: !3820)
!3938 = !DILocation(line: 227, column: 21, scope: !3820)
!3939 = !DILocation(line: 227, column: 5, scope: !3820)
!3940 = !DILocation(line: 146, column: 41, scope: !3827, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 167, column: 16, scope: !3842, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 228, column: 7, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3785, file: !425, line: 228, column: 7)
!3944 = !DILocation(line: 146, column: 110, scope: !3827, inlinedAt: !3941)
!3945 = !DILocation(line: 146, column: 120, scope: !3827, inlinedAt: !3941)
!3946 = !DILocation(line: 148, column: 7, scope: !3847, inlinedAt: !3941)
!3947 = !DILocation(line: 132, column: 41, scope: !3850, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 153, column: 16, scope: !3864, inlinedAt: !3941)
!3949 = !DILocation(line: 132, column: 100, scope: !3850, inlinedAt: !3948)
!3950 = !DILocation(line: 132, column: 110, scope: !3850, inlinedAt: !3948)
!3951 = !DILocation(line: 134, column: 7, scope: !3952, inlinedAt: !3948)
!3952 = !DILexicalBlockFile(scope: !3870, file: !3804, discriminator: 2)
!3953 = !DILocation(line: 134, column: 7, scope: !3954, inlinedAt: !3948)
!3954 = !DILexicalBlockFile(scope: !3850, file: !3804, discriminator: 2)
!3955 = !DILocation(line: 118, column: 41, scope: !3872, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 139, column: 16, scope: !3885, inlinedAt: !3948)
!3957 = !DILocation(line: 118, column: 90, scope: !3872, inlinedAt: !3956)
!3958 = !DILocation(line: 118, column: 100, scope: !3872, inlinedAt: !3956)
!3959 = !DILocation(line: 120, column: 7, scope: !3890, inlinedAt: !3956)
!3960 = !DILocation(line: 120, column: 7, scope: !3893, inlinedAt: !3956)
!3961 = !DILocation(line: 104, column: 41, scope: !3895, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 125, column: 16, scope: !3907, inlinedAt: !3956)
!3963 = !DILocation(line: 104, column: 80, scope: !3895, inlinedAt: !3962)
!3964 = !DILocation(line: 104, column: 90, scope: !3895, inlinedAt: !3962)
!3965 = !DILocation(line: 106, column: 7, scope: !3912, inlinedAt: !3962)
!3966 = !DILocation(line: 106, column: 7, scope: !3915, inlinedAt: !3962)
!3967 = !DILocation(line: 90, column: 41, scope: !3917, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 111, column: 16, scope: !3928, inlinedAt: !3962)
!3969 = !DILocation(line: 90, column: 70, scope: !3917, inlinedAt: !3968)
!3970 = !DILocation(line: 90, column: 80, scope: !3917, inlinedAt: !3968)
!3971 = !DILocation(line: 92, column: 7, scope: !3933, inlinedAt: !3968)
!3972 = !DILocation(line: 92, column: 7, scope: !3936, inlinedAt: !3968)
!3973 = !DILocalVariable(name: "s2", arg: 2, scope: !3974, file: !3804, line: 76, type: !62)
!3974 = distinct !DISubprogram(name: "strcaseeq6", scope: !3804, file: !3804, line: 76, type: !3975, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!64, !62, !62, !52, !52, !52}
!3977 = !{!3978, !3973, !3979, !3980, !3981}
!3978 = !DILocalVariable(name: "s1", arg: 1, scope: !3974, file: !3804, line: 76, type: !62)
!3979 = !DILocalVariable(name: "s26", arg: 3, scope: !3974, file: !3804, line: 76, type: !52)
!3980 = !DILocalVariable(name: "s27", arg: 4, scope: !3974, file: !3804, line: 76, type: !52)
!3981 = !DILocalVariable(name: "s28", arg: 5, scope: !3974, file: !3804, line: 76, type: !52)
!3982 = !DILocation(line: 76, column: 41, scope: !3974, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 97, column: 16, scope: !3984, inlinedAt: !3968)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !3804, line: 94, column: 11)
!3985 = distinct !DILexicalBlock(scope: !3934, file: !3804, line: 93, column: 5)
!3986 = !DILocation(line: 76, column: 60, scope: !3974, inlinedAt: !3983)
!3987 = !DILocation(line: 76, column: 70, scope: !3974, inlinedAt: !3983)
!3988 = !DILocation(line: 78, column: 7, scope: !3989, inlinedAt: !3983)
!3989 = !DILexicalBlockFile(scope: !3990, file: !3804, discriminator: 2)
!3990 = distinct !DILexicalBlock(scope: !3974, file: !3804, line: 78, column: 7)
!3991 = !DILocation(line: 78, column: 7, scope: !3992, inlinedAt: !3983)
!3992 = !DILexicalBlockFile(scope: !3974, file: !3804, discriminator: 2)
!3993 = !DILocalVariable(name: "s2", arg: 2, scope: !3994, file: !3804, line: 62, type: !62)
!3994 = distinct !DISubprogram(name: "strcaseeq7", scope: !3804, file: !3804, line: 62, type: !3995, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!64, !62, !62, !52, !52}
!3997 = !{!3998, !3993, !3999, !4000}
!3998 = !DILocalVariable(name: "s1", arg: 1, scope: !3994, file: !3804, line: 62, type: !62)
!3999 = !DILocalVariable(name: "s27", arg: 3, scope: !3994, file: !3804, line: 62, type: !52)
!4000 = !DILocalVariable(name: "s28", arg: 4, scope: !3994, file: !3804, line: 62, type: !52)
!4001 = !DILocation(line: 62, column: 41, scope: !3994, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 83, column: 16, scope: !4003, inlinedAt: !3983)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3804, line: 80, column: 11)
!4004 = distinct !DILexicalBlock(scope: !3990, file: !3804, line: 79, column: 5)
!4005 = !DILocation(line: 62, column: 50, scope: !3994, inlinedAt: !4002)
!4006 = !DILocation(line: 62, column: 60, scope: !3994, inlinedAt: !4002)
!4007 = !DILocation(line: 64, column: 7, scope: !4008, inlinedAt: !4002)
!4008 = !DILexicalBlockFile(scope: !4009, file: !3804, discriminator: 2)
!4009 = distinct !DILexicalBlock(scope: !3994, file: !3804, line: 64, column: 7)
!4010 = !DILocation(line: 228, column: 7, scope: !3785)
!4011 = !DILocation(line: 229, column: 12, scope: !3943)
!4012 = !DILocation(line: 229, column: 21, scope: !3943)
!4013 = !DILocation(line: 229, column: 5, scope: !3943)
!4014 = !DILocation(line: 231, column: 13, scope: !3785)
!4015 = !DILocation(line: 231, column: 11, scope: !3785)
!4016 = !DILocation(line: 231, column: 3, scope: !3785)
!4017 = !DILocation(line: 232, column: 1, scope: !3785)
!4018 = distinct !DISubprogram(name: "quotearg_alloc", scope: !425, file: !425, line: 791, type: !4019, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!51, !62, !54, !2867}
!4021 = !{!4022, !4023, !4024}
!4022 = !DILocalVariable(name: "arg", arg: 1, scope: !4018, file: !425, line: 791, type: !62)
!4023 = !DILocalVariable(name: "argsize", arg: 2, scope: !4018, file: !425, line: 791, type: !54)
!4024 = !DILocalVariable(name: "o", arg: 3, scope: !4018, file: !425, line: 792, type: !2867)
!4025 = !DILocation(line: 791, column: 29, scope: !4018)
!4026 = !DILocation(line: 791, column: 41, scope: !4018)
!4027 = !DILocation(line: 792, column: 47, scope: !4018)
!4028 = !DILocalVariable(name: "arg", arg: 1, scope: !4029, file: !425, line: 804, type: !62)
!4029 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !425, file: !425, line: 804, type: !4030, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!51, !62, !54, !135, !2867}
!4032 = !{!4028, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040}
!4033 = !DILocalVariable(name: "argsize", arg: 2, scope: !4029, file: !425, line: 804, type: !54)
!4034 = !DILocalVariable(name: "size", arg: 3, scope: !4029, file: !425, line: 804, type: !135)
!4035 = !DILocalVariable(name: "o", arg: 4, scope: !4029, file: !425, line: 805, type: !2867)
!4036 = !DILocalVariable(name: "p", scope: !4029, file: !425, line: 807, type: !2867)
!4037 = !DILocalVariable(name: "e", scope: !4029, file: !425, line: 808, type: !64)
!4038 = !DILocalVariable(name: "flags", scope: !4029, file: !425, line: 810, type: !64)
!4039 = !DILocalVariable(name: "bufsize", scope: !4029, file: !425, line: 811, type: !54)
!4040 = !DILocalVariable(name: "buf", scope: !4029, file: !425, line: 815, type: !51)
!4041 = !DILocation(line: 804, column: 33, scope: !4029, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 794, column: 10, scope: !4018)
!4043 = !DILocation(line: 804, column: 45, scope: !4029, inlinedAt: !4042)
!4044 = !DILocation(line: 804, column: 62, scope: !4029, inlinedAt: !4042)
!4045 = !DILocation(line: 805, column: 51, scope: !4029, inlinedAt: !4042)
!4046 = !DILocation(line: 807, column: 37, scope: !4029, inlinedAt: !4042)
!4047 = !DILocation(line: 807, column: 33, scope: !4029, inlinedAt: !4042)
!4048 = !DILocation(line: 808, column: 11, scope: !4029, inlinedAt: !4042)
!4049 = !DILocation(line: 808, column: 7, scope: !4029, inlinedAt: !4042)
!4050 = !DILocation(line: 810, column: 18, scope: !4029, inlinedAt: !4042)
!4051 = !DILocation(line: 810, column: 24, scope: !4029, inlinedAt: !4042)
!4052 = !DILocation(line: 810, column: 7, scope: !4029, inlinedAt: !4042)
!4053 = !DILocation(line: 811, column: 69, scope: !4029, inlinedAt: !4042)
!4054 = !DILocation(line: 812, column: 53, scope: !4029, inlinedAt: !4042)
!4055 = !DILocation(line: 813, column: 49, scope: !4029, inlinedAt: !4042)
!4056 = !DILocation(line: 814, column: 49, scope: !4029, inlinedAt: !4042)
!4057 = !DILocation(line: 811, column: 20, scope: !4029, inlinedAt: !4042)
!4058 = !DILocation(line: 814, column: 62, scope: !4029, inlinedAt: !4042)
!4059 = !DILocation(line: 811, column: 10, scope: !4029, inlinedAt: !4042)
!4060 = !DILocalVariable(name: "n", arg: 1, scope: !4061, file: !1098, line: 220, type: !54)
!4061 = distinct !DISubprogram(name: "xcharalloc", scope: !1098, file: !1098, line: 220, type: !4062, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!51, !54}
!4064 = !{!4060}
!4065 = !DILocation(line: 220, column: 20, scope: !4061, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 815, column: 15, scope: !4029, inlinedAt: !4042)
!4067 = !DILocation(line: 222, column: 10, scope: !4061, inlinedAt: !4066)
!4068 = !DILocation(line: 815, column: 9, scope: !4029, inlinedAt: !4042)
!4069 = !DILocation(line: 816, column: 60, scope: !4029, inlinedAt: !4042)
!4070 = !DILocation(line: 818, column: 32, scope: !4029, inlinedAt: !4042)
!4071 = !DILocation(line: 818, column: 47, scope: !4029, inlinedAt: !4042)
!4072 = !DILocation(line: 816, column: 3, scope: !4029, inlinedAt: !4042)
!4073 = !DILocation(line: 819, column: 9, scope: !4029, inlinedAt: !4042)
!4074 = !DILocation(line: 794, column: 3, scope: !4018)
!4075 = !DILocation(line: 804, column: 33, scope: !4029)
!4076 = !DILocation(line: 804, column: 45, scope: !4029)
!4077 = !DILocation(line: 804, column: 62, scope: !4029)
!4078 = !DILocation(line: 805, column: 51, scope: !4029)
!4079 = !DILocation(line: 807, column: 37, scope: !4029)
!4080 = !DILocation(line: 807, column: 33, scope: !4029)
!4081 = !DILocation(line: 808, column: 11, scope: !4029)
!4082 = !DILocation(line: 808, column: 7, scope: !4029)
!4083 = !DILocation(line: 810, column: 18, scope: !4029)
!4084 = !DILocation(line: 810, column: 27, scope: !4029)
!4085 = !DILocation(line: 810, column: 24, scope: !4029)
!4086 = !DILocation(line: 810, column: 7, scope: !4029)
!4087 = !DILocation(line: 811, column: 69, scope: !4029)
!4088 = !DILocation(line: 812, column: 53, scope: !4029)
!4089 = !DILocation(line: 813, column: 49, scope: !4029)
!4090 = !DILocation(line: 814, column: 49, scope: !4029)
!4091 = !DILocation(line: 811, column: 20, scope: !4029)
!4092 = !DILocation(line: 814, column: 62, scope: !4029)
!4093 = !DILocation(line: 811, column: 10, scope: !4029)
!4094 = !DILocation(line: 220, column: 20, scope: !4061, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 815, column: 15, scope: !4029)
!4096 = !DILocation(line: 222, column: 10, scope: !4061, inlinedAt: !4095)
!4097 = !DILocation(line: 815, column: 9, scope: !4029)
!4098 = !DILocation(line: 816, column: 60, scope: !4029)
!4099 = !DILocation(line: 818, column: 32, scope: !4029)
!4100 = !DILocation(line: 818, column: 47, scope: !4029)
!4101 = !DILocation(line: 816, column: 3, scope: !4029)
!4102 = !DILocation(line: 819, column: 9, scope: !4029)
!4103 = !DILocation(line: 820, column: 7, scope: !4029)
!4104 = !DILocation(line: 821, column: 11, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4029, file: !425, line: 820, column: 7)
!4106 = !DILocation(line: 821, column: 5, scope: !4105)
!4107 = !DILocation(line: 822, column: 3, scope: !4029)
!4108 = distinct !DISubprogram(name: "quotearg_free", scope: !425, file: !425, line: 840, type: !479, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4109)
!4109 = !{!4110, !4111}
!4110 = !DILocalVariable(name: "sv", scope: !4108, file: !425, line: 842, type: !449)
!4111 = !DILocalVariable(name: "i", scope: !4108, file: !425, line: 843, type: !64)
!4112 = !DILocation(line: 842, column: 24, scope: !4108)
!4113 = !DILocation(line: 842, column: 19, scope: !4108)
!4114 = !DILocation(line: 843, column: 7, scope: !4108)
!4115 = !DILocation(line: 844, column: 19, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4117, file: !425, discriminator: 1)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !425, line: 844, column: 3)
!4118 = distinct !DILexicalBlock(scope: !4108, file: !425, line: 844, column: 3)
!4119 = !DILocation(line: 844, column: 17, scope: !4116)
!4120 = !DILocation(line: 844, column: 3, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !4118, file: !425, discriminator: 1)
!4122 = !DILocation(line: 845, column: 17, scope: !4117)
!4123 = !{!4124, !1147, i64 8}
!4124 = !{!"slotvec", !1209, i64 0, !1147, i64 8}
!4125 = !DILocation(line: 845, column: 5, scope: !4117)
!4126 = !DILocation(line: 844, column: 28, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4117, file: !425, discriminator: 2)
!4128 = distinct !{!4128, !4129, !4130}
!4129 = !DILocation(line: 844, column: 3, scope: !4118)
!4130 = !DILocation(line: 845, column: 20, scope: !4118)
!4131 = !DILocation(line: 846, column: 13, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4108, file: !425, line: 846, column: 7)
!4133 = !DILocation(line: 846, column: 17, scope: !4132)
!4134 = !DILocation(line: 846, column: 7, scope: !4108)
!4135 = !DILocation(line: 848, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !425, line: 847, column: 5)
!4137 = !DILocation(line: 849, column: 21, scope: !4136)
!4138 = !{!4124, !1209, i64 0}
!4139 = !DILocation(line: 850, column: 20, scope: !4136)
!4140 = !DILocation(line: 851, column: 5, scope: !4136)
!4141 = !DILocation(line: 852, column: 10, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4108, file: !425, line: 852, column: 7)
!4143 = !DILocation(line: 852, column: 7, scope: !4108)
!4144 = !DILocation(line: 854, column: 13, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4142, file: !425, line: 853, column: 5)
!4146 = !DILocation(line: 854, column: 7, scope: !4145)
!4147 = !DILocation(line: 855, column: 15, scope: !4145)
!4148 = !DILocation(line: 856, column: 5, scope: !4145)
!4149 = !DILocation(line: 857, column: 10, scope: !4108)
!4150 = !DILocation(line: 858, column: 1, scope: !4108)
!4151 = distinct !DISubprogram(name: "quotearg_n", scope: !425, file: !425, line: 922, type: !4152, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!51, !64, !62}
!4154 = !{!4155, !4156}
!4155 = !DILocalVariable(name: "n", arg: 1, scope: !4151, file: !425, line: 922, type: !64)
!4156 = !DILocalVariable(name: "arg", arg: 2, scope: !4151, file: !425, line: 922, type: !62)
!4157 = !DILocation(line: 922, column: 17, scope: !4151)
!4158 = !DILocation(line: 922, column: 32, scope: !4151)
!4159 = !DILocation(line: 924, column: 10, scope: !4151)
!4160 = !DILocation(line: 924, column: 3, scope: !4151)
!4161 = distinct !DISubprogram(name: "quotearg_n_options", scope: !425, file: !425, line: 869, type: !4162, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!51, !64, !62, !54, !2867}
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4174, !4176, !4177, !4178}
!4165 = !DILocalVariable(name: "n", arg: 1, scope: !4161, file: !425, line: 869, type: !64)
!4166 = !DILocalVariable(name: "arg", arg: 2, scope: !4161, file: !425, line: 869, type: !62)
!4167 = !DILocalVariable(name: "argsize", arg: 3, scope: !4161, file: !425, line: 869, type: !54)
!4168 = !DILocalVariable(name: "options", arg: 4, scope: !4161, file: !425, line: 870, type: !2867)
!4169 = !DILocalVariable(name: "e", scope: !4161, file: !425, line: 872, type: !64)
!4170 = !DILocalVariable(name: "sv", scope: !4161, file: !425, line: 874, type: !449)
!4171 = !DILocalVariable(name: "preallocated", scope: !4172, file: !425, line: 881, type: !77)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !425, line: 880, column: 5)
!4173 = distinct !DILexicalBlock(scope: !4161, file: !425, line: 879, column: 7)
!4174 = !DILocalVariable(name: "size", scope: !4175, file: !425, line: 894, type: !54)
!4175 = distinct !DILexicalBlock(scope: !4161, file: !425, line: 893, column: 3)
!4176 = !DILocalVariable(name: "val", scope: !4175, file: !425, line: 895, type: !51)
!4177 = !DILocalVariable(name: "flags", scope: !4175, file: !425, line: 897, type: !64)
!4178 = !DILocalVariable(name: "qsize", scope: !4175, file: !425, line: 898, type: !54)
!4179 = !DILocation(line: 869, column: 25, scope: !4161)
!4180 = !DILocation(line: 869, column: 40, scope: !4161)
!4181 = !DILocation(line: 869, column: 52, scope: !4161)
!4182 = !DILocation(line: 870, column: 51, scope: !4161)
!4183 = !DILocation(line: 872, column: 11, scope: !4161)
!4184 = !DILocation(line: 872, column: 7, scope: !4161)
!4185 = !DILocation(line: 874, column: 24, scope: !4161)
!4186 = !DILocation(line: 874, column: 19, scope: !4161)
!4187 = !DILocation(line: 876, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4161, file: !425, line: 876, column: 7)
!4189 = !DILocation(line: 876, column: 7, scope: !4161)
!4190 = !DILocation(line: 877, column: 5, scope: !4188)
!4191 = !DILocation(line: 879, column: 7, scope: !4173)
!4192 = !DILocation(line: 879, column: 14, scope: !4173)
!4193 = !DILocation(line: 879, column: 7, scope: !4161)
!4194 = !DILocation(line: 881, column: 31, scope: !4172)
!4195 = !DILocation(line: 883, column: 67, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4172, file: !425, line: 883, column: 11)
!4197 = !DILocation(line: 883, column: 11, scope: !4172)
!4198 = !DILocation(line: 884, column: 9, scope: !4196)
!4199 = !DILocation(line: 886, column: 32, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !4172, file: !425, discriminator: 3)
!4201 = !DILocation(line: 886, column: 61, scope: !4200)
!4202 = !DILocation(line: 886, column: 58, scope: !4200)
!4203 = !DILocation(line: 886, column: 66, scope: !4200)
!4204 = !DILocation(line: 886, column: 22, scope: !4200)
!4205 = !DILocation(line: 886, column: 15, scope: !4200)
!4206 = !DILocation(line: 887, column: 11, scope: !4172)
!4207 = !DILocation(line: 888, column: 15, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4172, file: !425, line: 887, column: 11)
!4209 = !{i64 0, i64 8, !1208, i64 8, i64 8, !1146}
!4210 = !DILocation(line: 888, column: 9, scope: !4208)
!4211 = !DILocation(line: 889, column: 20, scope: !4172)
!4212 = !DILocation(line: 889, column: 18, scope: !4172)
!4213 = !DILocation(line: 889, column: 7, scope: !4172)
!4214 = !DILocation(line: 889, column: 38, scope: !4172)
!4215 = !DILocation(line: 889, column: 31, scope: !4172)
!4216 = !DILocation(line: 889, column: 48, scope: !4172)
!4217 = !DILocation(line: 890, column: 14, scope: !4172)
!4218 = !DILocation(line: 891, column: 5, scope: !4172)
!4219 = !DILocation(line: 894, column: 19, scope: !4175)
!4220 = !DILocation(line: 894, column: 25, scope: !4175)
!4221 = !DILocation(line: 894, column: 12, scope: !4175)
!4222 = !DILocation(line: 895, column: 23, scope: !4175)
!4223 = !DILocation(line: 895, column: 11, scope: !4175)
!4224 = !DILocation(line: 897, column: 26, scope: !4175)
!4225 = !DILocation(line: 897, column: 32, scope: !4175)
!4226 = !DILocation(line: 897, column: 9, scope: !4175)
!4227 = !DILocation(line: 899, column: 55, scope: !4175)
!4228 = !DILocation(line: 900, column: 46, scope: !4175)
!4229 = !DILocation(line: 901, column: 55, scope: !4175)
!4230 = !DILocation(line: 902, column: 55, scope: !4175)
!4231 = !DILocation(line: 898, column: 20, scope: !4175)
!4232 = !DILocation(line: 898, column: 12, scope: !4175)
!4233 = !DILocation(line: 904, column: 14, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4175, file: !425, line: 904, column: 9)
!4235 = !DILocation(line: 904, column: 9, scope: !4175)
!4236 = !DILocation(line: 906, column: 35, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4234, file: !425, line: 905, column: 7)
!4238 = !DILocation(line: 906, column: 20, scope: !4237)
!4239 = !DILocation(line: 907, column: 17, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !425, line: 907, column: 13)
!4241 = !DILocation(line: 907, column: 13, scope: !4237)
!4242 = !DILocation(line: 908, column: 11, scope: !4240)
!4243 = !DILocation(line: 220, column: 20, scope: !4061, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 909, column: 27, scope: !4237)
!4245 = !DILocation(line: 222, column: 10, scope: !4061, inlinedAt: !4244)
!4246 = !DILocation(line: 909, column: 19, scope: !4237)
!4247 = !DILocation(line: 910, column: 69, scope: !4237)
!4248 = !DILocation(line: 912, column: 44, scope: !4237)
!4249 = !DILocation(line: 913, column: 44, scope: !4237)
!4250 = !DILocation(line: 910, column: 9, scope: !4237)
!4251 = !DILocation(line: 914, column: 7, scope: !4237)
!4252 = !DILocation(line: 916, column: 11, scope: !4175)
!4253 = !DILocation(line: 917, column: 5, scope: !4175)
!4254 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !425, file: !425, line: 928, type: !4255, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!51, !64, !62, !54}
!4257 = !{!4258, !4259, !4260}
!4258 = !DILocalVariable(name: "n", arg: 1, scope: !4254, file: !425, line: 928, type: !64)
!4259 = !DILocalVariable(name: "arg", arg: 2, scope: !4254, file: !425, line: 928, type: !62)
!4260 = !DILocalVariable(name: "argsize", arg: 3, scope: !4254, file: !425, line: 928, type: !54)
!4261 = !DILocation(line: 928, column: 21, scope: !4254)
!4262 = !DILocation(line: 928, column: 36, scope: !4254)
!4263 = !DILocation(line: 928, column: 48, scope: !4254)
!4264 = !DILocation(line: 930, column: 10, scope: !4254)
!4265 = !DILocation(line: 930, column: 3, scope: !4254)
!4266 = distinct !DISubprogram(name: "quotearg", scope: !425, file: !425, line: 934, type: !4267, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!51, !62}
!4269 = !{!4270}
!4270 = !DILocalVariable(name: "arg", arg: 1, scope: !4266, file: !425, line: 934, type: !62)
!4271 = !DILocation(line: 934, column: 23, scope: !4266)
!4272 = !DILocation(line: 922, column: 17, scope: !4151, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 936, column: 10, scope: !4266)
!4274 = !DILocation(line: 922, column: 32, scope: !4151, inlinedAt: !4273)
!4275 = !DILocation(line: 924, column: 10, scope: !4151, inlinedAt: !4273)
!4276 = !DILocation(line: 936, column: 3, scope: !4266)
!4277 = distinct !DISubprogram(name: "quotearg_mem", scope: !425, file: !425, line: 940, type: !4278, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!51, !62, !54}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "arg", arg: 1, scope: !4277, file: !425, line: 940, type: !62)
!4282 = !DILocalVariable(name: "argsize", arg: 2, scope: !4277, file: !425, line: 940, type: !54)
!4283 = !DILocation(line: 940, column: 27, scope: !4277)
!4284 = !DILocation(line: 940, column: 39, scope: !4277)
!4285 = !DILocation(line: 928, column: 21, scope: !4254, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 942, column: 10, scope: !4277)
!4287 = !DILocation(line: 928, column: 36, scope: !4254, inlinedAt: !4286)
!4288 = !DILocation(line: 928, column: 48, scope: !4254, inlinedAt: !4286)
!4289 = !DILocation(line: 930, column: 10, scope: !4254, inlinedAt: !4286)
!4290 = !DILocation(line: 942, column: 3, scope: !4277)
!4291 = distinct !DISubprogram(name: "quotearg_n_style", scope: !425, file: !425, line: 946, type: !4292, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!51, !64, !5, !62}
!4294 = !{!4295, !4296, !4297, !4298}
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4291, file: !425, line: 946, type: !64)
!4296 = !DILocalVariable(name: "s", arg: 2, scope: !4291, file: !425, line: 946, type: !5)
!4297 = !DILocalVariable(name: "arg", arg: 3, scope: !4291, file: !425, line: 946, type: !62)
!4298 = !DILocalVariable(name: "o", scope: !4291, file: !425, line: 948, type: !2868)
!4299 = !DILocalVariable(name: "o", scope: !4300, file: !425, line: 187, type: !432)
!4300 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !425, file: !425, line: 185, type: !4301, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!432, !5}
!4303 = !{!4304, !4299}
!4304 = !DILocalVariable(name: "style", arg: 1, scope: !4300, file: !425, line: 185, type: !5)
!4305 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4306 = !DILocation(line: 187, column: 26, scope: !4300, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 948, column: 36, scope: !4291)
!4308 = !DILocation(line: 946, column: 23, scope: !4291)
!4309 = !DILocation(line: 946, column: 45, scope: !4291)
!4310 = !DILocation(line: 946, column: 60, scope: !4291)
!4311 = !DILocation(line: 948, column: 3, scope: !4291)
!4312 = !DILocation(line: 948, column: 32, scope: !4291)
!4313 = !DILocation(line: 185, column: 48, scope: !4300, inlinedAt: !4307)
!4314 = !DILocation(line: 187, column: 3, scope: !4300, inlinedAt: !4307)
!4315 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4316 = !DILocation(line: 188, column: 13, scope: !4317, inlinedAt: !4307)
!4317 = distinct !DILexicalBlock(scope: !4300, file: !425, line: 188, column: 7)
!4318 = !DILocation(line: 188, column: 7, scope: !4300, inlinedAt: !4307)
!4319 = !DILocation(line: 189, column: 5, scope: !4317, inlinedAt: !4307)
!4320 = !{!4321}
!4321 = distinct !{!4321, !4322, !"quoting_options_from_style: argument 0"}
!4322 = distinct !{!4322, !"quoting_options_from_style"}
!4323 = !DILocation(line: 191, column: 10, scope: !4300, inlinedAt: !4307)
!4324 = !DILocation(line: 192, column: 1, scope: !4300, inlinedAt: !4307)
!4325 = !DILocation(line: 949, column: 10, scope: !4291)
!4326 = !DILocation(line: 950, column: 1, scope: !4291)
!4327 = !DILocation(line: 949, column: 3, scope: !4291)
!4328 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !425, file: !425, line: 953, type: !4329, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!51, !64, !5, !62, !54}
!4331 = !{!4332, !4333, !4334, !4335, !4336}
!4332 = !DILocalVariable(name: "n", arg: 1, scope: !4328, file: !425, line: 953, type: !64)
!4333 = !DILocalVariable(name: "s", arg: 2, scope: !4328, file: !425, line: 953, type: !5)
!4334 = !DILocalVariable(name: "arg", arg: 3, scope: !4328, file: !425, line: 954, type: !62)
!4335 = !DILocalVariable(name: "argsize", arg: 4, scope: !4328, file: !425, line: 954, type: !54)
!4336 = !DILocalVariable(name: "o", scope: !4328, file: !425, line: 956, type: !2868)
!4337 = !DILocation(line: 187, column: 26, scope: !4300, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 956, column: 36, scope: !4328)
!4339 = !DILocation(line: 953, column: 27, scope: !4328)
!4340 = !DILocation(line: 953, column: 49, scope: !4328)
!4341 = !DILocation(line: 954, column: 35, scope: !4328)
!4342 = !DILocation(line: 954, column: 47, scope: !4328)
!4343 = !DILocation(line: 956, column: 3, scope: !4328)
!4344 = !DILocation(line: 956, column: 32, scope: !4328)
!4345 = !DILocation(line: 185, column: 48, scope: !4300, inlinedAt: !4338)
!4346 = !DILocation(line: 187, column: 3, scope: !4300, inlinedAt: !4338)
!4347 = !DILocation(line: 188, column: 13, scope: !4317, inlinedAt: !4338)
!4348 = !DILocation(line: 188, column: 7, scope: !4300, inlinedAt: !4338)
!4349 = !DILocation(line: 189, column: 5, scope: !4317, inlinedAt: !4338)
!4350 = !{!4351}
!4351 = distinct !{!4351, !4352, !"quoting_options_from_style: argument 0"}
!4352 = distinct !{!4352, !"quoting_options_from_style"}
!4353 = !DILocation(line: 191, column: 10, scope: !4300, inlinedAt: !4338)
!4354 = !DILocation(line: 192, column: 1, scope: !4300, inlinedAt: !4338)
!4355 = !DILocation(line: 957, column: 10, scope: !4328)
!4356 = !DILocation(line: 958, column: 1, scope: !4328)
!4357 = !DILocation(line: 957, column: 3, scope: !4328)
!4358 = distinct !DISubprogram(name: "quotearg_style", scope: !425, file: !425, line: 961, type: !4359, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!51, !5, !62}
!4361 = !{!4362, !4363}
!4362 = !DILocalVariable(name: "s", arg: 1, scope: !4358, file: !425, line: 961, type: !5)
!4363 = !DILocalVariable(name: "arg", arg: 2, scope: !4358, file: !425, line: 961, type: !62)
!4364 = !DILocation(line: 187, column: 26, scope: !4300, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 948, column: 36, scope: !4291, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 963, column: 10, scope: !4358)
!4367 = !DILocation(line: 961, column: 36, scope: !4358)
!4368 = !DILocation(line: 961, column: 51, scope: !4358)
!4369 = !DILocation(line: 946, column: 23, scope: !4291, inlinedAt: !4366)
!4370 = !DILocation(line: 946, column: 45, scope: !4291, inlinedAt: !4366)
!4371 = !DILocation(line: 946, column: 60, scope: !4291, inlinedAt: !4366)
!4372 = !DILocation(line: 948, column: 3, scope: !4291, inlinedAt: !4366)
!4373 = !DILocation(line: 948, column: 32, scope: !4291, inlinedAt: !4366)
!4374 = !DILocation(line: 185, column: 48, scope: !4300, inlinedAt: !4365)
!4375 = !DILocation(line: 187, column: 3, scope: !4300, inlinedAt: !4365)
!4376 = !DILocation(line: 188, column: 13, scope: !4317, inlinedAt: !4365)
!4377 = !DILocation(line: 188, column: 7, scope: !4300, inlinedAt: !4365)
!4378 = !DILocation(line: 189, column: 5, scope: !4317, inlinedAt: !4365)
!4379 = !{!4380}
!4380 = distinct !{!4380, !4381, !"quoting_options_from_style: argument 0"}
!4381 = distinct !{!4381, !"quoting_options_from_style"}
!4382 = !DILocation(line: 191, column: 10, scope: !4300, inlinedAt: !4365)
!4383 = !DILocation(line: 192, column: 1, scope: !4300, inlinedAt: !4365)
!4384 = !DILocation(line: 949, column: 10, scope: !4291, inlinedAt: !4366)
!4385 = !DILocation(line: 950, column: 1, scope: !4291, inlinedAt: !4366)
!4386 = !DILocation(line: 963, column: 3, scope: !4358)
!4387 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !425, file: !425, line: 967, type: !4388, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4390)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!51, !5, !62, !54}
!4390 = !{!4391, !4392, !4393}
!4391 = !DILocalVariable(name: "s", arg: 1, scope: !4387, file: !425, line: 967, type: !5)
!4392 = !DILocalVariable(name: "arg", arg: 2, scope: !4387, file: !425, line: 967, type: !62)
!4393 = !DILocalVariable(name: "argsize", arg: 3, scope: !4387, file: !425, line: 967, type: !54)
!4394 = !DILocation(line: 187, column: 26, scope: !4300, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 956, column: 36, scope: !4328, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 969, column: 10, scope: !4387)
!4397 = !DILocation(line: 967, column: 40, scope: !4387)
!4398 = !DILocation(line: 967, column: 55, scope: !4387)
!4399 = !DILocation(line: 967, column: 67, scope: !4387)
!4400 = !DILocation(line: 953, column: 27, scope: !4328, inlinedAt: !4396)
!4401 = !DILocation(line: 953, column: 49, scope: !4328, inlinedAt: !4396)
!4402 = !DILocation(line: 954, column: 35, scope: !4328, inlinedAt: !4396)
!4403 = !DILocation(line: 954, column: 47, scope: !4328, inlinedAt: !4396)
!4404 = !DILocation(line: 956, column: 3, scope: !4328, inlinedAt: !4396)
!4405 = !DILocation(line: 956, column: 32, scope: !4328, inlinedAt: !4396)
!4406 = !DILocation(line: 185, column: 48, scope: !4300, inlinedAt: !4395)
!4407 = !DILocation(line: 187, column: 3, scope: !4300, inlinedAt: !4395)
!4408 = !DILocation(line: 188, column: 13, scope: !4317, inlinedAt: !4395)
!4409 = !DILocation(line: 188, column: 7, scope: !4300, inlinedAt: !4395)
!4410 = !DILocation(line: 189, column: 5, scope: !4317, inlinedAt: !4395)
!4411 = !{!4412}
!4412 = distinct !{!4412, !4413, !"quoting_options_from_style: argument 0"}
!4413 = distinct !{!4413, !"quoting_options_from_style"}
!4414 = !DILocation(line: 191, column: 10, scope: !4300, inlinedAt: !4395)
!4415 = !DILocation(line: 192, column: 1, scope: !4300, inlinedAt: !4395)
!4416 = !DILocation(line: 957, column: 10, scope: !4328, inlinedAt: !4396)
!4417 = !DILocation(line: 958, column: 1, scope: !4328, inlinedAt: !4396)
!4418 = !DILocation(line: 969, column: 3, scope: !4387)
!4419 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !425, file: !425, line: 973, type: !4420, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!51, !62, !54, !52}
!4422 = !{!4423, !4424, !4425, !4426}
!4423 = !DILocalVariable(name: "arg", arg: 1, scope: !4419, file: !425, line: 973, type: !62)
!4424 = !DILocalVariable(name: "argsize", arg: 2, scope: !4419, file: !425, line: 973, type: !54)
!4425 = !DILocalVariable(name: "ch", arg: 3, scope: !4419, file: !425, line: 973, type: !52)
!4426 = !DILocalVariable(name: "options", scope: !4419, file: !425, line: 975, type: !432)
!4427 = !DILocation(line: 973, column: 32, scope: !4419)
!4428 = !DILocation(line: 973, column: 44, scope: !4419)
!4429 = !DILocation(line: 973, column: 58, scope: !4419)
!4430 = !DILocation(line: 975, column: 3, scope: !4419)
!4431 = !DILocation(line: 976, column: 13, scope: !4419)
!4432 = !{i64 0, i64 4, !1267, i64 4, i64 4, !1248, i64 8, i64 32, !1267, i64 40, i64 8, !1146, i64 48, i64 8, !1146}
!4433 = !DILocation(line: 975, column: 26, scope: !4419)
!4434 = !DILocation(line: 144, column: 43, scope: !2891, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 977, column: 3, scope: !4419)
!4436 = !DILocation(line: 144, column: 51, scope: !2891, inlinedAt: !4435)
!4437 = !DILocation(line: 144, column: 58, scope: !2891, inlinedAt: !4435)
!4438 = !DILocation(line: 146, column: 17, scope: !2891, inlinedAt: !4435)
!4439 = !DILocation(line: 148, column: 62, scope: !2909, inlinedAt: !4435)
!4440 = !DILocation(line: 148, column: 57, scope: !2909, inlinedAt: !4435)
!4441 = !DILocation(line: 147, column: 17, scope: !2891, inlinedAt: !4435)
!4442 = !DILocation(line: 149, column: 18, scope: !2891, inlinedAt: !4435)
!4443 = !DILocation(line: 149, column: 15, scope: !2891, inlinedAt: !4435)
!4444 = !DILocation(line: 149, column: 7, scope: !2891, inlinedAt: !4435)
!4445 = !DILocation(line: 150, column: 12, scope: !2891, inlinedAt: !4435)
!4446 = !DILocation(line: 150, column: 15, scope: !2891, inlinedAt: !4435)
!4447 = !DILocation(line: 150, column: 25, scope: !2891, inlinedAt: !4435)
!4448 = !DILocation(line: 150, column: 7, scope: !2891, inlinedAt: !4435)
!4449 = !DILocation(line: 151, column: 18, scope: !2891, inlinedAt: !4435)
!4450 = !DILocation(line: 151, column: 23, scope: !2891, inlinedAt: !4435)
!4451 = !DILocation(line: 151, column: 6, scope: !2891, inlinedAt: !4435)
!4452 = !DILocation(line: 978, column: 10, scope: !4419)
!4453 = !DILocation(line: 979, column: 1, scope: !4419)
!4454 = !DILocation(line: 978, column: 3, scope: !4419)
!4455 = distinct !DISubprogram(name: "quotearg_char", scope: !425, file: !425, line: 982, type: !4456, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!51, !62, !52}
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "arg", arg: 1, scope: !4455, file: !425, line: 982, type: !62)
!4460 = !DILocalVariable(name: "ch", arg: 2, scope: !4455, file: !425, line: 982, type: !52)
!4461 = !DILocation(line: 982, column: 28, scope: !4455)
!4462 = !DILocation(line: 982, column: 38, scope: !4455)
!4463 = !DILocation(line: 973, column: 32, scope: !4419, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 984, column: 10, scope: !4455)
!4465 = !DILocation(line: 973, column: 44, scope: !4419, inlinedAt: !4464)
!4466 = !DILocation(line: 973, column: 58, scope: !4419, inlinedAt: !4464)
!4467 = !DILocation(line: 975, column: 3, scope: !4419, inlinedAt: !4464)
!4468 = !DILocation(line: 976, column: 13, scope: !4419, inlinedAt: !4464)
!4469 = !DILocation(line: 975, column: 26, scope: !4419, inlinedAt: !4464)
!4470 = !DILocation(line: 144, column: 43, scope: !2891, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 977, column: 3, scope: !4419, inlinedAt: !4464)
!4472 = !DILocation(line: 144, column: 51, scope: !2891, inlinedAt: !4471)
!4473 = !DILocation(line: 144, column: 58, scope: !2891, inlinedAt: !4471)
!4474 = !DILocation(line: 146, column: 17, scope: !2891, inlinedAt: !4471)
!4475 = !DILocation(line: 148, column: 62, scope: !2909, inlinedAt: !4471)
!4476 = !DILocation(line: 148, column: 57, scope: !2909, inlinedAt: !4471)
!4477 = !DILocation(line: 147, column: 17, scope: !2891, inlinedAt: !4471)
!4478 = !DILocation(line: 149, column: 18, scope: !2891, inlinedAt: !4471)
!4479 = !DILocation(line: 149, column: 15, scope: !2891, inlinedAt: !4471)
!4480 = !DILocation(line: 149, column: 7, scope: !2891, inlinedAt: !4471)
!4481 = !DILocation(line: 150, column: 12, scope: !2891, inlinedAt: !4471)
!4482 = !DILocation(line: 150, column: 15, scope: !2891, inlinedAt: !4471)
!4483 = !DILocation(line: 150, column: 25, scope: !2891, inlinedAt: !4471)
!4484 = !DILocation(line: 150, column: 7, scope: !2891, inlinedAt: !4471)
!4485 = !DILocation(line: 151, column: 18, scope: !2891, inlinedAt: !4471)
!4486 = !DILocation(line: 151, column: 23, scope: !2891, inlinedAt: !4471)
!4487 = !DILocation(line: 151, column: 6, scope: !2891, inlinedAt: !4471)
!4488 = !DILocation(line: 978, column: 10, scope: !4419, inlinedAt: !4464)
!4489 = !DILocation(line: 979, column: 1, scope: !4419, inlinedAt: !4464)
!4490 = !DILocation(line: 984, column: 3, scope: !4455)
!4491 = distinct !DISubprogram(name: "quotearg_colon", scope: !425, file: !425, line: 988, type: !4267, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4492)
!4492 = !{!4493}
!4493 = !DILocalVariable(name: "arg", arg: 1, scope: !4491, file: !425, line: 988, type: !62)
!4494 = !DILocation(line: 988, column: 29, scope: !4491)
!4495 = !DILocation(line: 982, column: 28, scope: !4455, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 990, column: 10, scope: !4491)
!4497 = !DILocation(line: 982, column: 38, scope: !4455, inlinedAt: !4496)
!4498 = !DILocation(line: 973, column: 32, scope: !4419, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 984, column: 10, scope: !4455, inlinedAt: !4496)
!4500 = !DILocation(line: 973, column: 44, scope: !4419, inlinedAt: !4499)
!4501 = !DILocation(line: 973, column: 58, scope: !4419, inlinedAt: !4499)
!4502 = !DILocation(line: 975, column: 3, scope: !4419, inlinedAt: !4499)
!4503 = !DILocation(line: 976, column: 13, scope: !4419, inlinedAt: !4499)
!4504 = !DILocation(line: 975, column: 26, scope: !4419, inlinedAt: !4499)
!4505 = !DILocation(line: 144, column: 43, scope: !2891, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 977, column: 3, scope: !4419, inlinedAt: !4499)
!4507 = !DILocation(line: 144, column: 51, scope: !2891, inlinedAt: !4506)
!4508 = !DILocation(line: 144, column: 58, scope: !2891, inlinedAt: !4506)
!4509 = !DILocation(line: 146, column: 17, scope: !2891, inlinedAt: !4506)
!4510 = !DILocation(line: 148, column: 57, scope: !2909, inlinedAt: !4506)
!4511 = !DILocation(line: 147, column: 17, scope: !2891, inlinedAt: !4506)
!4512 = !DILocation(line: 149, column: 7, scope: !2891, inlinedAt: !4506)
!4513 = !DILocation(line: 150, column: 12, scope: !2891, inlinedAt: !4506)
!4514 = !DILocation(line: 151, column: 6, scope: !2891, inlinedAt: !4506)
!4515 = !DILocation(line: 978, column: 10, scope: !4419, inlinedAt: !4499)
!4516 = !DILocation(line: 979, column: 1, scope: !4419, inlinedAt: !4499)
!4517 = !DILocation(line: 990, column: 3, scope: !4491)
!4518 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !425, file: !425, line: 994, type: !4278, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4519)
!4519 = !{!4520, !4521}
!4520 = !DILocalVariable(name: "arg", arg: 1, scope: !4518, file: !425, line: 994, type: !62)
!4521 = !DILocalVariable(name: "argsize", arg: 2, scope: !4518, file: !425, line: 994, type: !54)
!4522 = !DILocation(line: 994, column: 33, scope: !4518)
!4523 = !DILocation(line: 994, column: 45, scope: !4518)
!4524 = !DILocation(line: 973, column: 32, scope: !4419, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 996, column: 10, scope: !4518)
!4526 = !DILocation(line: 973, column: 44, scope: !4419, inlinedAt: !4525)
!4527 = !DILocation(line: 973, column: 58, scope: !4419, inlinedAt: !4525)
!4528 = !DILocation(line: 975, column: 3, scope: !4419, inlinedAt: !4525)
!4529 = !DILocation(line: 976, column: 13, scope: !4419, inlinedAt: !4525)
!4530 = !DILocation(line: 975, column: 26, scope: !4419, inlinedAt: !4525)
!4531 = !DILocation(line: 144, column: 43, scope: !2891, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 977, column: 3, scope: !4419, inlinedAt: !4525)
!4533 = !DILocation(line: 144, column: 51, scope: !2891, inlinedAt: !4532)
!4534 = !DILocation(line: 144, column: 58, scope: !2891, inlinedAt: !4532)
!4535 = !DILocation(line: 146, column: 17, scope: !2891, inlinedAt: !4532)
!4536 = !DILocation(line: 148, column: 57, scope: !2909, inlinedAt: !4532)
!4537 = !DILocation(line: 147, column: 17, scope: !2891, inlinedAt: !4532)
!4538 = !DILocation(line: 149, column: 7, scope: !2891, inlinedAt: !4532)
!4539 = !DILocation(line: 150, column: 12, scope: !2891, inlinedAt: !4532)
!4540 = !DILocation(line: 151, column: 6, scope: !2891, inlinedAt: !4532)
!4541 = !DILocation(line: 978, column: 10, scope: !4419, inlinedAt: !4525)
!4542 = !DILocation(line: 979, column: 1, scope: !4419, inlinedAt: !4525)
!4543 = !DILocation(line: 996, column: 3, scope: !4518)
!4544 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !425, file: !425, line: 1000, type: !4292, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4545)
!4545 = !{!4546, !4547, !4548, !4549}
!4546 = !DILocalVariable(name: "n", arg: 1, scope: !4544, file: !425, line: 1000, type: !64)
!4547 = !DILocalVariable(name: "s", arg: 2, scope: !4544, file: !425, line: 1000, type: !5)
!4548 = !DILocalVariable(name: "arg", arg: 3, scope: !4544, file: !425, line: 1000, type: !62)
!4549 = !DILocalVariable(name: "options", scope: !4544, file: !425, line: 1002, type: !432)
!4550 = !DILocation(line: 187, column: 26, scope: !4300, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 1003, column: 13, scope: !4544)
!4552 = !DILocation(line: 1000, column: 29, scope: !4544)
!4553 = !DILocation(line: 1000, column: 51, scope: !4544)
!4554 = !DILocation(line: 1000, column: 66, scope: !4544)
!4555 = !DILocation(line: 1002, column: 3, scope: !4544)
!4556 = !DILocation(line: 185, column: 48, scope: !4300, inlinedAt: !4551)
!4557 = !DILocation(line: 187, column: 3, scope: !4300, inlinedAt: !4551)
!4558 = !DILocation(line: 188, column: 13, scope: !4317, inlinedAt: !4551)
!4559 = !DILocation(line: 188, column: 7, scope: !4300, inlinedAt: !4551)
!4560 = !DILocation(line: 189, column: 5, scope: !4317, inlinedAt: !4551)
!4561 = !{!4562}
!4562 = distinct !{!4562, !4563, !"quoting_options_from_style: argument 0"}
!4563 = distinct !{!4563, !"quoting_options_from_style"}
!4564 = !DILocation(line: 191, column: 10, scope: !4300, inlinedAt: !4551)
!4565 = !DILocation(line: 192, column: 1, scope: !4300, inlinedAt: !4551)
!4566 = !DILocation(line: 1003, column: 13, scope: !4544)
!4567 = !DILocation(line: 1002, column: 26, scope: !4544)
!4568 = !DILocation(line: 144, column: 43, scope: !2891, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 1004, column: 3, scope: !4544)
!4570 = !DILocation(line: 144, column: 51, scope: !2891, inlinedAt: !4569)
!4571 = !DILocation(line: 144, column: 58, scope: !2891, inlinedAt: !4569)
!4572 = !DILocation(line: 146, column: 17, scope: !2891, inlinedAt: !4569)
!4573 = !DILocation(line: 148, column: 57, scope: !2909, inlinedAt: !4569)
!4574 = !DILocation(line: 147, column: 17, scope: !2891, inlinedAt: !4569)
!4575 = !DILocation(line: 149, column: 7, scope: !2891, inlinedAt: !4569)
!4576 = !DILocation(line: 150, column: 12, scope: !2891, inlinedAt: !4569)
!4577 = !DILocation(line: 151, column: 6, scope: !2891, inlinedAt: !4569)
!4578 = !DILocation(line: 1005, column: 10, scope: !4544)
!4579 = !DILocation(line: 1006, column: 1, scope: !4544)
!4580 = !DILocation(line: 1005, column: 3, scope: !4544)
!4581 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !425, file: !425, line: 1009, type: !4582, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!51, !64, !62, !62, !62}
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "n", arg: 1, scope: !4581, file: !425, line: 1009, type: !64)
!4586 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4581, file: !425, line: 1009, type: !62)
!4587 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4581, file: !425, line: 1010, type: !62)
!4588 = !DILocalVariable(name: "arg", arg: 4, scope: !4581, file: !425, line: 1010, type: !62)
!4589 = !DILocation(line: 1009, column: 24, scope: !4581)
!4590 = !DILocation(line: 1009, column: 39, scope: !4581)
!4591 = !DILocation(line: 1010, column: 32, scope: !4581)
!4592 = !DILocation(line: 1010, column: 57, scope: !4581)
!4593 = !DILocalVariable(name: "n", arg: 1, scope: !4594, file: !425, line: 1017, type: !64)
!4594 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !425, file: !425, line: 1017, type: !4595, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!51, !64, !62, !62, !62, !54}
!4597 = !{!4593, !4598, !4599, !4600, !4601, !4602}
!4598 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4594, file: !425, line: 1017, type: !62)
!4599 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4594, file: !425, line: 1018, type: !62)
!4600 = !DILocalVariable(name: "arg", arg: 4, scope: !4594, file: !425, line: 1019, type: !62)
!4601 = !DILocalVariable(name: "argsize", arg: 5, scope: !4594, file: !425, line: 1019, type: !54)
!4602 = !DILocalVariable(name: "o", scope: !4594, file: !425, line: 1021, type: !432)
!4603 = !DILocation(line: 1017, column: 28, scope: !4594, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 1012, column: 10, scope: !4581)
!4605 = !DILocation(line: 1017, column: 43, scope: !4594, inlinedAt: !4604)
!4606 = !DILocation(line: 1018, column: 36, scope: !4594, inlinedAt: !4604)
!4607 = !DILocation(line: 1019, column: 36, scope: !4594, inlinedAt: !4604)
!4608 = !DILocation(line: 1019, column: 48, scope: !4594, inlinedAt: !4604)
!4609 = !DILocation(line: 1021, column: 3, scope: !4594, inlinedAt: !4604)
!4610 = !DILocation(line: 1021, column: 30, scope: !4594, inlinedAt: !4604)
!4611 = !DILocation(line: 1021, column: 26, scope: !4594, inlinedAt: !4604)
!4612 = !DILocation(line: 171, column: 45, scope: !2941, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 1022, column: 3, scope: !4594, inlinedAt: !4604)
!4614 = !DILocation(line: 172, column: 33, scope: !2941, inlinedAt: !4613)
!4615 = !DILocation(line: 172, column: 57, scope: !2941, inlinedAt: !4613)
!4616 = !DILocation(line: 176, column: 6, scope: !2941, inlinedAt: !4613)
!4617 = !DILocation(line: 176, column: 12, scope: !2941, inlinedAt: !4613)
!4618 = !DILocation(line: 177, column: 8, scope: !2957, inlinedAt: !4613)
!4619 = !DILocation(line: 177, column: 23, scope: !2959, inlinedAt: !4613)
!4620 = !DILocation(line: 177, column: 19, scope: !2957, inlinedAt: !4613)
!4621 = !DILocation(line: 178, column: 5, scope: !2957, inlinedAt: !4613)
!4622 = !DILocation(line: 179, column: 6, scope: !2941, inlinedAt: !4613)
!4623 = !DILocation(line: 179, column: 17, scope: !2941, inlinedAt: !4613)
!4624 = !DILocation(line: 180, column: 6, scope: !2941, inlinedAt: !4613)
!4625 = !DILocation(line: 180, column: 18, scope: !2941, inlinedAt: !4613)
!4626 = !DILocation(line: 1023, column: 10, scope: !4594, inlinedAt: !4604)
!4627 = !DILocation(line: 1024, column: 1, scope: !4594, inlinedAt: !4604)
!4628 = !DILocation(line: 1012, column: 3, scope: !4581)
!4629 = !DILocation(line: 1017, column: 28, scope: !4594)
!4630 = !DILocation(line: 1017, column: 43, scope: !4594)
!4631 = !DILocation(line: 1018, column: 36, scope: !4594)
!4632 = !DILocation(line: 1019, column: 36, scope: !4594)
!4633 = !DILocation(line: 1019, column: 48, scope: !4594)
!4634 = !DILocation(line: 1021, column: 3, scope: !4594)
!4635 = !DILocation(line: 1021, column: 30, scope: !4594)
!4636 = !DILocation(line: 1021, column: 26, scope: !4594)
!4637 = !DILocation(line: 171, column: 45, scope: !2941, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 1022, column: 3, scope: !4594)
!4639 = !DILocation(line: 172, column: 33, scope: !2941, inlinedAt: !4638)
!4640 = !DILocation(line: 172, column: 57, scope: !2941, inlinedAt: !4638)
!4641 = !DILocation(line: 176, column: 6, scope: !2941, inlinedAt: !4638)
!4642 = !DILocation(line: 176, column: 12, scope: !2941, inlinedAt: !4638)
!4643 = !DILocation(line: 177, column: 8, scope: !2957, inlinedAt: !4638)
!4644 = !DILocation(line: 177, column: 23, scope: !2959, inlinedAt: !4638)
!4645 = !DILocation(line: 177, column: 19, scope: !2957, inlinedAt: !4638)
!4646 = !DILocation(line: 178, column: 5, scope: !2957, inlinedAt: !4638)
!4647 = !DILocation(line: 179, column: 6, scope: !2941, inlinedAt: !4638)
!4648 = !DILocation(line: 179, column: 17, scope: !2941, inlinedAt: !4638)
!4649 = !DILocation(line: 180, column: 6, scope: !2941, inlinedAt: !4638)
!4650 = !DILocation(line: 180, column: 18, scope: !2941, inlinedAt: !4638)
!4651 = !DILocation(line: 1023, column: 10, scope: !4594)
!4652 = !DILocation(line: 1024, column: 1, scope: !4594)
!4653 = !DILocation(line: 1023, column: 3, scope: !4594)
!4654 = distinct !DISubprogram(name: "quotearg_custom", scope: !425, file: !425, line: 1027, type: !4655, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!51, !62, !62, !62}
!4657 = !{!4658, !4659, !4660}
!4658 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4654, file: !425, line: 1027, type: !62)
!4659 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4654, file: !425, line: 1027, type: !62)
!4660 = !DILocalVariable(name: "arg", arg: 3, scope: !4654, file: !425, line: 1028, type: !62)
!4661 = !DILocation(line: 1027, column: 30, scope: !4654)
!4662 = !DILocation(line: 1027, column: 54, scope: !4654)
!4663 = !DILocation(line: 1028, column: 30, scope: !4654)
!4664 = !DILocation(line: 1009, column: 24, scope: !4581, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 1030, column: 10, scope: !4654)
!4666 = !DILocation(line: 1009, column: 39, scope: !4581, inlinedAt: !4665)
!4667 = !DILocation(line: 1010, column: 32, scope: !4581, inlinedAt: !4665)
!4668 = !DILocation(line: 1010, column: 57, scope: !4581, inlinedAt: !4665)
!4669 = !DILocation(line: 1017, column: 28, scope: !4594, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 1012, column: 10, scope: !4581, inlinedAt: !4665)
!4671 = !DILocation(line: 1017, column: 43, scope: !4594, inlinedAt: !4670)
!4672 = !DILocation(line: 1018, column: 36, scope: !4594, inlinedAt: !4670)
!4673 = !DILocation(line: 1019, column: 36, scope: !4594, inlinedAt: !4670)
!4674 = !DILocation(line: 1019, column: 48, scope: !4594, inlinedAt: !4670)
!4675 = !DILocation(line: 1021, column: 3, scope: !4594, inlinedAt: !4670)
!4676 = !DILocation(line: 1021, column: 30, scope: !4594, inlinedAt: !4670)
!4677 = !DILocation(line: 1021, column: 26, scope: !4594, inlinedAt: !4670)
!4678 = !DILocation(line: 171, column: 45, scope: !2941, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 1022, column: 3, scope: !4594, inlinedAt: !4670)
!4680 = !DILocation(line: 172, column: 33, scope: !2941, inlinedAt: !4679)
!4681 = !DILocation(line: 172, column: 57, scope: !2941, inlinedAt: !4679)
!4682 = !DILocation(line: 176, column: 6, scope: !2941, inlinedAt: !4679)
!4683 = !DILocation(line: 176, column: 12, scope: !2941, inlinedAt: !4679)
!4684 = !DILocation(line: 177, column: 8, scope: !2957, inlinedAt: !4679)
!4685 = !DILocation(line: 177, column: 23, scope: !2959, inlinedAt: !4679)
!4686 = !DILocation(line: 177, column: 19, scope: !2957, inlinedAt: !4679)
!4687 = !DILocation(line: 178, column: 5, scope: !2957, inlinedAt: !4679)
!4688 = !DILocation(line: 179, column: 6, scope: !2941, inlinedAt: !4679)
!4689 = !DILocation(line: 179, column: 17, scope: !2941, inlinedAt: !4679)
!4690 = !DILocation(line: 180, column: 6, scope: !2941, inlinedAt: !4679)
!4691 = !DILocation(line: 180, column: 18, scope: !2941, inlinedAt: !4679)
!4692 = !DILocation(line: 1023, column: 10, scope: !4594, inlinedAt: !4670)
!4693 = !DILocation(line: 1024, column: 1, scope: !4594, inlinedAt: !4670)
!4694 = !DILocation(line: 1030, column: 3, scope: !4654)
!4695 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !425, file: !425, line: 1034, type: !4696, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!51, !62, !62, !62, !54}
!4698 = !{!4699, !4700, !4701, !4702}
!4699 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4695, file: !425, line: 1034, type: !62)
!4700 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4695, file: !425, line: 1034, type: !62)
!4701 = !DILocalVariable(name: "arg", arg: 3, scope: !4695, file: !425, line: 1035, type: !62)
!4702 = !DILocalVariable(name: "argsize", arg: 4, scope: !4695, file: !425, line: 1035, type: !54)
!4703 = !DILocation(line: 1034, column: 34, scope: !4695)
!4704 = !DILocation(line: 1034, column: 58, scope: !4695)
!4705 = !DILocation(line: 1035, column: 34, scope: !4695)
!4706 = !DILocation(line: 1035, column: 46, scope: !4695)
!4707 = !DILocation(line: 1017, column: 28, scope: !4594, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 1037, column: 10, scope: !4695)
!4709 = !DILocation(line: 1017, column: 43, scope: !4594, inlinedAt: !4708)
!4710 = !DILocation(line: 1018, column: 36, scope: !4594, inlinedAt: !4708)
!4711 = !DILocation(line: 1019, column: 36, scope: !4594, inlinedAt: !4708)
!4712 = !DILocation(line: 1019, column: 48, scope: !4594, inlinedAt: !4708)
!4713 = !DILocation(line: 1021, column: 3, scope: !4594, inlinedAt: !4708)
!4714 = !DILocation(line: 1021, column: 30, scope: !4594, inlinedAt: !4708)
!4715 = !DILocation(line: 1021, column: 26, scope: !4594, inlinedAt: !4708)
!4716 = !DILocation(line: 171, column: 45, scope: !2941, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 1022, column: 3, scope: !4594, inlinedAt: !4708)
!4718 = !DILocation(line: 172, column: 33, scope: !2941, inlinedAt: !4717)
!4719 = !DILocation(line: 172, column: 57, scope: !2941, inlinedAt: !4717)
!4720 = !DILocation(line: 176, column: 6, scope: !2941, inlinedAt: !4717)
!4721 = !DILocation(line: 176, column: 12, scope: !2941, inlinedAt: !4717)
!4722 = !DILocation(line: 177, column: 8, scope: !2957, inlinedAt: !4717)
!4723 = !DILocation(line: 177, column: 23, scope: !2959, inlinedAt: !4717)
!4724 = !DILocation(line: 177, column: 19, scope: !2957, inlinedAt: !4717)
!4725 = !DILocation(line: 178, column: 5, scope: !2957, inlinedAt: !4717)
!4726 = !DILocation(line: 179, column: 6, scope: !2941, inlinedAt: !4717)
!4727 = !DILocation(line: 179, column: 17, scope: !2941, inlinedAt: !4717)
!4728 = !DILocation(line: 180, column: 6, scope: !2941, inlinedAt: !4717)
!4729 = !DILocation(line: 180, column: 18, scope: !2941, inlinedAt: !4717)
!4730 = !DILocation(line: 1023, column: 10, scope: !4594, inlinedAt: !4708)
!4731 = !DILocation(line: 1024, column: 1, scope: !4594, inlinedAt: !4708)
!4732 = !DILocation(line: 1037, column: 3, scope: !4695)
!4733 = distinct !DISubprogram(name: "quote_n_mem", scope: !425, file: !425, line: 1052, type: !4734, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4736)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!62, !64, !62, !54}
!4736 = !{!4737, !4738, !4739}
!4737 = !DILocalVariable(name: "n", arg: 1, scope: !4733, file: !425, line: 1052, type: !64)
!4738 = !DILocalVariable(name: "arg", arg: 2, scope: !4733, file: !425, line: 1052, type: !62)
!4739 = !DILocalVariable(name: "argsize", arg: 3, scope: !4733, file: !425, line: 1052, type: !54)
!4740 = !DILocation(line: 1052, column: 18, scope: !4733)
!4741 = !DILocation(line: 1052, column: 33, scope: !4733)
!4742 = !DILocation(line: 1052, column: 45, scope: !4733)
!4743 = !DILocation(line: 1054, column: 10, scope: !4733)
!4744 = !DILocation(line: 1054, column: 3, scope: !4733)
!4745 = distinct !DISubprogram(name: "quote_mem", scope: !425, file: !425, line: 1058, type: !4746, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!62, !62, !54}
!4748 = !{!4749, !4750}
!4749 = !DILocalVariable(name: "arg", arg: 1, scope: !4745, file: !425, line: 1058, type: !62)
!4750 = !DILocalVariable(name: "argsize", arg: 2, scope: !4745, file: !425, line: 1058, type: !54)
!4751 = !DILocation(line: 1058, column: 24, scope: !4745)
!4752 = !DILocation(line: 1058, column: 36, scope: !4745)
!4753 = !DILocation(line: 1052, column: 18, scope: !4733, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 1060, column: 10, scope: !4745)
!4755 = !DILocation(line: 1052, column: 33, scope: !4733, inlinedAt: !4754)
!4756 = !DILocation(line: 1052, column: 45, scope: !4733, inlinedAt: !4754)
!4757 = !DILocation(line: 1054, column: 10, scope: !4733, inlinedAt: !4754)
!4758 = !DILocation(line: 1060, column: 3, scope: !4745)
!4759 = distinct !DISubprogram(name: "quote_n", scope: !425, file: !425, line: 1064, type: !4760, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4762)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!62, !64, !62}
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "n", arg: 1, scope: !4759, file: !425, line: 1064, type: !64)
!4764 = !DILocalVariable(name: "arg", arg: 2, scope: !4759, file: !425, line: 1064, type: !62)
!4765 = !DILocation(line: 1064, column: 14, scope: !4759)
!4766 = !DILocation(line: 1064, column: 29, scope: !4759)
!4767 = !DILocation(line: 1052, column: 18, scope: !4733, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 1066, column: 10, scope: !4759)
!4769 = !DILocation(line: 1052, column: 33, scope: !4733, inlinedAt: !4768)
!4770 = !DILocation(line: 1052, column: 45, scope: !4733, inlinedAt: !4768)
!4771 = !DILocation(line: 1054, column: 10, scope: !4733, inlinedAt: !4768)
!4772 = !DILocation(line: 1066, column: 3, scope: !4759)
!4773 = distinct !DISubprogram(name: "quote", scope: !425, file: !425, line: 1070, type: !4774, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !413, variables: !4776)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!62, !62}
!4776 = !{!4777}
!4777 = !DILocalVariable(name: "arg", arg: 1, scope: !4773, file: !425, line: 1070, type: !62)
!4778 = !DILocation(line: 1070, column: 20, scope: !4773)
!4779 = !DILocation(line: 1064, column: 14, scope: !4759, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 1072, column: 10, scope: !4773)
!4781 = !DILocation(line: 1064, column: 29, scope: !4759, inlinedAt: !4780)
!4782 = !DILocation(line: 1052, column: 18, scope: !4733, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 1066, column: 10, scope: !4759, inlinedAt: !4780)
!4784 = !DILocation(line: 1052, column: 33, scope: !4733, inlinedAt: !4783)
!4785 = !DILocation(line: 1052, column: 45, scope: !4733, inlinedAt: !4783)
!4786 = !DILocation(line: 1054, column: 10, scope: !4733, inlinedAt: !4783)
!4787 = !DILocation(line: 1072, column: 3, scope: !4773)
!4788 = distinct !DISubprogram(name: "readtokens0_init", scope: !4789, file: !4789, line: 30, type: !4790, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4834)
!4789 = !DIFile(filename: "lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !4792}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !130, line: 28, size: 2304, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4832, !4833}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !4793, file: !130, line: 30, baseType: !54, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !4793, file: !130, line: 31, baseType: !72, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !4793, file: !130, line: 32, baseType: !135, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !4793, file: !130, line: 33, baseType: !4799, size: 704, offset: 192)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !138, line: 174, size: 704, elements: !4800)
!4800 = !{!4801, !4802, !4809, !4810, !4811, !4812, !4817, !4818, !4823, !4828, !4829, !4830, !4831}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4799, file: !138, line: 176, baseType: !54, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4799, file: !138, line: 177, baseType: !4803, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !138, line: 167, size: 128, elements: !4805)
!4805 = !{!4806, !4807, !4808}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4804, file: !138, line: 169, baseType: !51, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4804, file: !138, line: 170, baseType: !4803, size: 64, offset: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4804, file: !138, line: 171, baseType: !148, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4799, file: !138, line: 178, baseType: !51, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4799, file: !138, line: 179, baseType: !51, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4799, file: !138, line: 180, baseType: !51, size: 64, offset: 256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4799, file: !138, line: 185, baseType: !4813, size: 64, offset: 320)
!4813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !138, line: 181, size: 64, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4813, file: !138, line: 183, baseType: !54, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4813, file: !138, line: 184, baseType: !53, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4799, file: !138, line: 186, baseType: !54, size: 64, offset: 384)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4799, file: !138, line: 193, baseType: !4819, size: 64, offset: 448)
!4819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !138, line: 189, size: 64, elements: !4820)
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4819, file: !138, line: 191, baseType: !164, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4819, file: !138, line: 192, baseType: !168, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4799, file: !138, line: 198, baseType: !4824, size: 64, offset: 512)
!4824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !138, line: 194, size: 64, elements: !4825)
!4825 = !{!4826, !4827}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4824, file: !138, line: 196, baseType: !175, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4824, file: !138, line: 197, baseType: !179, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4799, file: !138, line: 200, baseType: !53, size: 64, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4799, file: !138, line: 201, baseType: !100, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4799, file: !138, line: 202, baseType: !100, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4799, file: !138, line: 206, baseType: !100, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !4793, file: !130, line: 34, baseType: !4799, size: 704, offset: 896)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !4793, file: !130, line: 35, baseType: !4799, size: 704, offset: 1600)
!4834 = !{!4835}
!4835 = !DILocalVariable(name: "t", arg: 1, scope: !4788, file: !4789, line: 30, type: !4792)
!4836 = !DILocation(line: 30, column: 34, scope: !4788)
!4837 = !DILocation(line: 35, column: 3, scope: !4788)
!4838 = !DILocation(line: 33, column: 10, scope: !4788)
!4839 = !DILocation(line: 36, column: 3, scope: !4788)
!4840 = !DILocation(line: 37, column: 3, scope: !4788)
!4841 = !DILocation(line: 38, column: 1, scope: !4788)
!4842 = distinct !DISubprogram(name: "readtokens0_free", scope: !4789, file: !4789, line: 41, type: !4790, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4843)
!4843 = !{!4844, !4845, !4848, !4849, !4851, !4852, !4854}
!4844 = !DILocalVariable(name: "t", arg: 1, scope: !4842, file: !4789, line: 41, type: !4792)
!4845 = !DILocalVariable(name: "__o", scope: !4846, file: !4789, line: 43, type: !4847)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !4789, line: 43, column: 3)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4848 = !DILocalVariable(name: "__obj", scope: !4846, file: !4789, line: 43, type: !53)
!4849 = !DILocalVariable(name: "__o", scope: !4850, file: !4789, line: 44, type: !4847)
!4850 = distinct !DILexicalBlock(scope: !4842, file: !4789, line: 44, column: 3)
!4851 = !DILocalVariable(name: "__obj", scope: !4850, file: !4789, line: 44, type: !53)
!4852 = !DILocalVariable(name: "__o", scope: !4853, file: !4789, line: 45, type: !4847)
!4853 = distinct !DILexicalBlock(scope: !4842, file: !4789, line: 45, column: 3)
!4854 = !DILocalVariable(name: "__obj", scope: !4853, file: !4789, line: 45, type: !53)
!4855 = !DILocation(line: 41, column: 34, scope: !4842)
!4856 = !DILocation(line: 43, column: 3, scope: !4846)
!4857 = !DILocation(line: 43, column: 3, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4859, file: !4789, discriminator: 3)
!4859 = distinct !DILexicalBlock(scope: !4846, file: !4789, line: 43, column: 3)
!4860 = !DILocation(line: 44, column: 3, scope: !4850)
!4861 = !DILocation(line: 44, column: 3, scope: !4862)
!4862 = !DILexicalBlockFile(scope: !4863, file: !4789, discriminator: 3)
!4863 = distinct !DILexicalBlock(scope: !4850, file: !4789, line: 44, column: 3)
!4864 = !DILocation(line: 45, column: 3, scope: !4853)
!4865 = !DILocation(line: 45, column: 3, scope: !4866)
!4866 = !DILexicalBlockFile(scope: !4867, file: !4789, discriminator: 3)
!4867 = distinct !DILexicalBlock(scope: !4853, file: !4789, line: 45, column: 3)
!4868 = !DILocation(line: 46, column: 1, scope: !4842)
!4869 = distinct !DISubprogram(name: "readtokens0", scope: !4789, file: !4789, line: 66, type: !4870, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !4912)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!77, !4872, !4792}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !4874)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !4875)
!4875 = !{!4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4874, file: !199, line: 242, baseType: !64, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4874, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4874, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4874, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4874, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4874, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4874, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4874, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4874, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4874, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4874, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4874, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4874, file: !199, line: 260, baseType: !4889, size: 64, offset: 768)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !4891)
!4891 = !{!4892, !4893, !4895}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4890, file: !199, line: 157, baseType: !4889, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4890, file: !199, line: 158, baseType: !4894, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4890, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4874, file: !199, line: 262, baseType: !4894, size: 64, offset: 832)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4874, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4874, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4874, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4874, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4874, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4874, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4874, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4874, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4874, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4874, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4874, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4874, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4874, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4874, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4874, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!4912 = !{!4913, !4914, !4915, !4917, !4920, !4924, !4928, !4931, !4933, !4936, !4938, !4941, !4943, !4944, !4946, !4947, !4949}
!4913 = !DILocalVariable(name: "in", arg: 1, scope: !4869, file: !4789, line: 66, type: !4872)
!4914 = !DILocalVariable(name: "t", arg: 2, scope: !4869, file: !4789, line: 66, type: !4792)
!4915 = !DILocalVariable(name: "c", scope: !4916, file: !4789, line: 71, type: !64)
!4916 = distinct !DILexicalBlock(scope: !4869, file: !4789, line: 70, column: 5)
!4917 = !DILocalVariable(name: "len", scope: !4918, file: !4789, line: 74, type: !54)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !4789, line: 73, column: 9)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !4789, line: 72, column: 11)
!4920 = !DILocalVariable(name: "__o", scope: !4921, file: !4789, line: 74, type: !4922)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !4789, line: 74, column: 24)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4799)
!4924 = !DILocalVariable(name: "__o", scope: !4925, file: !4789, line: 80, type: !4847)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !4789, line: 80, column: 15)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !4789, line: 79, column: 13)
!4927 = distinct !DILexicalBlock(scope: !4918, file: !4789, line: 78, column: 15)
!4928 = !DILocalVariable(name: "__o1", scope: !4929, file: !4789, line: 80, type: !4922)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !4789, line: 80, column: 15)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !4789, line: 80, column: 15)
!4931 = !DILocalVariable(name: "__o", scope: !4932, file: !4789, line: 87, type: !4847)
!4932 = distinct !DILexicalBlock(scope: !4916, file: !4789, line: 87, column: 7)
!4933 = !DILocalVariable(name: "__o1", scope: !4934, file: !4789, line: 87, type: !4922)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !4789, line: 87, column: 7)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !4789, line: 87, column: 7)
!4936 = !DILocalVariable(name: "__o", scope: !4937, file: !4789, line: 94, type: !4847)
!4937 = distinct !DILexicalBlock(scope: !4869, file: !4789, line: 94, column: 3)
!4938 = !DILocalVariable(name: "__o1", scope: !4939, file: !4789, line: 94, type: !4922)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !4789, line: 94, column: 3)
!4940 = distinct !DILexicalBlock(scope: !4937, file: !4789, line: 94, column: 3)
!4941 = !DILocalVariable(name: "__o1", scope: !4942, file: !4789, line: 94, type: !4847)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !4789, line: 94, column: 3)
!4943 = !DILocalVariable(name: "__p1", scope: !4942, file: !4789, line: 94, type: !53)
!4944 = !DILocalVariable(name: "__o1", scope: !4945, file: !4789, line: 96, type: !4847)
!4945 = distinct !DILexicalBlock(scope: !4869, file: !4789, line: 96, column: 12)
!4946 = !DILocalVariable(name: "__value", scope: !4945, file: !4789, line: 96, type: !53)
!4947 = !DILocalVariable(name: "__o1", scope: !4948, file: !4789, line: 97, type: !4847)
!4948 = distinct !DILexicalBlock(scope: !4869, file: !4789, line: 97, column: 16)
!4949 = !DILocalVariable(name: "__value", scope: !4948, file: !4789, line: 97, type: !53)
!4950 = !DILocation(line: 66, column: 20, scope: !4869)
!4951 = !DILocation(line: 66, column: 39, scope: !4869)
!4952 = !DILocation(line: 71, column: 15, scope: !4916)
!4953 = !DILocation(line: 71, column: 11, scope: !4916)
!4954 = !DILocation(line: 72, column: 13, scope: !4919)
!4955 = !DILocation(line: 72, column: 11, scope: !4916)
!4956 = !DILocation(line: 74, column: 24, scope: !4921)
!4957 = !{!1349, !1147, i64 24}
!4958 = !{!1349, !1147, i64 16}
!4959 = !DILocation(line: 78, column: 15, scope: !4927)
!4960 = !DILocation(line: 78, column: 15, scope: !4918)
!4961 = !DILocation(line: 80, column: 15, scope: !4925)
!4962 = !DILocation(line: 80, column: 15, scope: !4929)
!4963 = !{!1349, !1147, i64 32}
!4964 = !DILocation(line: 80, column: 15, scope: !4930)
!4965 = !DILocation(line: 80, column: 15, scope: !4966)
!4966 = !DILexicalBlockFile(scope: !4930, file: !4789, discriminator: 1)
!4967 = !DILocation(line: 80, column: 15, scope: !4968)
!4968 = !DILexicalBlockFile(scope: !4925, file: !4789, discriminator: 2)
!4969 = !DILocation(line: 81, column: 15, scope: !4926)
!4970 = !DILocation(line: 87, column: 7, scope: !4932)
!4971 = !DILocation(line: 87, column: 7, scope: !4934)
!4972 = !DILocation(line: 87, column: 7, scope: !4935)
!4973 = !DILocation(line: 87, column: 7, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4935, file: !4789, discriminator: 1)
!4975 = !DILocation(line: 87, column: 7, scope: !4976)
!4976 = !DILexicalBlockFile(scope: !4932, file: !4789, discriminator: 2)
!4977 = !DILocation(line: 88, column: 13, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4916, file: !4789, line: 88, column: 11)
!4979 = !DILocation(line: 88, column: 11, scope: !4916)
!4980 = !DILocation(line: 89, column: 9, scope: !4978)
!4981 = !DILocation(line: 94, column: 3, scope: !4937)
!4982 = !DILocation(line: 94, column: 3, scope: !4939)
!4983 = !DILocation(line: 94, column: 3, scope: !4940)
!4984 = !DILocation(line: 94, column: 3, scope: !4985)
!4985 = !DILexicalBlockFile(scope: !4940, file: !4789, discriminator: 1)
!4986 = !DILocation(line: 94, column: 3, scope: !4987)
!4987 = !DILexicalBlockFile(scope: !4942, file: !4789, discriminator: 2)
!4988 = !DILocation(line: 94, column: 3, scope: !4942)
!4989 = !DILocation(line: 96, column: 12, scope: !4945)
!4990 = !DILocation(line: 96, column: 12, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4945, file: !4789, line: 96, column: 12)
!4992 = !DILocation(line: 96, column: 12, scope: !4993)
!4993 = !DILexicalBlockFile(scope: !4991, file: !4789, discriminator: 1)
!4994 = !DILocation(line: 96, column: 12, scope: !4995)
!4995 = !DILexicalBlockFile(scope: !4945, file: !4789, discriminator: 2)
!4996 = !{!1349, !1209, i64 48}
!4997 = !DILocation(line: 96, column: 12, scope: !4998)
!4998 = !DILexicalBlockFile(scope: !4999, file: !4789, discriminator: 2)
!4999 = distinct !DILexicalBlock(scope: !4945, file: !4789, line: 96, column: 12)
!5000 = !{!1349, !1147, i64 8}
!5001 = !DILocation(line: 96, column: 12, scope: !5002)
!5002 = !DILexicalBlockFile(scope: !4999, file: !4789, discriminator: 3)
!5003 = !DILocation(line: 96, column: 12, scope: !5004)
!5004 = !DILexicalBlockFile(scope: !4945, file: !4789, discriminator: 4)
!5005 = !DILocation(line: 96, column: 6, scope: !5006)
!5006 = !DILexicalBlockFile(scope: !4869, file: !4789, discriminator: 4)
!5007 = !DILocation(line: 96, column: 10, scope: !5006)
!5008 = !DILocation(line: 97, column: 16, scope: !4948)
!5009 = !DILocation(line: 97, column: 16, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4948, file: !4789, line: 97, column: 16)
!5011 = !DILocation(line: 97, column: 16, scope: !5012)
!5012 = !DILexicalBlockFile(scope: !5010, file: !4789, discriminator: 1)
!5013 = !DILocation(line: 97, column: 16, scope: !5014)
!5014 = !DILexicalBlockFile(scope: !4948, file: !4789, discriminator: 2)
!5015 = !DILocation(line: 97, column: 16, scope: !5016)
!5016 = !DILexicalBlockFile(scope: !5017, file: !4789, discriminator: 2)
!5017 = distinct !DILexicalBlock(scope: !4948, file: !4789, line: 97, column: 16)
!5018 = !DILocation(line: 97, column: 16, scope: !5019)
!5019 = !DILexicalBlockFile(scope: !5017, file: !4789, discriminator: 3)
!5020 = !DILocation(line: 97, column: 16, scope: !5021)
!5021 = !DILexicalBlockFile(scope: !4948, file: !4789, discriminator: 4)
!5022 = !DILocation(line: 97, column: 6, scope: !5006)
!5023 = !DILocation(line: 97, column: 14, scope: !5006)
!5024 = !{!1348, !1147, i64 16}
!5025 = !DILocation(line: 98, column: 12, scope: !4869)
!5026 = !DILocation(line: 98, column: 10, scope: !4869)
!5027 = !DILocation(line: 98, column: 3, scope: !4869)
!5028 = distinct !DISubprogram(name: "save_token", scope: !4789, file: !4789, line: 51, type: !4790, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !1062, variables: !5029)
!5029 = !{!5030, !5031, !5032, !5034, !5035, !5037, !5038, !5040, !5043, !5045, !5046, !5048, !5049}
!5030 = !DILocalVariable(name: "t", arg: 1, scope: !5028, file: !4789, line: 51, type: !4792)
!5031 = !DILocalVariable(name: "len", scope: !5028, file: !4789, line: 54, type: !54)
!5032 = !DILocalVariable(name: "__o", scope: !5033, file: !4789, line: 54, type: !4922)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !4789, line: 54, column: 16)
!5034 = !DILocalVariable(name: "s", scope: !5028, file: !4789, line: 55, type: !62)
!5035 = !DILocalVariable(name: "__o1", scope: !5036, file: !4789, line: 55, type: !4847)
!5036 = distinct !DILexicalBlock(scope: !5028, file: !4789, line: 55, column: 19)
!5037 = !DILocalVariable(name: "__value", scope: !5036, file: !4789, line: 55, type: !53)
!5038 = !DILocalVariable(name: "__o", scope: !5039, file: !4789, line: 56, type: !4847)
!5039 = distinct !DILexicalBlock(scope: !5028, file: !4789, line: 56, column: 3)
!5040 = !DILocalVariable(name: "__o1", scope: !5041, file: !4789, line: 56, type: !4922)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !4789, line: 56, column: 3)
!5042 = distinct !DILexicalBlock(scope: !5039, file: !4789, line: 56, column: 3)
!5043 = !DILocalVariable(name: "__o1", scope: !5044, file: !4789, line: 56, type: !4847)
!5044 = distinct !DILexicalBlock(scope: !5039, file: !4789, line: 56, column: 3)
!5045 = !DILocalVariable(name: "__p1", scope: !5044, file: !4789, line: 56, type: !53)
!5046 = !DILocalVariable(name: "__o", scope: !5047, file: !4789, line: 57, type: !4847)
!5047 = distinct !DILexicalBlock(scope: !5028, file: !4789, line: 57, column: 3)
!5048 = !DILocalVariable(name: "__len", scope: !5047, file: !4789, line: 57, type: !54)
!5049 = !DILocalVariable(name: "__o1", scope: !5050, file: !4789, line: 57, type: !4922)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !4789, line: 57, column: 3)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !4789, line: 57, column: 3)
!5052 = !DILocation(line: 51, column: 28, scope: !5028)
!5053 = !DILocation(line: 54, column: 16, scope: !5033)
!5054 = !DILocation(line: 54, column: 49, scope: !5028)
!5055 = !DILocation(line: 54, column: 10, scope: !5028)
!5056 = !DILocation(line: 55, column: 19, scope: !5036)
!5057 = !DILocation(line: 55, column: 19, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5036, file: !4789, line: 55, column: 19)
!5059 = !DILocation(line: 55, column: 19, scope: !5060)
!5060 = !DILexicalBlockFile(scope: !5058, file: !4789, discriminator: 1)
!5061 = !DILocation(line: 55, column: 19, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !5036, file: !4789, discriminator: 2)
!5063 = !DILocation(line: 55, column: 19, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !5065, file: !4789, discriminator: 2)
!5065 = distinct !DILexicalBlock(scope: !5036, file: !4789, line: 55, column: 19)
!5066 = !DILocation(line: 55, column: 19, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !5065, file: !4789, discriminator: 3)
!5068 = !DILocation(line: 55, column: 19, scope: !5069)
!5069 = !DILexicalBlockFile(scope: !5036, file: !4789, discriminator: 4)
!5070 = !DILocation(line: 55, column: 15, scope: !5028)
!5071 = !DILocation(line: 56, column: 3, scope: !5039)
!5072 = !DILocation(line: 56, column: 3, scope: !5041)
!5073 = !DILocation(line: 56, column: 3, scope: !5042)
!5074 = !DILocation(line: 56, column: 3, scope: !5075)
!5075 = !DILexicalBlockFile(scope: !5042, file: !4789, discriminator: 1)
!5076 = !DILocation(line: 56, column: 3, scope: !5077)
!5077 = !DILexicalBlockFile(scope: !5044, file: !4789, discriminator: 2)
!5078 = !DILocation(line: 56, column: 3, scope: !5044)
!5079 = !DILocation(line: 57, column: 3, scope: !5047)
!5080 = !DILocation(line: 57, column: 3, scope: !5050)
!5081 = !DILocation(line: 57, column: 3, scope: !5051)
!5082 = !DILocation(line: 57, column: 3, scope: !5083)
!5083 = !DILexicalBlockFile(scope: !5051, file: !4789, discriminator: 1)
!5084 = !DILocation(line: 57, column: 3, scope: !5085)
!5085 = !DILexicalBlockFile(scope: !5047, file: !4789, discriminator: 2)
!5086 = !DILocation(line: 58, column: 6, scope: !5028)
!5087 = !DILocation(line: 58, column: 11, scope: !5028)
!5088 = !DILocation(line: 59, column: 1, scope: !5028)
!5089 = !DILocation(line: 56, column: 14, scope: !1071)
!5090 = !DILocation(line: 56, column: 30, scope: !1071)
!5091 = !DILocation(line: 56, column: 42, scope: !1071)
!5092 = !DILocation(line: 64, column: 3, scope: !1071)
!5093 = !DILocation(line: 66, column: 24, scope: !1079)
!5094 = !DILocation(line: 66, column: 15, scope: !1079)
!5095 = !DILocation(line: 68, column: 13, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !1079, file: !1070, line: 68, column: 11)
!5097 = !DILocation(line: 68, column: 11, scope: !1079)
!5098 = !DILocation(line: 70, column: 16, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !1070, line: 70, column: 16)
!5100 = !DILocation(line: 70, column: 16, scope: !5096)
!5101 = distinct !{!5101, !5102, !5103}
!5102 = !DILocation(line: 64, column: 3, scope: !1081)
!5103 = !DILocation(line: 76, column: 5, scope: !1081)
!5104 = !DILocation(line: 72, column: 22, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5099, file: !1070, line: 72, column: 16)
!5106 = !DILocation(line: 72, column: 54, scope: !5107)
!5107 = !DILexicalBlockFile(scope: !5105, file: !1070, discriminator: 1)
!5108 = !DILocation(line: 72, column: 32, scope: !5105)
!5109 = !DILocation(line: 77, column: 1, scope: !1071)
!5110 = distinct !DISubprogram(name: "version_etc_arn", scope: !1091, file: !1091, line: 62, type: !5111, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !1087, variables: !5154)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{null, !5113, !62, !62, !62, !5153, !54}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !5115)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !5116)
!5116 = !{!5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5115, file: !199, line: 242, baseType: !64, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5115, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5115, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5115, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5115, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5115, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5115, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5115, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5115, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5115, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5115, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5115, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5115, file: !199, line: 260, baseType: !5130, size: 64, offset: 768)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !5132)
!5132 = !{!5133, !5134, !5136}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5131, file: !199, line: 157, baseType: !5130, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5131, file: !199, line: 158, baseType: !5135, size: 64, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5131, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5115, file: !199, line: 262, baseType: !5135, size: 64, offset: 832)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5115, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5115, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5115, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5115, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5115, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5115, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5115, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5115, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5115, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5115, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5115, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5115, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5115, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5115, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5115, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!5154 = !{!5155, !5156, !5157, !5158, !5159, !5160}
!5155 = !DILocalVariable(name: "stream", arg: 1, scope: !5110, file: !1091, line: 62, type: !5113)
!5156 = !DILocalVariable(name: "command_name", arg: 2, scope: !5110, file: !1091, line: 63, type: !62)
!5157 = !DILocalVariable(name: "package", arg: 3, scope: !5110, file: !1091, line: 63, type: !62)
!5158 = !DILocalVariable(name: "version", arg: 4, scope: !5110, file: !1091, line: 64, type: !62)
!5159 = !DILocalVariable(name: "authors", arg: 5, scope: !5110, file: !1091, line: 65, type: !5153)
!5160 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5110, file: !1091, line: 65, type: !54)
!5161 = !DILocation(line: 62, column: 24, scope: !5110)
!5162 = !DILocation(line: 63, column: 30, scope: !5110)
!5163 = !DILocation(line: 63, column: 56, scope: !5110)
!5164 = !DILocation(line: 64, column: 30, scope: !5110)
!5165 = !DILocation(line: 65, column: 39, scope: !5110)
!5166 = !DILocation(line: 65, column: 55, scope: !5110)
!5167 = !DILocation(line: 67, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5110, file: !1091, line: 67, column: 7)
!5169 = !DILocation(line: 67, column: 7, scope: !5110)
!5170 = !DILocation(line: 68, column: 5, scope: !5168)
!5171 = !DILocation(line: 70, column: 5, scope: !5168)
!5172 = !DILocation(line: 84, column: 3, scope: !5110)
!5173 = !DILocation(line: 84, column: 3, scope: !5174)
!5174 = !DILexicalBlockFile(scope: !5110, file: !1091, discriminator: 1)
!5175 = !DILocation(line: 86, column: 3, scope: !5110)
!5176 = !DILocation(line: 86, column: 3, scope: !5174)
!5177 = !DILocation(line: 95, column: 3, scope: !5110)
!5178 = !DILocation(line: 99, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5110, file: !1091, line: 96, column: 5)
!5180 = !DILocation(line: 102, column: 7, scope: !5179)
!5181 = !DILocation(line: 102, column: 7, scope: !5182)
!5182 = !DILexicalBlockFile(scope: !5179, file: !1091, discriminator: 1)
!5183 = !DILocation(line: 103, column: 7, scope: !5179)
!5184 = !DILocation(line: 106, column: 7, scope: !5179)
!5185 = !DILocation(line: 106, column: 7, scope: !5182)
!5186 = !DILocation(line: 107, column: 7, scope: !5179)
!5187 = !DILocation(line: 110, column: 7, scope: !5179)
!5188 = !DILocation(line: 110, column: 7, scope: !5182)
!5189 = !DILocation(line: 112, column: 7, scope: !5179)
!5190 = !DILocation(line: 117, column: 7, scope: !5179)
!5191 = !DILocation(line: 117, column: 7, scope: !5182)
!5192 = !DILocation(line: 119, column: 7, scope: !5179)
!5193 = !DILocation(line: 124, column: 7, scope: !5179)
!5194 = !DILocation(line: 124, column: 7, scope: !5182)
!5195 = !DILocation(line: 126, column: 7, scope: !5179)
!5196 = !DILocation(line: 131, column: 7, scope: !5179)
!5197 = !DILocation(line: 131, column: 7, scope: !5182)
!5198 = !DILocation(line: 134, column: 7, scope: !5179)
!5199 = !DILocation(line: 139, column: 7, scope: !5179)
!5200 = !DILocation(line: 139, column: 7, scope: !5182)
!5201 = !DILocation(line: 142, column: 7, scope: !5179)
!5202 = !DILocation(line: 147, column: 7, scope: !5179)
!5203 = !DILocation(line: 147, column: 7, scope: !5182)
!5204 = !DILocation(line: 151, column: 7, scope: !5179)
!5205 = !DILocation(line: 156, column: 7, scope: !5179)
!5206 = !DILocation(line: 156, column: 7, scope: !5182)
!5207 = !DILocation(line: 160, column: 7, scope: !5179)
!5208 = !DILocation(line: 167, column: 7, scope: !5179)
!5209 = !DILocation(line: 167, column: 7, scope: !5182)
!5210 = !DILocation(line: 171, column: 7, scope: !5179)
!5211 = !DILocation(line: 173, column: 1, scope: !5110)
!5212 = distinct !DISubprogram(name: "version_etc_ar", scope: !1091, file: !1091, line: 180, type: !5213, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !1087, variables: !5215)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null, !5113, !62, !62, !62, !5153}
!5215 = !{!5216, !5217, !5218, !5219, !5220, !5221}
!5216 = !DILocalVariable(name: "stream", arg: 1, scope: !5212, file: !1091, line: 180, type: !5113)
!5217 = !DILocalVariable(name: "command_name", arg: 2, scope: !5212, file: !1091, line: 181, type: !62)
!5218 = !DILocalVariable(name: "package", arg: 3, scope: !5212, file: !1091, line: 181, type: !62)
!5219 = !DILocalVariable(name: "version", arg: 4, scope: !5212, file: !1091, line: 182, type: !62)
!5220 = !DILocalVariable(name: "authors", arg: 5, scope: !5212, file: !1091, line: 182, type: !5153)
!5221 = !DILocalVariable(name: "n_authors", scope: !5212, file: !1091, line: 184, type: !54)
!5222 = !DILocation(line: 180, column: 23, scope: !5212)
!5223 = !DILocation(line: 181, column: 29, scope: !5212)
!5224 = !DILocation(line: 181, column: 55, scope: !5212)
!5225 = !DILocation(line: 182, column: 29, scope: !5212)
!5226 = !DILocation(line: 182, column: 59, scope: !5212)
!5227 = !DILocation(line: 184, column: 10, scope: !5212)
!5228 = !DILocation(line: 186, column: 8, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5212, file: !1091, line: 186, column: 3)
!5230 = !DILocation(line: 186, column: 23, scope: !5231)
!5231 = !DILexicalBlockFile(scope: !5232, file: !1091, discriminator: 1)
!5232 = distinct !DILexicalBlock(scope: !5229, file: !1091, line: 186, column: 3)
!5233 = !DILocation(line: 186, column: 3, scope: !5234)
!5234 = !DILexicalBlockFile(scope: !5229, file: !1091, discriminator: 1)
!5235 = !DILocation(line: 186, column: 52, scope: !5236)
!5236 = !DILexicalBlockFile(scope: !5232, file: !1091, discriminator: 3)
!5237 = distinct !{!5237, !5238, !5239}
!5238 = !DILocation(line: 186, column: 3, scope: !5229)
!5239 = !DILocation(line: 187, column: 5, scope: !5229)
!5240 = !DILocation(line: 188, column: 3, scope: !5212)
!5241 = !DILocation(line: 189, column: 1, scope: !5212)
!5242 = distinct !DISubprogram(name: "version_etc_va", scope: !1091, file: !1091, line: 196, type: !5243, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !1087, variables: !5252)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !5113, !62, !62, !62, !5245}
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1088, line: 189, size: 192, elements: !5247)
!5247 = !{!5248, !5249, !5250, !5251}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5246, file: !1088, line: 189, baseType: !100, size: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5246, file: !1088, line: 189, baseType: !100, size: 32, offset: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5246, file: !1088, line: 189, baseType: !53, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5246, file: !1088, line: 189, baseType: !53, size: 64, offset: 128)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259}
!5253 = !DILocalVariable(name: "stream", arg: 1, scope: !5242, file: !1091, line: 196, type: !5113)
!5254 = !DILocalVariable(name: "command_name", arg: 2, scope: !5242, file: !1091, line: 197, type: !62)
!5255 = !DILocalVariable(name: "package", arg: 3, scope: !5242, file: !1091, line: 197, type: !62)
!5256 = !DILocalVariable(name: "version", arg: 4, scope: !5242, file: !1091, line: 198, type: !62)
!5257 = !DILocalVariable(name: "authors", arg: 5, scope: !5242, file: !1091, line: 198, type: !5245)
!5258 = !DILocalVariable(name: "n_authors", scope: !5242, file: !1091, line: 200, type: !54)
!5259 = !DILocalVariable(name: "authtab", scope: !5242, file: !1091, line: 201, type: !5260)
!5260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !428)
!5261 = !DILocation(line: 196, column: 23, scope: !5242)
!5262 = !DILocation(line: 197, column: 29, scope: !5242)
!5263 = !DILocation(line: 197, column: 55, scope: !5242)
!5264 = !DILocation(line: 198, column: 29, scope: !5242)
!5265 = !DILocation(line: 198, column: 46, scope: !5242)
!5266 = !DILocation(line: 201, column: 3, scope: !5242)
!5267 = !DILocation(line: 201, column: 15, scope: !5242)
!5268 = !DILocation(line: 200, column: 10, scope: !5242)
!5269 = !DILocation(line: 205, column: 35, scope: !5270)
!5270 = !DILexicalBlockFile(scope: !5271, file: !1091, discriminator: 1)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !1091, line: 203, column: 3)
!5272 = distinct !DILexicalBlock(scope: !5242, file: !1091, line: 203, column: 3)
!5273 = !DILocation(line: 205, column: 35, scope: !5274)
!5274 = !DILexicalBlockFile(scope: !5271, file: !1091, discriminator: 2)
!5275 = !DILocation(line: 205, column: 35, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !5271, file: !1091, discriminator: 3)
!5277 = !DILocation(line: 205, column: 35, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !5271, file: !1091, discriminator: 4)
!5279 = !DILocation(line: 205, column: 14, scope: !5278)
!5280 = !DILocation(line: 205, column: 33, scope: !5278)
!5281 = !DILocation(line: 205, column: 67, scope: !5278)
!5282 = !DILocation(line: 203, column: 3, scope: !5283)
!5283 = !DILexicalBlockFile(scope: !5272, file: !1091, discriminator: 1)
!5284 = !DILocation(line: 208, column: 3, scope: !5242)
!5285 = !DILocation(line: 210, column: 1, scope: !5242)
!5286 = distinct !DISubprogram(name: "version_etc", scope: !1091, file: !1091, line: 227, type: !5287, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !1087, variables: !5289)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{null, !5113, !62, !62, !62, null}
!5289 = !{!5290, !5291, !5292, !5293, !5294}
!5290 = !DILocalVariable(name: "stream", arg: 1, scope: !5286, file: !1091, line: 227, type: !5113)
!5291 = !DILocalVariable(name: "command_name", arg: 2, scope: !5286, file: !1091, line: 228, type: !62)
!5292 = !DILocalVariable(name: "package", arg: 3, scope: !5286, file: !1091, line: 228, type: !62)
!5293 = !DILocalVariable(name: "version", arg: 4, scope: !5286, file: !1091, line: 229, type: !62)
!5294 = !DILocalVariable(name: "authors", scope: !5286, file: !1091, line: 231, type: !5295)
!5295 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !197, line: 80, baseType: !5296)
!5296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !5297, line: 50, baseType: !5298)
!5297 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1088, line: 231, baseType: !5299)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5246, size: 192, elements: !230)
!5300 = !DILocation(line: 227, column: 20, scope: !5286)
!5301 = !DILocation(line: 228, column: 26, scope: !5286)
!5302 = !DILocation(line: 228, column: 52, scope: !5286)
!5303 = !DILocation(line: 229, column: 26, scope: !5286)
!5304 = !DILocation(line: 231, column: 3, scope: !5286)
!5305 = !DILocation(line: 231, column: 11, scope: !5286)
!5306 = !DILocation(line: 233, column: 3, scope: !5286)
!5307 = !DILocation(line: 234, column: 3, scope: !5286)
!5308 = !DILocation(line: 235, column: 3, scope: !5286)
!5309 = !DILocation(line: 236, column: 1, scope: !5286)
!5310 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !1091, file: !1091, line: 239, type: !479, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !1087, variables: !376)
!5311 = !DILocation(line: 245, column: 3, scope: !5310)
!5312 = !DILocation(line: 245, column: 3, scope: !5313)
!5313 = !DILexicalBlockFile(scope: !5310, file: !1091, discriminator: 1)
!5314 = !DILocation(line: 251, column: 3, scope: !5310)
!5315 = !DILocation(line: 251, column: 3, scope: !5313)
!5316 = !DILocation(line: 256, column: 3, scope: !5310)
!5317 = !DILocation(line: 256, column: 3, scope: !5313)
!5318 = !DILocation(line: 258, column: 1, scope: !5310)
!5319 = distinct !DISubprogram(name: "xnmalloc", scope: !1098, file: !1098, line: 105, type: !1399, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5320)
!5320 = !{!5321, !5322}
!5321 = !DILocalVariable(name: "n", arg: 1, scope: !5319, file: !1098, line: 105, type: !54)
!5322 = !DILocalVariable(name: "s", arg: 2, scope: !5319, file: !1098, line: 105, type: !54)
!5323 = !DILocation(line: 105, column: 18, scope: !5319)
!5324 = !DILocation(line: 105, column: 28, scope: !5319)
!5325 = !DILocation(line: 107, column: 7, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5319, file: !1098, line: 107, column: 7)
!5327 = !DILocation(line: 107, column: 7, scope: !5319)
!5328 = !DILocation(line: 108, column: 5, scope: !5326)
!5329 = !DILocation(line: 109, column: 21, scope: !5319)
!5330 = !DILocalVariable(name: "n", arg: 1, scope: !5331, file: !5332, line: 39, type: !54)
!5331 = distinct !DISubprogram(name: "xmalloc", scope: !5332, file: !5332, line: 39, type: !165, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5333)
!5332 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5333 = !{!5330, !5334}
!5334 = !DILocalVariable(name: "p", scope: !5331, file: !5332, line: 41, type: !53)
!5335 = !DILocation(line: 39, column: 17, scope: !5331, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 109, column: 10, scope: !5319)
!5337 = !DILocation(line: 41, column: 13, scope: !5331, inlinedAt: !5336)
!5338 = !DILocation(line: 41, column: 9, scope: !5331, inlinedAt: !5336)
!5339 = !DILocation(line: 42, column: 8, scope: !5340, inlinedAt: !5336)
!5340 = distinct !DILexicalBlock(scope: !5331, file: !5332, line: 42, column: 7)
!5341 = !DILocation(line: 42, column: 15, scope: !5342, inlinedAt: !5336)
!5342 = !DILexicalBlockFile(scope: !5340, file: !5332, discriminator: 1)
!5343 = !DILocation(line: 42, column: 10, scope: !5340, inlinedAt: !5336)
!5344 = !DILocation(line: 43, column: 5, scope: !5340, inlinedAt: !5336)
!5345 = !DILocation(line: 109, column: 3, scope: !5319)
!5346 = !DILocation(line: 39, column: 17, scope: !5331)
!5347 = !DILocation(line: 41, column: 13, scope: !5331)
!5348 = !DILocation(line: 41, column: 9, scope: !5331)
!5349 = !DILocation(line: 42, column: 8, scope: !5340)
!5350 = !DILocation(line: 42, column: 15, scope: !5342)
!5351 = !DILocation(line: 42, column: 10, scope: !5340)
!5352 = !DILocation(line: 43, column: 5, scope: !5340)
!5353 = !DILocation(line: 44, column: 3, scope: !5331)
!5354 = distinct !DISubprogram(name: "xnrealloc", scope: !1098, file: !1098, line: 118, type: !5355, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!53, !53, !54, !54}
!5357 = !{!5358, !5359, !5360}
!5358 = !DILocalVariable(name: "p", arg: 1, scope: !5354, file: !1098, line: 118, type: !53)
!5359 = !DILocalVariable(name: "n", arg: 2, scope: !5354, file: !1098, line: 118, type: !54)
!5360 = !DILocalVariable(name: "s", arg: 3, scope: !5354, file: !1098, line: 118, type: !54)
!5361 = !DILocation(line: 118, column: 18, scope: !5354)
!5362 = !DILocation(line: 118, column: 28, scope: !5354)
!5363 = !DILocation(line: 118, column: 38, scope: !5354)
!5364 = !DILocation(line: 120, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5354, file: !1098, line: 120, column: 7)
!5366 = !DILocation(line: 120, column: 7, scope: !5354)
!5367 = !DILocation(line: 121, column: 5, scope: !5365)
!5368 = !DILocation(line: 122, column: 25, scope: !5354)
!5369 = !DILocalVariable(name: "p", arg: 1, scope: !5370, file: !5332, line: 51, type: !53)
!5370 = distinct !DISubprogram(name: "xrealloc", scope: !5332, file: !5332, line: 51, type: !169, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5371)
!5371 = !{!5369, !5372}
!5372 = !DILocalVariable(name: "n", arg: 2, scope: !5370, file: !5332, line: 51, type: !54)
!5373 = !DILocation(line: 51, column: 17, scope: !5370, inlinedAt: !5374)
!5374 = distinct !DILocation(line: 122, column: 10, scope: !5354)
!5375 = !DILocation(line: 51, column: 27, scope: !5370, inlinedAt: !5374)
!5376 = !DILocation(line: 53, column: 8, scope: !5377, inlinedAt: !5374)
!5377 = distinct !DILexicalBlock(scope: !5370, file: !5332, line: 53, column: 7)
!5378 = !DILocation(line: 53, column: 13, scope: !5379, inlinedAt: !5374)
!5379 = !DILexicalBlockFile(scope: !5377, file: !5332, discriminator: 1)
!5380 = !DILocation(line: 53, column: 10, scope: !5377, inlinedAt: !5374)
!5381 = !DILocation(line: 57, column: 7, scope: !5382, inlinedAt: !5374)
!5382 = distinct !DILexicalBlock(scope: !5377, file: !5332, line: 54, column: 5)
!5383 = !DILocation(line: 58, column: 7, scope: !5382, inlinedAt: !5374)
!5384 = !DILocation(line: 61, column: 7, scope: !5370, inlinedAt: !5374)
!5385 = !DILocation(line: 62, column: 8, scope: !5386, inlinedAt: !5374)
!5386 = distinct !DILexicalBlock(scope: !5370, file: !5332, line: 62, column: 7)
!5387 = !DILocation(line: 62, column: 13, scope: !5388, inlinedAt: !5374)
!5388 = !DILexicalBlockFile(scope: !5386, file: !5332, discriminator: 1)
!5389 = !DILocation(line: 62, column: 10, scope: !5386, inlinedAt: !5374)
!5390 = !DILocation(line: 63, column: 5, scope: !5386, inlinedAt: !5374)
!5391 = !DILocation(line: 122, column: 3, scope: !5354)
!5392 = !DILocation(line: 51, column: 17, scope: !5370)
!5393 = !DILocation(line: 51, column: 27, scope: !5370)
!5394 = !DILocation(line: 53, column: 8, scope: !5377)
!5395 = !DILocation(line: 53, column: 13, scope: !5379)
!5396 = !DILocation(line: 53, column: 10, scope: !5377)
!5397 = !DILocation(line: 57, column: 7, scope: !5382)
!5398 = !DILocation(line: 58, column: 7, scope: !5382)
!5399 = !DILocation(line: 61, column: 7, scope: !5370)
!5400 = !DILocation(line: 62, column: 8, scope: !5386)
!5401 = !DILocation(line: 62, column: 13, scope: !5388)
!5402 = !DILocation(line: 62, column: 10, scope: !5386)
!5403 = !DILocation(line: 63, column: 5, scope: !5386)
!5404 = !DILocation(line: 65, column: 1, scope: !5370)
!5405 = !DILocation(line: 180, column: 19, scope: !1099)
!5406 = !DILocation(line: 180, column: 30, scope: !1099)
!5407 = !DILocation(line: 180, column: 41, scope: !1099)
!5408 = !DILocation(line: 182, column: 14, scope: !1099)
!5409 = !DILocation(line: 182, column: 10, scope: !1099)
!5410 = !DILocation(line: 184, column: 9, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !1099, file: !1098, line: 184, column: 7)
!5412 = !DILocation(line: 184, column: 7, scope: !1099)
!5413 = !DILocation(line: 186, column: 13, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !1098, line: 186, column: 11)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !1098, line: 185, column: 5)
!5416 = !DILocation(line: 186, column: 11, scope: !5415)
!5417 = !DILocation(line: 194, column: 30, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5414, file: !1098, line: 187, column: 9)
!5419 = !DILocation(line: 195, column: 16, scope: !5418)
!5420 = !DILocation(line: 195, column: 13, scope: !5418)
!5421 = !DILocation(line: 196, column: 9, scope: !5418)
!5422 = !DILocation(line: 204, column: 69, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !1098, line: 204, column: 11)
!5424 = distinct !DILexicalBlock(scope: !5411, file: !1098, line: 199, column: 5)
!5425 = !DILocation(line: 205, column: 11, scope: !5423)
!5426 = !DILocation(line: 204, column: 11, scope: !5424)
!5427 = !DILocation(line: 206, column: 9, scope: !5423)
!5428 = !DILocation(line: 210, column: 7, scope: !1099)
!5429 = !DILocation(line: 211, column: 25, scope: !1099)
!5430 = !DILocation(line: 51, column: 17, scope: !5370, inlinedAt: !5431)
!5431 = distinct !DILocation(line: 211, column: 10, scope: !1099)
!5432 = !DILocation(line: 51, column: 27, scope: !5370, inlinedAt: !5431)
!5433 = !DILocation(line: 53, column: 10, scope: !5377, inlinedAt: !5431)
!5434 = !DILocation(line: 207, column: 14, scope: !5424)
!5435 = !DILocation(line: 207, column: 18, scope: !5424)
!5436 = !DILocation(line: 207, column: 9, scope: !5424)
!5437 = !DILocation(line: 53, column: 8, scope: !5377, inlinedAt: !5431)
!5438 = !DILocation(line: 57, column: 7, scope: !5382, inlinedAt: !5431)
!5439 = !DILocation(line: 58, column: 7, scope: !5382, inlinedAt: !5431)
!5440 = !DILocation(line: 61, column: 7, scope: !5370, inlinedAt: !5431)
!5441 = !DILocation(line: 62, column: 8, scope: !5386, inlinedAt: !5431)
!5442 = !DILocation(line: 62, column: 13, scope: !5388, inlinedAt: !5431)
!5443 = !DILocation(line: 62, column: 10, scope: !5386, inlinedAt: !5431)
!5444 = !DILocation(line: 63, column: 5, scope: !5386, inlinedAt: !5431)
!5445 = !DILocation(line: 211, column: 3, scope: !1099)
!5446 = distinct !DISubprogram(name: "xcharalloc", scope: !1098, file: !1098, line: 220, type: !4062, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5447)
!5447 = !{!5448}
!5448 = !DILocalVariable(name: "n", arg: 1, scope: !5446, file: !1098, line: 220, type: !54)
!5449 = !DILocation(line: 220, column: 20, scope: !5446)
!5450 = !DILocation(line: 39, column: 17, scope: !5331, inlinedAt: !5451)
!5451 = distinct !DILocation(line: 222, column: 10, scope: !5446)
!5452 = !DILocation(line: 41, column: 13, scope: !5331, inlinedAt: !5451)
!5453 = !DILocation(line: 41, column: 9, scope: !5331, inlinedAt: !5451)
!5454 = !DILocation(line: 42, column: 8, scope: !5340, inlinedAt: !5451)
!5455 = !DILocation(line: 42, column: 15, scope: !5342, inlinedAt: !5451)
!5456 = !DILocation(line: 42, column: 10, scope: !5340, inlinedAt: !5451)
!5457 = !DILocation(line: 43, column: 5, scope: !5340, inlinedAt: !5451)
!5458 = !DILocation(line: 222, column: 3, scope: !5446)
!5459 = distinct !DISubprogram(name: "x2realloc", scope: !5332, file: !5332, line: 74, type: !5460, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5462)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!53, !53, !135}
!5462 = !{!5463, !5464}
!5463 = !DILocalVariable(name: "p", arg: 1, scope: !5459, file: !5332, line: 74, type: !53)
!5464 = !DILocalVariable(name: "pn", arg: 2, scope: !5459, file: !5332, line: 74, type: !135)
!5465 = !DILocation(line: 74, column: 18, scope: !5459)
!5466 = !DILocation(line: 74, column: 29, scope: !5459)
!5467 = !DILocation(line: 180, column: 19, scope: !1099, inlinedAt: !5468)
!5468 = distinct !DILocation(line: 76, column: 10, scope: !5459)
!5469 = !DILocation(line: 180, column: 30, scope: !1099, inlinedAt: !5468)
!5470 = !DILocation(line: 180, column: 41, scope: !1099, inlinedAt: !5468)
!5471 = !DILocation(line: 182, column: 14, scope: !1099, inlinedAt: !5468)
!5472 = !DILocation(line: 182, column: 10, scope: !1099, inlinedAt: !5468)
!5473 = !DILocation(line: 184, column: 9, scope: !5411, inlinedAt: !5468)
!5474 = !DILocation(line: 184, column: 7, scope: !1099, inlinedAt: !5468)
!5475 = !DILocation(line: 186, column: 13, scope: !5414, inlinedAt: !5468)
!5476 = !DILocation(line: 186, column: 11, scope: !5415, inlinedAt: !5468)
!5477 = !DILocation(line: 210, column: 7, scope: !1099, inlinedAt: !5468)
!5478 = !DILocation(line: 51, column: 17, scope: !5370, inlinedAt: !5479)
!5479 = distinct !DILocation(line: 211, column: 10, scope: !1099, inlinedAt: !5468)
!5480 = !DILocation(line: 51, column: 27, scope: !5370, inlinedAt: !5479)
!5481 = !DILocation(line: 53, column: 10, scope: !5377, inlinedAt: !5479)
!5482 = !DILocation(line: 205, column: 11, scope: !5423, inlinedAt: !5468)
!5483 = !DILocation(line: 204, column: 11, scope: !5424, inlinedAt: !5468)
!5484 = !DILocation(line: 206, column: 9, scope: !5423, inlinedAt: !5468)
!5485 = !DILocation(line: 207, column: 14, scope: !5424, inlinedAt: !5468)
!5486 = !DILocation(line: 207, column: 18, scope: !5424, inlinedAt: !5468)
!5487 = !DILocation(line: 207, column: 9, scope: !5424, inlinedAt: !5468)
!5488 = !DILocation(line: 53, column: 8, scope: !5377, inlinedAt: !5479)
!5489 = !DILocation(line: 57, column: 7, scope: !5382, inlinedAt: !5479)
!5490 = !DILocation(line: 58, column: 7, scope: !5382, inlinedAt: !5479)
!5491 = !DILocation(line: 61, column: 7, scope: !5370, inlinedAt: !5479)
!5492 = !DILocation(line: 62, column: 8, scope: !5386, inlinedAt: !5479)
!5493 = !DILocation(line: 62, column: 13, scope: !5388, inlinedAt: !5479)
!5494 = !DILocation(line: 62, column: 10, scope: !5386, inlinedAt: !5479)
!5495 = !DILocation(line: 63, column: 5, scope: !5386, inlinedAt: !5479)
!5496 = !DILocation(line: 76, column: 3, scope: !5459)
!5497 = distinct !DISubprogram(name: "xzalloc", scope: !5332, file: !5332, line: 84, type: !165, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5498)
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "s", arg: 1, scope: !5497, file: !5332, line: 84, type: !54)
!5500 = !DILocation(line: 84, column: 17, scope: !5497)
!5501 = !DILocation(line: 39, column: 17, scope: !5331, inlinedAt: !5502)
!5502 = distinct !DILocation(line: 86, column: 18, scope: !5497)
!5503 = !DILocation(line: 41, column: 13, scope: !5331, inlinedAt: !5502)
!5504 = !DILocation(line: 41, column: 9, scope: !5331, inlinedAt: !5502)
!5505 = !DILocation(line: 42, column: 8, scope: !5340, inlinedAt: !5502)
!5506 = !DILocation(line: 42, column: 15, scope: !5342, inlinedAt: !5502)
!5507 = !DILocation(line: 42, column: 10, scope: !5340, inlinedAt: !5502)
!5508 = !DILocation(line: 43, column: 5, scope: !5340, inlinedAt: !5502)
!5509 = !DILocation(line: 86, column: 10, scope: !5497)
!5510 = !DILocation(line: 86, column: 3, scope: !5497)
!5511 = distinct !DISubprogram(name: "xcalloc", scope: !5332, file: !5332, line: 93, type: !1399, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5512)
!5512 = !{!5513, !5514, !5515}
!5513 = !DILocalVariable(name: "n", arg: 1, scope: !5511, file: !5332, line: 93, type: !54)
!5514 = !DILocalVariable(name: "s", arg: 2, scope: !5511, file: !5332, line: 93, type: !54)
!5515 = !DILocalVariable(name: "p", scope: !5511, file: !5332, line: 95, type: !53)
!5516 = !DILocation(line: 93, column: 17, scope: !5511)
!5517 = !DILocation(line: 93, column: 27, scope: !5511)
!5518 = !DILocation(line: 100, column: 7, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5511, file: !5332, line: 100, column: 7)
!5520 = !DILocation(line: 101, column: 7, scope: !5519)
!5521 = !DILocation(line: 101, column: 18, scope: !5522)
!5522 = !DILexicalBlockFile(scope: !5519, file: !5332, discriminator: 1)
!5523 = !DILocation(line: 95, column: 9, scope: !5511)
!5524 = !DILocation(line: 101, column: 16, scope: !5522)
!5525 = !DILocation(line: 100, column: 7, scope: !5526)
!5526 = !DILexicalBlockFile(scope: !5511, file: !5332, discriminator: 1)
!5527 = !DILocation(line: 102, column: 5, scope: !5519)
!5528 = !DILocation(line: 103, column: 3, scope: !5511)
!5529 = distinct !DISubprogram(name: "xmemdup", scope: !5332, file: !5332, line: 111, type: !5530, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5532)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!53, !57, !54}
!5532 = !{!5533, !5534}
!5533 = !DILocalVariable(name: "p", arg: 1, scope: !5529, file: !5332, line: 111, type: !57)
!5534 = !DILocalVariable(name: "s", arg: 2, scope: !5529, file: !5332, line: 111, type: !54)
!5535 = !DILocation(line: 111, column: 22, scope: !5529)
!5536 = !DILocation(line: 111, column: 32, scope: !5529)
!5537 = !DILocation(line: 39, column: 17, scope: !5331, inlinedAt: !5538)
!5538 = distinct !DILocation(line: 113, column: 18, scope: !5529)
!5539 = !DILocation(line: 41, column: 13, scope: !5331, inlinedAt: !5538)
!5540 = !DILocation(line: 41, column: 9, scope: !5331, inlinedAt: !5538)
!5541 = !DILocation(line: 42, column: 8, scope: !5340, inlinedAt: !5538)
!5542 = !DILocation(line: 42, column: 15, scope: !5342, inlinedAt: !5538)
!5543 = !DILocation(line: 42, column: 10, scope: !5340, inlinedAt: !5538)
!5544 = !DILocation(line: 43, column: 5, scope: !5340, inlinedAt: !5538)
!5545 = !DILocation(line: 113, column: 10, scope: !5529)
!5546 = !DILocation(line: 113, column: 3, scope: !5529)
!5547 = distinct !DISubprogram(name: "xstrdup", scope: !5332, file: !5332, line: 119, type: !4267, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !1094, variables: !5548)
!5548 = !{!5549}
!5549 = !DILocalVariable(name: "string", arg: 1, scope: !5547, file: !5332, line: 119, type: !62)
!5550 = !DILocation(line: 119, column: 22, scope: !5547)
!5551 = !DILocation(line: 121, column: 27, scope: !5547)
!5552 = !DILocation(line: 121, column: 43, scope: !5547)
!5553 = !DILocation(line: 111, column: 22, scope: !5529, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 121, column: 10, scope: !5555)
!5555 = !DILexicalBlockFile(scope: !5547, file: !5332, discriminator: 1)
!5556 = !DILocation(line: 111, column: 32, scope: !5529, inlinedAt: !5554)
!5557 = !DILocation(line: 39, column: 17, scope: !5331, inlinedAt: !5558)
!5558 = distinct !DILocation(line: 113, column: 18, scope: !5529, inlinedAt: !5554)
!5559 = !DILocation(line: 41, column: 13, scope: !5331, inlinedAt: !5558)
!5560 = !DILocation(line: 41, column: 9, scope: !5331, inlinedAt: !5558)
!5561 = !DILocation(line: 42, column: 8, scope: !5340, inlinedAt: !5558)
!5562 = !DILocation(line: 42, column: 15, scope: !5342, inlinedAt: !5558)
!5563 = !DILocation(line: 42, column: 10, scope: !5340, inlinedAt: !5558)
!5564 = !DILocation(line: 43, column: 5, scope: !5340, inlinedAt: !5558)
!5565 = !DILocation(line: 113, column: 10, scope: !5529, inlinedAt: !5554)
!5566 = !DILocation(line: 121, column: 3, scope: !5547)
!5567 = distinct !DISubprogram(name: "xalloc_die", scope: !5568, file: !5568, line: 32, type: !479, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !1110, variables: !376)
!5568 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5569 = !DILocation(line: 34, column: 10, scope: !5567)
!5570 = !DILocation(line: 34, column: 33, scope: !5567)
!5571 = !DILocation(line: 34, column: 3, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5567, file: !5568, discriminator: 1)
!5573 = !DILocation(line: 40, column: 3, scope: !5567)
!5574 = distinct !DISubprogram(name: "rpl_calloc", scope: !5575, file: !5575, line: 42, type: !1399, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !1112, variables: !5576)
!5575 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5576 = !{!5577, !5578, !5579, !5580}
!5577 = !DILocalVariable(name: "n", arg: 1, scope: !5574, file: !5575, line: 42, type: !54)
!5578 = !DILocalVariable(name: "s", arg: 2, scope: !5574, file: !5575, line: 42, type: !54)
!5579 = !DILocalVariable(name: "result", scope: !5574, file: !5575, line: 44, type: !53)
!5580 = !DILocalVariable(name: "bytes", scope: !5581, file: !5575, line: 56, type: !54)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !5575, line: 53, column: 5)
!5582 = distinct !DILexicalBlock(scope: !5574, file: !5575, line: 47, column: 7)
!5583 = !DILocation(line: 42, column: 20, scope: !5574)
!5584 = !DILocation(line: 42, column: 30, scope: !5574)
!5585 = !DILocation(line: 47, column: 9, scope: !5582)
!5586 = !DILocation(line: 47, column: 19, scope: !5587)
!5587 = !DILexicalBlockFile(scope: !5582, file: !5575, discriminator: 1)
!5588 = !DILocation(line: 47, column: 14, scope: !5582)
!5589 = !DILocation(line: 56, column: 24, scope: !5581)
!5590 = !DILocation(line: 56, column: 14, scope: !5581)
!5591 = !DILocation(line: 57, column: 17, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5581, file: !5575, line: 57, column: 11)
!5593 = !DILocation(line: 57, column: 21, scope: !5592)
!5594 = !DILocation(line: 57, column: 11, scope: !5581)
!5595 = !DILocation(line: 59, column: 11, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5592, file: !5575, line: 58, column: 9)
!5597 = !DILocation(line: 59, column: 17, scope: !5596)
!5598 = !DILocation(line: 65, column: 12, scope: !5574)
!5599 = !DILocation(line: 44, column: 9, scope: !5574)
!5600 = !DILocation(line: 72, column: 3, scope: !5574)
!5601 = !DILocation(line: 73, column: 1, scope: !5574)
!5602 = distinct !DISubprogram(name: "rpl_fclose", scope: !5603, file: !5603, line: 56, type: !5604, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1114, variables: !5646)
!5603 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!64, !5606}
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !5608)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !5609)
!5609 = !{!5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5608, file: !199, line: 242, baseType: !64, size: 32)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5608, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5608, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5608, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5608, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5608, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5608, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5608, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5608, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5608, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5608, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5608, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5608, file: !199, line: 260, baseType: !5623, size: 64, offset: 768)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !5625)
!5625 = !{!5626, !5627, !5629}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5624, file: !199, line: 157, baseType: !5623, size: 64)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5624, file: !199, line: 158, baseType: !5628, size: 64, offset: 64)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5624, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5608, file: !199, line: 262, baseType: !5628, size: 64, offset: 832)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5608, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5608, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5608, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5608, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5608, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5608, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5608, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5608, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5608, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5608, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5608, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5608, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5608, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5608, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5608, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!5646 = !{!5647, !5648, !5649, !5650}
!5647 = !DILocalVariable(name: "fp", arg: 1, scope: !5602, file: !5603, line: 56, type: !5606)
!5648 = !DILocalVariable(name: "saved_errno", scope: !5602, file: !5603, line: 58, type: !64)
!5649 = !DILocalVariable(name: "fd", scope: !5602, file: !5603, line: 59, type: !64)
!5650 = !DILocalVariable(name: "result", scope: !5602, file: !5603, line: 60, type: !64)
!5651 = !DILocation(line: 56, column: 19, scope: !5602)
!5652 = !DILocation(line: 58, column: 7, scope: !5602)
!5653 = !DILocation(line: 60, column: 7, scope: !5602)
!5654 = !DILocation(line: 63, column: 8, scope: !5602)
!5655 = !DILocation(line: 59, column: 7, scope: !5602)
!5656 = !DILocation(line: 64, column: 10, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5602, file: !5603, line: 64, column: 7)
!5658 = !DILocation(line: 64, column: 7, scope: !5602)
!5659 = !DILocation(line: 65, column: 12, scope: !5657)
!5660 = !DILocation(line: 65, column: 5, scope: !5657)
!5661 = !DILocation(line: 70, column: 9, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5602, file: !5603, line: 70, column: 7)
!5663 = !DILocation(line: 70, column: 23, scope: !5662)
!5664 = !DILocation(line: 70, column: 33, scope: !5665)
!5665 = !DILexicalBlockFile(scope: !5662, file: !5603, discriminator: 1)
!5666 = !DILocation(line: 70, column: 26, scope: !5667)
!5667 = !DILexicalBlockFile(scope: !5662, file: !5603, discriminator: 3)
!5668 = !DILocation(line: 70, column: 59, scope: !5665)
!5669 = !DILocation(line: 71, column: 7, scope: !5662)
!5670 = !DILocation(line: 71, column: 10, scope: !5665)
!5671 = !DILocation(line: 70, column: 7, scope: !5672)
!5672 = !DILexicalBlockFile(scope: !5602, file: !5603, discriminator: 2)
!5673 = !DILocation(line: 98, column: 12, scope: !5602)
!5674 = !DILocation(line: 103, column: 7, scope: !5602)
!5675 = !DILocation(line: 72, column: 19, scope: !5662)
!5676 = !DILocation(line: 103, column: 19, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5602, file: !5603, line: 103, column: 7)
!5678 = !DILocation(line: 105, column: 13, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5677, file: !5603, line: 104, column: 5)
!5680 = !DILocation(line: 107, column: 5, scope: !5679)
!5681 = !DILocation(line: 110, column: 1, scope: !5602)
!5682 = distinct !DISubprogram(name: "rpl_fflush", scope: !5683, file: !5683, line: 127, type: !5684, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !1116, variables: !5726)
!5683 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!64, !5686}
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !5688)
!5688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !5689)
!5689 = !{!5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725}
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5688, file: !199, line: 242, baseType: !64, size: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5688, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5688, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5688, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5688, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5688, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5688, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5688, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5688, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5688, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5688, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5688, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5688, file: !199, line: 260, baseType: !5703, size: 64, offset: 768)
!5703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5704, size: 64)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !5705)
!5705 = !{!5706, !5707, !5709}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5704, file: !199, line: 157, baseType: !5703, size: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5704, file: !199, line: 158, baseType: !5708, size: 64, offset: 64)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5704, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5688, file: !199, line: 262, baseType: !5708, size: 64, offset: 832)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5688, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5688, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5688, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5688, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5688, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5688, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5688, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5688, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5688, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5688, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5688, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5688, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5688, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5688, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5688, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!5726 = !{!5727}
!5727 = !DILocalVariable(name: "stream", arg: 1, scope: !5682, file: !5683, line: 127, type: !5686)
!5728 = !DILocation(line: 127, column: 19, scope: !5682)
!5729 = !DILocation(line: 148, column: 14, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5682, file: !5683, line: 148, column: 7)
!5731 = !DILocation(line: 148, column: 22, scope: !5730)
!5732 = !DILocation(line: 148, column: 27, scope: !5733)
!5733 = !DILexicalBlockFile(scope: !5730, file: !5683, discriminator: 1)
!5734 = !DILocation(line: 148, column: 7, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !5682, file: !5683, discriminator: 1)
!5736 = !DILocation(line: 149, column: 12, scope: !5730)
!5737 = !DILocation(line: 149, column: 5, scope: !5730)
!5738 = !DILocalVariable(name: "fp", arg: 1, scope: !5739, file: !5683, line: 40, type: !5686)
!5739 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5683, file: !5683, line: 40, type: !5740, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !1116, variables: !5742)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{null, !5686}
!5742 = !{!5738}
!5743 = !DILocation(line: 40, column: 48, scope: !5739, inlinedAt: !5744)
!5744 = distinct !DILocation(line: 153, column: 3, scope: !5682)
!5745 = !DILocation(line: 42, column: 11, scope: !5746, inlinedAt: !5744)
!5746 = distinct !DILexicalBlock(scope: !5739, file: !5683, line: 42, column: 7)
!5747 = !{!2268, !1249, i64 0}
!5748 = !DILocation(line: 42, column: 18, scope: !5746, inlinedAt: !5744)
!5749 = !DILocation(line: 42, column: 7, scope: !5739, inlinedAt: !5744)
!5750 = !DILocation(line: 44, column: 5, scope: !5746, inlinedAt: !5744)
!5751 = !DILocation(line: 155, column: 10, scope: !5682)
!5752 = !DILocation(line: 155, column: 3, scope: !5682)
!5753 = !DILocation(line: 229, column: 1, scope: !5682)
!5754 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5755, file: !5755, line: 28, type: !5756, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !1118, variables: !5798)
!5755 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!64, !5758, !1751, !64}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !5760)
!5760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !5761)
!5761 = !{!5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5760, file: !199, line: 242, baseType: !64, size: 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5760, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5760, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5760, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5760, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5760, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5760, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5760, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5760, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5760, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5760, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5760, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5760, file: !199, line: 260, baseType: !5775, size: 64, offset: 768)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !5777)
!5777 = !{!5778, !5779, !5781}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5776, file: !199, line: 157, baseType: !5775, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5776, file: !199, line: 158, baseType: !5780, size: 64, offset: 64)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5776, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5760, file: !199, line: 262, baseType: !5780, size: 64, offset: 832)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5760, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5760, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5760, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5760, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5760, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5760, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5760, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5760, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5760, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5760, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5760, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5760, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5760, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5760, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5760, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!5798 = !{!5799, !5800, !5801, !5802}
!5799 = !DILocalVariable(name: "fp", arg: 1, scope: !5754, file: !5755, line: 28, type: !5758)
!5800 = !DILocalVariable(name: "offset", arg: 2, scope: !5754, file: !5755, line: 28, type: !1751)
!5801 = !DILocalVariable(name: "whence", arg: 3, scope: !5754, file: !5755, line: 28, type: !64)
!5802 = !DILocalVariable(name: "pos", scope: !5803, file: !5755, line: 116, type: !1751)
!5803 = distinct !DILexicalBlock(scope: !5804, file: !5755, line: 112, column: 5)
!5804 = distinct !DILexicalBlock(scope: !5754, file: !5755, line: 51, column: 7)
!5805 = !DILocation(line: 28, column: 15, scope: !5754)
!5806 = !DILocation(line: 28, column: 25, scope: !5754)
!5807 = !DILocation(line: 28, column: 37, scope: !5754)
!5808 = !DILocation(line: 51, column: 11, scope: !5804)
!5809 = !{!2268, !1147, i64 16}
!5810 = !DILocation(line: 51, column: 31, scope: !5804)
!5811 = !{!2268, !1147, i64 8}
!5812 = !DILocation(line: 51, column: 24, scope: !5804)
!5813 = !DILocation(line: 52, column: 7, scope: !5804)
!5814 = !DILocation(line: 52, column: 14, scope: !5815)
!5815 = !DILexicalBlockFile(scope: !5804, file: !5755, discriminator: 1)
!5816 = !DILocation(line: 52, column: 35, scope: !5815)
!5817 = !{!2268, !1147, i64 32}
!5818 = !DILocation(line: 52, column: 28, scope: !5815)
!5819 = !DILocation(line: 53, column: 7, scope: !5804)
!5820 = !DILocation(line: 53, column: 14, scope: !5815)
!5821 = !{!2268, !1147, i64 72}
!5822 = !DILocation(line: 53, column: 28, scope: !5815)
!5823 = !DILocation(line: 51, column: 7, scope: !5824)
!5824 = !DILexicalBlockFile(scope: !5754, file: !5755, discriminator: 1)
!5825 = !DILocation(line: 116, column: 26, scope: !5803)
!5826 = !DILocation(line: 116, column: 19, scope: !5827)
!5827 = !DILexicalBlockFile(scope: !5803, file: !5755, discriminator: 1)
!5828 = !DILocation(line: 116, column: 13, scope: !5803)
!5829 = !DILocation(line: 117, column: 15, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5803, file: !5755, line: 117, column: 11)
!5831 = !DILocation(line: 117, column: 11, scope: !5803)
!5832 = !DILocation(line: 127, column: 11, scope: !5803)
!5833 = !DILocation(line: 127, column: 18, scope: !5803)
!5834 = !DILocation(line: 128, column: 11, scope: !5803)
!5835 = !DILocation(line: 128, column: 19, scope: !5803)
!5836 = !{!2268, !1209, i64 144}
!5837 = !DILocation(line: 159, column: 7, scope: !5803)
!5838 = !DILocation(line: 161, column: 10, scope: !5754)
!5839 = !DILocation(line: 161, column: 3, scope: !5754)
!5840 = !DILocation(line: 162, column: 1, scope: !5754)
!5841 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5842, file: !5842, line: 334, type: !5843, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !1120, variables: !5857)
!5842 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!54, !5845, !62, !54, !5846}
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1794, line: 107, baseType: !5848)
!5848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1794, line: 95, baseType: !5849)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 83, size: 64, elements: !5850)
!5850 = !{!5851, !5852}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5849, file: !1794, line: 85, baseType: !64, size: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5849, file: !1794, line: 94, baseType: !5853, size: 32, offset: 32)
!5853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5849, file: !1794, line: 86, size: 32, elements: !5854)
!5854 = !{!5855, !5856}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5853, file: !1794, line: 89, baseType: !100, size: 32)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5853, file: !1794, line: 93, baseType: !1804, size: 32)
!5857 = !{!5858, !5859, !5860, !5861, !5862, !5863, !5864}
!5858 = !DILocalVariable(name: "pwc", arg: 1, scope: !5841, file: !5842, line: 334, type: !5845)
!5859 = !DILocalVariable(name: "s", arg: 2, scope: !5841, file: !5842, line: 334, type: !62)
!5860 = !DILocalVariable(name: "n", arg: 3, scope: !5841, file: !5842, line: 334, type: !54)
!5861 = !DILocalVariable(name: "ps", arg: 4, scope: !5841, file: !5842, line: 334, type: !5846)
!5862 = !DILocalVariable(name: "ret", scope: !5841, file: !5842, line: 336, type: !54)
!5863 = !DILocalVariable(name: "wc", scope: !5841, file: !5842, line: 337, type: !1814)
!5864 = !DILocalVariable(name: "uc", scope: !5865, file: !5842, line: 398, type: !61)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !5842, line: 397, column: 5)
!5866 = distinct !DILexicalBlock(scope: !5841, file: !5842, line: 396, column: 7)
!5867 = !DILocation(line: 334, column: 23, scope: !5841)
!5868 = !DILocation(line: 334, column: 40, scope: !5841)
!5869 = !DILocation(line: 334, column: 50, scope: !5841)
!5870 = !DILocation(line: 334, column: 64, scope: !5841)
!5871 = !DILocation(line: 337, column: 3, scope: !5841)
!5872 = !DILocation(line: 353, column: 9, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5841, file: !5842, line: 353, column: 7)
!5874 = !DILocation(line: 353, column: 7, scope: !5841)
!5875 = !DILocation(line: 388, column: 9, scope: !5841)
!5876 = !DILocation(line: 336, column: 10, scope: !5841)
!5877 = !DILocation(line: 396, column: 19, scope: !5866)
!5878 = !DILocation(line: 396, column: 31, scope: !5879)
!5879 = !DILexicalBlockFile(scope: !5866, file: !5842, discriminator: 1)
!5880 = !DILocation(line: 396, column: 26, scope: !5866)
!5881 = !DILocation(line: 396, column: 41, scope: !5882)
!5882 = !DILexicalBlockFile(scope: !5866, file: !5842, discriminator: 2)
!5883 = !DILocation(line: 396, column: 7, scope: !5884)
!5884 = !DILexicalBlockFile(scope: !5841, file: !5842, discriminator: 2)
!5885 = !DILocation(line: 398, column: 26, scope: !5865)
!5886 = !DILocation(line: 398, column: 21, scope: !5865)
!5887 = !DILocation(line: 399, column: 14, scope: !5865)
!5888 = !DILocation(line: 399, column: 12, scope: !5865)
!5889 = !DILocation(line: 405, column: 1, scope: !5841)
!5890 = distinct !DISubprogram(name: "print_and_abort", scope: !477, file: !477, line: 330, type: !479, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !473, variables: !376)
!5891 = !DILocation(line: 340, column: 3, scope: !5890)
!5892 = !DILocation(line: 340, column: 3, scope: !5893)
!5893 = !DILexicalBlockFile(scope: !5890, file: !477, discriminator: 1)
!5894 = !DILocation(line: 342, column: 9, scope: !5890)
!5895 = !DILocation(line: 342, column: 3, scope: !5890)
!5896 = distinct !DISubprogram(name: "_obstack_begin", scope: !477, file: !477, line: 150, type: !5897, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !5933)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!64, !5899, !54, !54, !164, !175}
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !138, line: 174, size: 704, elements: !5901)
!5901 = !{!5902, !5903, !5910, !5911, !5912, !5913, !5918, !5919, !5924, !5929, !5930, !5931, !5932}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5900, file: !138, line: 176, baseType: !54, size: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5900, file: !138, line: 177, baseType: !5904, size: 64, offset: 64)
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !138, line: 167, size: 128, elements: !5906)
!5906 = !{!5907, !5908, !5909}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5905, file: !138, line: 169, baseType: !51, size: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5905, file: !138, line: 170, baseType: !5904, size: 64, offset: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !5905, file: !138, line: 171, baseType: !148, offset: 128)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !5900, file: !138, line: 178, baseType: !51, size: 64, offset: 128)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !5900, file: !138, line: 179, baseType: !51, size: 64, offset: 192)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !5900, file: !138, line: 180, baseType: !51, size: 64, offset: 256)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5900, file: !138, line: 185, baseType: !5914, size: 64, offset: 320)
!5914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5900, file: !138, line: 181, size: 64, elements: !5915)
!5915 = !{!5916, !5917}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5914, file: !138, line: 183, baseType: !54, size: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5914, file: !138, line: 184, baseType: !53, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !5900, file: !138, line: 186, baseType: !54, size: 64, offset: 384)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !5900, file: !138, line: 193, baseType: !5920, size: 64, offset: 448)
!5920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5900, file: !138, line: 189, size: 64, elements: !5921)
!5921 = !{!5922, !5923}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5920, file: !138, line: 191, baseType: !164, size: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5920, file: !138, line: 192, baseType: !168, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !5900, file: !138, line: 198, baseType: !5925, size: 64, offset: 512)
!5925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5900, file: !138, line: 194, size: 64, elements: !5926)
!5926 = !{!5927, !5928}
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5925, file: !138, line: 196, baseType: !175, size: 64)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5925, file: !138, line: 197, baseType: !179, size: 64)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !5900, file: !138, line: 200, baseType: !53, size: 64, offset: 576)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !5900, file: !138, line: 201, baseType: !100, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !5900, file: !138, line: 202, baseType: !100, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !5900, file: !138, line: 206, baseType: !100, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!5933 = !{!5934, !5935, !5936, !5937, !5938}
!5934 = !DILocalVariable(name: "h", arg: 1, scope: !5896, file: !477, line: 150, type: !5899)
!5935 = !DILocalVariable(name: "size", arg: 2, scope: !5896, file: !477, line: 151, type: !54)
!5936 = !DILocalVariable(name: "alignment", arg: 3, scope: !5896, file: !477, line: 151, type: !54)
!5937 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5896, file: !477, line: 152, type: !164)
!5938 = !DILocalVariable(name: "freefun", arg: 5, scope: !5896, file: !477, line: 153, type: !175)
!5939 = !DILocation(line: 150, column: 33, scope: !5896)
!5940 = !DILocation(line: 151, column: 33, scope: !5896)
!5941 = !DILocation(line: 151, column: 55, scope: !5896)
!5942 = !DILocation(line: 152, column: 25, scope: !5896)
!5943 = !DILocation(line: 153, column: 24, scope: !5896)
!5944 = !DILocation(line: 155, column: 15, scope: !5896)
!5945 = !DILocation(line: 155, column: 21, scope: !5896)
!5946 = !DILocation(line: 156, column: 14, scope: !5896)
!5947 = !DILocation(line: 156, column: 20, scope: !5896)
!5948 = !DILocation(line: 157, column: 6, scope: !5896)
!5949 = !DILocation(line: 157, column: 20, scope: !5896)
!5950 = !DILocation(line: 114, column: 17, scope: !5951, inlinedAt: !5963)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !477, line: 114, column: 7)
!5952 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !477, file: !477, line: 109, type: !5953, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !5955)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!64, !5899, !54, !54}
!5955 = !{!5956, !5957, !5958, !5959, !5960}
!5956 = !DILocalVariable(name: "h", arg: 1, scope: !5952, file: !477, line: 109, type: !5899)
!5957 = !DILocalVariable(name: "size", arg: 2, scope: !5952, file: !477, line: 110, type: !54)
!5958 = !DILocalVariable(name: "alignment", arg: 3, scope: !5952, file: !477, line: 110, type: !54)
!5959 = !DILocalVariable(name: "chunk", scope: !5952, file: !477, line: 112, type: !5904)
!5960 = !DILocalVariable(name: "extra", scope: !5961, file: !477, line: 127, type: !64)
!5961 = distinct !DILexicalBlock(scope: !5962, file: !477, line: 118, column: 5)
!5962 = distinct !DILexicalBlock(scope: !5952, file: !477, line: 116, column: 7)
!5963 = distinct !DILocation(line: 158, column: 10, scope: !5896)
!5964 = !DILocation(line: 110, column: 62, scope: !5952, inlinedAt: !5963)
!5965 = !DILocation(line: 114, column: 7, scope: !5952, inlinedAt: !5963)
!5966 = !DILocation(line: 116, column: 12, scope: !5962, inlinedAt: !5963)
!5967 = !DILocation(line: 110, column: 40, scope: !5952, inlinedAt: !5963)
!5968 = !DILocation(line: 116, column: 7, scope: !5952, inlinedAt: !5963)
!5969 = !DILocation(line: 133, column: 6, scope: !5952, inlinedAt: !5963)
!5970 = !DILocation(line: 133, column: 17, scope: !5952, inlinedAt: !5963)
!5971 = !{!1349, !1209, i64 0}
!5972 = !DILocation(line: 134, column: 33, scope: !5952, inlinedAt: !5963)
!5973 = !DILocation(line: 134, column: 6, scope: !5952, inlinedAt: !5963)
!5974 = !DILocation(line: 134, column: 21, scope: !5952, inlinedAt: !5963)
!5975 = !DILocalVariable(name: "h", arg: 1, scope: !5976, file: !477, line: 84, type: !5899)
!5976 = distinct !DISubprogram(name: "call_chunkfun", scope: !477, file: !477, line: 84, type: !5977, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!53, !5899, !54}
!5979 = !{!5975, !5980}
!5980 = !DILocalVariable(name: "size", arg: 2, scope: !5976, file: !477, line: 84, type: !54)
!5981 = !DILocation(line: 84, column: 32, scope: !5976, inlinedAt: !5982)
!5982 = distinct !DILocation(line: 136, column: 22, scope: !5952, inlinedAt: !5963)
!5983 = !DILocation(line: 84, column: 42, scope: !5976, inlinedAt: !5982)
!5984 = !DILocation(line: 89, column: 12, scope: !5985, inlinedAt: !5982)
!5985 = distinct !DILexicalBlock(scope: !5976, file: !477, line: 86, column: 7)
!5986 = !DILocation(line: 136, column: 14, scope: !5952, inlinedAt: !5963)
!5987 = !DILocation(line: 136, column: 20, scope: !5952, inlinedAt: !5963)
!5988 = !DILocation(line: 137, column: 8, scope: !5989, inlinedAt: !5963)
!5989 = distinct !DILexicalBlock(scope: !5952, file: !477, line: 137, column: 7)
!5990 = !DILocation(line: 137, column: 7, scope: !5952, inlinedAt: !5963)
!5991 = !DILocation(line: 138, column: 7, scope: !5989, inlinedAt: !5963)
!5992 = !DILocation(line: 138, column: 5, scope: !5989, inlinedAt: !5963)
!5993 = !DILocation(line: 139, column: 35, scope: !5952, inlinedAt: !5963)
!5994 = !DILocation(line: 139, column: 21, scope: !5952, inlinedAt: !5963)
!5995 = !DILocation(line: 139, column: 33, scope: !5952, inlinedAt: !5963)
!5996 = !DILocation(line: 139, column: 6, scope: !5952, inlinedAt: !5963)
!5997 = !DILocation(line: 139, column: 16, scope: !5952, inlinedAt: !5963)
!5998 = !DILocation(line: 141, column: 55, scope: !5952, inlinedAt: !5963)
!5999 = !DILocation(line: 141, column: 50, scope: !5952, inlinedAt: !5963)
!6000 = !DILocation(line: 141, column: 27, scope: !5952, inlinedAt: !5963)
!6001 = !DILocation(line: 141, column: 33, scope: !5952, inlinedAt: !5963)
!6002 = !DILocation(line: 141, column: 6, scope: !5952, inlinedAt: !5963)
!6003 = !DILocation(line: 141, column: 18, scope: !5952, inlinedAt: !5963)
!6004 = !DILocation(line: 142, column: 10, scope: !5952, inlinedAt: !5963)
!6005 = !DILocation(line: 142, column: 15, scope: !5952, inlinedAt: !5963)
!6006 = !DILocation(line: 144, column: 25, scope: !5952, inlinedAt: !5963)
!6007 = !DILocation(line: 145, column: 19, scope: !5952, inlinedAt: !5963)
!6008 = !DILocation(line: 158, column: 3, scope: !5896)
!6009 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !477, file: !477, line: 162, type: !6010, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!64, !5899, !54, !54, !168, !179, !53}
!6012 = !{!6013, !6014, !6015, !6016, !6017, !6018}
!6013 = !DILocalVariable(name: "h", arg: 1, scope: !6009, file: !477, line: 162, type: !5899)
!6014 = !DILocalVariable(name: "size", arg: 2, scope: !6009, file: !477, line: 163, type: !54)
!6015 = !DILocalVariable(name: "alignment", arg: 3, scope: !6009, file: !477, line: 163, type: !54)
!6016 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !6009, file: !477, line: 164, type: !168)
!6017 = !DILocalVariable(name: "freefun", arg: 5, scope: !6009, file: !477, line: 165, type: !179)
!6018 = !DILocalVariable(name: "arg", arg: 6, scope: !6009, file: !477, line: 166, type: !53)
!6019 = !DILocation(line: 162, column: 35, scope: !6009)
!6020 = !DILocation(line: 163, column: 35, scope: !6009)
!6021 = !DILocation(line: 163, column: 57, scope: !6009)
!6022 = !DILocation(line: 164, column: 27, scope: !6009)
!6023 = !DILocation(line: 165, column: 26, scope: !6009)
!6024 = !DILocation(line: 166, column: 25, scope: !6009)
!6025 = !DILocation(line: 168, column: 6, scope: !6009)
!6026 = !DILocation(line: 168, column: 15, scope: !6009)
!6027 = !DILocation(line: 168, column: 21, scope: !6009)
!6028 = !DILocation(line: 169, column: 6, scope: !6009)
!6029 = !DILocation(line: 169, column: 14, scope: !6009)
!6030 = !DILocation(line: 169, column: 20, scope: !6009)
!6031 = !DILocation(line: 170, column: 6, scope: !6009)
!6032 = !DILocation(line: 170, column: 16, scope: !6009)
!6033 = !{!1349, !1147, i64 72}
!6034 = !DILocation(line: 171, column: 6, scope: !6009)
!6035 = !DILocation(line: 171, column: 20, scope: !6009)
!6036 = !DILocation(line: 114, column: 17, scope: !5951, inlinedAt: !6037)
!6037 = distinct !DILocation(line: 172, column: 10, scope: !6009)
!6038 = !DILocation(line: 110, column: 62, scope: !5952, inlinedAt: !6037)
!6039 = !DILocation(line: 114, column: 7, scope: !5952, inlinedAt: !6037)
!6040 = !DILocation(line: 116, column: 12, scope: !5962, inlinedAt: !6037)
!6041 = !DILocation(line: 110, column: 40, scope: !5952, inlinedAt: !6037)
!6042 = !DILocation(line: 116, column: 7, scope: !5952, inlinedAt: !6037)
!6043 = !DILocation(line: 133, column: 6, scope: !5952, inlinedAt: !6037)
!6044 = !DILocation(line: 133, column: 17, scope: !5952, inlinedAt: !6037)
!6045 = !DILocation(line: 134, column: 33, scope: !5952, inlinedAt: !6037)
!6046 = !DILocation(line: 134, column: 6, scope: !5952, inlinedAt: !6037)
!6047 = !DILocation(line: 134, column: 21, scope: !5952, inlinedAt: !6037)
!6048 = !DILocation(line: 84, column: 32, scope: !5976, inlinedAt: !6049)
!6049 = distinct !DILocation(line: 136, column: 22, scope: !5952, inlinedAt: !6037)
!6050 = !DILocation(line: 84, column: 42, scope: !5976, inlinedAt: !6049)
!6051 = !DILocation(line: 87, column: 12, scope: !5985, inlinedAt: !6049)
!6052 = !DILocation(line: 136, column: 14, scope: !5952, inlinedAt: !6037)
!6053 = !DILocation(line: 136, column: 20, scope: !5952, inlinedAt: !6037)
!6054 = !DILocation(line: 137, column: 8, scope: !5989, inlinedAt: !6037)
!6055 = !DILocation(line: 137, column: 7, scope: !5952, inlinedAt: !6037)
!6056 = !DILocation(line: 138, column: 7, scope: !5989, inlinedAt: !6037)
!6057 = !DILocation(line: 138, column: 5, scope: !5989, inlinedAt: !6037)
!6058 = !DILocation(line: 139, column: 35, scope: !5952, inlinedAt: !6037)
!6059 = !DILocation(line: 139, column: 21, scope: !5952, inlinedAt: !6037)
!6060 = !DILocation(line: 139, column: 33, scope: !5952, inlinedAt: !6037)
!6061 = !DILocation(line: 139, column: 6, scope: !5952, inlinedAt: !6037)
!6062 = !DILocation(line: 139, column: 16, scope: !5952, inlinedAt: !6037)
!6063 = !DILocation(line: 141, column: 55, scope: !5952, inlinedAt: !6037)
!6064 = !DILocation(line: 141, column: 50, scope: !5952, inlinedAt: !6037)
!6065 = !DILocation(line: 141, column: 27, scope: !5952, inlinedAt: !6037)
!6066 = !DILocation(line: 141, column: 33, scope: !5952, inlinedAt: !6037)
!6067 = !DILocation(line: 141, column: 6, scope: !5952, inlinedAt: !6037)
!6068 = !DILocation(line: 141, column: 18, scope: !5952, inlinedAt: !6037)
!6069 = !DILocation(line: 142, column: 10, scope: !5952, inlinedAt: !6037)
!6070 = !DILocation(line: 142, column: 15, scope: !5952, inlinedAt: !6037)
!6071 = !DILocation(line: 144, column: 25, scope: !5952, inlinedAt: !6037)
!6072 = !DILocation(line: 145, column: 19, scope: !5952, inlinedAt: !6037)
!6073 = !DILocation(line: 172, column: 3, scope: !6009)
!6074 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !477, file: !477, line: 182, type: !6075, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6077)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !5899, !54}
!6077 = !{!6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086}
!6078 = !DILocalVariable(name: "h", arg: 1, scope: !6074, file: !477, line: 182, type: !5899)
!6079 = !DILocalVariable(name: "length", arg: 2, scope: !6074, file: !477, line: 182, type: !54)
!6080 = !DILocalVariable(name: "old_chunk", scope: !6074, file: !477, line: 184, type: !5904)
!6081 = !DILocalVariable(name: "new_chunk", scope: !6074, file: !477, line: 185, type: !5904)
!6082 = !DILocalVariable(name: "obj_size", scope: !6074, file: !477, line: 186, type: !54)
!6083 = !DILocalVariable(name: "object_base", scope: !6074, file: !477, line: 187, type: !51)
!6084 = !DILocalVariable(name: "sum1", scope: !6074, file: !477, line: 190, type: !54)
!6085 = !DILocalVariable(name: "sum2", scope: !6074, file: !477, line: 191, type: !54)
!6086 = !DILocalVariable(name: "new_size", scope: !6074, file: !477, line: 192, type: !54)
!6087 = !DILocation(line: 182, column: 36, scope: !6074)
!6088 = !DILocation(line: 182, column: 55, scope: !6074)
!6089 = !DILocation(line: 184, column: 41, scope: !6074)
!6090 = !DILocation(line: 184, column: 26, scope: !6074)
!6091 = !DILocation(line: 185, column: 26, scope: !6074)
!6092 = !DILocation(line: 186, column: 24, scope: !6074)
!6093 = !DILocation(line: 186, column: 39, scope: !6074)
!6094 = !DILocation(line: 186, column: 34, scope: !6074)
!6095 = !DILocation(line: 186, column: 10, scope: !6074)
!6096 = !DILocation(line: 190, column: 26, scope: !6074)
!6097 = !DILocation(line: 190, column: 10, scope: !6074)
!6098 = !DILocation(line: 191, column: 27, scope: !6074)
!6099 = !DILocation(line: 191, column: 22, scope: !6074)
!6100 = !DILocation(line: 191, column: 10, scope: !6074)
!6101 = !DILocation(line: 192, column: 38, scope: !6074)
!6102 = !DILocation(line: 192, column: 26, scope: !6074)
!6103 = !DILocation(line: 192, column: 44, scope: !6074)
!6104 = !DILocation(line: 192, column: 10, scope: !6074)
!6105 = !DILocation(line: 193, column: 16, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6074, file: !477, line: 193, column: 7)
!6107 = !DILocation(line: 193, column: 7, scope: !6074)
!6108 = !DILocation(line: 195, column: 21, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6074, file: !477, line: 195, column: 7)
!6110 = !DILocation(line: 195, column: 16, scope: !6109)
!6111 = !DILocation(line: 195, column: 7, scope: !6074)
!6112 = !DILocation(line: 199, column: 16, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6074, file: !477, line: 199, column: 7)
!6114 = !DILocation(line: 199, column: 32, scope: !6115)
!6115 = !DILexicalBlockFile(scope: !6113, file: !477, discriminator: 1)
!6116 = !DILocation(line: 199, column: 24, scope: !6113)
!6117 = !DILocation(line: 84, column: 32, scope: !5976, inlinedAt: !6118)
!6118 = distinct !DILocation(line: 200, column: 17, scope: !6113)
!6119 = !DILocation(line: 84, column: 42, scope: !5976, inlinedAt: !6118)
!6120 = !DILocation(line: 86, column: 10, scope: !5985, inlinedAt: !6118)
!6121 = !DILocation(line: 86, column: 7, scope: !5985, inlinedAt: !6118)
!6122 = !DILocation(line: 86, column: 7, scope: !5976, inlinedAt: !6118)
!6123 = !DILocation(line: 87, column: 24, scope: !5985, inlinedAt: !6118)
!6124 = !DILocation(line: 87, column: 34, scope: !5985, inlinedAt: !6118)
!6125 = !DILocation(line: 87, column: 12, scope: !5985, inlinedAt: !6118)
!6126 = !DILocation(line: 87, column: 5, scope: !5985, inlinedAt: !6118)
!6127 = !DILocation(line: 89, column: 24, scope: !5985, inlinedAt: !6118)
!6128 = !DILocation(line: 89, column: 12, scope: !5985, inlinedAt: !6118)
!6129 = !DILocation(line: 89, column: 5, scope: !5985, inlinedAt: !6118)
!6130 = !DILocation(line: 201, column: 8, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6074, file: !477, line: 201, column: 7)
!6132 = !DILocation(line: 201, column: 7, scope: !6074)
!6133 = !DILocation(line: 202, column: 7, scope: !6131)
!6134 = !DILocation(line: 202, column: 5, scope: !6131)
!6135 = !DILocation(line: 203, column: 12, scope: !6074)
!6136 = !DILocation(line: 204, column: 14, scope: !6074)
!6137 = !DILocation(line: 204, column: 19, scope: !6074)
!6138 = !DILocation(line: 205, column: 58, scope: !6074)
!6139 = !DILocation(line: 205, column: 25, scope: !6074)
!6140 = !DILocation(line: 205, column: 37, scope: !6074)
!6141 = !DILocation(line: 205, column: 14, scope: !6074)
!6142 = !DILocation(line: 205, column: 20, scope: !6074)
!6143 = !DILocation(line: 209, column: 5, scope: !6074)
!6144 = !DILocation(line: 187, column: 9, scope: !6074)
!6145 = !DILocation(line: 212, column: 27, scope: !6074)
!6146 = !DILocation(line: 212, column: 3, scope: !6074)
!6147 = !DILocation(line: 217, column: 11, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6074, file: !477, line: 217, column: 7)
!6149 = !DILocation(line: 217, column: 8, scope: !6148)
!6150 = !DILocation(line: 218, column: 7, scope: !6148)
!6151 = !DILocation(line: 219, column: 14, scope: !6148)
!6152 = !DILocation(line: 219, column: 11, scope: !6148)
!6153 = !DILocation(line: 217, column: 7, scope: !6154)
!6154 = !DILexicalBlockFile(scope: !6074, file: !477, discriminator: 1)
!6155 = !DILocation(line: 222, column: 36, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6148, file: !477, line: 221, column: 5)
!6157 = !DILocation(line: 222, column: 23, scope: !6156)
!6158 = !DILocation(line: 223, column: 24, scope: !6156)
!6159 = !DILocalVariable(name: "h", arg: 1, scope: !6160, file: !477, line: 93, type: !5899)
!6160 = distinct !DISubprogram(name: "call_freefun", scope: !477, file: !477, line: 93, type: !6161, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6163)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{null, !5899, !53}
!6163 = !{!6159, !6164}
!6164 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !6160, file: !477, line: 93, type: !53)
!6165 = !DILocation(line: 93, column: 31, scope: !6160, inlinedAt: !6166)
!6166 = distinct !DILocation(line: 223, column: 7, scope: !6156)
!6167 = !DILocation(line: 93, column: 40, scope: !6160, inlinedAt: !6166)
!6168 = !DILocation(line: 95, column: 10, scope: !6169, inlinedAt: !6166)
!6169 = distinct !DILexicalBlock(scope: !6160, file: !477, line: 95, column: 7)
!6170 = !DILocation(line: 95, column: 7, scope: !6169, inlinedAt: !6166)
!6171 = !DILocation(line: 95, column: 7, scope: !6160, inlinedAt: !6166)
!6172 = !DILocation(line: 96, column: 16, scope: !6169, inlinedAt: !6166)
!6173 = !DILocation(line: 96, column: 26, scope: !6169, inlinedAt: !6166)
!6174 = !DILocation(line: 96, column: 5, scope: !6169, inlinedAt: !6166)
!6175 = !DILocation(line: 98, column: 16, scope: !6169, inlinedAt: !6166)
!6176 = !DILocation(line: 98, column: 5, scope: !6169, inlinedAt: !6166)
!6177 = !DILocation(line: 226, column: 18, scope: !6074)
!6178 = !DILocation(line: 227, column: 33, scope: !6074)
!6179 = !DILocation(line: 227, column: 16, scope: !6074)
!6180 = !DILocation(line: 229, column: 25, scope: !6074)
!6181 = !DILocation(line: 230, column: 1, scope: !6074)
!6182 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !477, file: !477, line: 241, type: !6183, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6185)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!64, !5899, !53}
!6185 = !{!6186, !6187, !6188, !6189}
!6186 = !DILocalVariable(name: "h", arg: 1, scope: !6182, file: !477, line: 241, type: !5899)
!6187 = !DILocalVariable(name: "obj", arg: 2, scope: !6182, file: !477, line: 241, type: !53)
!6188 = !DILocalVariable(name: "lp", scope: !6182, file: !477, line: 243, type: !5904)
!6189 = !DILocalVariable(name: "plp", scope: !6182, file: !477, line: 244, type: !5904)
!6190 = !DILocation(line: 241, column: 39, scope: !6182)
!6191 = !DILocation(line: 241, column: 48, scope: !6182)
!6192 = !DILocation(line: 246, column: 13, scope: !6182)
!6193 = !DILocation(line: 243, column: 26, scope: !6182)
!6194 = !DILocation(line: 250, column: 13, scope: !6195)
!6195 = !DILexicalBlockFile(scope: !6182, file: !477, discriminator: 1)
!6196 = !DILocation(line: 250, column: 18, scope: !6195)
!6197 = !DILocation(line: 250, column: 22, scope: !6198)
!6198 = !DILexicalBlockFile(scope: !6182, file: !477, discriminator: 2)
!6199 = !DILocation(line: 250, column: 34, scope: !6198)
!6200 = !DILocation(line: 250, column: 41, scope: !6198)
!6201 = !DILocation(line: 250, column: 59, scope: !6202)
!6202 = !DILexicalBlockFile(scope: !6182, file: !477, discriminator: 3)
!6203 = !DILocation(line: 250, column: 65, scope: !6202)
!6204 = !DILocation(line: 250, column: 3, scope: !6205)
!6205 = !DILexicalBlockFile(scope: !6182, file: !477, discriminator: 4)
!6206 = !DILocation(line: 252, column: 17, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6182, file: !477, line: 251, column: 5)
!6208 = distinct !{!6208, !6209, !6210}
!6209 = !DILocation(line: 250, column: 3, scope: !6182)
!6210 = !DILocation(line: 254, column: 5, scope: !6182)
!6211 = !DILocation(line: 255, column: 3, scope: !6182)
!6212 = distinct !DISubprogram(name: "_obstack_free", scope: !477, file: !477, line: 262, type: !6161, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6213)
!6213 = !{!6214, !6215, !6216, !6217}
!6214 = !DILocalVariable(name: "h", arg: 1, scope: !6212, file: !477, line: 262, type: !5899)
!6215 = !DILocalVariable(name: "obj", arg: 2, scope: !6212, file: !477, line: 262, type: !53)
!6216 = !DILocalVariable(name: "lp", scope: !6212, file: !477, line: 264, type: !5904)
!6217 = !DILocalVariable(name: "plp", scope: !6212, file: !477, line: 265, type: !5904)
!6218 = !DILocation(line: 262, column: 32, scope: !6212)
!6219 = !DILocation(line: 262, column: 41, scope: !6212)
!6220 = !DILocation(line: 267, column: 11, scope: !6212)
!6221 = !DILocation(line: 264, column: 26, scope: !6212)
!6222 = !DILocation(line: 271, column: 13, scope: !6223)
!6223 = !DILexicalBlockFile(scope: !6212, file: !477, discriminator: 1)
!6224 = !DILocation(line: 271, column: 18, scope: !6223)
!6225 = !DILocation(line: 271, column: 22, scope: !6226)
!6226 = !DILexicalBlockFile(scope: !6212, file: !477, discriminator: 2)
!6227 = !DILocation(line: 271, column: 34, scope: !6226)
!6228 = !DILocation(line: 271, column: 41, scope: !6226)
!6229 = !DILocation(line: 271, column: 59, scope: !6230)
!6230 = !DILexicalBlockFile(scope: !6212, file: !477, discriminator: 3)
!6231 = !DILocation(line: 271, column: 65, scope: !6230)
!6232 = !DILocation(line: 271, column: 3, scope: !6233)
!6233 = !DILexicalBlockFile(scope: !6212, file: !477, discriminator: 4)
!6234 = !DILocation(line: 273, column: 17, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6212, file: !477, line: 272, column: 5)
!6236 = !DILocation(line: 265, column: 26, scope: !6212)
!6237 = !DILocation(line: 93, column: 31, scope: !6160, inlinedAt: !6238)
!6238 = distinct !DILocation(line: 274, column: 7, scope: !6235)
!6239 = !DILocation(line: 93, column: 40, scope: !6160, inlinedAt: !6238)
!6240 = !DILocation(line: 95, column: 10, scope: !6169, inlinedAt: !6238)
!6241 = !DILocation(line: 95, column: 7, scope: !6169, inlinedAt: !6238)
!6242 = !DILocation(line: 95, column: 7, scope: !6160, inlinedAt: !6238)
!6243 = !DILocation(line: 96, column: 16, scope: !6169, inlinedAt: !6238)
!6244 = !DILocation(line: 96, column: 26, scope: !6169, inlinedAt: !6238)
!6245 = !DILocation(line: 96, column: 5, scope: !6169, inlinedAt: !6238)
!6246 = !DILocation(line: 98, column: 16, scope: !6169, inlinedAt: !6238)
!6247 = !DILocation(line: 98, column: 5, scope: !6169, inlinedAt: !6238)
!6248 = !DILocation(line: 278, column: 29, scope: !6235)
!6249 = distinct !{!6249, !6250, !6251}
!6250 = !DILocation(line: 271, column: 3, scope: !6212)
!6251 = !DILocation(line: 279, column: 5, scope: !6212)
!6252 = !DILocation(line: 282, column: 27, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6254, file: !477, line: 281, column: 5)
!6254 = distinct !DILexicalBlock(scope: !6212, file: !477, line: 280, column: 7)
!6255 = !DILocation(line: 282, column: 37, scope: !6253)
!6256 = !DILocation(line: 282, column: 10, scope: !6253)
!6257 = !DILocation(line: 282, column: 22, scope: !6253)
!6258 = !DILocation(line: 283, column: 28, scope: !6253)
!6259 = !DILocation(line: 283, column: 10, scope: !6253)
!6260 = !DILocation(line: 283, column: 22, scope: !6253)
!6261 = !DILocation(line: 284, column: 16, scope: !6253)
!6262 = !DILocation(line: 285, column: 5, scope: !6253)
!6263 = !DILocation(line: 286, column: 16, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6254, file: !477, line: 286, column: 12)
!6265 = !DILocation(line: 286, column: 12, scope: !6254)
!6266 = !DILocation(line: 288, column: 5, scope: !6264)
!6267 = !DILocation(line: 289, column: 1, scope: !6212)
!6268 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !477, file: !477, line: 292, type: !6269, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !6271)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{!54, !5899}
!6271 = !{!6272, !6273, !6274}
!6272 = !DILocalVariable(name: "h", arg: 1, scope: !6268, file: !477, line: 292, type: !5899)
!6273 = !DILocalVariable(name: "lp", scope: !6268, file: !477, line: 294, type: !5904)
!6274 = !DILocalVariable(name: "nbytes", scope: !6268, file: !477, line: 295, type: !54)
!6275 = !DILocation(line: 292, column: 39, scope: !6268)
!6276 = !DILocation(line: 295, column: 19, scope: !6268)
!6277 = !DILocation(line: 297, column: 16, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6268, file: !477, line: 297, column: 3)
!6279 = !DILocation(line: 294, column: 26, scope: !6268)
!6280 = !DILocation(line: 297, column: 26, scope: !6281)
!6281 = !DILexicalBlockFile(scope: !6282, file: !477, discriminator: 1)
!6282 = distinct !DILexicalBlock(scope: !6278, file: !477, line: 297, column: 3)
!6283 = !DILocation(line: 297, column: 3, scope: !6284)
!6284 = !DILexicalBlockFile(scope: !6278, file: !477, discriminator: 1)
!6285 = !DILocation(line: 299, column: 21, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6282, file: !477, line: 298, column: 5)
!6287 = !DILocation(line: 299, column: 27, scope: !6286)
!6288 = !DILocation(line: 299, column: 14, scope: !6286)
!6289 = !DILocation(line: 297, column: 41, scope: !6290)
!6290 = !DILexicalBlockFile(scope: !6282, file: !477, discriminator: 2)
!6291 = distinct !{!6291, !6292, !6293}
!6292 = !DILocation(line: 297, column: 3, scope: !6278)
!6293 = !DILocation(line: 300, column: 5, scope: !6278)
!6294 = !DILocation(line: 301, column: 3, scope: !6268)
!6295 = distinct !DISubprogram(name: "close_stream", scope: !6296, file: !6296, line: 56, type: !6297, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !1123, variables: !6339)
!6296 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!64, !6299}
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6300, size: 64)
!6300 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !6301)
!6301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !6302)
!6302 = !{!6303, !6304, !6305, !6306, !6307, !6308, !6309, !6310, !6311, !6312, !6313, !6314, !6315, !6323, !6324, !6325, !6326, !6327, !6328, !6329, !6330, !6331, !6332, !6333, !6334, !6335, !6336, !6337, !6338}
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6301, file: !199, line: 242, baseType: !64, size: 32)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6301, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6301, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6301, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6301, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6301, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6301, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6301, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6301, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6301, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6301, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6301, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6301, file: !199, line: 260, baseType: !6316, size: 64, offset: 768)
!6316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6317, size: 64)
!6317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !6318)
!6318 = !{!6319, !6320, !6322}
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6317, file: !199, line: 157, baseType: !6316, size: 64)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6317, file: !199, line: 158, baseType: !6321, size: 64, offset: 64)
!6321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6301, size: 64)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6317, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6301, file: !199, line: 262, baseType: !6321, size: 64, offset: 832)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6301, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6301, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6301, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6301, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6301, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6301, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6301, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6301, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6301, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6301, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6301, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6301, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6301, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6301, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6301, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!6339 = !{!6340, !6341, !6343, !6344}
!6340 = !DILocalVariable(name: "stream", arg: 1, scope: !6295, file: !6296, line: 56, type: !6299)
!6341 = !DILocalVariable(name: "some_pending", scope: !6295, file: !6296, line: 58, type: !6342)
!6342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!6343 = !DILocalVariable(name: "prev_fail", scope: !6295, file: !6296, line: 59, type: !6342)
!6344 = !DILocalVariable(name: "fclose_fail", scope: !6295, file: !6296, line: 60, type: !6342)
!6345 = !DILocation(line: 56, column: 21, scope: !6295)
!6346 = !DILocation(line: 58, column: 30, scope: !6295)
!6347 = !DILocalVariable(name: "__stream", arg: 1, scope: !6348, file: !2260, line: 132, type: !6299)
!6348 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2260, file: !2260, line: 132, type: !6297, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !1123, variables: !6349)
!6349 = !{!6347}
!6350 = !DILocation(line: 132, column: 1, scope: !6348, inlinedAt: !6351)
!6351 = distinct !DILocation(line: 59, column: 27, scope: !6295)
!6352 = !DILocation(line: 134, column: 10, scope: !6348, inlinedAt: !6351)
!6353 = !DILocation(line: 59, column: 43, scope: !6295)
!6354 = !DILocation(line: 60, column: 29, scope: !6295)
!6355 = !DILocation(line: 60, column: 45, scope: !6295)
!6356 = !DILocation(line: 70, column: 17, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6295, file: !6296, line: 70, column: 7)
!6358 = !DILocation(line: 70, column: 33, scope: !6359)
!6359 = !DILexicalBlockFile(scope: !6357, file: !6296, discriminator: 1)
!6360 = !DILocation(line: 70, column: 53, scope: !6361)
!6361 = !DILexicalBlockFile(scope: !6357, file: !6296, discriminator: 3)
!6362 = !DILocation(line: 70, column: 7, scope: !6363)
!6363 = !DILexicalBlockFile(scope: !6295, file: !6296, discriminator: 3)
!6364 = !DILocation(line: 72, column: 11, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6357, file: !6296, line: 71, column: 5)
!6366 = !DILocation(line: 73, column: 9, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6365, file: !6296, line: 72, column: 11)
!6368 = !DILocation(line: 73, column: 15, scope: !6367)
!6369 = !DILocation(line: 78, column: 1, scope: !6295)
!6370 = distinct !DISubprogram(name: "hard_locale", scope: !6371, file: !6371, line: 38, type: !6372, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !1125, variables: !6374)
!6371 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!77, !64}
!6374 = !{!6375, !6376, !6377, !6378, !6385, !6386, !6388, !6389, !6391, !6392, !6394}
!6375 = !DILocalVariable(name: "category", arg: 1, scope: !6370, file: !6371, line: 38, type: !64)
!6376 = !DILocalVariable(name: "hard", scope: !6370, file: !6371, line: 40, type: !77)
!6377 = !DILocalVariable(name: "p", scope: !6370, file: !6371, line: 41, type: !62)
!6378 = !DILocalVariable(name: "__s1_len", scope: !6379, file: !6371, line: 47, type: !54)
!6379 = distinct !DILexicalBlock(scope: !6380, file: !6371, line: 47, column: 15)
!6380 = distinct !DILexicalBlock(scope: !6381, file: !6371, line: 47, column: 15)
!6381 = distinct !DILexicalBlock(scope: !6382, file: !6371, line: 46, column: 9)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !6371, line: 45, column: 11)
!6383 = distinct !DILexicalBlock(scope: !6384, file: !6371, line: 44, column: 5)
!6384 = distinct !DILexicalBlock(scope: !6370, file: !6371, line: 43, column: 7)
!6385 = !DILocalVariable(name: "__s2_len", scope: !6379, file: !6371, line: 47, type: !54)
!6386 = !DILocalVariable(name: "__s2", scope: !6387, file: !6371, line: 47, type: !59)
!6387 = distinct !DILexicalBlock(scope: !6379, file: !6371, line: 47, column: 15)
!6388 = !DILocalVariable(name: "__result", scope: !6387, file: !6371, line: 47, type: !64)
!6389 = !DILocalVariable(name: "__s1_len", scope: !6390, file: !6371, line: 47, type: !54)
!6390 = distinct !DILexicalBlock(scope: !6380, file: !6371, line: 47, column: 39)
!6391 = !DILocalVariable(name: "__s2_len", scope: !6390, file: !6371, line: 47, type: !54)
!6392 = !DILocalVariable(name: "__s2", scope: !6393, file: !6371, line: 47, type: !59)
!6393 = distinct !DILexicalBlock(scope: !6390, file: !6371, line: 47, column: 39)
!6394 = !DILocalVariable(name: "__result", scope: !6393, file: !6371, line: 47, type: !64)
!6395 = !DILocation(line: 38, column: 18, scope: !6370)
!6396 = !DILocation(line: 40, column: 8, scope: !6370)
!6397 = !DILocation(line: 41, column: 19, scope: !6370)
!6398 = !DILocation(line: 41, column: 15, scope: !6370)
!6399 = !DILocation(line: 43, column: 7, scope: !6384)
!6400 = !DILocation(line: 43, column: 7, scope: !6370)
!6401 = !DILocation(line: 47, column: 15, scope: !6379)
!6402 = !DILocation(line: 47, column: 15, scope: !6387)
!6403 = !DILocation(line: 47, column: 15, scope: !6404)
!6404 = !DILexicalBlockFile(scope: !6387, file: !6371, discriminator: 2)
!6405 = !DILocation(line: 47, column: 15, scope: !6406)
!6406 = !DILexicalBlockFile(scope: !6407, file: !6371, discriminator: 3)
!6407 = distinct !DILexicalBlock(scope: !6387, file: !6371, line: 47, column: 15)
!6408 = !DILocation(line: 47, column: 15, scope: !6409)
!6409 = !DILexicalBlockFile(scope: !6407, file: !6371, discriminator: 2)
!6410 = !DILocation(line: 47, column: 15, scope: !6411)
!6411 = !DILexicalBlockFile(scope: !6412, file: !6371, discriminator: 4)
!6412 = distinct !DILexicalBlock(scope: !6407, file: !6371, line: 47, column: 15)
!6413 = !DILocation(line: 47, column: 15, scope: !6414)
!6414 = !DILexicalBlockFile(scope: !6379, file: !6371, discriminator: 11)
!6415 = !DILocation(line: 47, column: 36, scope: !6416)
!6416 = !DILexicalBlockFile(scope: !6380, file: !6371, discriminator: 13)
!6417 = !DILocation(line: 47, column: 39, scope: !6390)
!6418 = !DILocation(line: 47, column: 39, scope: !6419)
!6419 = !DILexicalBlockFile(scope: !6390, file: !6371, discriminator: 26)
!6420 = !DILocation(line: 47, column: 59, scope: !6421)
!6421 = !DILexicalBlockFile(scope: !6380, file: !6371, discriminator: 27)
!6422 = !DILocation(line: 47, column: 15, scope: !6423)
!6423 = !DILexicalBlockFile(scope: !6381, file: !6371, discriminator: 27)
!6424 = !DILocation(line: 48, column: 13, scope: !6380)
!6425 = !DILocation(line: 71, column: 3, scope: !6370)
!6426 = distinct !DISubprogram(name: "locale_charset", scope: !827, file: !827, line: 393, type: !6427, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !483, variables: !6429)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!62}
!6429 = !{!6430, !6431, !6432, !6437}
!6430 = !DILocalVariable(name: "codeset", scope: !6426, file: !827, line: 395, type: !62)
!6431 = !DILocalVariable(name: "aliases", scope: !6426, file: !827, line: 396, type: !62)
!6432 = !DILocalVariable(name: "__s1_len", scope: !6433, file: !827, line: 592, type: !54)
!6433 = distinct !DILexicalBlock(scope: !6434, file: !827, line: 592, column: 9)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !827, line: 592, column: 9)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !827, line: 589, column: 3)
!6436 = distinct !DILexicalBlock(scope: !6426, file: !827, line: 589, column: 3)
!6437 = !DILocalVariable(name: "__s2_len", scope: !6433, file: !827, line: 592, type: !54)
!6438 = !DILocalVariable(name: "buf1", scope: !6439, file: !827, line: 196, type: !6506)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !827, line: 194, column: 21)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !827, line: 193, column: 19)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !827, line: 193, column: 19)
!6442 = distinct !DILexicalBlock(scope: !6443, file: !827, line: 188, column: 17)
!6443 = distinct !DILexicalBlock(scope: !6444, file: !827, line: 181, column: 19)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !827, line: 177, column: 13)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !827, line: 173, column: 15)
!6446 = distinct !DILexicalBlock(scope: !6447, file: !827, line: 161, column: 9)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !827, line: 157, column: 11)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !827, line: 130, column: 5)
!6449 = distinct !DILexicalBlock(scope: !6450, file: !827, line: 129, column: 7)
!6450 = distinct !DISubprogram(name: "get_charset_aliases", scope: !827, file: !827, line: 124, type: !6427, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !483, variables: !6451)
!6451 = !{!6452, !6453, !6454, !6455, !6456, !6458, !6459, !6460, !6461, !6502, !6503, !6504, !6438, !6505, !6509, !6510, !6511}
!6452 = !DILocalVariable(name: "cp", scope: !6450, file: !827, line: 126, type: !62)
!6453 = !DILocalVariable(name: "dir", scope: !6448, file: !827, line: 132, type: !62)
!6454 = !DILocalVariable(name: "base", scope: !6448, file: !827, line: 133, type: !62)
!6455 = !DILocalVariable(name: "file_name", scope: !6448, file: !827, line: 134, type: !51)
!6456 = !DILocalVariable(name: "dir_len", scope: !6457, file: !827, line: 144, type: !54)
!6457 = distinct !DILexicalBlock(scope: !6448, file: !827, line: 143, column: 7)
!6458 = !DILocalVariable(name: "base_len", scope: !6457, file: !827, line: 145, type: !54)
!6459 = !DILocalVariable(name: "add_slash", scope: !6457, file: !827, line: 146, type: !64)
!6460 = !DILocalVariable(name: "fd", scope: !6446, file: !827, line: 162, type: !64)
!6461 = !DILocalVariable(name: "fp", scope: !6444, file: !827, line: 178, type: !6462)
!6462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6463, size: 64)
!6463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !197, line: 49, baseType: !6464)
!6464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !199, line: 241, size: 1728, elements: !6465)
!6465 = !{!6466, !6467, !6468, !6469, !6470, !6471, !6472, !6473, !6474, !6475, !6476, !6477, !6478, !6486, !6487, !6488, !6489, !6490, !6491, !6492, !6493, !6494, !6495, !6496, !6497, !6498, !6499, !6500, !6501}
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6464, file: !199, line: 242, baseType: !64, size: 32)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6464, file: !199, line: 247, baseType: !51, size: 64, offset: 64)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6464, file: !199, line: 248, baseType: !51, size: 64, offset: 128)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6464, file: !199, line: 249, baseType: !51, size: 64, offset: 192)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6464, file: !199, line: 250, baseType: !51, size: 64, offset: 256)
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6464, file: !199, line: 251, baseType: !51, size: 64, offset: 320)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6464, file: !199, line: 252, baseType: !51, size: 64, offset: 384)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6464, file: !199, line: 253, baseType: !51, size: 64, offset: 448)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6464, file: !199, line: 254, baseType: !51, size: 64, offset: 512)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6464, file: !199, line: 256, baseType: !51, size: 64, offset: 576)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6464, file: !199, line: 257, baseType: !51, size: 64, offset: 640)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6464, file: !199, line: 258, baseType: !51, size: 64, offset: 704)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6464, file: !199, line: 260, baseType: !6479, size: 64, offset: 768)
!6479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6480, size: 64)
!6480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !199, line: 156, size: 192, elements: !6481)
!6481 = !{!6482, !6483, !6485}
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6480, file: !199, line: 157, baseType: !6479, size: 64)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6480, file: !199, line: 158, baseType: !6484, size: 64, offset: 64)
!6484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6464, size: 64)
!6485 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6480, file: !199, line: 162, baseType: !64, size: 32, offset: 128)
!6486 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6464, file: !199, line: 262, baseType: !6484, size: 64, offset: 832)
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6464, file: !199, line: 264, baseType: !64, size: 32, offset: 896)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6464, file: !199, line: 268, baseType: !64, size: 32, offset: 928)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6464, file: !199, line: 270, baseType: !108, size: 64, offset: 960)
!6490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6464, file: !199, line: 274, baseType: !65, size: 16, offset: 1024)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6464, file: !199, line: 275, baseType: !227, size: 8, offset: 1040)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6464, file: !199, line: 276, baseType: !229, size: 8, offset: 1048)
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6464, file: !199, line: 280, baseType: !233, size: 64, offset: 1088)
!6494 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6464, file: !199, line: 289, baseType: !236, size: 64, offset: 1152)
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6464, file: !199, line: 297, baseType: !53, size: 64, offset: 1216)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6464, file: !199, line: 298, baseType: !53, size: 64, offset: 1280)
!6497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6464, file: !199, line: 299, baseType: !53, size: 64, offset: 1344)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6464, file: !199, line: 300, baseType: !53, size: 64, offset: 1408)
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6464, file: !199, line: 302, baseType: !54, size: 64, offset: 1472)
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6464, file: !199, line: 303, baseType: !64, size: 32, offset: 1536)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6464, file: !199, line: 305, baseType: !244, size: 160, offset: 1568)
!6502 = !DILocalVariable(name: "res_ptr", scope: !6442, file: !827, line: 190, type: !51)
!6503 = !DILocalVariable(name: "res_size", scope: !6442, file: !827, line: 191, type: !54)
!6504 = !DILocalVariable(name: "c", scope: !6439, file: !827, line: 195, type: !64)
!6505 = !DILocalVariable(name: "buf2", scope: !6439, file: !827, line: 197, type: !6506)
!6506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 408, elements: !6507)
!6507 = !{!6508}
!6508 = !DISubrange(count: 51)
!6509 = !DILocalVariable(name: "l1", scope: !6439, file: !827, line: 198, type: !54)
!6510 = !DILocalVariable(name: "l2", scope: !6439, file: !827, line: 198, type: !54)
!6511 = !DILocalVariable(name: "old_res_ptr", scope: !6439, file: !827, line: 199, type: !51)
!6512 = !DILocation(line: 196, column: 28, scope: !6439, inlinedAt: !6513)
!6513 = distinct !DILocation(line: 589, column: 18, scope: !6436)
!6514 = !DILocation(line: 197, column: 28, scope: !6439, inlinedAt: !6513)
!6515 = !DILocation(line: 403, column: 13, scope: !6426)
!6516 = !DILocation(line: 395, column: 15, scope: !6426)
!6517 = !DILocation(line: 584, column: 15, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6426, file: !827, line: 584, column: 7)
!6519 = !DILocation(line: 584, column: 7, scope: !6426)
!6520 = !DILocation(line: 128, column: 8, scope: !6450, inlinedAt: !6513)
!6521 = !DILocation(line: 126, column: 15, scope: !6450, inlinedAt: !6513)
!6522 = !DILocation(line: 129, column: 10, scope: !6449, inlinedAt: !6513)
!6523 = !DILocation(line: 129, column: 7, scope: !6450, inlinedAt: !6513)
!6524 = !DILocation(line: 138, column: 13, scope: !6448, inlinedAt: !6513)
!6525 = !DILocation(line: 132, column: 19, scope: !6448, inlinedAt: !6513)
!6526 = !DILocation(line: 139, column: 15, scope: !6527, inlinedAt: !6513)
!6527 = distinct !DILexicalBlock(scope: !6448, file: !827, line: 139, column: 11)
!6528 = !DILocation(line: 139, column: 23, scope: !6527, inlinedAt: !6513)
!6529 = !DILocation(line: 139, column: 26, scope: !6530, inlinedAt: !6513)
!6530 = !DILexicalBlockFile(scope: !6527, file: !827, discriminator: 1)
!6531 = !DILocation(line: 139, column: 33, scope: !6530, inlinedAt: !6513)
!6532 = !DILocation(line: 139, column: 11, scope: !6533, inlinedAt: !6513)
!6533 = !DILexicalBlockFile(scope: !6448, file: !827, discriminator: 1)
!6534 = !DILocation(line: 140, column: 9, scope: !6527, inlinedAt: !6513)
!6535 = !DILocation(line: 144, column: 26, scope: !6457, inlinedAt: !6513)
!6536 = !DILocation(line: 144, column: 16, scope: !6457, inlinedAt: !6513)
!6537 = !DILocation(line: 145, column: 16, scope: !6457, inlinedAt: !6513)
!6538 = !DILocation(line: 146, column: 34, scope: !6457, inlinedAt: !6513)
!6539 = !DILocation(line: 146, column: 38, scope: !6457, inlinedAt: !6513)
!6540 = !DILocation(line: 146, column: 42, scope: !6541, inlinedAt: !6513)
!6541 = !DILexicalBlockFile(scope: !6457, file: !827, discriminator: 1)
!6542 = !DILocation(line: 146, column: 41, scope: !6541, inlinedAt: !6513)
!6543 = !DILocation(line: 147, column: 48, scope: !6457, inlinedAt: !6513)
!6544 = !DILocation(line: 147, column: 46, scope: !6457, inlinedAt: !6513)
!6545 = !DILocation(line: 147, column: 69, scope: !6457, inlinedAt: !6513)
!6546 = !DILocation(line: 147, column: 30, scope: !6457, inlinedAt: !6513)
!6547 = !DILocation(line: 134, column: 13, scope: !6448, inlinedAt: !6513)
!6548 = !DILocation(line: 148, column: 13, scope: !6457, inlinedAt: !6513)
!6549 = !DILocation(line: 150, column: 13, scope: !6550, inlinedAt: !6513)
!6550 = distinct !DILexicalBlock(scope: !6551, file: !827, line: 149, column: 11)
!6551 = distinct !DILexicalBlock(scope: !6457, file: !827, line: 148, column: 13)
!6552 = !DILocation(line: 151, column: 17, scope: !6550, inlinedAt: !6513)
!6553 = !DILocation(line: 152, column: 34, scope: !6554, inlinedAt: !6513)
!6554 = distinct !DILexicalBlock(scope: !6550, file: !827, line: 151, column: 17)
!6555 = !DILocation(line: 153, column: 41, scope: !6550, inlinedAt: !6513)
!6556 = !DILocation(line: 153, column: 13, scope: !6550, inlinedAt: !6513)
!6557 = !DILocation(line: 157, column: 11, scope: !6448, inlinedAt: !6513)
!6558 = !DILocation(line: 171, column: 16, scope: !6446, inlinedAt: !6513)
!6559 = !DILocation(line: 162, column: 15, scope: !6446, inlinedAt: !6513)
!6560 = !DILocation(line: 173, column: 18, scope: !6445, inlinedAt: !6513)
!6561 = !DILocation(line: 173, column: 15, scope: !6446, inlinedAt: !6513)
!6562 = !DILocation(line: 180, column: 20, scope: !6444, inlinedAt: !6513)
!6563 = !DILocation(line: 178, column: 21, scope: !6444, inlinedAt: !6513)
!6564 = !DILocation(line: 181, column: 22, scope: !6443, inlinedAt: !6513)
!6565 = !DILocation(line: 181, column: 19, scope: !6444, inlinedAt: !6513)
!6566 = !DILocation(line: 190, column: 25, scope: !6442, inlinedAt: !6513)
!6567 = !DILocation(line: 184, column: 19, scope: !6568, inlinedAt: !6513)
!6568 = distinct !DILexicalBlock(scope: !6443, file: !827, line: 182, column: 17)
!6569 = !DILocation(line: 186, column: 17, scope: !6568, inlinedAt: !6513)
!6570 = !DILocation(line: 191, column: 26, scope: !6442, inlinedAt: !6513)
!6571 = !DILocation(line: 196, column: 23, scope: !6439, inlinedAt: !6513)
!6572 = !DILocation(line: 197, column: 23, scope: !6439, inlinedAt: !6513)
!6573 = !DILocalVariable(name: "__fp", arg: 1, scope: !6574, file: !2260, line: 63, type: !6462)
!6574 = distinct !DISubprogram(name: "getc_unlocked", scope: !2260, file: !2260, line: 63, type: !6575, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !483, variables: !6577)
!6575 = !DISubroutineType(types: !6576)
!6576 = !{!64, !6462}
!6577 = !{!6573}
!6578 = !DILocation(line: 63, column: 22, scope: !6574, inlinedAt: !6579)
!6579 = distinct !DILocation(line: 201, column: 27, scope: !6439, inlinedAt: !6513)
!6580 = !DILocation(line: 65, column: 10, scope: !6574, inlinedAt: !6579)
!6581 = !DILocation(line: 65, column: 10, scope: !6582, inlinedAt: !6579)
!6582 = !DILexicalBlockFile(scope: !6574, file: !2260, discriminator: 1)
!6583 = !DILocation(line: 65, column: 10, scope: !6584, inlinedAt: !6579)
!6584 = !DILexicalBlockFile(scope: !6574, file: !2260, discriminator: 2)
!6585 = !DILocation(line: 65, column: 10, scope: !6586, inlinedAt: !6579)
!6586 = !DILexicalBlockFile(scope: !6574, file: !2260, discriminator: 3)
!6587 = !DILocation(line: 195, column: 27, scope: !6439, inlinedAt: !6513)
!6588 = !DILocation(line: 202, column: 27, scope: !6439, inlinedAt: !6513)
!6589 = !DILocation(line: 63, column: 22, scope: !6574, inlinedAt: !6590)
!6590 = distinct !DILocation(line: 210, column: 33, scope: !6591, inlinedAt: !6513)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !827, line: 207, column: 25)
!6592 = distinct !DILexicalBlock(scope: !6439, file: !827, line: 206, column: 27)
!6593 = !DILocation(line: 65, column: 10, scope: !6574, inlinedAt: !6590)
!6594 = !DILocation(line: 65, column: 10, scope: !6582, inlinedAt: !6590)
!6595 = !DILocation(line: 65, column: 10, scope: !6584, inlinedAt: !6590)
!6596 = !DILocation(line: 65, column: 10, scope: !6586, inlinedAt: !6590)
!6597 = !DILocation(line: 210, column: 29, scope: !6598, inlinedAt: !6513)
!6598 = !DILexicalBlockFile(scope: !6591, file: !827, discriminator: 1)
!6599 = distinct !{!6599, !6600, !6601}
!6600 = !DILocation(line: 193, column: 19, scope: !6441)
!6601 = !DILocation(line: 241, column: 21, scope: !6441)
!6602 = !DILocation(line: 216, column: 23, scope: !6439, inlinedAt: !6513)
!6603 = !DILocation(line: 217, column: 27, scope: !6604, inlinedAt: !6513)
!6604 = distinct !DILexicalBlock(scope: !6439, file: !827, line: 217, column: 27)
!6605 = !DILocation(line: 217, column: 64, scope: !6604, inlinedAt: !6513)
!6606 = !DILocation(line: 217, column: 27, scope: !6439, inlinedAt: !6513)
!6607 = !DILocation(line: 219, column: 28, scope: !6439, inlinedAt: !6513)
!6608 = !DILocation(line: 198, column: 30, scope: !6439, inlinedAt: !6513)
!6609 = !DILocation(line: 220, column: 28, scope: !6439, inlinedAt: !6513)
!6610 = !DILocation(line: 198, column: 34, scope: !6439, inlinedAt: !6513)
!6611 = !DILocation(line: 199, column: 29, scope: !6439, inlinedAt: !6513)
!6612 = !DILocation(line: 222, column: 36, scope: !6613, inlinedAt: !6513)
!6613 = distinct !DILexicalBlock(scope: !6439, file: !827, line: 222, column: 27)
!6614 = !DILocation(line: 222, column: 27, scope: !6439, inlinedAt: !6513)
!6615 = !DILocation(line: 225, column: 63, scope: !6616, inlinedAt: !6513)
!6616 = distinct !DILexicalBlock(scope: !6613, file: !827, line: 223, column: 25)
!6617 = !DILocation(line: 225, column: 46, scope: !6616, inlinedAt: !6513)
!6618 = !DILocation(line: 226, column: 25, scope: !6616, inlinedAt: !6513)
!6619 = !DILocation(line: 229, column: 36, scope: !6620, inlinedAt: !6513)
!6620 = distinct !DILexicalBlock(scope: !6613, file: !827, line: 228, column: 25)
!6621 = !DILocation(line: 230, column: 73, scope: !6620, inlinedAt: !6513)
!6622 = !DILocation(line: 230, column: 46, scope: !6620, inlinedAt: !6513)
!6623 = !DILocation(line: 232, column: 35, scope: !6624, inlinedAt: !6513)
!6624 = distinct !DILexicalBlock(scope: !6439, file: !827, line: 232, column: 27)
!6625 = !DILocation(line: 232, column: 27, scope: !6439, inlinedAt: !6513)
!6626 = !DILocation(line: 236, column: 27, scope: !6627, inlinedAt: !6513)
!6627 = distinct !DILexicalBlock(scope: !6624, file: !827, line: 233, column: 25)
!6628 = !DILocation(line: 237, column: 27, scope: !6627, inlinedAt: !6513)
!6629 = !DILocation(line: 239, column: 39, scope: !6439, inlinedAt: !6513)
!6630 = !DILocation(line: 239, column: 50, scope: !6439, inlinedAt: !6513)
!6631 = !DILocation(line: 239, column: 61, scope: !6439, inlinedAt: !6513)
!6632 = !DILocalVariable(name: "__dest", arg: 1, scope: !6633, file: !6634, line: 107, type: !6637)
!6633 = distinct !DISubprogram(name: "strcpy", scope: !6634, file: !6634, line: 107, type: !6635, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !483, variables: !6639)
!6634 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6635 = !DISubroutineType(types: !6636)
!6636 = !{!51, !6637, !6638}
!6637 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!6638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!6639 = !{!6632, !6640}
!6640 = !DILocalVariable(name: "__src", arg: 2, scope: !6633, file: !6634, line: 107, type: !6638)
!6641 = !DILocation(line: 107, column: 1, scope: !6633, inlinedAt: !6642)
!6642 = distinct !DILocation(line: 239, column: 23, scope: !6439, inlinedAt: !6513)
!6643 = !DILocation(line: 109, column: 49, scope: !6633, inlinedAt: !6642)
!6644 = !DILocation(line: 109, column: 10, scope: !6633, inlinedAt: !6642)
!6645 = !DILocation(line: 107, column: 1, scope: !6633, inlinedAt: !6646)
!6646 = distinct !DILocation(line: 240, column: 23, scope: !6439, inlinedAt: !6513)
!6647 = !DILocation(line: 109, column: 49, scope: !6633, inlinedAt: !6646)
!6648 = !DILocation(line: 109, column: 10, scope: !6633, inlinedAt: !6646)
!6649 = !DILocation(line: 241, column: 21, scope: !6440, inlinedAt: !6513)
!6650 = !DILocation(line: 242, column: 19, scope: !6442, inlinedAt: !6513)
!6651 = !DILocation(line: 243, column: 32, scope: !6652, inlinedAt: !6513)
!6652 = distinct !DILexicalBlock(scope: !6442, file: !827, line: 243, column: 23)
!6653 = !DILocation(line: 243, column: 23, scope: !6442, inlinedAt: !6513)
!6654 = !DILocation(line: 247, column: 33, scope: !6655, inlinedAt: !6513)
!6655 = distinct !DILexicalBlock(scope: !6652, file: !827, line: 246, column: 21)
!6656 = !DILocation(line: 247, column: 45, scope: !6655, inlinedAt: !6513)
!6657 = !DILocation(line: 253, column: 11, scope: !6446, inlinedAt: !6513)
!6658 = !DILocation(line: 377, column: 23, scope: !6448, inlinedAt: !6513)
!6659 = !DILocation(line: 378, column: 5, scope: !6448, inlinedAt: !6513)
!6660 = !DILocation(line: 396, column: 15, scope: !6426)
!6661 = !DILocation(line: 590, column: 8, scope: !6435)
!6662 = !DILocation(line: 590, column: 17, scope: !6435)
!6663 = !DILocation(line: 589, column: 3, scope: !6664)
!6664 = !DILexicalBlockFile(scope: !6436, file: !827, discriminator: 1)
!6665 = !DILocation(line: 592, column: 9, scope: !6433)
!6666 = !DILocation(line: 592, column: 35, scope: !6434)
!6667 = !DILocation(line: 593, column: 9, scope: !6434)
!6668 = !DILocation(line: 593, column: 24, scope: !6669)
!6669 = !DILexicalBlockFile(scope: !6434, file: !827, discriminator: 1)
!6670 = !DILocation(line: 593, column: 31, scope: !6669)
!6671 = !DILocation(line: 593, column: 34, scope: !6672)
!6672 = !DILexicalBlockFile(scope: !6434, file: !827, discriminator: 2)
!6673 = !DILocation(line: 593, column: 45, scope: !6672)
!6674 = !DILocation(line: 592, column: 9, scope: !6675)
!6675 = !DILexicalBlockFile(scope: !6435, file: !827, discriminator: 1)
!6676 = !DILocation(line: 595, column: 29, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6434, file: !827, line: 594, column: 7)
!6678 = !DILocation(line: 595, column: 27, scope: !6677)
!6679 = !DILocation(line: 595, column: 46, scope: !6677)
!6680 = !DILocation(line: 596, column: 9, scope: !6677)
!6681 = !DILocation(line: 591, column: 19, scope: !6435)
!6682 = !DILocation(line: 591, column: 36, scope: !6435)
!6683 = !DILocation(line: 591, column: 16, scope: !6435)
!6684 = !DILocation(line: 591, column: 52, scope: !6675)
!6685 = !DILocation(line: 591, column: 69, scope: !6435)
!6686 = !DILocation(line: 591, column: 49, scope: !6435)
!6687 = distinct !{!6687, !6688, !6689}
!6688 = !DILocation(line: 589, column: 3, scope: !6436)
!6689 = !DILocation(line: 597, column: 7, scope: !6436)
!6690 = !DILocation(line: 602, column: 7, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6426, file: !827, line: 602, column: 7)
!6692 = !DILocation(line: 602, column: 18, scope: !6691)
!6693 = !DILocation(line: 602, column: 7, scope: !6426)
!6694 = !DILocation(line: 612, column: 3, scope: !6426)
