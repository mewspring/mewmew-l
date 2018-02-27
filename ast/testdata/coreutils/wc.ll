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
@page_size = internal unnamed_addr global i64 0, align 8
@print_bytes = internal unnamed_addr global i1 false, align 1
@print_chars = internal unnamed_addr global i1 false, align 1
@print_words = internal unnamed_addr global i1 false, align 1
@print_lines = internal unnamed_addr global i1 false, align 1
@print_linelength = internal unnamed_addr global i1 false, align 1
@max_line_length = internal unnamed_addr global i64 0, align 8
@total_bytes = internal unnamed_addr global i64 0, align 8
@total_chars = internal unnamed_addr global i64 0, align 8
@total_words = internal unnamed_addr global i64 0, align 8
@total_lines = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
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
@main.stdin_only = internal global [1 x i8*] zeroinitializer, align 8
@number_width = internal unnamed_addr global i32 0, align 4
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
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@is_basic_table = local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16
@program_name = local_unnamed_addr global i8* null, align 8
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8
@.str.1.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.166 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.167 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.168 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.169 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.170 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.171 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #13
  br label %45

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #13
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #13
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.2, i64 0, i64 0), i32 5) #13
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #13
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.3, i64 0, i64 0), i32 5) #13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #13
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.4, i64 0, i64 0), i32 5) #13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #13
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #13
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #13
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #13
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #13
  %32 = tail call i8* @setlocale(i32 5, i8* null) #13
  %33 = icmp eq i8* %32, null
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #13
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13
  br label %40

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #13
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #13
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #13
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15
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
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Tokens* %3 to i8*
  call void @llvm.lifetime.start(i64 288, i8* nonnull %6) #13
  %7 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %7) #13
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #13
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #13
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13
  %12 = tail call i32 @getpagesize() #1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* @page_size, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = tail call i32 @setvbuf(%struct._IO_FILE* %14, i8* null, i32 1, i64 0) #13
  store i1 false, i1* @print_bytes, align 1
  store i1 false, i1* @print_chars, align 1
  store i1 false, i1* @print_words, align 1
  store i1 false, i1* @print_lines, align 1
  store i1 false, i1* @print_linelength, align 1
  store i64 0, i64* @max_line_length, align 8
  store i64 0, i64* @total_bytes, align 8
  store i64 0, i64* @total_chars, align 8
  store i64 0, i64* @total_words, align 8
  store i64 0, i64* @total_lines, align 8
  br label %16

; <label>:16:                                     ; preds = %26, %2
  %17 = phi i8* [ %27, %26 ], [ null, %2 ]
  br label %18

; <label>:18:                                     ; preds = %24, %16
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #13
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
  ]

; <label>:20:                                     ; preds = %18
  br label %24

; <label>:21:                                     ; preds = %18
  br label %24

; <label>:22:                                     ; preds = %18
  br label %24

; <label>:23:                                     ; preds = %18
  br label %24

; <label>:24:                                     ; preds = %18, %23, %22, %21, %20
  %25 = phi i1* [ @print_linelength, %23 ], [ @print_words, %22 ], [ @print_lines, %21 ], [ @print_bytes, %20 ], [ @print_chars, %18 ]
  store i1 true, i1* %25, align 1
  br label %18

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** @optarg, align 8
  br label %16

; <label>:28:                                     ; preds = %18
  tail call void @usage(i32 0) #16
  unreachable

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #13
  tail call void @exit(i32 0) #15
  unreachable

; <label>:32:                                     ; preds = %18
  tail call void @usage(i32 1) #16
  unreachable

; <label>:33:                                     ; preds = %18
  %34 = load i1, i1* @print_lines, align 1
  br i1 %34, label %44, label %35

; <label>:35:                                     ; preds = %33
  %36 = load i1, i1* @print_words, align 1
  br i1 %36, label %44, label %37

; <label>:37:                                     ; preds = %35
  %38 = load i1, i1* @print_chars, align 1
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %37
  %40 = load i1, i1* @print_bytes, align 1
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %39
  %42 = load i1, i1* @print_linelength, align 1
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %41
  store i1 true, i1* @print_bytes, align 1
  store i1 true, i1* @print_words, align 1
  store i1 true, i1* @print_lines, align 1
  br label %44

; <label>:44:                                     ; preds = %43, %41, %39, %37, %35, %33
  %45 = icmp ne i8* %17, null
  %46 = load i32, i32* @optind, align 4
  %47 = icmp slt i32 %46, %0
  br i1 %45, label %48, label %121

; <label>:48:                                     ; preds = %44
  br i1 %47, label %49, label %59

; <label>:49:                                     ; preds = %48
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #13
  %51 = load i32, i32* @optind, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = tail call i8* @quotearg_style(i32 4, i8* %54) #13
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %55) #13
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 5) #13
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %56, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %57) #13
  tail call void @usage(i32 1) #16
  unreachable

; <label>:59:                                     ; preds = %48
  %60 = load i8, i8* %17, align 1
  %61 = icmp eq i8 %60, 45
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %17, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %76

; <label>:68:                                     ; preds = %59, %62
  %69 = tail call %struct._IO_FILE* @fopen(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %70 = icmp eq %struct._IO_FILE* %69, null
  br i1 %70, label %71, label %76

; <label>:71:                                     ; preds = %68
  %72 = tail call i32* @__errno_location() #1
  %73 = load i32, i32* %72, align 4
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 5) #13
  %75 = tail call i8* @quotearg_style(i32 4, i8* nonnull %17) #13
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* %74, i8* %75) #13
  unreachable

; <label>:76:                                     ; preds = %68, %66
  %77 = phi %struct._IO_FILE* [ %67, %66 ], [ %69, %68 ]
  %78 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %78) #13
  %79 = tail call i32 @fileno(%struct._IO_FILE* %77) #13
  %80 = call i32 @__fxstat(i32 1, i32 %79, %struct.stat* nonnull %4) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %114

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 61440
  %86 = icmp eq i32 %85, 32768
  br i1 %86, label %87, label %114

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = call double @physmem_available() #13
  %92 = fmul double %91, 5.000000e-01
  %93 = fcmp ogt double %92, 1.048576e+07
  br i1 %93, label %97, label %94

; <label>:94:                                     ; preds = %87
  %95 = call double @physmem_available() #13
  %96 = fmul double %95, 5.000000e-01
  br label %97

; <label>:97:                                     ; preds = %87, %94
  %98 = phi double [ %96, %94 ], [ 1.048576e+07, %87 ]
  %99 = fcmp ugt double %90, %98
  br i1 %99, label %114, label %100

; <label>:100:                                    ; preds = %97
  call void @readtokens0_init(%struct.Tokens* nonnull %3) #13
  %101 = call zeroext i1 @readtokens0(%struct._IO_FILE* %77, %struct.Tokens* nonnull %3) #13
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %100
  %103 = call i32 @rpl_fclose(%struct._IO_FILE* %77) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

; <label>:105:                                    ; preds = %102, %100
  %106 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #13
  %107 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #13
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %106, i8* %107) #13
  unreachable

; <label>:108:                                    ; preds = %102
  %109 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %110) #13
  br label %116

; <label>:114:                                    ; preds = %97, %82, %76
  %115 = call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %77) #13
  br label %116

; <label>:116:                                    ; preds = %114, %108
  %117 = phi %struct.argv_iterator* [ %113, %108 ], [ %115, %114 ]
  %118 = phi i8 [ 1, %108 ], [ 0, %114 ]
  %119 = phi i8** [ %110, %108 ], [ null, %114 ]
  %120 = phi i64 [ %112, %108 ], [ 0, %114 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %78) #13
  br label %129

; <label>:121:                                    ; preds = %44
  %122 = sext i32 %46 to i64
  %123 = getelementptr inbounds i8*, i8** %1, i64 %122
  %124 = select i1 %47, i8** %123, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.stdin_only, i64 0, i64 0)
  %125 = sub nsw i32 %0, %46
  %126 = sext i32 %125 to i64
  %127 = select i1 %47, i64 %126, i64 1
  %128 = tail call %struct.argv_iterator* @argv_iter_init_argv(i8** %124) #13
  br label %129

; <label>:129:                                    ; preds = %121, %116
  %130 = phi %struct.argv_iterator* [ %117, %116 ], [ %128, %121 ]
  %131 = phi i8 [ %118, %116 ], [ 0, %121 ]
  %132 = phi i8** [ %119, %116 ], [ %124, %121 ]
  %133 = phi i64 [ %120, %116 ], [ %127, %121 ]
  %134 = icmp eq %struct.argv_iterator* %130, null
  br i1 %134, label %135, label %136

; <label>:135:                                    ; preds = %129
  call void @xalloc_die() #15
  unreachable

; <label>:136:                                    ; preds = %129
  %137 = icmp ne i64 %133, 0
  %138 = select i1 %137, i64 %133, i64 1
  %139 = icmp ugt i64 %138, 60680079189834051
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %136
  call void @xalloc_die() #15
  unreachable

; <label>:141:                                    ; preds = %136
  %142 = mul i64 %138, 152
  %143 = call noalias i8* @xmalloc(i64 %142) #13
  %144 = bitcast i8* %143 to %struct.fstatus*
  switch i64 %133, label %161 [
    i64 0, label %162
    i64 1, label %145
  ]

; <label>:145:                                    ; preds = %141
  %146 = load i1, i1* @print_lines, align 1
  %147 = zext i1 %146 to i32
  %148 = load i1, i1* @print_words, align 1
  %149 = zext i1 %148 to i32
  %150 = add nuw nsw i32 %149, %147
  %151 = load i1, i1* @print_chars, align 1
  %152 = zext i1 %151 to i32
  %153 = add nuw nsw i32 %150, %152
  %154 = load i1, i1* @print_bytes, align 1
  %155 = zext i1 %154 to i32
  %156 = add nuw nsw i32 %153, %155
  %157 = load i1, i1* @print_linelength, align 1
  %158 = zext i1 %157 to i32
  %159 = add nuw nsw i32 %156, %158
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %162, label %161

; <label>:161:                                    ; preds = %141, %145
  br label %164

; <label>:162:                                    ; preds = %145, %141
  %163 = bitcast i8* %143 to i32*
  store i32 1, i32* %163, align 8
  br label %188

; <label>:164:                                    ; preds = %161, %182
  %165 = phi i64 [ %185, %182 ], [ 0, %161 ]
  %166 = getelementptr inbounds i8*, i8** %132, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %176, label %169

; <label>:169:                                    ; preds = %164
  %170 = load i8, i8* %167, align 1
  %171 = icmp eq i8 %170, 45
  br i1 %171, label %172, label %179

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %167, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %179

; <label>:176:                                    ; preds = %172, %164
  %177 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 1
  %178 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %177) #13
  br label %182

; <label>:179:                                    ; preds = %172, %169
  %180 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 1
  %181 = call i32 @__xstat(i32 1, i8* nonnull %167, %struct.stat* nonnull %180) #13
  br label %182

; <label>:182:                                    ; preds = %179, %176
  %183 = phi i32 [ %178, %176 ], [ %181, %179 ]
  %184 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %165, i32 0
  store i32 %183, i32* %184, align 8
  %185 = add nuw i64 %165, 1
  %186 = icmp eq i64 %185, %133
  br i1 %186, label %187, label %164

; <label>:187:                                    ; preds = %182
  br label %188

; <label>:188:                                    ; preds = %187, %162
  %189 = icmp eq i64 %133, 0
  br i1 %189, label %232, label %190

; <label>:190:                                    ; preds = %188
  %191 = bitcast i8* %143 to i32*
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %194, label %232

; <label>:194:                                    ; preds = %190
  br label %198

; <label>:195:                                    ; preds = %213
  %196 = icmp ugt i64 %215, 9
  br i1 %196, label %197, label %228

; <label>:197:                                    ; preds = %195
  br label %221

; <label>:198:                                    ; preds = %194, %218
  %199 = phi i32 [ %220, %218 ], [ %192, %194 ]
  %200 = phi i64 [ %216, %218 ], [ 0, %194 ]
  %201 = phi i64 [ %215, %218 ], [ 0, %194 ]
  %202 = phi i32 [ %214, %218 ], [ 1, %194 ]
  %203 = icmp eq i32 %199, 0
  br i1 %203, label %204, label %213

; <label>:204:                                    ; preds = %198
  %205 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %200, i32 1, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 61440
  %208 = icmp eq i32 %207, 32768
  br i1 %208, label %209, label %213

; <label>:209:                                    ; preds = %204
  %210 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %200, i32 1, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, %201
  br label %213

; <label>:213:                                    ; preds = %209, %204, %198
  %214 = phi i32 [ %202, %198 ], [ %202, %209 ], [ 7, %204 ]
  %215 = phi i64 [ %201, %198 ], [ %212, %209 ], [ %201, %204 ]
  %216 = add nuw i64 %200, 1
  %217 = icmp eq i64 %216, %133
  br i1 %217, label %195, label %218

; <label>:218:                                    ; preds = %213
  %219 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %216, i32 0
  %220 = load i32, i32* %219, align 8
  br label %198

; <label>:221:                                    ; preds = %197, %221
  %222 = phi i64 [ %225, %221 ], [ %215, %197 ]
  %223 = phi i32 [ %224, %221 ], [ 1, %197 ]
  %224 = add nuw nsw i32 %223, 1
  %225 = udiv i64 %222, 10
  %226 = icmp ugt i64 %222, 99
  br i1 %226, label %221, label %227

; <label>:227:                                    ; preds = %221
  br label %228

; <label>:228:                                    ; preds = %227, %195
  %229 = phi i32 [ 1, %195 ], [ %224, %227 ]
  %230 = icmp slt i32 %229, %214
  %231 = select i1 %230, i32 %214, i32 %229
  br label %232

; <label>:232:                                    ; preds = %188, %190, %228
  %233 = phi i32 [ %231, %228 ], [ 1, %190 ], [ 1, %188 ]
  store i32 %233, i32* @number_width, align 4
  %234 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %234) #13
  %235 = call i8* @argv_iter(%struct.argv_iterator* nonnull %130, i32* nonnull %5) #13
  %236 = icmp eq i8* %235, null
  br i1 %236, label %242, label %237

; <label>:237:                                    ; preds = %232
  %238 = getelementptr inbounds i8, i8* %17, i64 1
  %239 = icmp eq i8* %17, null
  %240 = bitcast i8* %143 to i32*
  br label %252

; <label>:241:                                    ; preds = %320
  br label %242

; <label>:242:                                    ; preds = %241, %232
  %243 = phi i8 [ 1, %232 ], [ %318, %241 ]
  %244 = load i32, i32* %5, align 4
  switch i32 %244, label %251 [
    i32 2, label %324
    i32 4, label %245
    i32 3, label %250
  ]

; <label>:245:                                    ; preds = %242
  %246 = tail call i32* @__errno_location() #1
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 5) #13
  %249 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %17) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %247, i8* %248, i8* %249) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13
  br label %335

; <label>:250:                                    ; preds = %242
  call void @xalloc_die() #15
  unreachable

; <label>:251:                                    ; preds = %242
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 798, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:252:                                    ; preds = %237, %320
  %253 = phi i64 [ 0, %237 ], [ %321, %320 ]
  %254 = phi i8* [ %235, %237 ], [ %322, %320 ]
  %255 = phi i8 [ 1, %237 ], [ %318, %320 ]
  br i1 %45, label %256, label %272

; <label>:256:                                    ; preds = %252
  %257 = load i8, i8* %17, align 1
  %258 = icmp eq i8 %257, 45
  br i1 %258, label %259, label %272

; <label>:259:                                    ; preds = %256
  %260 = load i8, i8* %238, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %272

; <label>:262:                                    ; preds = %259
  %263 = load i8, i8* %254, align 1
  %264 = icmp eq i8 %263, 45
  br i1 %264, label %265, label %275

; <label>:265:                                    ; preds = %262
  %266 = getelementptr inbounds i8, i8* %254, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %272

; <label>:269:                                    ; preds = %265
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i32 5) #13
  %271 = call i8* @quotearg_style(i32 4, i8* nonnull %254) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %270, i8* %271) #13
  br label %272

; <label>:272:                                    ; preds = %252, %259, %265, %269, %256
  %273 = phi i8 [ 0, %256 ], [ 0, %252 ], [ 0, %259 ], [ 0, %265 ], [ 1, %269 ]
  %274 = load i8, i8* %254, align 1
  br label %275

; <label>:275:                                    ; preds = %272, %262
  %276 = phi i8 [ %274, %272 ], [ %263, %262 ]
  %277 = phi i8 [ %273, %272 ], [ 0, %262 ]
  %278 = icmp eq i8 %276, 0
  br i1 %278, label %279, label %286

; <label>:279:                                    ; preds = %275
  br i1 %239, label %280, label %282

; <label>:280:                                    ; preds = %279
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %281) #13
  br label %317

; <label>:282:                                    ; preds = %279
  %283 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14
  %284 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %17) #13
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %284, i64 %283, i8* %285) #13
  br label %317

; <label>:286:                                    ; preds = %275
  %287 = icmp eq i8 %277, 0
  br i1 %287, label %288, label %317

; <label>:288:                                    ; preds = %286
  %289 = select i1 %137, i64 %253, i64 0
  %290 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %144, i64 %289
  %291 = icmp eq i8 %276, 45
  br i1 %291, label %292, label %298

; <label>:292:                                    ; preds = %288
  %293 = getelementptr inbounds i8, i8* %254, i64 1
  %294 = load i8, i8* %293, align 1
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %298

; <label>:296:                                    ; preds = %292
  store i1 true, i1* @have_read_stdin, align 1
  %297 = call fastcc zeroext i1 @wc(i32 0, i8* nonnull %254, %struct.fstatus* %290, i64 -1) #13
  br label %313

; <label>:298:                                    ; preds = %292, %288
  %299 = call i32 (i8*, i32, ...) @open(i8* nonnull %254, i32 0) #13
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %305

; <label>:301:                                    ; preds = %298
  %302 = tail call i32* @__errno_location() #1
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %254) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %304) #13
  br label %313

; <label>:305:                                    ; preds = %298
  %306 = call fastcc zeroext i1 @wc(i32 %299, i8* nonnull %254, %struct.fstatus* %290, i64 0) #13
  %307 = call i32 @close(i32 %299) #13
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %313, label %309

; <label>:309:                                    ; preds = %305
  %310 = tail call i32* @__errno_location() #1
  %311 = load i32, i32* %310, align 4
  %312 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %254) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %312) #13
  br label %313

; <label>:313:                                    ; preds = %296, %301, %305, %309
  %314 = phi i1 [ %297, %296 ], [ false, %301 ], [ false, %309 ], [ %306, %305 ]
  %315 = zext i1 %314 to i8
  %316 = and i8 %315, %255
  br label %317

; <label>:317:                                    ; preds = %280, %282, %286, %313
  %318 = phi i8 [ %316, %313 ], [ 0, %286 ], [ 0, %282 ], [ 0, %280 ]
  br i1 %189, label %319, label %320

; <label>:319:                                    ; preds = %317
  store i32 1, i32* %240, align 8
  br label %320

; <label>:320:                                    ; preds = %317, %319
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13
  %321 = add nuw i64 %253, 1
  call void @llvm.lifetime.start(i64 4, i8* nonnull %234) #13
  %322 = call i8* @argv_iter(%struct.argv_iterator* nonnull %130, i32* nonnull %5) #13
  %323 = icmp eq i8* %322, null
  br i1 %323, label %241, label %252

; <label>:324:                                    ; preds = %242
  call void @llvm.lifetime.end(i64 4, i8* nonnull %234) #13
  %325 = and i8 %243, 1
  %326 = icmp eq i8 %325, 0
  %327 = or i1 %45, %326
  br i1 %327, label %335, label %328

; <label>:328:                                    ; preds = %324
  %329 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

; <label>:331:                                    ; preds = %328
  store i1 true, i1* @have_read_stdin, align 1
  %332 = call fastcc zeroext i1 @wc(i32 0, i8* null, %struct.fstatus* %144, i64 -1) #13
  %333 = zext i1 %332 to i8
  %334 = and i8 %333, %243
  br label %335

; <label>:335:                                    ; preds = %245, %324, %331, %328
  %336 = phi i8 [ %243, %324 ], [ %334, %331 ], [ %243, %328 ], [ 0, %245 ]
  %337 = and i8 %131, 1
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %340, label %339

; <label>:339:                                    ; preds = %335
  call void @readtokens0_free(%struct.Tokens* nonnull %3) #13
  br label %340

; <label>:340:                                    ; preds = %335, %339
  %341 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %130) #14
  %342 = icmp ugt i64 %341, 1
  br i1 %342, label %343, label %350

; <label>:343:                                    ; preds = %340
  %344 = load i64, i64* @total_lines, align 8
  %345 = load i64, i64* @total_words, align 8
  %346 = load i64, i64* @total_chars, align 8
  %347 = load i64, i64* @total_bytes, align 8
  %348 = load i64, i64* @max_line_length, align 8
  %349 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 5) #13
  call fastcc void @write_counts(i64 %344, i64 %345, i64 %346, i64 %347, i64 %348, i8* %349)
  br label %350

; <label>:350:                                    ; preds = %343, %340
  call void @argv_iter_free(%struct.argv_iterator* nonnull %130) #13
  call void @free(i8* %143) #13
  %351 = load i1, i1* @have_read_stdin, align 1
  br i1 %351, label %352, label %358

; <label>:352:                                    ; preds = %350
  %353 = call i32 @close(i32 0) #13
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %358, label %355

; <label>:355:                                    ; preds = %352
  %356 = tail call i32* @__errno_location() #1
  %357 = load i32, i32* %356, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #13
  unreachable

; <label>:358:                                    ; preds = %350, %352
  %359 = and i8 %336, 1
  %360 = xor i8 %359, 1
  %361 = zext i8 %360 to i32
  call void @llvm.lifetime.end(i64 288, i8* nonnull %6) #13
  ret i32 %361
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
define internal fastcc zeroext i1 @wc(i32, i8*, %struct.fstatus*, i64) unnamed_addr #6 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to %struct.__mbstate_t*
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16385, i8* nonnull %9) #13
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 5) #13
  br label %13

; <label>:13:                                     ; preds = %4, %11
  %14 = phi i8* [ %12, %11 ], [ %1, %4 ]
  %15 = tail call i64 @__ctype_get_mb_cur_max() #13
  %16 = icmp ugt i64 %15, 1
  %17 = load i1, i1* @print_bytes, align 1
  br i1 %16, label %18, label %22

; <label>:18:                                     ; preds = %13
  %19 = zext i1 %17 to i8
  %20 = load i1, i1* @print_chars, align 1
  %21 = zext i1 %20 to i8
  br label %26

; <label>:22:                                     ; preds = %13
  %23 = load i1, i1* @print_chars, align 1
  %24 = or i1 %17, %23
  %25 = zext i1 %24 to i8
  br label %26

; <label>:26:                                     ; preds = %22, %18
  %27 = phi i8 [ %19, %18 ], [ %25, %22 ]
  %28 = phi i8 [ %21, %18 ], [ 0, %22 ]
  %29 = load i1, i1* @print_words, align 1
  %30 = load i1, i1* @print_linelength, align 1
  %31 = or i1 %29, %30
  %32 = icmp ne i8 %27, 0
  %33 = icmp eq i8 %28, 0
  %34 = and i1 %32, %33
  %35 = xor i1 %34, true
  %36 = load i1, i1* @print_lines, align 1
  %37 = or i1 %36, %31
  %38 = or i1 %37, %35
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %26
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13
  %40 = load i1, i1* @print_lines, align 1
  br label %41

; <label>:41:                                     ; preds = %26, %39
  %42 = phi i1 [ false, %26 ], [ %40, %39 ]
  %43 = or i1 %31, %42
  %44 = or i1 %43, %35
  br i1 %44, label %106, label %45

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1
  %51 = tail call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %50) #13
  store i32 %51, i32* %46, align 8
  br label %52

; <label>:52:                                     ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %47, %45 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %95

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = trunc i32 %57 to i16
  %59 = and i16 %58, -4096
  switch i16 %59, label %95 [
    i16 -32768, label %60
    i16 -24576, label %60
  ]

; <label>:60:                                     ; preds = %55, %55
  %61 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, -1
  br i1 %63, label %64, label %95

; <label>:64:                                     ; preds = %60
  %65 = icmp slt i64 %3, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %64
  %67 = tail call i64 @lseek(i32 %0, i64 0, i32 1) #13
  br label %68

; <label>:68:                                     ; preds = %66, %64
  %69 = phi i64 [ %67, %66 ], [ %3, %64 ]
  %70 = load i64, i64* @page_size, align 8
  %71 = urem i64 %62, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %68
  %74 = icmp ult i64 %62, %69
  %75 = sub i64 %62, %69
  %76 = select i1 %74, i64 0, i64 %75
  br label %443

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = icmp ult i64 %79, 2305843009213693953
  %82 = and i1 %80, %81
  %83 = add i64 %79, 1
  %84 = select i1 %82, i64 %83, i64 513
  %85 = urem i64 %62, %84
  %86 = sub i64 %62, %85
  %87 = icmp sgt i64 %69, -1
  %88 = icmp sgt i64 %86, %69
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %77
  %91 = tail call i64 @lseek(i32 %0, i64 %86, i32 1) #13
  %92 = icmp sgt i64 %91, -1
  %93 = sub nsw i64 %86, %69
  %94 = select i1 %92, i64 %93, i64 0
  br label %95

; <label>:95:                                     ; preds = %52, %60, %90, %77, %55
  %96 = phi i64 [ 0, %55 ], [ %94, %90 ], [ 0, %77 ], [ 0, %60 ], [ 0, %52 ]
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13
  br label %97

; <label>:97:                                     ; preds = %104, %95
  %98 = phi i64 [ %96, %95 ], [ %105, %104 ]
  %99 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13
  switch i64 %99, label %104 [
    i64 0, label %442
    i64 -1, label %100
  ]

; <label>:100:                                    ; preds = %97
  %101 = tail call i32* @__errno_location() #1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %103) #13
  br label %443

; <label>:104:                                    ; preds = %97
  %105 = add i64 %99, %98
  br label %97

; <label>:106:                                    ; preds = %41
  %107 = xor i1 %33, true
  %108 = or i1 %31, %107
  br i1 %108, label %214, label %109

; <label>:109:                                    ; preds = %106
  br label %110

; <label>:110:                                    ; preds = %109, %208
  %111 = phi i64 [ %120, %208 ], [ 0, %109 ]
  %112 = phi i64 [ %209, %208 ], [ 0, %109 ]
  %113 = phi i8 [ %213, %208 ], [ 0, %109 ]
  %114 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13
  switch i64 %114, label %119 [
    i64 0, label %441
    i64 -1, label %115
  ]

; <label>:115:                                    ; preds = %110
  %116 = tail call i32* @__errno_location() #1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %118) #13
  br label %443

; <label>:119:                                    ; preds = %110
  %120 = add i64 %114, %111
  %121 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %114
  %122 = icmp eq i8 %113, 0
  br i1 %122, label %123, label %146

; <label>:123:                                    ; preds = %119
  %124 = add i64 %114, -1
  %125 = and i64 %114, 7
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %140, label %127

; <label>:127:                                    ; preds = %123
  br label %128

; <label>:128:                                    ; preds = %128, %127
  %129 = phi i8* [ %132, %128 ], [ %9, %127 ]
  %130 = phi i64 [ %136, %128 ], [ %112, %127 ]
  %131 = phi i64 [ %137, %128 ], [ %125, %127 ]
  %132 = getelementptr inbounds i8, i8* %129, i64 1
  %133 = load i8, i8* %129, align 1
  %134 = icmp eq i8 %133, 10
  %135 = zext i1 %134 to i64
  %136 = add i64 %135, %130
  %137 = add i64 %131, -1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %128

; <label>:139:                                    ; preds = %128
  br label %140

; <label>:140:                                    ; preds = %123, %139
  %141 = phi i64 [ undef, %123 ], [ %136, %139 ]
  %142 = phi i8* [ %9, %123 ], [ %132, %139 ]
  %143 = phi i64 [ %112, %123 ], [ %136, %139 ]
  %144 = icmp ult i64 %124, 7
  br i1 %144, label %205, label %145

; <label>:145:                                    ; preds = %140
  br label %151

; <label>:146:                                    ; preds = %119
  %147 = ptrtoint i8* %121 to i64
  %148 = call i8* @memchr(i8* nonnull %9, i32 10, i64 %114) #14
  %149 = icmp eq i8* %148, null
  br i1 %149, label %208, label %150

; <label>:150:                                    ; preds = %146
  br label %195

; <label>:151:                                    ; preds = %151, %145
  %152 = phi i8* [ %142, %145 ], [ %189, %151 ]
  %153 = phi i64 [ %143, %145 ], [ %193, %151 ]
  %154 = getelementptr inbounds i8, i8* %152, i64 1
  %155 = load i8, i8* %152, align 1
  %156 = icmp eq i8 %155, 10
  %157 = zext i1 %156 to i64
  %158 = add i64 %157, %153
  %159 = getelementptr inbounds i8, i8* %152, i64 2
  %160 = load i8, i8* %154, align 1
  %161 = icmp eq i8 %160, 10
  %162 = zext i1 %161 to i64
  %163 = add i64 %162, %158
  %164 = getelementptr inbounds i8, i8* %152, i64 3
  %165 = load i8, i8* %159, align 1
  %166 = icmp eq i8 %165, 10
  %167 = zext i1 %166 to i64
  %168 = add i64 %167, %163
  %169 = getelementptr inbounds i8, i8* %152, i64 4
  %170 = load i8, i8* %164, align 1
  %171 = icmp eq i8 %170, 10
  %172 = zext i1 %171 to i64
  %173 = add i64 %172, %168
  %174 = getelementptr inbounds i8, i8* %152, i64 5
  %175 = load i8, i8* %169, align 1
  %176 = icmp eq i8 %175, 10
  %177 = zext i1 %176 to i64
  %178 = add i64 %177, %173
  %179 = getelementptr inbounds i8, i8* %152, i64 6
  %180 = load i8, i8* %174, align 1
  %181 = icmp eq i8 %180, 10
  %182 = zext i1 %181 to i64
  %183 = add i64 %182, %178
  %184 = getelementptr inbounds i8, i8* %152, i64 7
  %185 = load i8, i8* %179, align 1
  %186 = icmp eq i8 %185, 10
  %187 = zext i1 %186 to i64
  %188 = add i64 %187, %183
  %189 = getelementptr inbounds i8, i8* %152, i64 8
  %190 = load i8, i8* %184, align 1
  %191 = icmp eq i8 %190, 10
  %192 = zext i1 %191 to i64
  %193 = add i64 %192, %188
  %194 = icmp eq i8* %189, %121
  br i1 %194, label %204, label %151

; <label>:195:                                    ; preds = %150, %195
  %196 = phi i8* [ %202, %195 ], [ %148, %150 ]
  %197 = phi i64 [ %199, %195 ], [ %112, %150 ]
  %198 = getelementptr inbounds i8, i8* %196, i64 1
  %199 = add i64 %197, 1
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %147, %200
  %202 = call i8* @memchr(i8* %198, i32 10, i64 %201) #14
  %203 = icmp eq i8* %202, null
  br i1 %203, label %207, label %195

; <label>:204:                                    ; preds = %151
  br label %205

; <label>:205:                                    ; preds = %140, %204
  %206 = phi i64 [ %141, %140 ], [ %193, %204 ]
  br label %208

; <label>:207:                                    ; preds = %195
  br label %208

; <label>:208:                                    ; preds = %207, %205, %146
  %209 = phi i64 [ %112, %146 ], [ %206, %205 ], [ %199, %207 ]
  %210 = sub i64 %209, %112
  %211 = udiv i64 %114, 15
  %212 = icmp ule i64 %210, %211
  %213 = zext i1 %212 to i8
  br label %110

; <label>:214:                                    ; preds = %106
  %215 = tail call i64 @__ctype_get_mb_cur_max() #13
  %216 = icmp ugt i64 %215, 1
  br i1 %216, label %218, label %217

; <label>:217:                                    ; preds = %214
  br label %370

; <label>:218:                                    ; preds = %214
  %219 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %219) #13
  store i64 0, i64* %6, align 8
  %220 = bitcast i32* %8 to i8*
  br label %222

; <label>:221:                                    ; preds = %330
  br label %347

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
  %232 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %231
  %233 = sub i64 16384, %231
  %234 = call i64 @safe_read(i32 %0, i8* %232, i64 %233) #13
  switch i64 %234, label %235 [
    i64 0, label %360
    i64 -1, label %356
  ]

; <label>:235:                                    ; preds = %222
  %236 = add i64 %234, %224
  %237 = add i64 %234, %231
  br label %238

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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %220) #13
  %248 = and i8 %246, 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %263

; <label>:250:                                    ; preds = %238
  %251 = load i8, i8* %247, align 1
  %252 = zext i8 %251 to i32
  %253 = lshr i32 %252, 5
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %252, 31
  %258 = shl i32 1, %257
  %259 = and i32 %258, %256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

; <label>:261:                                    ; preds = %250
  %262 = sext i8 %251 to i32
  store i32 %262, i32* %8, align 4
  br label %282

; <label>:263:                                    ; preds = %250, %238
  %264 = load i64, i64* %6, align 8
  %265 = call i64 @rpl_mbrtowc(i32* nonnull %8, i8* %247, i64 %243, %struct.__mbstate_t* nonnull %7) #13
  switch i64 %265, label %271 [
    i64 -2, label %266
    i64 -1, label %268
  ]

; <label>:266:                                    ; preds = %263
  store i64 %264, i64* %6, align 8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %220) #13
  %267 = icmp eq i64 %243, 0
  br i1 %267, label %347, label %341

; <label>:268:                                    ; preds = %263
  %269 = getelementptr inbounds i8, i8* %247, i64 1
  %270 = add i64 %243, -1
  br label %330

; <label>:271:                                    ; preds = %263
  %272 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %7) #14
  %273 = icmp eq i32 %272, 0
  %274 = zext i1 %273 to i8
  %275 = icmp eq i64 %265, 0
  br i1 %275, label %276, label %280

; <label>:276:                                    ; preds = %271
  store i32 0, i32* %8, align 4
  %277 = getelementptr inbounds i8, i8* %247, i64 1
  %278 = add i64 %243, -1
  %279 = add i64 %240, 1
  br label %312

; <label>:280:                                    ; preds = %271
  %281 = load i32, i32* %8, align 4
  br label %282

; <label>:282:                                    ; preds = %280, %261
  %283 = phi i32 [ %281, %280 ], [ %262, %261 ]
  %284 = phi i8 [ %274, %280 ], [ %246, %261 ]
  %285 = phi i64 [ %265, %280 ], [ 1, %261 ]
  %286 = getelementptr inbounds i8, i8* %247, i64 %285
  %287 = sub i64 %243, %285
  %288 = add i64 %240, 1
  switch i32 %283, label %312 [
    i32 10, label %289
    i32 13, label %291
    i32 12, label %291
    i32 9, label %295
    i32 32, label %299
    i32 11, label %301
  ]

; <label>:289:                                    ; preds = %282
  %290 = add i64 %242, 1
  br label %291

; <label>:291:                                    ; preds = %282, %282, %289
  %292 = phi i64 [ %242, %282 ], [ %242, %282 ], [ %290, %289 ]
  %293 = icmp ugt i64 %245, %239
  %294 = select i1 %293, i64 %245, i64 %239
  br label %301

; <label>:295:                                    ; preds = %282
  %296 = and i64 %245, 7
  %297 = add i64 %245, 8
  %298 = sub i64 %297, %296
  br label %301

; <label>:299:                                    ; preds = %282
  %300 = add i64 %245, 1
  br label %301

; <label>:301:                                    ; preds = %320, %299, %282, %295, %291
  %302 = phi i64 [ %313, %320 ], [ %288, %282 ], [ %288, %299 ], [ %288, %295 ], [ %288, %291 ]
  %303 = phi i64 [ %314, %320 ], [ %287, %282 ], [ %287, %299 ], [ %287, %295 ], [ %287, %291 ]
  %304 = phi i8* [ %315, %320 ], [ %286, %282 ], [ %286, %299 ], [ %286, %295 ], [ %286, %291 ]
  %305 = phi i8 [ %316, %320 ], [ %284, %282 ], [ %284, %299 ], [ %284, %295 ], [ %284, %291 ]
  %306 = phi i64 [ %239, %320 ], [ %239, %282 ], [ %239, %299 ], [ %239, %295 ], [ %294, %291 ]
  %307 = phi i64 [ %242, %320 ], [ %242, %282 ], [ %242, %299 ], [ %242, %295 ], [ %292, %291 ]
  %308 = phi i64 [ %326, %320 ], [ %245, %282 ], [ %300, %299 ], [ %298, %295 ], [ 0, %291 ]
  %309 = and i8 %244, 1
  %310 = zext i8 %309 to i64
  %311 = add i64 %310, %241
  br label %330

; <label>:312:                                    ; preds = %276, %282
  %313 = phi i64 [ %279, %276 ], [ %288, %282 ]
  %314 = phi i64 [ %278, %276 ], [ %287, %282 ]
  %315 = phi i8* [ %277, %276 ], [ %286, %282 ]
  %316 = phi i8 [ %274, %276 ], [ %284, %282 ]
  %317 = phi i32 [ 0, %276 ], [ %283, %282 ]
  %318 = call i32 @iswprint(i32 %317) #13
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %330, label %320

; <label>:320:                                    ; preds = %312
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @wcwidth(i32 %321) #13
  %323 = icmp sgt i32 %322, 0
  %324 = select i1 %323, i32 %322, i32 0
  %325 = zext i32 %324 to i64
  %326 = add i64 %325, %245
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @iswspace(i32 %327) #13
  %329 = icmp eq i32 %328, 0
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %220) #13
  %340 = icmp eq i64 %335, 0
  br i1 %340, label %221, label %238

; <label>:341:                                    ; preds = %266
  %342 = icmp eq i64 %243, 16384
  %343 = getelementptr inbounds i8, i8* %247, i64 1
  %344 = sext i1 %342 to i64
  %345 = add i64 %344, %243
  %346 = select i1 %342, i8* %343, i8* %247
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %9, i8* %346, i64 %345, i32 1, i1 false)
  br label %347

; <label>:347:                                    ; preds = %341, %266, %221
  %348 = phi i64 [ %239, %266 ], [ %239, %341 ], [ %331, %221 ]
  %349 = phi i64 [ %240, %266 ], [ %240, %341 ], [ %332, %221 ]
  %350 = phi i64 [ %241, %266 ], [ %241, %341 ], [ %333, %221 ]
  %351 = phi i64 [ %242, %266 ], [ %242, %341 ], [ %334, %221 ]
  %352 = phi i8 [ %244, %266 ], [ %244, %341 ], [ %336, %221 ]
  %353 = phi i64 [ %245, %266 ], [ %245, %341 ], [ %337, %221 ]
  %354 = phi i8 [ 1, %266 ], [ 1, %341 ], [ %338, %221 ]
  %355 = phi i64 [ 0, %266 ], [ %345, %341 ], [ 0, %221 ]
  br label %222

; <label>:356:                                    ; preds = %222
  %357 = tail call i32* @__errno_location() #1
  %358 = load i32, i32* %357, align 4
  %359 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %358, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %359) #13
  br label %361

; <label>:360:                                    ; preds = %222
  br label %361

; <label>:361:                                    ; preds = %360, %356
  %362 = phi i8 [ 0, %356 ], [ 1, %360 ]
  %363 = icmp ugt i64 %229, %223
  %364 = select i1 %363, i64 %229, i64 %223
  %365 = and i8 %228, 1
  %366 = zext i8 %365 to i64
  %367 = add i64 %366, %226
  call void @llvm.lifetime.end(i64 8, i8* nonnull %219) #13
  br label %443

; <label>:368:                                    ; preds = %421
  %369 = add i64 %377, %372
  br label %370

; <label>:370:                                    ; preds = %217, %368
  %371 = phi i64 [ %422, %368 ], [ 0, %217 ]
  %372 = phi i64 [ %369, %368 ], [ 0, %217 ]
  %373 = phi i64 [ %423, %368 ], [ 0, %217 ]
  %374 = phi i64 [ %424, %368 ], [ 0, %217 ]
  %375 = phi i8 [ %425, %368 ], [ 0, %217 ]
  %376 = phi i64 [ %426, %368 ], [ 0, %217 ]
  %377 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13
  switch i64 %377, label %378 [
    i64 0, label %433
    i64 -1, label %429
  ]

; <label>:378:                                    ; preds = %370
  br label %379

; <label>:379:                                    ; preds = %378, %421
  %380 = phi i64 [ %422, %421 ], [ %371, %378 ]
  %381 = phi i64 [ %423, %421 ], [ %373, %378 ]
  %382 = phi i64 [ %424, %421 ], [ %374, %378 ]
  %383 = phi i64 [ %427, %421 ], [ %377, %378 ]
  %384 = phi i8 [ %425, %421 ], [ %375, %378 ]
  %385 = phi i64 [ %426, %421 ], [ %376, %378 ]
  %386 = phi i8* [ %387, %421 ], [ %9, %378 ]
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  %388 = load i8, i8* %386, align 1
  %389 = sext i8 %388 to i32
  switch i32 %389, label %409 [
    i32 10, label %390
    i32 13, label %392
    i32 12, label %392
    i32 9, label %396
    i32 32, label %400
    i32 11, label %402
  ]

; <label>:390:                                    ; preds = %379
  %391 = add i64 %382, 1
  br label %392

; <label>:392:                                    ; preds = %379, %379, %390
  %393 = phi i64 [ %382, %379 ], [ %382, %379 ], [ %391, %390 ]
  %394 = icmp ugt i64 %385, %380
  %395 = select i1 %394, i64 %385, i64 %380
  br label %402

; <label>:396:                                    ; preds = %379
  %397 = and i64 %385, 7
  %398 = add i64 %385, 8
  %399 = sub i64 %398, %397
  br label %402

; <label>:400:                                    ; preds = %379
  %401 = add i64 %385, 1
  br label %402

; <label>:402:                                    ; preds = %417, %400, %379, %396, %392
  %403 = phi i64 [ %380, %417 ], [ %380, %379 ], [ %380, %400 ], [ %380, %396 ], [ %395, %392 ]
  %404 = phi i64 [ %382, %417 ], [ %382, %379 ], [ %382, %400 ], [ %382, %396 ], [ %393, %392 ]
  %405 = phi i64 [ %418, %417 ], [ %385, %379 ], [ %401, %400 ], [ %399, %396 ], [ 0, %392 ]
  %406 = and i8 %384, 1
  %407 = zext i8 %406 to i64
  %408 = add i64 %407, %381
  br label %421

; <label>:409:                                    ; preds = %379
  %410 = tail call i16** @__ctype_b_loc() #1
  %411 = load i16*, i16** %410, align 8
  %412 = zext i8 %388 to i64
  %413 = getelementptr inbounds i16, i16* %411, i64 %412
  %414 = load i16, i16* %413, align 2
  %415 = and i16 %414, 16384
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %421, label %417

; <label>:417:                                    ; preds = %409
  %418 = add i64 %385, 1
  %419 = and i16 %414, 8192
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %421, label %402

; <label>:421:                                    ; preds = %417, %409, %402
  %422 = phi i64 [ %403, %402 ], [ %380, %409 ], [ %380, %417 ]
  %423 = phi i64 [ %408, %402 ], [ %381, %409 ], [ %381, %417 ]
  %424 = phi i64 [ %404, %402 ], [ %382, %409 ], [ %382, %417 ]
  %425 = phi i8 [ 0, %402 ], [ %384, %409 ], [ 1, %417 ]
  %426 = phi i64 [ %405, %402 ], [ %385, %409 ], [ %418, %417 ]
  %427 = add i64 %383, -1
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %368, label %379

; <label>:429:                                    ; preds = %370
  %430 = tail call i32* @__errno_location() #1
  %431 = load i32, i32* %430, align 4
  %432 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %431, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %432) #13
  br label %434

; <label>:433:                                    ; preds = %370
  br label %434

; <label>:434:                                    ; preds = %433, %429
  %435 = phi i8 [ 0, %429 ], [ 1, %433 ]
  %436 = icmp ugt i64 %376, %371
  %437 = select i1 %436, i64 %376, i64 %371
  %438 = and i8 %375, 1
  %439 = zext i8 %438 to i64
  %440 = add i64 %439, %373
  br label %443

; <label>:441:                                    ; preds = %110
  br label %443

; <label>:442:                                    ; preds = %97
  br label %443

; <label>:443:                                    ; preds = %442, %441, %73, %115, %100, %434, %361
  %444 = phi i64 [ %364, %361 ], [ %437, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %445 = phi i64 [ %224, %361 ], [ %372, %434 ], [ %98, %100 ], [ %111, %115 ], [ %76, %73 ], [ %111, %441 ], [ %98, %442 ]
  %446 = phi i64 [ %225, %361 ], [ 0, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %447 = phi i64 [ %367, %361 ], [ %440, %434 ], [ 0, %100 ], [ 0, %115 ], [ 0, %73 ], [ 0, %441 ], [ 0, %442 ]
  %448 = phi i64 [ %227, %361 ], [ %374, %434 ], [ 0, %100 ], [ %112, %115 ], [ 0, %73 ], [ %112, %441 ], [ 0, %442 ]
  %449 = phi i8 [ %362, %361 ], [ %435, %434 ], [ 0, %100 ], [ 0, %115 ], [ 1, %73 ], [ 1, %441 ], [ 1, %442 ]
  %450 = zext i8 %28 to i32
  %451 = load i1, i1* @print_chars, align 1
  %452 = zext i1 %451 to i32
  %453 = icmp ult i32 %450, %452
  %454 = select i1 %453, i64 %445, i64 %446
  call fastcc void @write_counts(i64 %448, i64 %447, i64 %454, i64 %445, i64 %444, i8* %1)
  %455 = load i64, i64* @total_lines, align 8
  %456 = add i64 %455, %448
  store i64 %456, i64* @total_lines, align 8
  %457 = load i64, i64* @total_words, align 8
  %458 = add i64 %457, %447
  store i64 %458, i64* @total_words, align 8
  %459 = load i64, i64* @total_chars, align 8
  %460 = add i64 %459, %454
  store i64 %460, i64* @total_chars, align 8
  %461 = load i64, i64* @total_bytes, align 8
  %462 = add i64 %461, %445
  store i64 %462, i64* @total_bytes, align 8
  %463 = load i64, i64* @max_line_length, align 8
  %464 = icmp ugt i64 %444, %463
  br i1 %464, label %465, label %466

; <label>:465:                                    ; preds = %443
  store i64 %444, i64* @max_line_length, align 8
  br label %466

; <label>:466:                                    ; preds = %465, %443
  %467 = and i8 %449, 1
  %468 = icmp ne i8 %467, 0
  call void @llvm.lifetime.end(i64 16385, i8* nonnull %9) #13
  ret i1 %468
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_counts(i64, i64, i64, i64, i64, i8*) unnamed_addr #6 {
  %7 = alloca [21 x i8], align 16
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %8) #13
  %9 = load i1, i1* @print_lines, align 1
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* @number_width, align 4
  %12 = call i8* @umaxtostr(i64 %0, i8* nonnull %8) #13
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), i32 %11, i8* %12) #13
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), %6 ]
  %16 = load i1, i1* @print_words, align 1
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @number_width, align 4
  %19 = call i8* @umaxtostr(i64 %1, i8* nonnull %8) #13
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i32 %18, i8* %19) #13
  br label %21

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %17 ], [ %15, %14 ]
  %23 = load i1, i1* @print_chars, align 1
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @number_width, align 4
  %26 = call i8* @umaxtostr(i64 %2, i8* nonnull %8) #13
  %27 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i32 %25, i8* %26) #13
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %24 ], [ %22, %21 ]
  %30 = load i1, i1* @print_bytes, align 1
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* @number_width, align 4
  %33 = call i8* @umaxtostr(i64 %3, i8* nonnull %8) #13
  %34 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i32 %32, i8* %33) #13
  br label %35

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %31 ], [ %29, %28 ]
  %37 = load i1, i1* @print_linelength, align 1
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @number_width, align 4
  %40 = call i8* @umaxtostr(i64 %4, i8* nonnull %8) #13
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i32 %39, i8* %40) #13
  br label %42

; <label>:42:                                     ; preds = %38, %35
  %43 = icmp eq i8* %5, null
  br i1 %43, label %52, label %44

; <label>:44:                                     ; preds = %42
  %45 = call i8* @strchr(i8* nonnull %5, i32 10) #13
  %46 = icmp eq i8* %45, null
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %44
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %5) #13
  br label %49

; <label>:49:                                     ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ %5, %44 ]
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %50) #13
  br label %52

; <label>:52:                                     ; preds = %42, %49
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %55, %57
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %52
  %60 = call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #13
  br label %63

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %62, i8** %54, align 8
  store i8 10, i8* %55, align 1
  br label %63

; <label>:63:                                     ; preds = %59, %61
  call void @llvm.lifetime.end(i64 21, i8* nonnull %8) #13
  ret void
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
define noalias %struct.argv_iterator* @argv_iter_init_argv(i8** nonnull) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 48) #13
  %3 = icmp eq i8* %2, null
  br i1 %3, label %11, label %4

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*
  %6 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  %7 = getelementptr inbounds i8, i8* %2, i64 32
  %8 = bitcast i8* %7 to i8***
  store i8** %0, i8*** %8, align 8
  %9 = getelementptr inbounds i8, i8* %2, i64 40
  %10 = bitcast i8* %9 to i8***
  store i8** %0, i8*** %10, align 8
  br label %11

; <label>:11:                                     ; preds = %1, %4
  %12 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 48) #13
  %3 = icmp eq i8* %2, null
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*
  %6 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  br label %8

; <label>:8:                                      ; preds = %1, %4
  %9 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ]
  ret %struct.argv_iterator* %9
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @argv_iter(%struct.argv_iterator* nonnull, i32* nocapture nonnull) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %21, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 3
  %9 = tail call i64 @getdelim(i8** %7, i64* %8, i32 0, %struct._IO_FILE* nonnull %4) #13
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #13
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %14, i32 2, i32 4
  store i32 %15, i32* %1, align 4
  br label %31

; <label>:16:                                     ; preds = %6
  store i32 1, i32* %1, align 4
  %17 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load i8*, i8** %7, align 8
  br label %31

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5
  %23 = load i8**, i8*** %22, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i32 2, i32* %1, align 4
  br label %31

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %1, align 4
  %28 = load i8**, i8*** %22, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8** %29, i8*** %22, align 8
  %30 = load i8*, i8** %28, align 8
  br label %31

; <label>:31:                                     ; preds = %11, %16, %27, %26
  %32 = phi i8* [ null, %26 ], [ %30, %27 ], [ null, %11 ], [ %20, %16 ]
  ret i8* %32
}

declare i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argv_iter_n_args(%struct.argv_iterator* nocapture nonnull readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %17

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5
  %10 = bitcast i8*** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 4
  %13 = bitcast i8*** %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = ashr exact i64 %15, 3
  br label %17

; <label>:17:                                     ; preds = %8, %5
  %18 = phi i64 [ %7, %5 ], [ %16, %8 ]
  ret i64 %18
}

; Function Attrs: nounwind sspstrong uwtable
define void @argv_iter_free(%struct.argv_iterator* nocapture nonnull) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #13
  br label %8

; <label>:8:                                      ; preds = %1, %5
  %9 = bitcast %struct.argv_iterator* %0 to i8*
  tail call void @free(i8* nonnull %9) #13
  ret void
}

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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #13
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #13
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %17, i8* %12) #13
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #13
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #15
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #13
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %1, i64 20
  store i8 0, i8* %3, align 1
  br label %4

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  %7 = urem i64 %5, 10
  %8 = trunc i64 %7 to i8
  %9 = or i8 %8, 48
  %10 = getelementptr inbounds i8, i8* %6, i64 -1
  store i8 %9, i8* %10, align 1
  %11 = udiv i64 %5, 10
  %12 = icmp ugt i64 %5, 9
  br i1 %12, label %4, label %13

; <label>:13:                                     ; preds = %4
  ret i8* %10
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @mb_width_aux(i32) local_unnamed_addr #11 {
  %2 = tail call i32 @wcwidth(i32 %0) #13
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #13
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0
  %6 = icmp eq i8* %4, %5
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1
  br label %13

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0
  %11 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %4, i64 %12, i32 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i64* [ %8, %7 ], [ %11, %9 ]
  %15 = phi i8* [ %4, %7 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %14, align 8
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2
  %20 = load i8, i8* %19, align 8
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2
  store i8 %20, i8* %22, align 8
  br i1 %21, label %27, label %23

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3
  store i32 %25, i32* %26, align 4
  br label %27

; <label>:27:                                     ; preds = %13, %23
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define zeroext i1 @is_basic(i8 signext) local_unnamed_addr #12 {
  %2 = zext i8 %0 to i32
  %3 = lshr i32 %2, 5
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %2, 31
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_total() local_unnamed_addr #6 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #13
  %3 = tail call i64 @sysconf(i32 30) #13
  %4 = or i64 %3, %2
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %21, label %6

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %7) #13
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = uitofp i64 %12 to double
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = uitofp i32 %15 to double
  %17 = fmul double %13, %16
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #13
  br label %19

; <label>:18:                                     ; preds = %6
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #13
  br label %19

; <label>:19:                                     ; preds = %10, %18
  %20 = phi double [ 0x4190000000000000, %18 ], [ %17, %10 ]
  ret double %20

; <label>:21:                                     ; preds = %0
  %22 = sitofp i64 %3 to double
  %23 = sitofp i64 %2 to double
  %24 = fmul double %23, %22
  ret double %24
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_available() local_unnamed_addr #6 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #13
  %4 = tail call i64 @sysconf(i32 30) #13
  %5 = or i64 %4, %3
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %0
  %8 = sitofp i64 %4 to double
  %9 = sitofp i64 %3 to double
  %10 = fmul double %9, %8
  br label %52

; <label>:11:                                     ; preds = %0
  %12 = bitcast %struct.sysinfo* %2 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %12) #13
  %13 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = uitofp i64 %17 to double
  %19 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = uitofp i64 %20 to double
  %22 = fadd double %18, %21
  %23 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = uitofp i32 %24 to double
  %26 = fmul double %22, %25
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #13
  br label %52

; <label>:27:                                     ; preds = %11
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #13
  %28 = call i64 @sysconf(i32 85) #13
  %29 = call i64 @sysconf(i32 30) #13
  %30 = or i64 %29, %28
  %31 = icmp sgt i64 %30, -1
  br i1 %31, label %45, label %32

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.sysinfo* %1 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %33) #13
  %34 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = uitofp i64 %38 to double
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = uitofp i32 %41 to double
  %43 = fmul double %39, %42
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #13
  br label %49

; <label>:44:                                     ; preds = %32
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #13
  br label %49

; <label>:45:                                     ; preds = %27
  %46 = sitofp i64 %29 to double
  %47 = sitofp i64 %28 to double
  %48 = fmul double %47, %46
  br label %49

; <label>:49:                                     ; preds = %36, %44, %45
  %50 = phi double [ %48, %45 ], [ 0x4190000000000000, %44 ], [ %43, %36 ]
  %51 = fmul double %50, 2.500000e-01
  br label %52

; <label>:52:                                     ; preds = %15, %7, %49
  %53 = phi double [ %51, %49 ], [ %26, %15 ], [ %10, %7 ]
  ret double %53
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #14
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

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #13

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
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 {
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
  tail call void @abort() #15
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #14
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
  call void @abort() #15
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #14
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #13
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #13
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #13
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #13
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #13
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #13
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #13
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #13
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #13
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13
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
  tail call void @free(i8* %8) #13
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
  tail call void @free(i8* %16) #13
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #13
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

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
  tail call void @abort() #15
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13
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
  tail call void @free(i8* %40) #13
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13
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

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #13
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #13
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #13
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #13
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #13
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #13
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #13
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #13
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #13
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #13
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_init(%struct.Tokens*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3
  %3 = bitcast %struct.Tokens* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  %4 = tail call i32 @_obstack_begin(%struct.obstack* %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4
  %6 = tail call i32 @_obstack_begin(%struct.obstack* %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5
  %8 = tail call i32 @_obstack_begin(%struct.obstack* %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_free(%struct.Tokens*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3
  tail call void @_obstack_free(%struct.obstack* %2, i8* null) #13
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4
  tail call void @_obstack_free(%struct.obstack* %3, i8* null) #13
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5
  tail call void @_obstack_free(%struct.obstack* %4, i8* null) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @readtokens0(%struct._IO_FILE* nocapture, %struct.Tokens*) local_unnamed_addr #6 {
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %8 = bitcast i8** %7 to i64*
  br label %16

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %11 = bitcast i8** %10 to i64*
  %12 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %13 = bitcast i8** %12 to i64*
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  br label %36

; <label>:15:                                     ; preds = %49
  br label %16

; <label>:16:                                     ; preds = %15, %5
  %17 = phi i64* [ %8, %5 ], [ %13, %15 ]
  %18 = phi i8** [ %7, %5 ], [ %12, %15 ]
  %19 = phi %struct.obstack* [ %6, %5 ], [ %14, %15 ]
  %20 = load i64, i64* %17, align 8
  %21 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 2
  %22 = bitcast i8** %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %53, label %25

; <label>:25:                                     ; preds = %16
  %26 = inttoptr i64 %20 to i8*
  %27 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %28 = bitcast i8** %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, %20
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %25
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %19, i64 1) #13
  %32 = load i8*, i8** %18, align 8
  br label %33

; <label>:33:                                     ; preds = %31, %25
  %34 = phi i8* [ %32, %31 ], [ %26, %25 ]
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %18, align 8
  store i8 0, i8* %34, align 1
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1)
  br label %53

; <label>:36:                                     ; preds = %9, %49
  %37 = phi i32 [ %3, %9 ], [ %50, %49 ]
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %38, %39
  %41 = inttoptr i64 %39 to i8*
  br i1 %40, label %42, label %44

; <label>:42:                                     ; preds = %36
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %14, i64 1) #13
  %43 = load i8*, i8** %12, align 8
  br label %44

; <label>:44:                                     ; preds = %42, %36
  %45 = phi i8* [ %43, %42 ], [ %41, %36 ]
  %46 = trunc i32 %37 to i8
  %47 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %47, i8** %12, align 8
  store i8 %46, i8* %45, align 1
  %48 = icmp eq i32 %37, 0
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %44, %52
  %50 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %15, label %36

; <label>:52:                                     ; preds = %44
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1)
  br label %49

; <label>:53:                                     ; preds = %16, %33
  %54 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 4
  %55 = bitcast i8** %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 3
  %58 = bitcast i8** %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  %61 = icmp ult i64 %60, 8
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %53
  %63 = inttoptr i64 %59 to i8**
  br label %68

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4
  tail call void @_obstack_newchunk(%struct.obstack* %65, i64 8) #13
  %66 = bitcast i8** %57 to i8***
  %67 = load i8**, i8*** %66, align 8
  br label %68

; <label>:68:                                     ; preds = %62, %64
  %69 = phi i8** [ %67, %64 ], [ %63, %62 ]
  store i8* null, i8** %69, align 8
  %70 = load i8*, i8** %57, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  store i8* %71, i8** %57, align 8
  %72 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %71, %73
  %75 = ptrtoint i8* %71 to i64
  br i1 %74, label %76, label %80

; <label>:76:                                     ; preds = %68
  %77 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 10
  %78 = load i8, i8* %77, align 8
  %79 = or i8 %78, 2
  store i8 %79, i8* %77, align 8
  br label %80

; <label>:80:                                     ; preds = %76, %68
  %81 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %75
  %84 = xor i64 %82, -1
  %85 = and i64 %83, %84
  %86 = getelementptr inbounds i8, i8* null, i64 %85
  store i8* %86, i8** %57, align 8
  %87 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 1
  %88 = bitcast %struct._obstack_chunk** %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = ptrtoint i8* %86 to i64
  %91 = sub i64 %90, %89
  %92 = load i8*, i8** %54, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = sub i64 %93, %89
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %80
  store i8* %92, i8** %57, align 8
  br label %97

; <label>:97:                                     ; preds = %96, %80
  %98 = phi i64 [ %93, %96 ], [ %90, %80 ]
  %99 = bitcast i8** %72 to i64*
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 1
  %101 = bitcast i8*** %100 to i8**
  store i8* %73, i8** %101, align 8
  %102 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = icmp eq i8* %105, %103
  %107 = ptrtoint i8* %105 to i64
  br i1 %106, label %108, label %112

; <label>:108:                                    ; preds = %97
  %109 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 10
  %110 = load i8, i8* %109, align 8
  %111 = or i8 %110, 2
  store i8 %111, i8* %109, align 8
  br label %112

; <label>:112:                                    ; preds = %108, %97
  %113 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %107
  %116 = xor i64 %114, -1
  %117 = and i64 %115, %116
  %118 = getelementptr inbounds i8, i8* null, i64 %117
  store i8* %118, i8** %104, align 8
  %119 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 1
  %120 = bitcast %struct._obstack_chunk** %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = ptrtoint i8* %118 to i64
  %123 = sub i64 %122, %121
  %124 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = sub i64 %126, %121
  %128 = icmp ugt i64 %123, %127
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %112
  store i8* %125, i8** %104, align 8
  br label %130

; <label>:130:                                    ; preds = %129, %112
  %131 = phi i64 [ %126, %129 ], [ %122, %112 ]
  %132 = bitcast i8** %102 to i64*
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 2
  %134 = bitcast i64** %133 to i8**
  store i8* %103, i8** %134, align 8
  %135 = tail call i32 @ferror(%struct._IO_FILE* %0) #13
  %136 = icmp eq i32 %135, 0
  ret i1 %136
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_token(%struct.Tokens*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 3
  %3 = bitcast i8** %2 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 2
  %6 = bitcast i8** %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %4, -1
  %9 = sub i64 %8, %7
  %10 = inttoptr i64 %7 to i8*
  %11 = inttoptr i64 %4 to i8*
  %12 = icmp eq i8* %11, %10
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 10
  %15 = load i8, i8* %14, align 8
  %16 = or i8 %15, 2
  store i8 %16, i8* %14, align 8
  br label %17

; <label>:17:                                     ; preds = %13, %1
  %18 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %4
  %21 = xor i64 %19, -1
  %22 = and i64 %20, %21
  %23 = getelementptr inbounds i8, i8* null, i64 %22
  store i8* %23, i8** %2, align 8
  %24 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 1
  %25 = bitcast %struct._obstack_chunk** %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = sub i64 %27, %26
  %29 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = sub i64 %31, %26
  %33 = icmp ugt i64 %28, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %17
  store i8* %30, i8** %2, align 8
  br label %35

; <label>:35:                                     ; preds = %34, %17
  %36 = phi i64 [ %31, %34 ], [ %27, %17 ]
  store i64 %36, i64* %6, align 8
  %37 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 4
  %38 = bitcast i8** %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 3
  %41 = bitcast i8** %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %35
  %46 = inttoptr i64 %42 to i8**
  br label %51

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4
  tail call void @_obstack_newchunk(%struct.obstack* %48, i64 8) #13
  %49 = bitcast i8** %40 to i8***
  %50 = load i8**, i8*** %49, align 8
  br label %51

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8** [ %50, %47 ], [ %46, %45 ]
  store i8* %10, i8** %52, align 8
  %53 = load i8*, i8** %40, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %40, align 8
  %55 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 4
  %56 = bitcast i8** %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 3
  %59 = bitcast i8** %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %57, %60
  %62 = icmp ult i64 %61, 8
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %51
  %64 = inttoptr i64 %60 to i64*
  br label %69

; <label>:65:                                     ; preds = %51
  %66 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5
  tail call void @_obstack_newchunk(%struct.obstack* %66, i64 8) #13
  %67 = bitcast i8** %58 to i64**
  %68 = load i64*, i64** %67, align 8
  br label %69

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i64* [ %68, %65 ], [ %64, %63 ]
  store i64 %9, i64* %70, align 1
  %71 = load i8*, i8** %58, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 8
  store i8* %72, i8** %58, align 8
  %73 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #13
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22
  %15 = icmp ugt i64 %5, 2147475456
  %16 = and i1 %15, %14
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.108, i64 0, i64 0), i8* %2, i8* %3) #13
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.109, i64 0, i64 0), i32 5) #13
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #13
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.110, i64 0, i64 0), i32 5) #13
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #13
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
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.111, i64 0, i64 0), i32 5) #13
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.112, i64 0, i64 0), i32 5) #13
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.113, i64 0, i64 0), i32 5) #13
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.114, i64 0, i64 0), i32 5) #13
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #13
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.115, i64 0, i64 0), i32 5) #13
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #13
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.116, i64 0, i64 0), i32 5) #13
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #13
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.117, i64 0, i64 0), i32 5) #13
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #13
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.118, i64 0, i64 0), i32 5) #13
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #13
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.119, i64 0, i64 0), i32 5) #13
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #13
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.120, i64 0, i64 0), i32 5) #13
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #13
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #13
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #13
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #13
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #13
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.123, i64 0, i64 0), i32 5) #13
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.124, i64 0, i64 0)) #13
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.125, i64 0, i64 0), i32 5) #13
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.126, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.127, i64 0, i64 0)) #13
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.128, i64 0, i64 0), i32 5) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #13
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #11 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #13
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #13
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #11 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #13
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15
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
  tail call void @free(i8* nonnull %0) #13
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #11 {
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
  tail call void @xalloc_die() #15
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
  tail call void @free(i8* nonnull %0) #13
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #13
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #11 {
  %2 = tail call noalias i8* @malloc(i64 %0) #13
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #13
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #13
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #13
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #13
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #14
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #13
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #13
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #13
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #13
  tail call void @abort() #15
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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #13
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13
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
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #13
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #13
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.151, i64 0, i64 0), i32 5) #13
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i64 0, i64 0), i8* %2) #13
  %4 = load volatile i32, i32* @exit_failure, align 4
  tail call void @exit(i32 %4) #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0
  store i8* (i64)* %3, i8* (i64)** %6, align 8
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0
  store void (i8*)* %4, void (i8*)** %7, align 8
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %9 = load i8, i8* %8, align 8
  %10 = and i8 %9, -2
  store i8 %10, i8* %8, align 8
  %11 = icmp eq i64 %2, 0
  %12 = select i1 %11, i64 16, i64 %2
  %13 = icmp eq i64 %1, 0
  %14 = select i1 %13, i64 4064, i64 %1
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = add i64 %12, -1
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6
  store i64 %16, i64* %17, align 8
  %18 = tail call i8* %3(i64 %14) #13
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %20 = bitcast %struct._obstack_chunk** %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8
  tail call void %23() #15
  unreachable

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %18, i64 16
  %26 = ptrtoint i8* %25 to i64
  %27 = add i64 %26, %16
  %28 = sub i64 0, %12
  %29 = and i64 %27, %28
  %30 = getelementptr inbounds i8, i8* null, i64 %29
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %15, align 8
  %34 = getelementptr inbounds i8, i8* %18, i64 %33
  %35 = bitcast i8* %18 to i8**
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds i8, i8* %18, i64 8
  %38 = bitcast i8* %37 to %struct._obstack_chunk**
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8
  %39 = load i8, i8* %8, align 8
  %40 = and i8 %39, -7
  store i8 %40, i8* %8, align 8
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #6 {
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  store i8* %5, i8** %11, align 8
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %13 = load i8, i8* %12, align 8
  %14 = or i8 %13, 1
  store i8 %14, i8* %12, align 8
  %15 = icmp eq i64 %2, 0
  %16 = select i1 %15, i64 16, i64 %2
  %17 = icmp eq i64 %1, 0
  %18 = select i1 %17, i64 4064, i64 %1
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = add i64 %16, -1
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6
  store i64 %20, i64* %21, align 8
  %22 = tail call i8* %3(i8* %5, i64 %18) #13
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %24 = bitcast %struct._obstack_chunk** %23 to i8**
  store i8* %22, i8** %24, align 8
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8
  tail call void %27() #15
  unreachable

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds i8, i8* %22, i64 16
  %30 = ptrtoint i8* %29 to i64
  %31 = add i64 %30, %20
  %32 = sub i64 0, %16
  %33 = and i64 %31, %32
  %34 = getelementptr inbounds i8, i8* null, i64 %33
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %19, align 8
  %38 = getelementptr inbounds i8, i8* %22, i64 %37
  %39 = bitcast i8* %22 to i8**
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds i8, i8* %22, i64 8
  %42 = bitcast i8* %41 to %struct._obstack_chunk**
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8
  %43 = load i8, i8* %12, align 8
  %44 = and i8 %43, -7
  store i8 %44, i8* %12, align 8
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3
  %6 = bitcast i8** %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2
  %9 = bitcast i8** %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  %12 = add i64 %11, %1
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %12, %14
  %16 = lshr i64 %11, 3
  %17 = add nuw nsw i64 %16, 100
  %18 = add i64 %17, %15
  %19 = icmp ult i64 %18, %15
  %20 = select i1 %19, i64 %15, i64 %18
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %20, %22
  %24 = select i1 %23, i64 %22, i64 %20
  %25 = icmp ugt i64 %11, %12
  %26 = icmp ugt i64 %12, %15
  %27 = or i1 %25, %26
  br i1 %27, label %47, label %28

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %30 = load i8, i8* %29, align 8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  br i1 %32, label %40, label %34

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  %38 = load i8*, i8** %37, align 8
  %39 = tail call i8* %36(i8* %38, i64 %24) #13
  br label %44

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8
  %43 = tail call i8* %42(i64 %24) #13
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ]
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8
  tail call void %48() #15
  unreachable

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct._obstack_chunk** %3 to i8**
  store i8* %45, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %45, i64 8
  %52 = bitcast i8* %51 to %struct._obstack_chunk**
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8
  %53 = getelementptr inbounds i8, i8* %45, i64 %24
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = bitcast i8* %45 to i8**
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds i8, i8* %45, i64 16
  %57 = ptrtoint i8* %56 to i64
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, %57
  %60 = xor i64 %58, -1
  %61 = and i64 %59, %60
  %62 = getelementptr inbounds i8, i8* null, i64 %61
  %63 = load i8*, i8** %8, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %11, i32 1, i1 false)
  %64 = load i8, i8* %29, align 8
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %92

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0
  %69 = ptrtoint i8* %68 to i64
  %70 = add i64 %58, %69
  %71 = and i64 %70, %60
  %72 = getelementptr inbounds i8, i8* null, i64 %71
  %73 = icmp eq i8* %63, %72
  br i1 %73, label %74, label %92

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1
  %76 = bitcast %struct._obstack_chunk** %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = bitcast i8* %51 to i64*
  store i64 %77, i64* %78, align 8
  %79 = bitcast %struct._obstack_chunk* %4 to i8*
  %80 = load i8, i8* %29, align 8
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  br i1 %82, label %89, label %84

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  %88 = load i8*, i8** %87, align 8
  tail call void %86(i8* %88, i8* %79) #13
  br label %92

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0
  %91 = load void (i8*)*, void (i8*)** %90, align 8
  tail call void %91(i8* %79) #13
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %62, i64 %11
  store i8* %93, i8** %5, align 8
  %94 = load i8, i8* %29, align 8
  %95 = and i8 %94, -3
  store i8 %95, i8* %29, align 8
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8
  %5 = icmp eq %struct._obstack_chunk* %4, null
  br i1 %5, label %21, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %15
  %8 = phi %struct._obstack_chunk* [ %17, %15 ], [ %4, %6 ]
  %9 = bitcast %struct._obstack_chunk* %8 to i8*
  %10 = icmp ult i8* %9, %1
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ult i8* %13, %1
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8
  %18 = icmp eq %struct._obstack_chunk* %17, null
  br i1 %18, label %19, label %7

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i32 [ 0, %15 ], [ 1, %11 ]
  br label %21

; <label>:21:                                     ; preds = %19, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8
  %5 = icmp eq %struct._obstack_chunk* %4, null
  br i1 %5, label %43, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  %14 = bitcast %struct._obstack_chunk* %13 to i8*
  %15 = icmp ult i8* %14, %1
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ult i8* %18, %1
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8
  %23 = load i8, i8* %7, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8
  %28 = load i8*, i8** %11, align 8
  tail call void %27(i8* %28, i8* nonnull %14) #13
  br label %31

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8
  tail call void %30(i8* nonnull %14) #13
  br label %31

; <label>:31:                                     ; preds = %26, %29
  %32 = load i8, i8* %7, align 8
  %33 = or i8 %32, 2
  store i8 %33, i8* %7, align 8
  %34 = icmp eq %struct._obstack_chunk* %22, null
  br i1 %34, label %42, label %12

; <label>:35:                                     ; preds = %16
  %36 = bitcast %struct._obstack_chunk* %13 to i64*
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3
  store i8* %1, i8** %37, align 8
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2
  store i8* %1, i8** %38, align 8
  %39 = load i64, i64* %36, align 8
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4
  %41 = bitcast i8** %40 to i64*
  store i64 %39, i64* %41, align 8
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8
  br label %46

; <label>:42:                                     ; preds = %31
  br label %43

; <label>:43:                                     ; preds = %42, %2
  %44 = icmp eq i8* %1, null
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %43
  tail call void @abort() #15
  unreachable

; <label>:46:                                     ; preds = %43, %35
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8
  %4 = icmp eq %struct._obstack_chunk* %3, null
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct._obstack_chunk* [ %15, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %13, %6 ], [ 0, %5 ]
  %9 = bitcast %struct._obstack_chunk* %7 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = ptrtoint %struct._obstack_chunk* %7 to i64
  %12 = sub i64 %8, %11
  %13 = add i64 %12, %10
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8
  %16 = icmp eq %struct._obstack_chunk* %15, null
  br i1 %16, label %17, label %6

; <label>:17:                                     ; preds = %6
  br label %18

; <label>:18:                                     ; preds = %17, %1
  %19 = phi i64 [ 0, %1 ], [ %13, %17 ]
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13
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
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0)) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #13
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.167, i64 0, i64 0)) #13
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.168, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #14
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
  %29 = tail call noalias i8* @malloc(i64 %28) #13
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #13
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.169, i64 0, i64 0), i64 14, i32 1, i1 false) #13
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.169, i64 0, i64 0), i64 14, i32 1, i1 false) #13
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.170, i64 0, i64 0)) #13
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #13
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #13
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #13
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #13
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #13
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.171, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #13
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14
  %83 = call i64 @strlen(i8* nonnull %45) #14
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #13
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #13
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #13
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #13
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #13
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #13
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #13
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #13
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #13
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #13
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #13
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #13
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #13
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #13
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
  %144 = call i64 @strlen(i8* %134) #14
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #14
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i64 0, i64 0), i8* %158
  ret i8* %161
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
