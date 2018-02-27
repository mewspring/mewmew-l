; ModuleID = 'coreutils-8.27/src/sha1sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A  -b, --binary         read in binary mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  -c, --check          read %s sums from the FILEs and check them\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"      --tag            create a BSD-style checksum\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"  -t, --text           read in text mode (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [435 x i8] c"\0AThe following five options are useful only when verifying checksums:\0A      --ignore-missing  don't fail or report status for missing files\0A      --quiet          don't print OK for each successfully verified file\0A      --status         don't output anything, status code shows success\0A      --strict         exit non-zero for improperly formatted checksum lines\0A  -w, --warn           warn about improperly formatted checksum lines\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [297 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"FIPS-180-1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bctw\00", align 1
@long_options = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@status_only = internal unnamed_addr global i1 false, align 1
@warn = internal unnamed_addr global i1 false, align 1
@quiet = internal unnamed_addr global i1 false, align 1
@ignore_missing = internal unnamed_addr global i1 false, align 1
@strict = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8
@.str.21 = private unnamed_addr constant [35 x i8] c"--tag does not support --text mode\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"the --tag option is meaningless when verifying checksums\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"the --binary and --text options are meaningless when verifying checksums\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"the --ignore-missing option is meaningful only when verifying checksums\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"the --status option is meaningful only when verifying checksums\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"the --warn option is meaningful only when verifying checksums\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"the --quiet option is meaningful only when verifying checksums\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"the --strict option is meaningful only when verifying checksums\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4
@.str.64 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.67 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.98 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.99 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.109 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.122 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.126 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.127 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.160 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.161 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.162 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.163 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.164 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %52

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.10, i64 0, i64 0), i32 5) #10
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #10
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #10
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #10
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i32 5) #10
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10
  br label %47

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 5) #10
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 5) #10
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #10
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #14
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
  %3 = alloca [24 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %9) #10
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 3
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8*, i8** %1, align 8
  call void @set_program_name(i8* %15) #10
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10
  br label %22

; <label>:22:                                     ; preds = %35, %2
  %23 = phi i32 [ -1, %2 ], [ %36, %35 ]
  %24 = phi i8 [ 0, %2 ], [ %37, %35 ]
  %25 = phi i8 [ 0, %2 ], [ %38, %35 ]
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10
  switch i32 %26, label %43 [
    i32 -1, label %44
    i32 98, label %35
    i32 99, label %27
    i32 129, label %28
    i32 116, label %29
    i32 119, label %30
    i32 128, label %31
    i32 130, label %32
    i32 131, label %33
    i32 132, label %34
    i32 -130, label %39
    i32 -131, label %40
  ]

; <label>:27:                                     ; preds = %22
  br label %35

; <label>:28:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35

; <label>:29:                                     ; preds = %22
  br label %35

; <label>:30:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35

; <label>:31:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %35

; <label>:32:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %35

; <label>:33:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %35

; <label>:34:                                     ; preds = %22
  br label %35

; <label>:35:                                     ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %22
  %36 = phi i32 [ 1, %34 ], [ %23, %33 ], [ %23, %32 ], [ %23, %31 ], [ %23, %30 ], [ 0, %29 ], [ %23, %28 ], [ %23, %27 ], [ 1, %22 ]
  %37 = phi i8 [ 1, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %30 ], [ %24, %29 ], [ %24, %28 ], [ %24, %27 ], [ %24, %22 ]
  %38 = phi i8 [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %25, %30 ], [ %25, %29 ], [ %25, %28 ], [ 1, %27 ], [ %25, %22 ]
  br label %22

; <label>:39:                                     ; preds = %22
  call void @usage(i32 0) #15
  unreachable

; <label>:40:                                     ; preds = %22
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10
  call void @exit(i32 0) #14
  unreachable

; <label>:43:                                     ; preds = %22
  call void @usage(i32 1) #15
  unreachable

; <label>:44:                                     ; preds = %22
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %45 = icmp ne i8 %24, 0
  %46 = xor i1 %45, true
  %47 = icmp ne i32 %23, 0
  %48 = or i1 %47, %46
  br i1 %48, label %51, label %49

; <label>:49:                                     ; preds = %44
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i8 %25, 0
  %53 = or i1 %52, %46
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %51
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:56:                                     ; preds = %51
  %57 = icmp slt i32 %23, 0
  %58 = or i1 %57, %52
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %56
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:61:                                     ; preds = %56
  %62 = load i1, i1* @ignore_missing, align 1
  %63 = and i1 %52, %62
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:66:                                     ; preds = %61
  %67 = load i1, i1* @status_only, align 1
  %68 = and i1 %52, %67
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:71:                                     ; preds = %66
  %72 = load i1, i1* @warn, align 1
  %73 = and i1 %52, %72
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:76:                                     ; preds = %71
  %77 = load i1, i1* @quiet, align 1
  %78 = and i1 %52, %77
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:81:                                     ; preds = %76
  %82 = load i1, i1* @strict, align 1
  %83 = icmp ne i8 %25, 0
  %84 = xor i1 %83, true
  %85 = and i1 %82, %84
  br i1 %85, label %86, label %88

; <label>:86:                                     ; preds = %81
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10
  call void @usage(i32 1) #15
  unreachable

; <label>:88:                                     ; preds = %81
  %89 = icmp sgt i32 %23, 0
  %90 = sext i32 %0 to i64
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90
  %92 = load i32, i32* @optind, align 4
  %93 = icmp eq i32 %92, %0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8*, i8** %91, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** %91, align 8
  br label %96

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i8** [ %95, %94 ], [ %91, %88 ]
  %98 = sext i32 %92 to i64
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98
  %100 = icmp ult i8** %99, %97
  br i1 %100, label %101, label %113

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 3
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 3
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = bitcast i8** %4 to i8*
  %109 = bitcast i64* %5 to i8*
  %110 = select i1 %89, i32 42, i32 32
  %111 = trunc i32 %110 to i8
  br label %116

; <label>:112:                                    ; preds = %655
  br label %113

; <label>:113:                                    ; preds = %112, %96
  %114 = phi i8 [ 1, %96 ], [ %656, %112 ]
  %115 = load i1, i1* @have_read_stdin, align 1
  br i1 %115, label %659, label %667

; <label>:116:                                    ; preds = %101, %655
  %117 = phi i8** [ %99, %101 ], [ %657, %655 ]
  %118 = phi i8 [ 1, %101 ], [ %656, %655 ]
  %119 = load i8*, i8** %117, align 8
  br i1 %83, label %120, label %563

; <label>:120:                                    ; preds = %116
  call void @llvm.lifetime.start(i64 24, i8* nonnull %102) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %108) #10
  call void @llvm.lifetime.start(i64 8, i8* nonnull %109) #10
  %121 = load i8, i8* %119, align 1
  %122 = icmp eq i8 %121, 45
  br i1 %122, label %123, label %130

; <label>:123:                                    ; preds = %120
  %124 = getelementptr inbounds i8, i8* %119, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %130

; <label>:127:                                    ; preds = %123
  store i1 true, i1* @have_read_stdin, align 1
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %137

; <label>:130:                                    ; preds = %123, %120
  %131 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10
  %132 = icmp eq %struct._IO_FILE* %131, null
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %130
  %134 = tail call i32* @__errno_location() #1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %119) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %136) #10
  br label %559

; <label>:137:                                    ; preds = %130, %127
  %138 = phi i1 [ true, %127 ], [ false, %130 ]
  %139 = phi %struct._IO_FILE* [ %129, %127 ], [ %131, %130 ]
  %140 = phi i8* [ %128, %127 ], [ %119, %130 ]
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 0
  br label %142

; <label>:142:                                    ; preds = %486, %137
  %143 = phi i64 [ 0, %137 ], [ %150, %486 ]
  %144 = phi i8 [ 0, %137 ], [ %487, %486 ]
  %145 = phi i8 [ 0, %137 ], [ %488, %486 ]
  %146 = phi i64 [ 0, %137 ], [ %489, %486 ]
  %147 = phi i64 [ 0, %137 ], [ %490, %486 ]
  %148 = phi i64 [ 0, %137 ], [ %491, %486 ]
  %149 = phi i64 [ 0, %137 ], [ %492, %486 ]
  %150 = add i64 %143, 1
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

; <label>:152:                                    ; preds = %142
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 5) #10
  %154 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %154) #10
  unreachable

; <label>:155:                                    ; preds = %142
  %156 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %139) #10
  %157 = icmp slt i64 %156, 1
  br i1 %157, label %496, label %158

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %4, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 35
  br i1 %161, label %486, label %162

; <label>:162:                                    ; preds = %158
  %163 = add nsw i64 %156, -1
  %164 = getelementptr inbounds i8, i8* %159, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = icmp eq i8 %165, 10
  br i1 %166, label %167, label %169

; <label>:167:                                    ; preds = %162
  store i8 0, i8* %164, align 1
  %168 = load i8*, i8** %4, align 8
  br label %169

; <label>:169:                                    ; preds = %167, %162
  %170 = phi i8* [ %168, %167 ], [ %159, %162 ]
  %171 = phi i64 [ %163, %167 ], [ %156, %162 ]
  br label %172

; <label>:172:                                    ; preds = %176, %169
  %173 = phi i64 [ 0, %169 ], [ %177, %176 ]
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  switch i8 %175, label %180 [
    i8 32, label %176
    i8 9, label %176
    i8 92, label %178
  ]

; <label>:176:                                    ; preds = %172, %172
  %177 = add i64 %173, 1
  br label %172

; <label>:178:                                    ; preds = %172
  %179 = add i64 %173, 1
  br label %181

; <label>:180:                                    ; preds = %172
  br label %181

; <label>:181:                                    ; preds = %180, %178
  %182 = phi i1 [ true, %178 ], [ false, %180 ]
  %183 = phi i64 [ %179, %178 ], [ %173, %180 ]
  %184 = getelementptr inbounds i8, i8* %170, i64 %183
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #13
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %261

; <label>:187:                                    ; preds = %181
  %188 = add i64 %183, 4
  %189 = getelementptr inbounds i8, i8* %170, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = icmp eq i8 %190, 32
  %192 = add i64 %183, 5
  %193 = select i1 %191, i64 %192, i64 %188
  %194 = getelementptr inbounds i8, i8* %170, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 40
  br i1 %196, label %197, label %370

; <label>:197:                                    ; preds = %187
  %198 = add i64 %193, 1
  %199 = getelementptr inbounds i8, i8* %170, i64 %198
  %200 = sub i64 %171, %198
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %370, label %202

; <label>:202:                                    ; preds = %197
  br label %203

; <label>:203:                                    ; preds = %202, %207
  %204 = phi i64 [ %205, %207 ], [ %200, %202 ]
  %205 = add i64 %204, -1
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %211, label %207

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i8, i8* %199, i64 %205
  %209 = load i8, i8* %208, align 1
  %210 = icmp eq i8 %209, 41
  br i1 %210, label %214, label %203

; <label>:211:                                    ; preds = %203
  %212 = load i8, i8* %199, align 1
  %213 = icmp eq i8 %212, 41
  br i1 %213, label %215, label %370

; <label>:214:                                    ; preds = %207
  br label %215

; <label>:215:                                    ; preds = %214, %211
  %216 = phi i8* [ %199, %211 ], [ %208, %214 ]
  %217 = phi i1 [ true, %211 ], [ false, %214 ]
  %218 = phi i64 [ 0, %211 ], [ %205, %214 ]
  br i1 %182, label %219, label %247

; <label>:219:                                    ; preds = %215
  br i1 %217, label %243, label %220

; <label>:220:                                    ; preds = %219
  %221 = add i64 %204, -2
  br label %222

; <label>:222:                                    ; preds = %236, %220
  %223 = phi i64 [ 0, %220 ], [ %240, %236 ]
  %224 = phi i8* [ %199, %220 ], [ %239, %236 ]
  %225 = getelementptr inbounds i8, i8* %199, i64 %223
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  switch i32 %227, label %236 [
    i32 92, label %228
    i32 0, label %368
  ]

; <label>:228:                                    ; preds = %222
  %229 = icmp eq i64 %223, %221
  br i1 %229, label %368, label %230

; <label>:230:                                    ; preds = %228
  %231 = add i64 %223, 1
  %232 = getelementptr inbounds i8, i8* %199, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  switch i32 %234, label %368 [
    i32 110, label %235
    i32 92, label %236
  ]

; <label>:235:                                    ; preds = %230
  br label %236

; <label>:236:                                    ; preds = %235, %230, %222
  %237 = phi i8 [ 10, %235 ], [ 92, %230 ], [ %226, %222 ]
  %238 = phi i64 [ %231, %235 ], [ %231, %230 ], [ %223, %222 ]
  store i8 %237, i8* %224, align 1
  %239 = getelementptr inbounds i8, i8* %224, i64 1
  %240 = add i64 %238, 1
  %241 = icmp ult i64 %240, %218
  br i1 %241, label %222, label %242

; <label>:242:                                    ; preds = %236
  br label %243

; <label>:243:                                    ; preds = %242, %219
  %244 = phi i8* [ %199, %219 ], [ %239, %242 ]
  %245 = icmp ult i8* %244, %216
  br i1 %245, label %246, label %247

; <label>:246:                                    ; preds = %243
  store i8 0, i8* %244, align 1
  br label %247

; <label>:247:                                    ; preds = %246, %243, %215
  store i8 0, i8* %216, align 1
  br label %248

; <label>:248:                                    ; preds = %253, %247
  %249 = phi i64 [ %204, %247 ], [ %254, %253 ]
  %250 = getelementptr inbounds i8, i8* %199, i64 %249
  %251 = load i8, i8* %250, align 1
  switch i8 %251, label %367 [
    i8 32, label %253
    i8 9, label %253
    i8 61, label %252
  ]

; <label>:252:                                    ; preds = %248
  br label %255

; <label>:253:                                    ; preds = %248, %248
  %254 = add i64 %249, 1
  br label %248

; <label>:255:                                    ; preds = %260, %252
  %256 = phi i64 [ %249, %252 ], [ %257, %260 ]
  %257 = add i64 %256, 1
  %258 = getelementptr inbounds i8, i8* %199, i64 %257
  %259 = load i8, i8* %258, align 1
  switch i8 %259, label %328 [
    i8 32, label %260
    i8 9, label %260
  ]

; <label>:260:                                    ; preds = %255, %255
  br label %255

; <label>:261:                                    ; preds = %181
  %262 = sub i64 %171, %183
  %263 = load i1, i1* @min_digest_line_length, align 8
  %264 = select i1 %263, i64 42, i64 0
  %265 = load i8, i8* %184, align 1
  %266 = icmp eq i8 %265, 92
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, %264
  %269 = icmp ult i64 %262, %268
  br i1 %269, label %370, label %270

; <label>:270:                                    ; preds = %261
  %271 = load i1, i1* @digest_hex_bytes, align 8
  %272 = select i1 %271, i64 40, i64 0
  %273 = add i64 %272, %183
  %274 = getelementptr inbounds i8, i8* %170, i64 %273
  %275 = load i8, i8* %274, align 1
  switch i8 %275, label %370 [
    i8 32, label %276
    i8 9, label %276
  ]

; <label>:276:                                    ; preds = %270, %270
  %277 = add i64 %273, 1
  store i8 0, i8* %274, align 1
  %278 = sub i64 %171, %277
  %279 = icmp eq i64 %278, 1
  br i1 %279, label %283, label %280

; <label>:280:                                    ; preds = %276
  %281 = getelementptr inbounds i8, i8* %170, i64 %277
  %282 = load i8, i8* %281, align 1
  switch i8 %282, label %283 [
    i8 32, label %287
    i8 42, label %287
  ]

; <label>:283:                                    ; preds = %280, %276
  %284 = load i32, i32* @bsd_reversed, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %370, label %286

; <label>:286:                                    ; preds = %283
  store i32 1, i32* @bsd_reversed, align 4
  br label %292

; <label>:287:                                    ; preds = %280, %280
  %288 = load i32, i32* @bsd_reversed, align 4
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %292, label %290

; <label>:290:                                    ; preds = %287
  store i32 0, i32* @bsd_reversed, align 4
  %291 = add i64 %273, 2
  br label %292

; <label>:292:                                    ; preds = %290, %287, %286
  %293 = phi i64 [ %277, %286 ], [ %291, %290 ], [ %277, %287 ]
  %294 = getelementptr inbounds i8, i8* %170, i64 %293
  br i1 %182, label %295, label %329

; <label>:295:                                    ; preds = %292
  %296 = sub i64 %171, %293
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %321, label %298

; <label>:298:                                    ; preds = %295
  %299 = add i64 %296, -1
  br label %300

; <label>:300:                                    ; preds = %314, %298
  %301 = phi i64 [ 0, %298 ], [ %318, %314 ]
  %302 = phi i8* [ %294, %298 ], [ %317, %314 ]
  %303 = getelementptr inbounds i8, i8* %294, i64 %301
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  switch i32 %305, label %314 [
    i32 92, label %306
    i32 0, label %369
  ]

; <label>:306:                                    ; preds = %300
  %307 = icmp eq i64 %301, %299
  br i1 %307, label %369, label %308

; <label>:308:                                    ; preds = %306
  %309 = add i64 %301, 1
  %310 = getelementptr inbounds i8, i8* %294, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  switch i32 %312, label %369 [
    i32 110, label %313
    i32 92, label %314
  ]

; <label>:313:                                    ; preds = %308
  br label %314

; <label>:314:                                    ; preds = %313, %308, %300
  %315 = phi i8 [ 10, %313 ], [ 92, %308 ], [ %304, %300 ]
  %316 = phi i64 [ %309, %313 ], [ %309, %308 ], [ %301, %300 ]
  store i8 %315, i8* %302, align 1
  %317 = getelementptr inbounds i8, i8* %302, i64 1
  %318 = add i64 %316, 1
  %319 = icmp ult i64 %318, %296
  br i1 %319, label %300, label %320

; <label>:320:                                    ; preds = %314
  br label %321

; <label>:321:                                    ; preds = %320, %295
  %322 = phi i8* [ %294, %295 ], [ %317, %320 ]
  %323 = getelementptr inbounds i8, i8* %294, i64 %296
  %324 = icmp ult i8* %322, %323
  br i1 %324, label %325, label %326

; <label>:325:                                    ; preds = %321
  store i8 0, i8* %322, align 1
  br label %326

; <label>:326:                                    ; preds = %325, %321
  %327 = icmp eq i8* %294, null
  br i1 %327, label %370, label %329

; <label>:328:                                    ; preds = %255
  br label %329

; <label>:329:                                    ; preds = %328, %326, %292
  %330 = phi i8* [ %184, %326 ], [ %184, %292 ], [ %258, %328 ]
  %331 = phi i8* [ %294, %326 ], [ %294, %292 ], [ %199, %328 ]
  br i1 %138, label %332, label %339

; <label>:332:                                    ; preds = %329
  %333 = load i8, i8* %331, align 1
  %334 = icmp eq i8 %333, 45
  br i1 %334, label %335, label %339

; <label>:335:                                    ; preds = %332
  %336 = getelementptr inbounds i8, i8* %331, i64 1
  %337 = load i8, i8* %336, align 1
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %370, label %339

; <label>:339:                                    ; preds = %335, %332, %329
  %340 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %340, label %341, label %362

; <label>:341:                                    ; preds = %339
  %342 = tail call i16** @__ctype_b_loc() #1
  %343 = load i16*, i16** %342, align 8
  br label %344

; <label>:344:                                    ; preds = %671, %341
  %345 = phi i32 [ 0, %341 ], [ %673, %671 ]
  %346 = phi i8* [ %330, %341 ], [ %672, %671 ]
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds i16, i16* %343, i64 %348
  %350 = load i16, i16* %349, align 2
  %351 = and i16 %350, 4096
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %366, label %353

; <label>:353:                                    ; preds = %344
  %354 = getelementptr inbounds i8, i8* %346, i64 1
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i64
  %357 = getelementptr inbounds i16, i16* %343, i64 %356
  %358 = load i16, i16* %357, align 2
  %359 = and i16 %358, 4096
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %366, label %671

; <label>:361:                                    ; preds = %671
  br label %362

; <label>:362:                                    ; preds = %361, %339
  %363 = phi i8* [ %330, %339 ], [ %672, %361 ]
  %364 = load i8, i8* %363, align 1
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %378, label %370

; <label>:366:                                    ; preds = %353, %344
  br label %370

; <label>:367:                                    ; preds = %248
  br label %370

; <label>:368:                                    ; preds = %222, %228, %230
  br label %370

; <label>:369:                                    ; preds = %300, %306, %308
  br label %370

; <label>:370:                                    ; preds = %369, %368, %367, %366, %362, %335, %326, %283, %270, %261, %211, %197, %187
  %371 = add i64 %149, 1
  %372 = load i1, i1* @warn, align 1
  br i1 %372, label %373, label %376

; <label>:373:                                    ; preds = %370
  %374 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 5) #10
  %375 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %374, i8* %375, i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  br label %376

; <label>:376:                                    ; preds = %373, %370
  %377 = add i64 %148, 1
  br label %486

; <label>:378:                                    ; preds = %362
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #10
  %379 = load i1, i1* @status_only, align 1
  br i1 %379, label %383, label %380

; <label>:380:                                    ; preds = %378
  %381 = call i8* @strchr(i8* %331, i32 10) #10
  %382 = icmp ne i8* %381, null
  br label %383

; <label>:383:                                    ; preds = %380, %378
  %384 = phi i1 [ false, %378 ], [ %382, %380 ]
  %385 = call fastcc zeroext i1 @digest_file(i8* %331, i8* %107, i8* nonnull %6) #10
  br i1 %385, label %404, label %386

; <label>:386:                                    ; preds = %383
  %387 = add i64 %146, 1
  %388 = load i1, i1* @status_only, align 1
  br i1 %388, label %482, label %389

; <label>:389:                                    ; preds = %386
  br i1 %384, label %390, label %401

; <label>:390:                                    ; preds = %389
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %392 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 5
  %393 = load i8*, i8** %392, align 8
  %394 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 6
  %395 = load i8*, i8** %394, align 8
  %396 = icmp ult i8* %393, %395
  br i1 %396, label %399, label %397

; <label>:397:                                    ; preds = %390
  %398 = call i32 @__overflow(%struct._IO_FILE* %391, i32 92) #10
  br label %401

; <label>:399:                                    ; preds = %390
  %400 = getelementptr inbounds i8, i8* %393, i64 1
  store i8* %400, i8** %392, align 8
  store i8 92, i8* %393, align 1
  br label %401

; <label>:401:                                    ; preds = %399, %397, %389
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10
  %402 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 5) #10
  %403 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %402) #10
  br label %482

; <label>:404:                                    ; preds = %383
  %405 = load i1, i1* @ignore_missing, align 1
  %406 = xor i1 %405, true
  %407 = load i8, i8* %6, align 1
  %408 = icmp eq i8 %407, 0
  %409 = or i1 %408, %406
  br i1 %409, label %410, label %482

; <label>:410:                                    ; preds = %404
  %411 = load i1, i1* @digest_hex_bytes, align 8
  %412 = select i1 %411, i64 20, i64 0
  br i1 %411, label %413, label %451

; <label>:413:                                    ; preds = %410
  %414 = tail call i32** @__ctype_tolower_loc() #1
  %415 = load i32*, i32** %414, align 8
  br label %416

; <label>:416:                                    ; preds = %446, %413
  %417 = phi i64 [ 0, %413 ], [ %447, %446 ]
  %418 = shl i64 %417, 1
  %419 = getelementptr inbounds i8, i8* %330, i64 %418
  %420 = load i8, i8* %419, align 1
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds i32, i32* %415, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = getelementptr inbounds i8, i8* %107, i64 %417
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = lshr i32 %426, 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %423, %431
  br i1 %432, label %433, label %449

; <label>:433:                                    ; preds = %416
  %434 = or i64 %418, 1
  %435 = getelementptr inbounds i8, i8* %330, i64 %434
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i64
  %438 = getelementptr inbounds i32, i32* %415, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = and i32 %426, 15
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %439, %444
  br i1 %445, label %446, label %449

; <label>:446:                                    ; preds = %433
  %447 = add nuw nsw i64 %417, 1
  %448 = icmp ult i64 %447, %412
  br i1 %448, label %416, label %449

; <label>:449:                                    ; preds = %416, %433, %446
  %450 = phi i64 [ %447, %446 ], [ %417, %416 ], [ %417, %433 ]
  br label %451

; <label>:451:                                    ; preds = %449, %410
  %452 = phi i64 [ 0, %410 ], [ %450, %449 ]
  %453 = icmp ne i64 %452, %412
  %454 = add i64 %147, 1
  %455 = select i1 %453, i8 %144, i8 1
  %456 = select i1 %453, i64 %454, i64 %147
  %457 = load i1, i1* @status_only, align 1
  br i1 %457, label %482, label %458

; <label>:458:                                    ; preds = %451
  br i1 %453, label %461, label %459

; <label>:459:                                    ; preds = %458
  %460 = load i1, i1* @quiet, align 1
  br i1 %460, label %482, label %461

; <label>:461:                                    ; preds = %459, %458
  br i1 %384, label %462, label %473

; <label>:462:                                    ; preds = %461
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %464 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 5
  %465 = load i8*, i8** %464, align 8
  %466 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 6
  %467 = load i8*, i8** %466, align 8
  %468 = icmp ult i8* %465, %467
  br i1 %468, label %471, label %469

; <label>:469:                                    ; preds = %462
  %470 = call i32 @__overflow(%struct._IO_FILE* %463, i32 92) #10
  br label %473

; <label>:471:                                    ; preds = %462
  %472 = getelementptr inbounds i8, i8* %465, i64 1
  store i8* %472, i8** %464, align 8
  store i8 92, i8* %465, align 1
  br label %473

; <label>:473:                                    ; preds = %471, %469, %461
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10
  br i1 %453, label %474, label %477

; <label>:474:                                    ; preds = %473
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i32 5) #10
  %476 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %475) #10
  br label %482

; <label>:477:                                    ; preds = %473
  %478 = load i1, i1* @quiet, align 1
  br i1 %478, label %482, label %479

; <label>:479:                                    ; preds = %477
  %480 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 5) #10
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %480) #10
  br label %482

; <label>:482:                                    ; preds = %479, %477, %474, %459, %451, %404, %401, %386
  %483 = phi i8 [ %144, %386 ], [ %144, %401 ], [ %144, %404 ], [ %144, %474 ], [ 1, %479 ], [ 1, %477 ], [ %455, %451 ], [ 1, %459 ]
  %484 = phi i64 [ %387, %386 ], [ %387, %401 ], [ %146, %404 ], [ %146, %474 ], [ %146, %479 ], [ %146, %477 ], [ %146, %451 ], [ %146, %459 ]
  %485 = phi i64 [ %147, %386 ], [ %147, %401 ], [ %147, %404 ], [ %454, %474 ], [ %147, %479 ], [ %147, %477 ], [ %456, %451 ], [ %147, %459 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #10
  br label %486

; <label>:486:                                    ; preds = %482, %376, %158
  %487 = phi i8 [ %483, %482 ], [ %144, %376 ], [ %144, %158 ]
  %488 = phi i8 [ 1, %482 ], [ %145, %376 ], [ %145, %158 ]
  %489 = phi i64 [ %484, %482 ], [ %146, %376 ], [ %146, %158 ]
  %490 = phi i64 [ %485, %482 ], [ %147, %376 ], [ %147, %158 ]
  %491 = phi i64 [ %148, %482 ], [ %377, %376 ], [ %148, %158 ]
  %492 = phi i64 [ %149, %482 ], [ %371, %376 ], [ %149, %158 ]
  %493 = load i32, i32* %141, align 8
  %494 = and i32 %493, 48
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %142, label %496

; <label>:496:                                    ; preds = %486, %155
  %497 = phi i64 [ %492, %486 ], [ %149, %155 ]
  %498 = phi i64 [ %491, %486 ], [ %148, %155 ]
  %499 = phi i64 [ %490, %486 ], [ %147, %155 ]
  %500 = phi i64 [ %489, %486 ], [ %146, %155 ]
  %501 = phi i8 [ %488, %486 ], [ %145, %155 ]
  %502 = phi i8 [ %487, %486 ], [ %144, %155 ]
  %503 = load i8*, i8** %4, align 8
  call void @free(i8* %503) #10
  %504 = load i32, i32* %141, align 8
  %505 = and i32 %504, 32
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %510, label %507

; <label>:507:                                    ; preds = %496
  %508 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 5) #10
  %509 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %508, i8* %509) #10
  br label %559

; <label>:510:                                    ; preds = %496
  br i1 %138, label %518, label %511

; <label>:511:                                    ; preds = %510
  %512 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %139) #10
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %518, label %514

; <label>:514:                                    ; preds = %511
  %515 = tail call i32* @__errno_location() #1
  %516 = load i32, i32* %515, align 4
  %517 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %517) #10
  br label %559

; <label>:518:                                    ; preds = %511, %510
  %519 = and i8 %501, 1
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %521, label %524

; <label>:521:                                    ; preds = %518
  %522 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.70, i64 0, i64 0), i32 5) #10
  %523 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %522, i8* %523, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10
  br label %559

; <label>:524:                                    ; preds = %518
  %525 = load i1, i1* @status_only, align 1
  br i1 %525, label %526, label %528

; <label>:526:                                    ; preds = %524
  %527 = and i8 %502, 1
  br label %548

; <label>:528:                                    ; preds = %524
  %529 = icmp eq i64 %497, 0
  br i1 %529, label %532, label %530

; <label>:530:                                    ; preds = %528
  %531 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0), i64 %497, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %531, i64 %497) #10
  br label %532

; <label>:532:                                    ; preds = %530, %528
  %533 = icmp eq i64 %500, 0
  br i1 %533, label %536, label %534

; <label>:534:                                    ; preds = %532
  %535 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 %500, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %535, i64 %500) #10
  br label %536

; <label>:536:                                    ; preds = %534, %532
  %537 = icmp eq i64 %499, 0
  br i1 %537, label %540, label %538

; <label>:538:                                    ; preds = %536
  %539 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i64 0, i64 0), i64 %499, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %539, i64 %499) #10
  br label %540

; <label>:540:                                    ; preds = %538, %536
  %541 = load i1, i1* @ignore_missing, align 1
  %542 = and i8 %502, 1
  %543 = icmp eq i8 %542, 0
  %544 = and i1 %543, %541
  br i1 %544, label %545, label %548

; <label>:545:                                    ; preds = %540
  %546 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i32 5) #10
  %547 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %546, i8* %547) #10
  br label %559

; <label>:548:                                    ; preds = %540, %526
  %549 = phi i8 [ %527, %526 ], [ %542, %540 ]
  %550 = icmp ne i8 %549, 0
  %551 = or i64 %500, %499
  %552 = icmp eq i64 %551, 0
  %553 = and i1 %552, %550
  br i1 %553, label %554, label %559

; <label>:554:                                    ; preds = %548
  %555 = load i1, i1* @strict, align 1
  %556 = icmp eq i64 %498, 0
  %557 = xor i1 %555, true
  %558 = or i1 %556, %557
  br label %559

; <label>:559:                                    ; preds = %133, %507, %514, %521, %545, %548, %554
  %560 = phi i1 [ false, %507 ], [ false, %514 ], [ false, %133 ], [ false, %548 ], [ %558, %554 ], [ false, %521 ], [ false, %545 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %109) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %108) #10
  call void @llvm.lifetime.end(i64 24, i8* nonnull %102) #10
  %561 = zext i1 %560 to i8
  %562 = and i8 %561, %118
  br label %655

; <label>:563:                                    ; preds = %116
  call void @llvm.lifetime.start(i64 1, i8* nonnull %8) #10
  %564 = call fastcc zeroext i1 @digest_file(i8* %119, i8* %14, i8* nonnull %8)
  br i1 %564, label %565, label %653

; <label>:565:                                    ; preds = %563
  %566 = call i8* @strchr(i8* %119, i32 92) #10
  %567 = icmp eq i8* %566, null
  br i1 %567, label %568, label %571

; <label>:568:                                    ; preds = %565
  %569 = call i8* @strchr(i8* %119, i32 10) #10
  %570 = icmp ne i8* %569, null
  br label %571

; <label>:571:                                    ; preds = %565, %568
  %572 = phi i1 [ true, %565 ], [ %570, %568 ]
  br i1 %45, label %573, label %592

; <label>:573:                                    ; preds = %571
  br i1 %572, label %574, label %585

; <label>:574:                                    ; preds = %573
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %576 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 5
  %577 = load i8*, i8** %576, align 8
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 6
  %579 = load i8*, i8** %578, align 8
  %580 = icmp ult i8* %577, %579
  br i1 %580, label %583, label %581

; <label>:581:                                    ; preds = %574
  %582 = call i32 @__overflow(%struct._IO_FILE* %575, i32 92) #10
  br label %585

; <label>:583:                                    ; preds = %574
  %584 = getelementptr inbounds i8, i8* %577, i64 1
  store i8* %584, i8** %576, align 8
  store i8 92, i8* %577, align 1
  br label %585

; <label>:585:                                    ; preds = %583, %581, %573
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %587 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %586) #10
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %589 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %588) #10
  call fastcc void @print_filename(i8* %119, i1 zeroext %572)
  %590 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %591 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %590) #10
  br label %604

; <label>:592:                                    ; preds = %571
  br i1 %572, label %593, label %604

; <label>:593:                                    ; preds = %592
  %594 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %595 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 5
  %596 = load i8*, i8** %595, align 8
  %597 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 6
  %598 = load i8*, i8** %597, align 8
  %599 = icmp ult i8* %596, %598
  br i1 %599, label %602, label %600

; <label>:600:                                    ; preds = %593
  %601 = call i32 @__overflow(%struct._IO_FILE* %594, i32 92) #10
  br label %604

; <label>:602:                                    ; preds = %593
  %603 = getelementptr inbounds i8, i8* %596, i64 1
  store i8* %603, i8** %595, align 8
  store i8 92, i8* %596, align 1
  br label %604

; <label>:604:                                    ; preds = %592, %585, %600, %602
  %605 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %605, label %606, label %618

; <label>:606:                                    ; preds = %604
  br label %607

; <label>:607:                                    ; preds = %606, %607
  %608 = phi i64 [ %613, %607 ], [ 0, %606 ]
  %609 = getelementptr inbounds i8, i8* %14, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %611) #10
  %613 = add i64 %608, 1
  %614 = load i1, i1* @digest_hex_bytes, align 8
  %615 = select i1 %614, i64 20, i64 0
  %616 = icmp ult i64 %613, %615
  br i1 %616, label %607, label %617

; <label>:617:                                    ; preds = %607
  br label %618

; <label>:618:                                    ; preds = %617, %604
  br i1 %45, label %642, label %619

; <label>:619:                                    ; preds = %618
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %621 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 5
  %622 = load i8*, i8** %621, align 8
  %623 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 6
  %624 = load i8*, i8** %623, align 8
  %625 = icmp ult i8* %622, %624
  br i1 %625, label %628, label %626

; <label>:626:                                    ; preds = %619
  %627 = call i32 @__overflow(%struct._IO_FILE* %620, i32 32) #10
  br label %630

; <label>:628:                                    ; preds = %619
  %629 = getelementptr inbounds i8, i8* %622, i64 1
  store i8* %629, i8** %621, align 8
  store i8 32, i8* %622, align 1
  br label %630

; <label>:630:                                    ; preds = %626, %628
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %632 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 5
  %633 = load i8*, i8** %632, align 8
  %634 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 6
  %635 = load i8*, i8** %634, align 8
  %636 = icmp ult i8* %633, %635
  br i1 %636, label %639, label %637

; <label>:637:                                    ; preds = %630
  %638 = call i32 @__overflow(%struct._IO_FILE* %631, i32 %110) #10
  br label %641

; <label>:639:                                    ; preds = %630
  %640 = getelementptr inbounds i8, i8* %633, i64 1
  store i8* %640, i8** %632, align 8
  store i8 %111, i8* %633, align 1
  br label %641

; <label>:641:                                    ; preds = %637, %639
  call fastcc void @print_filename(i8* %119, i1 zeroext %572)
  br label %642

; <label>:642:                                    ; preds = %641, %618
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %644 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 5
  %645 = load i8*, i8** %644, align 8
  %646 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 6
  %647 = load i8*, i8** %646, align 8
  %648 = icmp ult i8* %645, %647
  br i1 %648, label %651, label %649

; <label>:649:                                    ; preds = %642
  %650 = call i32 @__overflow(%struct._IO_FILE* %643, i32 10) #10
  br label %653

; <label>:651:                                    ; preds = %642
  %652 = getelementptr inbounds i8, i8* %645, i64 1
  store i8* %652, i8** %644, align 8
  store i8 10, i8* %645, align 1
  br label %653

; <label>:653:                                    ; preds = %651, %649, %563
  %654 = phi i8 [ 0, %563 ], [ %118, %649 ], [ %118, %651 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %8) #10
  br label %655

; <label>:655:                                    ; preds = %653, %559
  %656 = phi i8 [ %562, %559 ], [ %654, %653 ]
  %657 = getelementptr inbounds i8*, i8** %117, i64 1
  %658 = icmp ult i8** %657, %97
  br i1 %658, label %116, label %112

; <label>:659:                                    ; preds = %113
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %661 = call i32 @rpl_fclose(%struct._IO_FILE* %660) #10
  %662 = icmp eq i32 %661, -1
  br i1 %662, label %663, label %667

; <label>:663:                                    ; preds = %659
  %664 = tail call i32* @__errno_location() #1
  %665 = load i32, i32* %664, align 4
  %666 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %665, i8* %666) #10
  unreachable

; <label>:667:                                    ; preds = %659, %113
  %668 = and i8 %114, 1
  %669 = xor i8 %668, 1
  %670 = zext i8 %669 to i32
  call void @llvm.lifetime.end(i64 24, i8* nonnull %9) #10
  ret i32 %670

; <label>:671:                                    ; preds = %353
  %672 = getelementptr inbounds i8, i8* %346, i64 2
  %673 = add nsw i32 %345, 2
  %674 = icmp ult i32 %673, 40
  br i1 %674, label %344, label %361
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #6 {
  %4 = load i8, i8* %0, align 1
  %5 = icmp eq i8 %4, 45
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %2, align 1
  br label %13

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  store i8 0, i8* %2, align 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %7
  store i1 true, i1* @have_read_stdin, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %26

; <label>:13:                                     ; preds = %6, %7
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %26

; <label>:16:                                     ; preds = %13
  %17 = load i1, i1* @ignore_missing, align 1
  %18 = tail call i32* @__errno_location() #1
  br i1 %17, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %18, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i8 1, i8* %2, align 1
  br label %47

; <label>:23:                                     ; preds = %16, %19
  %24 = load i32, i32* %18, align 4
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %25) #10
  br label %47

; <label>:26:                                     ; preds = %13, %11
  %27 = phi i1 [ true, %11 ], [ false, %13 ]
  %28 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @fadvise(%struct._IO_FILE* %28, i32 2) #10
  %29 = tail call i32 @sha1_stream(%struct._IO_FILE* %28, i8* %1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #1
  %33 = load i32, i32* %32, align 4
  %34 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %34) #10
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %36 = icmp eq %struct._IO_FILE* %28, %35
  br i1 %36, label %47, label %37

; <label>:37:                                     ; preds = %31
  %38 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10
  br label %47

; <label>:39:                                     ; preds = %26
  br i1 %27, label %47, label %40

; <label>:40:                                     ; preds = %39
  %41 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

; <label>:43:                                     ; preds = %40
  %44 = tail call i32* @__errno_location() #1
  %45 = load i32, i32* %44, align 4
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %46) #10
  br label %47

; <label>:47:                                     ; preds = %39, %40, %37, %31, %43, %23, %22
  %48 = phi i1 [ false, %43 ], [ true, %22 ], [ false, %23 ], [ false, %31 ], [ false, %37 ], [ true, %40 ], [ true, %39 ]
  ret i1 %48
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8*, i1 zeroext) unnamed_addr #6 {
  br i1 %1, label %3, label %7

; <label>:3:                                      ; preds = %2
  %4 = load i8, i8* %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %37, label %6

; <label>:6:                                      ; preds = %3
  br label %10

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %8) #10
  br label %37

; <label>:10:                                     ; preds = %6, %32
  %11 = phi i8 [ %34, %32 ], [ %4, %6 ]
  %12 = phi i8* [ %33, %32 ], [ %0, %6 ]
  %13 = sext i8 %11 to i32
  switch i32 %13, label %20 [
    i32 10, label %14
    i32 92, label %17
  ]

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %15) #10
  br label %32

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* %18) #10
  br label %32

; <label>:20:                                     ; preds = %10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ult i8* %23, %25
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %20
  %28 = and i32 %13, 255
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10
  br label %32

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %31, i8** %22, align 8
  store i8 %11, i8* %23, align 1
  br label %32

; <label>:32:                                     ; preds = %30, %27, %17, %14
  %33 = getelementptr inbounds i8, i8* %12, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %10

; <label>:36:                                     ; preds = %32
  br label %37

; <label>:37:                                     ; preds = %36, %3, %7
  ret void
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.39, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.40, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_init_ctx(%struct.sha1_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4
  %4 = bitcast i32* %3 to <4 x i32>*
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = bitcast i8* %7 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = bitcast i8* %12 to i32*
  store i32 %15, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 12
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = bitcast i8* %17 to i32*
  store i32 %20, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 16
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = bitcast i8* %22 to i32*
  store i32 %25, i32* %26, align 1
  ret i8* %1
}

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_finish_ctx(%struct.sha1_ctx*, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 56
  %6 = select i1 %5, i64 16, i64 32
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, %4
  store i32 %9, i32* %7, align 4
  %10 = icmp ult i32 %9, %4
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1
  %12 = load i32, i32* %11, align 4
  br i1 %10, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = add i32 %12, 1
  store i32 %14, i32* %11, align 4
  br label %15

; <label>:15:                                     ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ]
  %17 = shl i32 %16, 3
  %18 = lshr i32 %9, 29
  %19 = or i32 %18, %17
  %20 = shl i32 %19, 24
  %21 = shl i32 %16, 11
  %22 = and i32 %21, 16711680
  %23 = lshr i32 %16, 5
  %24 = and i32 %23, 65280
  %25 = lshr i32 %16, 21
  %26 = and i32 %25, 255
  %27 = or i32 %24, %22
  %28 = or i32 %27, %26
  %29 = or i32 %28, %20
  %30 = add nsw i64 %6, -2
  %31 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %30
  store i32 %29, i32* %31, align 4
  %32 = shl i32 %9, 27
  %33 = shl i32 %9, 11
  %34 = and i32 %33, 16711680
  %35 = or i32 %34, %32
  %36 = lshr i32 %9, 5
  %37 = and i32 %36, 65280
  %38 = or i32 %35, %37
  %39 = lshr i32 %9, 21
  %40 = and i32 %39, 255
  %41 = or i32 %38, %40
  %42 = add nsw i64 %6, -1
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %42
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0
  %45 = bitcast i32* %44 to i8*
  %46 = zext i32 %4 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = shl nsw i64 %30, 2
  %49 = sub nsw i64 %48, %46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %49, i32 1, i1 false)
  %50 = shl nuw nsw i64 %6, 2
  tail call void @sha1_process_block(i8* %45, i64 %50, %struct.sha1_ctx* nonnull %0)
  %51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  %54 = bitcast i8* %1 to i32*
  store i32 %53, i32* %54, align 1
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = bitcast i8* %55 to i32*
  store i32 %58, i32* %59, align 1
  %60 = getelementptr inbounds i8, i8* %1, i64 8
  %61 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  %64 = bitcast i8* %60 to i32*
  store i32 %63, i32* %64, align 1
  %65 = getelementptr inbounds i8, i8* %1, i64 12
  %66 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %69 = bitcast i8* %65 to i32*
  store i32 %68, i32* %69, align 1
  %70 = getelementptr inbounds i8, i8* %1, i64 16
  %71 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  %74 = bitcast i8* %70 to i32*
  store i32 %73, i32* %74, align 1
  ret i8* %1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_block(i8* readonly, i64, %struct.sha1_ctx* nocapture) local_unnamed_addr #6 {
  %4 = alloca [16 x i32], align 16
  %5 = bitcast i8* %0 to i32*
  %6 = lshr i64 %1, 2
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* nonnull %8) #10
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = trunc i64 %1 to i32
  %20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = lshr i64 %1, 32
  %24 = icmp ult i32 %22, %19
  %25 = zext i1 %24 to i64
  %26 = add nuw nsw i64 %25, %23
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %26, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = icmp ult i32* %5, %7
  br i1 %32, label %33, label %1646

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %50 = bitcast i32* %37 to <4 x i32>*
  %51 = bitcast i32* %41 to <4 x i32>*
  %52 = bitcast i32* %45 to <4 x i32>*
  %53 = bitcast i32* %11 to <4 x i32>*
  %54 = bitcast i32* %11 to <4 x i32>*
  br label %55

; <label>:55:                                     ; preds = %33, %55
  %56 = phi i32* [ %5, %33 ], [ %85, %55 ]
  %57 = phi i32 [ %10, %33 ], [ %1633, %55 ]
  %58 = phi i32 [ %18, %33 ], [ %1644, %55 ]
  %59 = phi i32 [ %16, %33 ], [ %1643, %55 ]
  %60 = phi i32 [ %14, %33 ], [ %1642, %55 ]
  %61 = phi i32 [ %12, %33 ], [ %1641, %55 ]
  %62 = load i32, i32* %56, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  store i32 %63, i32* %34, align 16
  %64 = getelementptr inbounds i32, i32* %56, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  store i32 %66, i32* %35, align 4
  %67 = getelementptr inbounds i32, i32* %56, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  store i32 %69, i32* %36, align 8
  %70 = getelementptr inbounds i32, i32* %56, i64 3
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4
  %73 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %72)
  store <4 x i32> %73, <4 x i32>* %50, align 4
  %74 = getelementptr inbounds i32, i32* %56, i64 7
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4
  %77 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %76)
  store <4 x i32> %77, <4 x i32>* %51, align 4
  %78 = getelementptr inbounds i32, i32* %56, i64 11
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4
  %81 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %80)
  store <4 x i32> %81, <4 x i32>* %52, align 4
  %82 = getelementptr inbounds i32, i32* %56, i64 15
  %83 = load i32, i32* %82, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  store i32 %84, i32* %49, align 4
  %85 = getelementptr i32, i32* %56, i64 16
  %86 = shl i32 %57, 5
  %87 = lshr i32 %57, 27
  %88 = or i32 %86, %87
  %89 = xor i32 %59, %60
  %90 = and i32 %89, %61
  %91 = xor i32 %90, %59
  %92 = add i32 %58, 1518500249
  %93 = add i32 %92, %91
  %94 = add i32 %93, %88
  %95 = add i32 %94, %63
  %96 = shl i32 %61, 30
  %97 = lshr i32 %61, 2
  %98 = or i32 %96, %97
  %99 = shl i32 %95, 5
  %100 = lshr i32 %95, 27
  %101 = or i32 %99, %100
  %102 = xor i32 %98, %60
  %103 = and i32 %57, %102
  %104 = xor i32 %103, %60
  %105 = add i32 %59, 1518500249
  %106 = add i32 %105, %104
  %107 = add i32 %106, %66
  %108 = add i32 %107, %101
  %109 = shl i32 %57, 30
  %110 = lshr i32 %57, 2
  %111 = or i32 %109, %110
  %112 = shl i32 %108, 5
  %113 = lshr i32 %108, 27
  %114 = or i32 %112, %113
  %115 = xor i32 %111, %98
  %116 = and i32 %95, %115
  %117 = xor i32 %116, %98
  %118 = add i32 %60, 1518500249
  %119 = add i32 %118, %69
  %120 = add i32 %119, %117
  %121 = add i32 %120, %114
  %122 = shl i32 %95, 30
  %123 = lshr i32 %95, 2
  %124 = or i32 %122, %123
  %125 = shl i32 %121, 5
  %126 = lshr i32 %121, 27
  %127 = or i32 %125, %126
  %128 = xor i32 %124, %111
  %129 = and i32 %108, %128
  %130 = xor i32 %129, %111
  %131 = add i32 %98, 1518500249
  %132 = extractelement <4 x i32> %73, i32 0
  %133 = add i32 %131, %132
  %134 = add i32 %133, %130
  %135 = add i32 %134, %127
  %136 = shl i32 %108, 30
  %137 = lshr i32 %108, 2
  %138 = or i32 %136, %137
  %139 = shl i32 %135, 5
  %140 = lshr i32 %135, 27
  %141 = or i32 %139, %140
  %142 = xor i32 %138, %124
  %143 = and i32 %121, %142
  %144 = xor i32 %143, %124
  %145 = load i32, i32* %38, align 16
  %146 = add i32 %111, 1518500249
  %147 = add i32 %146, %145
  %148 = add i32 %147, %144
  %149 = add i32 %148, %141
  %150 = shl i32 %121, 30
  %151 = lshr i32 %121, 2
  %152 = or i32 %150, %151
  %153 = shl i32 %149, 5
  %154 = lshr i32 %149, 27
  %155 = or i32 %153, %154
  %156 = xor i32 %152, %138
  %157 = and i32 %135, %156
  %158 = xor i32 %157, %138
  %159 = load i32, i32* %39, align 4
  %160 = add i32 %124, 1518500249
  %161 = add i32 %160, %159
  %162 = add i32 %161, %158
  %163 = add i32 %162, %155
  %164 = shl i32 %135, 30
  %165 = lshr i32 %135, 2
  %166 = or i32 %164, %165
  %167 = shl i32 %163, 5
  %168 = lshr i32 %163, 27
  %169 = or i32 %167, %168
  %170 = xor i32 %166, %152
  %171 = and i32 %149, %170
  %172 = xor i32 %171, %152
  %173 = load i32, i32* %40, align 8
  %174 = add i32 %173, 1518500249
  %175 = add i32 %174, %138
  %176 = add i32 %175, %172
  %177 = add i32 %176, %169
  %178 = shl i32 %149, 30
  %179 = lshr i32 %149, 2
  %180 = or i32 %178, %179
  %181 = shl i32 %177, 5
  %182 = lshr i32 %177, 27
  %183 = or i32 %181, %182
  %184 = xor i32 %180, %166
  %185 = and i32 %163, %184
  %186 = xor i32 %185, %166
  %187 = load i32, i32* %41, align 4
  %188 = add i32 %187, 1518500249
  %189 = add i32 %188, %152
  %190 = add i32 %189, %186
  %191 = add i32 %190, %183
  %192 = shl i32 %163, 30
  %193 = lshr i32 %163, 2
  %194 = or i32 %192, %193
  %195 = shl i32 %191, 5
  %196 = lshr i32 %191, 27
  %197 = or i32 %195, %196
  %198 = xor i32 %194, %180
  %199 = and i32 %177, %198
  %200 = xor i32 %199, %180
  %201 = load i32, i32* %42, align 16
  %202 = add i32 %201, 1518500249
  %203 = add i32 %202, %166
  %204 = add i32 %203, %200
  %205 = add i32 %204, %197
  %206 = shl i32 %177, 30
  %207 = lshr i32 %177, 2
  %208 = or i32 %206, %207
  %209 = shl i32 %205, 5
  %210 = lshr i32 %205, 27
  %211 = or i32 %209, %210
  %212 = xor i32 %208, %194
  %213 = and i32 %191, %212
  %214 = xor i32 %213, %194
  %215 = load i32, i32* %43, align 4
  %216 = add i32 %215, 1518500249
  %217 = add i32 %216, %180
  %218 = add i32 %217, %214
  %219 = add i32 %218, %211
  %220 = shl i32 %191, 30
  %221 = lshr i32 %191, 2
  %222 = or i32 %220, %221
  %223 = shl i32 %219, 5
  %224 = lshr i32 %219, 27
  %225 = or i32 %223, %224
  %226 = xor i32 %222, %208
  %227 = and i32 %205, %226
  %228 = xor i32 %227, %208
  %229 = load i32, i32* %44, align 8
  %230 = add i32 %229, 1518500249
  %231 = add i32 %230, %194
  %232 = add i32 %231, %228
  %233 = add i32 %232, %225
  %234 = shl i32 %205, 30
  %235 = lshr i32 %205, 2
  %236 = or i32 %234, %235
  %237 = shl i32 %233, 5
  %238 = lshr i32 %233, 27
  %239 = or i32 %237, %238
  %240 = xor i32 %236, %222
  %241 = and i32 %219, %240
  %242 = xor i32 %241, %222
  %243 = load i32, i32* %45, align 4
  %244 = add i32 %243, 1518500249
  %245 = add i32 %244, %208
  %246 = add i32 %245, %242
  %247 = add i32 %246, %239
  %248 = shl i32 %219, 30
  %249 = lshr i32 %219, 2
  %250 = or i32 %248, %249
  %251 = shl i32 %247, 5
  %252 = lshr i32 %247, 27
  %253 = or i32 %251, %252
  %254 = xor i32 %250, %236
  %255 = and i32 %233, %254
  %256 = xor i32 %255, %236
  %257 = load i32, i32* %46, align 16
  %258 = add i32 %257, 1518500249
  %259 = add i32 %258, %222
  %260 = add i32 %259, %256
  %261 = add i32 %260, %253
  %262 = shl i32 %233, 30
  %263 = lshr i32 %233, 2
  %264 = or i32 %262, %263
  %265 = shl i32 %261, 5
  %266 = lshr i32 %261, 27
  %267 = or i32 %265, %266
  %268 = xor i32 %264, %250
  %269 = and i32 %247, %268
  %270 = xor i32 %269, %250
  %271 = load i32, i32* %47, align 4
  %272 = add i32 %271, 1518500249
  %273 = add i32 %272, %236
  %274 = add i32 %273, %270
  %275 = add i32 %274, %267
  %276 = shl i32 %247, 30
  %277 = lshr i32 %247, 2
  %278 = or i32 %276, %277
  %279 = shl i32 %275, 5
  %280 = lshr i32 %275, 27
  %281 = or i32 %279, %280
  %282 = xor i32 %278, %264
  %283 = and i32 %261, %282
  %284 = xor i32 %283, %264
  %285 = load i32, i32* %48, align 8
  %286 = add i32 %285, 1518500249
  %287 = add i32 %286, %250
  %288 = add i32 %287, %284
  %289 = add i32 %288, %281
  %290 = shl i32 %261, 30
  %291 = lshr i32 %261, 2
  %292 = or i32 %290, %291
  %293 = shl i32 %289, 5
  %294 = lshr i32 %289, 27
  %295 = or i32 %293, %294
  %296 = xor i32 %292, %278
  %297 = and i32 %275, %296
  %298 = xor i32 %297, %278
  %299 = load i32, i32* %49, align 4
  %300 = add i32 %299, 1518500249
  %301 = add i32 %300, %264
  %302 = add i32 %301, %298
  %303 = add i32 %302, %295
  %304 = shl i32 %275, 30
  %305 = lshr i32 %275, 2
  %306 = or i32 %304, %305
  %307 = shl i32 %303, 5
  %308 = lshr i32 %303, 27
  %309 = or i32 %307, %308
  %310 = xor i32 %306, %292
  %311 = and i32 %289, %310
  %312 = xor i32 %311, %292
  %313 = xor i32 %68, %62
  %314 = call i32 @llvm.bswap.i32(i32 %313)
  %315 = xor i32 %314, %201
  %316 = xor i32 %315, %271
  %317 = shl i32 %316, 1
  %318 = lshr i32 %316, 31
  %319 = or i32 %317, %318
  store i32 %319, i32* %34, align 16
  %320 = add i32 %319, 1518500249
  %321 = add i32 %320, %278
  %322 = add i32 %321, %312
  %323 = add i32 %322, %309
  %324 = shl i32 %289, 30
  %325 = lshr i32 %289, 2
  %326 = or i32 %324, %325
  %327 = shl i32 %323, 5
  %328 = lshr i32 %323, 27
  %329 = or i32 %327, %328
  %330 = xor i32 %326, %306
  %331 = and i32 %303, %330
  %332 = xor i32 %331, %306
  %333 = load i32, i32* %35, align 4
  %334 = load i32, i32* %37, align 4
  %335 = xor i32 %334, %333
  %336 = load i32, i32* %43, align 4
  %337 = xor i32 %335, %336
  %338 = xor i32 %337, %285
  %339 = shl i32 %338, 1
  %340 = lshr i32 %338, 31
  %341 = or i32 %339, %340
  store i32 %341, i32* %35, align 4
  %342 = add i32 %341, 1518500249
  %343 = add i32 %342, %292
  %344 = add i32 %343, %332
  %345 = add i32 %344, %329
  %346 = shl i32 %303, 30
  %347 = lshr i32 %303, 2
  %348 = or i32 %346, %347
  %349 = shl i32 %345, 5
  %350 = lshr i32 %345, 27
  %351 = or i32 %349, %350
  %352 = xor i32 %348, %326
  %353 = and i32 %323, %352
  %354 = xor i32 %353, %326
  %355 = load i32, i32* %36, align 8
  %356 = load i32, i32* %38, align 16
  %357 = xor i32 %356, %355
  %358 = load i32, i32* %44, align 8
  %359 = xor i32 %357, %358
  %360 = xor i32 %359, %299
  %361 = shl i32 %360, 1
  %362 = lshr i32 %360, 31
  %363 = or i32 %361, %362
  store i32 %363, i32* %36, align 8
  %364 = add i32 %363, 1518500249
  %365 = add i32 %364, %306
  %366 = add i32 %365, %354
  %367 = add i32 %366, %351
  %368 = shl i32 %323, 30
  %369 = lshr i32 %323, 2
  %370 = or i32 %368, %369
  %371 = shl i32 %367, 5
  %372 = lshr i32 %367, 27
  %373 = or i32 %371, %372
  %374 = xor i32 %370, %348
  %375 = and i32 %345, %374
  %376 = xor i32 %375, %348
  %377 = load i32, i32* %39, align 4
  %378 = xor i32 %377, %334
  %379 = load i32, i32* %45, align 4
  %380 = xor i32 %378, %379
  %381 = xor i32 %380, %319
  %382 = shl i32 %381, 1
  %383 = lshr i32 %381, 31
  %384 = or i32 %382, %383
  store i32 %384, i32* %37, align 4
  %385 = add i32 %384, 1518500249
  %386 = add i32 %385, %326
  %387 = add i32 %386, %376
  %388 = add i32 %387, %373
  %389 = shl i32 %345, 30
  %390 = lshr i32 %345, 2
  %391 = or i32 %389, %390
  %392 = shl i32 %388, 5
  %393 = lshr i32 %388, 27
  %394 = or i32 %392, %393
  %395 = xor i32 %391, %370
  %396 = xor i32 %395, %367
  %397 = load i32, i32* %40, align 8
  %398 = xor i32 %397, %356
  %399 = load i32, i32* %46, align 16
  %400 = xor i32 %398, %399
  %401 = xor i32 %400, %341
  %402 = shl i32 %401, 1
  %403 = lshr i32 %401, 31
  %404 = or i32 %402, %403
  store i32 %404, i32* %38, align 16
  %405 = add i32 %404, 1859775393
  %406 = add i32 %405, %348
  %407 = add i32 %406, %396
  %408 = add i32 %407, %394
  %409 = shl i32 %367, 30
  %410 = lshr i32 %367, 2
  %411 = or i32 %409, %410
  %412 = shl i32 %408, 5
  %413 = lshr i32 %408, 27
  %414 = or i32 %412, %413
  %415 = xor i32 %411, %391
  %416 = xor i32 %415, %388
  %417 = load i32, i32* %41, align 4
  %418 = xor i32 %417, %377
  %419 = load i32, i32* %47, align 4
  %420 = xor i32 %418, %419
  %421 = xor i32 %420, %363
  %422 = shl i32 %421, 1
  %423 = lshr i32 %421, 31
  %424 = or i32 %422, %423
  store i32 %424, i32* %39, align 4
  %425 = add i32 %424, 1859775393
  %426 = add i32 %425, %370
  %427 = add i32 %426, %416
  %428 = add i32 %427, %414
  %429 = shl i32 %388, 30
  %430 = lshr i32 %388, 2
  %431 = or i32 %429, %430
  %432 = shl i32 %428, 5
  %433 = lshr i32 %428, 27
  %434 = or i32 %432, %433
  %435 = xor i32 %431, %411
  %436 = xor i32 %435, %408
  %437 = load i32, i32* %42, align 16
  %438 = xor i32 %437, %397
  %439 = load i32, i32* %48, align 8
  %440 = xor i32 %438, %439
  %441 = xor i32 %440, %384
  %442 = shl i32 %441, 1
  %443 = lshr i32 %441, 31
  %444 = or i32 %442, %443
  store i32 %444, i32* %40, align 8
  %445 = add i32 %444, 1859775393
  %446 = add i32 %445, %391
  %447 = add i32 %446, %436
  %448 = add i32 %447, %434
  %449 = shl i32 %408, 30
  %450 = lshr i32 %408, 2
  %451 = or i32 %449, %450
  %452 = shl i32 %448, 5
  %453 = lshr i32 %448, 27
  %454 = or i32 %452, %453
  %455 = xor i32 %451, %431
  %456 = xor i32 %455, %428
  %457 = load i32, i32* %43, align 4
  %458 = xor i32 %457, %417
  %459 = load i32, i32* %49, align 4
  %460 = xor i32 %458, %459
  %461 = xor i32 %460, %404
  %462 = shl i32 %461, 1
  %463 = lshr i32 %461, 31
  %464 = or i32 %462, %463
  store i32 %464, i32* %41, align 4
  %465 = add i32 %464, 1859775393
  %466 = add i32 %465, %411
  %467 = add i32 %466, %456
  %468 = add i32 %467, %454
  %469 = shl i32 %428, 30
  %470 = lshr i32 %428, 2
  %471 = or i32 %469, %470
  %472 = shl i32 %468, 5
  %473 = lshr i32 %468, 27
  %474 = or i32 %472, %473
  %475 = xor i32 %471, %451
  %476 = xor i32 %475, %448
  %477 = load i32, i32* %44, align 8
  %478 = xor i32 %477, %437
  %479 = load i32, i32* %34, align 16
  %480 = xor i32 %478, %479
  %481 = xor i32 %480, %424
  %482 = shl i32 %481, 1
  %483 = lshr i32 %481, 31
  %484 = or i32 %482, %483
  store i32 %484, i32* %42, align 16
  %485 = add i32 %484, 1859775393
  %486 = add i32 %485, %431
  %487 = add i32 %486, %476
  %488 = add i32 %487, %474
  %489 = shl i32 %448, 30
  %490 = lshr i32 %448, 2
  %491 = or i32 %489, %490
  %492 = shl i32 %488, 5
  %493 = lshr i32 %488, 27
  %494 = or i32 %492, %493
  %495 = xor i32 %491, %471
  %496 = xor i32 %495, %468
  %497 = load i32, i32* %45, align 4
  %498 = xor i32 %497, %457
  %499 = load i32, i32* %35, align 4
  %500 = xor i32 %498, %499
  %501 = xor i32 %500, %444
  %502 = shl i32 %501, 1
  %503 = lshr i32 %501, 31
  %504 = or i32 %502, %503
  store i32 %504, i32* %43, align 4
  %505 = add i32 %504, 1859775393
  %506 = add i32 %505, %451
  %507 = add i32 %506, %496
  %508 = add i32 %507, %494
  %509 = shl i32 %468, 30
  %510 = lshr i32 %468, 2
  %511 = or i32 %509, %510
  %512 = shl i32 %508, 5
  %513 = lshr i32 %508, 27
  %514 = or i32 %512, %513
  %515 = xor i32 %511, %491
  %516 = xor i32 %515, %488
  %517 = load i32, i32* %46, align 16
  %518 = xor i32 %517, %477
  %519 = load i32, i32* %36, align 8
  %520 = xor i32 %518, %519
  %521 = xor i32 %520, %464
  %522 = shl i32 %521, 1
  %523 = lshr i32 %521, 31
  %524 = or i32 %522, %523
  store i32 %524, i32* %44, align 8
  %525 = add i32 %524, 1859775393
  %526 = add i32 %525, %471
  %527 = add i32 %526, %516
  %528 = add i32 %527, %514
  %529 = shl i32 %488, 30
  %530 = lshr i32 %488, 2
  %531 = or i32 %529, %530
  %532 = shl i32 %528, 5
  %533 = lshr i32 %528, 27
  %534 = or i32 %532, %533
  %535 = xor i32 %531, %511
  %536 = xor i32 %535, %508
  %537 = load i32, i32* %47, align 4
  %538 = xor i32 %537, %497
  %539 = load i32, i32* %37, align 4
  %540 = xor i32 %538, %539
  %541 = xor i32 %540, %484
  %542 = shl i32 %541, 1
  %543 = lshr i32 %541, 31
  %544 = or i32 %542, %543
  store i32 %544, i32* %45, align 4
  %545 = add i32 %544, 1859775393
  %546 = add i32 %545, %491
  %547 = add i32 %546, %536
  %548 = add i32 %547, %534
  %549 = shl i32 %508, 30
  %550 = lshr i32 %508, 2
  %551 = or i32 %549, %550
  %552 = shl i32 %548, 5
  %553 = lshr i32 %548, 27
  %554 = or i32 %552, %553
  %555 = xor i32 %551, %531
  %556 = xor i32 %555, %528
  %557 = load i32, i32* %48, align 8
  %558 = xor i32 %557, %517
  %559 = load i32, i32* %38, align 16
  %560 = xor i32 %558, %559
  %561 = xor i32 %560, %504
  %562 = shl i32 %561, 1
  %563 = lshr i32 %561, 31
  %564 = or i32 %562, %563
  store i32 %564, i32* %46, align 16
  %565 = add i32 %564, 1859775393
  %566 = add i32 %565, %511
  %567 = add i32 %566, %556
  %568 = add i32 %567, %554
  %569 = shl i32 %528, 30
  %570 = lshr i32 %528, 2
  %571 = or i32 %569, %570
  %572 = shl i32 %568, 5
  %573 = lshr i32 %568, 27
  %574 = or i32 %572, %573
  %575 = xor i32 %571, %551
  %576 = xor i32 %575, %548
  %577 = load i32, i32* %49, align 4
  %578 = xor i32 %577, %537
  %579 = load i32, i32* %39, align 4
  %580 = xor i32 %578, %579
  %581 = xor i32 %580, %524
  %582 = shl i32 %581, 1
  %583 = lshr i32 %581, 31
  %584 = or i32 %582, %583
  store i32 %584, i32* %47, align 4
  %585 = add i32 %584, 1859775393
  %586 = add i32 %585, %531
  %587 = add i32 %586, %576
  %588 = add i32 %587, %574
  %589 = shl i32 %548, 30
  %590 = lshr i32 %548, 2
  %591 = or i32 %589, %590
  %592 = shl i32 %588, 5
  %593 = lshr i32 %588, 27
  %594 = or i32 %592, %593
  %595 = xor i32 %591, %571
  %596 = xor i32 %595, %568
  %597 = load i32, i32* %34, align 16
  %598 = xor i32 %597, %557
  %599 = load i32, i32* %40, align 8
  %600 = xor i32 %598, %599
  %601 = xor i32 %600, %544
  %602 = shl i32 %601, 1
  %603 = lshr i32 %601, 31
  %604 = or i32 %602, %603
  store i32 %604, i32* %48, align 8
  %605 = add i32 %604, 1859775393
  %606 = add i32 %605, %551
  %607 = add i32 %606, %596
  %608 = add i32 %607, %594
  %609 = shl i32 %568, 30
  %610 = lshr i32 %568, 2
  %611 = or i32 %609, %610
  %612 = shl i32 %608, 5
  %613 = lshr i32 %608, 27
  %614 = or i32 %612, %613
  %615 = xor i32 %611, %591
  %616 = xor i32 %615, %588
  %617 = load i32, i32* %35, align 4
  %618 = xor i32 %617, %577
  %619 = load i32, i32* %41, align 4
  %620 = xor i32 %618, %619
  %621 = xor i32 %620, %564
  %622 = shl i32 %621, 1
  %623 = lshr i32 %621, 31
  %624 = or i32 %622, %623
  store i32 %624, i32* %49, align 4
  %625 = add i32 %624, 1859775393
  %626 = add i32 %625, %571
  %627 = add i32 %626, %616
  %628 = add i32 %627, %614
  %629 = shl i32 %588, 30
  %630 = lshr i32 %588, 2
  %631 = or i32 %629, %630
  %632 = shl i32 %628, 5
  %633 = lshr i32 %628, 27
  %634 = or i32 %632, %633
  %635 = xor i32 %631, %611
  %636 = xor i32 %635, %608
  %637 = load i32, i32* %36, align 8
  %638 = xor i32 %637, %597
  %639 = load i32, i32* %42, align 16
  %640 = xor i32 %638, %639
  %641 = xor i32 %640, %584
  %642 = shl i32 %641, 1
  %643 = lshr i32 %641, 31
  %644 = or i32 %642, %643
  store i32 %644, i32* %34, align 16
  %645 = add i32 %644, 1859775393
  %646 = add i32 %645, %591
  %647 = add i32 %646, %636
  %648 = add i32 %647, %634
  %649 = shl i32 %608, 30
  %650 = lshr i32 %608, 2
  %651 = or i32 %649, %650
  %652 = shl i32 %648, 5
  %653 = lshr i32 %648, 27
  %654 = or i32 %652, %653
  %655 = xor i32 %651, %631
  %656 = xor i32 %655, %628
  %657 = load i32, i32* %37, align 4
  %658 = xor i32 %657, %617
  %659 = load i32, i32* %43, align 4
  %660 = xor i32 %658, %659
  %661 = xor i32 %660, %604
  %662 = shl i32 %661, 1
  %663 = lshr i32 %661, 31
  %664 = or i32 %662, %663
  store i32 %664, i32* %35, align 4
  %665 = add i32 %664, 1859775393
  %666 = add i32 %665, %611
  %667 = add i32 %666, %656
  %668 = add i32 %667, %654
  %669 = shl i32 %628, 30
  %670 = lshr i32 %628, 2
  %671 = or i32 %669, %670
  %672 = shl i32 %668, 5
  %673 = lshr i32 %668, 27
  %674 = or i32 %672, %673
  %675 = xor i32 %671, %651
  %676 = xor i32 %675, %648
  %677 = load i32, i32* %38, align 16
  %678 = xor i32 %677, %637
  %679 = load i32, i32* %44, align 8
  %680 = xor i32 %678, %679
  %681 = xor i32 %680, %624
  %682 = shl i32 %681, 1
  %683 = lshr i32 %681, 31
  %684 = or i32 %682, %683
  store i32 %684, i32* %36, align 8
  %685 = add i32 %684, 1859775393
  %686 = add i32 %685, %631
  %687 = add i32 %686, %676
  %688 = add i32 %687, %674
  %689 = shl i32 %648, 30
  %690 = lshr i32 %648, 2
  %691 = or i32 %689, %690
  %692 = shl i32 %688, 5
  %693 = lshr i32 %688, 27
  %694 = or i32 %692, %693
  %695 = xor i32 %691, %671
  %696 = xor i32 %695, %668
  %697 = load i32, i32* %39, align 4
  %698 = xor i32 %697, %657
  %699 = load i32, i32* %45, align 4
  %700 = xor i32 %698, %699
  %701 = xor i32 %700, %644
  %702 = shl i32 %701, 1
  %703 = lshr i32 %701, 31
  %704 = or i32 %702, %703
  store i32 %704, i32* %37, align 4
  %705 = add i32 %704, 1859775393
  %706 = add i32 %705, %651
  %707 = add i32 %706, %696
  %708 = add i32 %707, %694
  %709 = shl i32 %668, 30
  %710 = lshr i32 %668, 2
  %711 = or i32 %709, %710
  %712 = shl i32 %708, 5
  %713 = lshr i32 %708, 27
  %714 = or i32 %712, %713
  %715 = xor i32 %711, %691
  %716 = xor i32 %715, %688
  %717 = load i32, i32* %40, align 8
  %718 = xor i32 %717, %677
  %719 = load i32, i32* %46, align 16
  %720 = xor i32 %718, %719
  %721 = xor i32 %720, %664
  %722 = shl i32 %721, 1
  %723 = lshr i32 %721, 31
  %724 = or i32 %722, %723
  store i32 %724, i32* %38, align 16
  %725 = add i32 %724, 1859775393
  %726 = add i32 %725, %671
  %727 = add i32 %726, %716
  %728 = add i32 %727, %714
  %729 = shl i32 %688, 30
  %730 = lshr i32 %688, 2
  %731 = or i32 %729, %730
  %732 = shl i32 %728, 5
  %733 = lshr i32 %728, 27
  %734 = or i32 %732, %733
  %735 = xor i32 %731, %711
  %736 = xor i32 %735, %708
  %737 = load i32, i32* %41, align 4
  %738 = xor i32 %737, %697
  %739 = load i32, i32* %47, align 4
  %740 = xor i32 %738, %739
  %741 = xor i32 %740, %684
  %742 = shl i32 %741, 1
  %743 = lshr i32 %741, 31
  %744 = or i32 %742, %743
  store i32 %744, i32* %39, align 4
  %745 = add i32 %744, 1859775393
  %746 = add i32 %745, %691
  %747 = add i32 %746, %736
  %748 = add i32 %747, %734
  %749 = shl i32 %708, 30
  %750 = lshr i32 %708, 2
  %751 = or i32 %749, %750
  %752 = shl i32 %748, 5
  %753 = lshr i32 %748, 27
  %754 = or i32 %752, %753
  %755 = xor i32 %751, %731
  %756 = xor i32 %755, %728
  %757 = load i32, i32* %42, align 16
  %758 = xor i32 %757, %717
  %759 = load i32, i32* %48, align 8
  %760 = xor i32 %758, %759
  %761 = xor i32 %760, %704
  %762 = shl i32 %761, 1
  %763 = lshr i32 %761, 31
  %764 = or i32 %762, %763
  store i32 %764, i32* %40, align 8
  %765 = add i32 %764, 1859775393
  %766 = add i32 %765, %711
  %767 = add i32 %766, %756
  %768 = add i32 %767, %754
  %769 = shl i32 %728, 30
  %770 = lshr i32 %728, 2
  %771 = or i32 %769, %770
  %772 = shl i32 %768, 5
  %773 = lshr i32 %768, 27
  %774 = or i32 %772, %773
  %775 = xor i32 %771, %751
  %776 = xor i32 %775, %748
  %777 = load i32, i32* %43, align 4
  %778 = xor i32 %777, %737
  %779 = load i32, i32* %49, align 4
  %780 = xor i32 %778, %779
  %781 = xor i32 %780, %724
  %782 = shl i32 %781, 1
  %783 = lshr i32 %781, 31
  %784 = or i32 %782, %783
  store i32 %784, i32* %41, align 4
  %785 = add i32 %784, 1859775393
  %786 = add i32 %785, %731
  %787 = add i32 %786, %776
  %788 = add i32 %787, %774
  %789 = shl i32 %748, 30
  %790 = lshr i32 %748, 2
  %791 = or i32 %789, %790
  %792 = shl i32 %788, 5
  %793 = lshr i32 %788, 27
  %794 = or i32 %792, %793
  %795 = and i32 %768, %791
  %796 = or i32 %768, %791
  %797 = and i32 %796, %771
  %798 = or i32 %797, %795
  %799 = load i32, i32* %44, align 8
  %800 = xor i32 %799, %757
  %801 = load i32, i32* %34, align 16
  %802 = xor i32 %800, %801
  %803 = xor i32 %802, %744
  %804 = shl i32 %803, 1
  %805 = lshr i32 %803, 31
  %806 = or i32 %804, %805
  store i32 %806, i32* %42, align 16
  %807 = add i32 %806, -1894007588
  %808 = add i32 %807, %751
  %809 = add i32 %808, %798
  %810 = add i32 %809, %794
  %811 = shl i32 %768, 30
  %812 = lshr i32 %768, 2
  %813 = or i32 %811, %812
  %814 = shl i32 %810, 5
  %815 = lshr i32 %810, 27
  %816 = or i32 %814, %815
  %817 = and i32 %788, %813
  %818 = or i32 %788, %813
  %819 = and i32 %818, %791
  %820 = or i32 %819, %817
  %821 = load i32, i32* %45, align 4
  %822 = xor i32 %821, %777
  %823 = load i32, i32* %35, align 4
  %824 = xor i32 %822, %823
  %825 = xor i32 %824, %764
  %826 = shl i32 %825, 1
  %827 = lshr i32 %825, 31
  %828 = or i32 %826, %827
  store i32 %828, i32* %43, align 4
  %829 = add i32 %828, -1894007588
  %830 = add i32 %829, %771
  %831 = add i32 %830, %820
  %832 = add i32 %831, %816
  %833 = shl i32 %788, 30
  %834 = lshr i32 %788, 2
  %835 = or i32 %833, %834
  %836 = shl i32 %832, 5
  %837 = lshr i32 %832, 27
  %838 = or i32 %836, %837
  %839 = and i32 %810, %835
  %840 = or i32 %810, %835
  %841 = and i32 %840, %813
  %842 = or i32 %841, %839
  %843 = load i32, i32* %46, align 16
  %844 = xor i32 %843, %799
  %845 = load i32, i32* %36, align 8
  %846 = xor i32 %844, %845
  %847 = xor i32 %846, %784
  %848 = shl i32 %847, 1
  %849 = lshr i32 %847, 31
  %850 = or i32 %848, %849
  store i32 %850, i32* %44, align 8
  %851 = add i32 %850, -1894007588
  %852 = add i32 %851, %791
  %853 = add i32 %852, %842
  %854 = add i32 %853, %838
  %855 = shl i32 %810, 30
  %856 = lshr i32 %810, 2
  %857 = or i32 %855, %856
  %858 = shl i32 %854, 5
  %859 = lshr i32 %854, 27
  %860 = or i32 %858, %859
  %861 = and i32 %832, %857
  %862 = or i32 %832, %857
  %863 = and i32 %862, %835
  %864 = or i32 %863, %861
  %865 = load i32, i32* %47, align 4
  %866 = xor i32 %865, %821
  %867 = load i32, i32* %37, align 4
  %868 = xor i32 %866, %867
  %869 = xor i32 %868, %806
  %870 = shl i32 %869, 1
  %871 = lshr i32 %869, 31
  %872 = or i32 %870, %871
  store i32 %872, i32* %45, align 4
  %873 = add i32 %872, -1894007588
  %874 = add i32 %873, %813
  %875 = add i32 %874, %864
  %876 = add i32 %875, %860
  %877 = shl i32 %832, 30
  %878 = lshr i32 %832, 2
  %879 = or i32 %877, %878
  %880 = shl i32 %876, 5
  %881 = lshr i32 %876, 27
  %882 = or i32 %880, %881
  %883 = and i32 %854, %879
  %884 = or i32 %854, %879
  %885 = and i32 %884, %857
  %886 = or i32 %885, %883
  %887 = load i32, i32* %48, align 8
  %888 = xor i32 %887, %843
  %889 = load i32, i32* %38, align 16
  %890 = xor i32 %888, %889
  %891 = xor i32 %890, %828
  %892 = shl i32 %891, 1
  %893 = lshr i32 %891, 31
  %894 = or i32 %892, %893
  store i32 %894, i32* %46, align 16
  %895 = add i32 %894, -1894007588
  %896 = add i32 %895, %835
  %897 = add i32 %896, %886
  %898 = add i32 %897, %882
  %899 = shl i32 %854, 30
  %900 = lshr i32 %854, 2
  %901 = or i32 %899, %900
  %902 = shl i32 %898, 5
  %903 = lshr i32 %898, 27
  %904 = or i32 %902, %903
  %905 = and i32 %876, %901
  %906 = or i32 %876, %901
  %907 = and i32 %906, %879
  %908 = or i32 %907, %905
  %909 = load i32, i32* %49, align 4
  %910 = xor i32 %909, %865
  %911 = load i32, i32* %39, align 4
  %912 = xor i32 %910, %911
  %913 = xor i32 %912, %850
  %914 = shl i32 %913, 1
  %915 = lshr i32 %913, 31
  %916 = or i32 %914, %915
  store i32 %916, i32* %47, align 4
  %917 = add i32 %916, -1894007588
  %918 = add i32 %917, %857
  %919 = add i32 %918, %908
  %920 = add i32 %919, %904
  %921 = shl i32 %876, 30
  %922 = lshr i32 %876, 2
  %923 = or i32 %921, %922
  %924 = shl i32 %920, 5
  %925 = lshr i32 %920, 27
  %926 = or i32 %924, %925
  %927 = and i32 %898, %923
  %928 = or i32 %898, %923
  %929 = and i32 %928, %901
  %930 = or i32 %929, %927
  %931 = load i32, i32* %34, align 16
  %932 = xor i32 %931, %887
  %933 = load i32, i32* %40, align 8
  %934 = xor i32 %932, %933
  %935 = xor i32 %934, %872
  %936 = shl i32 %935, 1
  %937 = lshr i32 %935, 31
  %938 = or i32 %936, %937
  store i32 %938, i32* %48, align 8
  %939 = add i32 %938, -1894007588
  %940 = add i32 %939, %879
  %941 = add i32 %940, %930
  %942 = add i32 %941, %926
  %943 = shl i32 %898, 30
  %944 = lshr i32 %898, 2
  %945 = or i32 %943, %944
  %946 = shl i32 %942, 5
  %947 = lshr i32 %942, 27
  %948 = or i32 %946, %947
  %949 = and i32 %920, %945
  %950 = or i32 %920, %945
  %951 = and i32 %950, %923
  %952 = or i32 %951, %949
  %953 = load i32, i32* %35, align 4
  %954 = xor i32 %953, %909
  %955 = load i32, i32* %41, align 4
  %956 = xor i32 %954, %955
  %957 = xor i32 %956, %894
  %958 = shl i32 %957, 1
  %959 = lshr i32 %957, 31
  %960 = or i32 %958, %959
  store i32 %960, i32* %49, align 4
  %961 = add i32 %960, -1894007588
  %962 = add i32 %961, %901
  %963 = add i32 %962, %952
  %964 = add i32 %963, %948
  %965 = shl i32 %920, 30
  %966 = lshr i32 %920, 2
  %967 = or i32 %965, %966
  %968 = shl i32 %964, 5
  %969 = lshr i32 %964, 27
  %970 = or i32 %968, %969
  %971 = and i32 %942, %967
  %972 = or i32 %942, %967
  %973 = and i32 %972, %945
  %974 = or i32 %973, %971
  %975 = load i32, i32* %36, align 8
  %976 = xor i32 %975, %931
  %977 = load i32, i32* %42, align 16
  %978 = xor i32 %976, %977
  %979 = xor i32 %978, %916
  %980 = shl i32 %979, 1
  %981 = lshr i32 %979, 31
  %982 = or i32 %980, %981
  store i32 %982, i32* %34, align 16
  %983 = add i32 %982, -1894007588
  %984 = add i32 %983, %923
  %985 = add i32 %984, %974
  %986 = add i32 %985, %970
  %987 = shl i32 %942, 30
  %988 = lshr i32 %942, 2
  %989 = or i32 %987, %988
  %990 = shl i32 %986, 5
  %991 = lshr i32 %986, 27
  %992 = or i32 %990, %991
  %993 = and i32 %964, %989
  %994 = or i32 %964, %989
  %995 = and i32 %994, %967
  %996 = or i32 %995, %993
  %997 = load i32, i32* %37, align 4
  %998 = xor i32 %997, %953
  %999 = load i32, i32* %43, align 4
  %1000 = xor i32 %998, %999
  %1001 = xor i32 %1000, %938
  %1002 = shl i32 %1001, 1
  %1003 = lshr i32 %1001, 31
  %1004 = or i32 %1002, %1003
  store i32 %1004, i32* %35, align 4
  %1005 = add i32 %1004, -1894007588
  %1006 = add i32 %1005, %945
  %1007 = add i32 %1006, %996
  %1008 = add i32 %1007, %992
  %1009 = shl i32 %964, 30
  %1010 = lshr i32 %964, 2
  %1011 = or i32 %1009, %1010
  %1012 = shl i32 %1008, 5
  %1013 = lshr i32 %1008, 27
  %1014 = or i32 %1012, %1013
  %1015 = and i32 %986, %1011
  %1016 = or i32 %986, %1011
  %1017 = and i32 %1016, %989
  %1018 = or i32 %1017, %1015
  %1019 = load i32, i32* %38, align 16
  %1020 = xor i32 %1019, %975
  %1021 = load i32, i32* %44, align 8
  %1022 = xor i32 %1020, %1021
  %1023 = xor i32 %1022, %960
  %1024 = shl i32 %1023, 1
  %1025 = lshr i32 %1023, 31
  %1026 = or i32 %1024, %1025
  store i32 %1026, i32* %36, align 8
  %1027 = add i32 %1026, -1894007588
  %1028 = add i32 %1027, %967
  %1029 = add i32 %1028, %1018
  %1030 = add i32 %1029, %1014
  %1031 = shl i32 %986, 30
  %1032 = lshr i32 %986, 2
  %1033 = or i32 %1031, %1032
  %1034 = shl i32 %1030, 5
  %1035 = lshr i32 %1030, 27
  %1036 = or i32 %1034, %1035
  %1037 = and i32 %1008, %1033
  %1038 = or i32 %1008, %1033
  %1039 = and i32 %1038, %1011
  %1040 = or i32 %1039, %1037
  %1041 = load i32, i32* %39, align 4
  %1042 = xor i32 %1041, %997
  %1043 = load i32, i32* %45, align 4
  %1044 = xor i32 %1042, %1043
  %1045 = xor i32 %1044, %982
  %1046 = shl i32 %1045, 1
  %1047 = lshr i32 %1045, 31
  %1048 = or i32 %1046, %1047
  store i32 %1048, i32* %37, align 4
  %1049 = add i32 %1048, -1894007588
  %1050 = add i32 %1049, %989
  %1051 = add i32 %1050, %1040
  %1052 = add i32 %1051, %1036
  %1053 = shl i32 %1008, 30
  %1054 = lshr i32 %1008, 2
  %1055 = or i32 %1053, %1054
  %1056 = shl i32 %1052, 5
  %1057 = lshr i32 %1052, 27
  %1058 = or i32 %1056, %1057
  %1059 = and i32 %1030, %1055
  %1060 = or i32 %1030, %1055
  %1061 = and i32 %1060, %1033
  %1062 = or i32 %1061, %1059
  %1063 = load i32, i32* %40, align 8
  %1064 = xor i32 %1063, %1019
  %1065 = load i32, i32* %46, align 16
  %1066 = xor i32 %1064, %1065
  %1067 = xor i32 %1066, %1004
  %1068 = shl i32 %1067, 1
  %1069 = lshr i32 %1067, 31
  %1070 = or i32 %1068, %1069
  store i32 %1070, i32* %38, align 16
  %1071 = add i32 %1070, -1894007588
  %1072 = add i32 %1071, %1011
  %1073 = add i32 %1072, %1062
  %1074 = add i32 %1073, %1058
  %1075 = shl i32 %1030, 30
  %1076 = lshr i32 %1030, 2
  %1077 = or i32 %1075, %1076
  %1078 = shl i32 %1074, 5
  %1079 = lshr i32 %1074, 27
  %1080 = or i32 %1078, %1079
  %1081 = and i32 %1052, %1077
  %1082 = or i32 %1052, %1077
  %1083 = and i32 %1082, %1055
  %1084 = or i32 %1083, %1081
  %1085 = load i32, i32* %41, align 4
  %1086 = xor i32 %1085, %1041
  %1087 = load i32, i32* %47, align 4
  %1088 = xor i32 %1086, %1087
  %1089 = xor i32 %1088, %1026
  %1090 = shl i32 %1089, 1
  %1091 = lshr i32 %1089, 31
  %1092 = or i32 %1090, %1091
  store i32 %1092, i32* %39, align 4
  %1093 = add i32 %1092, -1894007588
  %1094 = add i32 %1093, %1033
  %1095 = add i32 %1094, %1084
  %1096 = add i32 %1095, %1080
  %1097 = shl i32 %1052, 30
  %1098 = lshr i32 %1052, 2
  %1099 = or i32 %1097, %1098
  %1100 = shl i32 %1096, 5
  %1101 = lshr i32 %1096, 27
  %1102 = or i32 %1100, %1101
  %1103 = and i32 %1074, %1099
  %1104 = or i32 %1074, %1099
  %1105 = and i32 %1104, %1077
  %1106 = or i32 %1105, %1103
  %1107 = load i32, i32* %42, align 16
  %1108 = xor i32 %1107, %1063
  %1109 = load i32, i32* %48, align 8
  %1110 = xor i32 %1108, %1109
  %1111 = xor i32 %1110, %1048
  %1112 = shl i32 %1111, 1
  %1113 = lshr i32 %1111, 31
  %1114 = or i32 %1112, %1113
  store i32 %1114, i32* %40, align 8
  %1115 = add i32 %1114, -1894007588
  %1116 = add i32 %1115, %1055
  %1117 = add i32 %1116, %1106
  %1118 = add i32 %1117, %1102
  %1119 = shl i32 %1074, 30
  %1120 = lshr i32 %1074, 2
  %1121 = or i32 %1119, %1120
  %1122 = shl i32 %1118, 5
  %1123 = lshr i32 %1118, 27
  %1124 = or i32 %1122, %1123
  %1125 = and i32 %1096, %1121
  %1126 = or i32 %1096, %1121
  %1127 = and i32 %1126, %1099
  %1128 = or i32 %1127, %1125
  %1129 = load i32, i32* %43, align 4
  %1130 = xor i32 %1129, %1085
  %1131 = load i32, i32* %49, align 4
  %1132 = xor i32 %1130, %1131
  %1133 = xor i32 %1132, %1070
  %1134 = shl i32 %1133, 1
  %1135 = lshr i32 %1133, 31
  %1136 = or i32 %1134, %1135
  store i32 %1136, i32* %41, align 4
  %1137 = add i32 %1136, -1894007588
  %1138 = add i32 %1137, %1077
  %1139 = add i32 %1138, %1128
  %1140 = add i32 %1139, %1124
  %1141 = shl i32 %1096, 30
  %1142 = lshr i32 %1096, 2
  %1143 = or i32 %1141, %1142
  %1144 = shl i32 %1140, 5
  %1145 = lshr i32 %1140, 27
  %1146 = or i32 %1144, %1145
  %1147 = and i32 %1118, %1143
  %1148 = or i32 %1118, %1143
  %1149 = and i32 %1148, %1121
  %1150 = or i32 %1149, %1147
  %1151 = load i32, i32* %44, align 8
  %1152 = xor i32 %1151, %1107
  %1153 = load i32, i32* %34, align 16
  %1154 = xor i32 %1152, %1153
  %1155 = xor i32 %1154, %1092
  %1156 = shl i32 %1155, 1
  %1157 = lshr i32 %1155, 31
  %1158 = or i32 %1156, %1157
  store i32 %1158, i32* %42, align 16
  %1159 = add i32 %1158, -1894007588
  %1160 = add i32 %1159, %1099
  %1161 = add i32 %1160, %1150
  %1162 = add i32 %1161, %1146
  %1163 = shl i32 %1118, 30
  %1164 = lshr i32 %1118, 2
  %1165 = or i32 %1163, %1164
  %1166 = shl i32 %1162, 5
  %1167 = lshr i32 %1162, 27
  %1168 = or i32 %1166, %1167
  %1169 = and i32 %1140, %1165
  %1170 = or i32 %1140, %1165
  %1171 = and i32 %1170, %1143
  %1172 = or i32 %1171, %1169
  %1173 = load i32, i32* %45, align 4
  %1174 = xor i32 %1173, %1129
  %1175 = load i32, i32* %35, align 4
  %1176 = xor i32 %1174, %1175
  %1177 = xor i32 %1176, %1114
  %1178 = shl i32 %1177, 1
  %1179 = lshr i32 %1177, 31
  %1180 = or i32 %1178, %1179
  store i32 %1180, i32* %43, align 4
  %1181 = add i32 %1180, -1894007588
  %1182 = add i32 %1181, %1121
  %1183 = add i32 %1182, %1172
  %1184 = add i32 %1183, %1168
  %1185 = shl i32 %1140, 30
  %1186 = lshr i32 %1140, 2
  %1187 = or i32 %1185, %1186
  %1188 = shl i32 %1184, 5
  %1189 = lshr i32 %1184, 27
  %1190 = or i32 %1188, %1189
  %1191 = and i32 %1162, %1187
  %1192 = or i32 %1162, %1187
  %1193 = and i32 %1192, %1165
  %1194 = or i32 %1193, %1191
  %1195 = load i32, i32* %46, align 16
  %1196 = xor i32 %1195, %1151
  %1197 = load i32, i32* %36, align 8
  %1198 = xor i32 %1196, %1197
  %1199 = xor i32 %1198, %1136
  %1200 = shl i32 %1199, 1
  %1201 = lshr i32 %1199, 31
  %1202 = or i32 %1200, %1201
  store i32 %1202, i32* %44, align 8
  %1203 = add i32 %1202, -1894007588
  %1204 = add i32 %1203, %1143
  %1205 = add i32 %1204, %1194
  %1206 = add i32 %1205, %1190
  %1207 = shl i32 %1162, 30
  %1208 = lshr i32 %1162, 2
  %1209 = or i32 %1207, %1208
  %1210 = shl i32 %1206, 5
  %1211 = lshr i32 %1206, 27
  %1212 = or i32 %1210, %1211
  %1213 = and i32 %1184, %1209
  %1214 = or i32 %1184, %1209
  %1215 = and i32 %1214, %1187
  %1216 = or i32 %1215, %1213
  %1217 = load i32, i32* %47, align 4
  %1218 = xor i32 %1217, %1173
  %1219 = load i32, i32* %37, align 4
  %1220 = xor i32 %1218, %1219
  %1221 = xor i32 %1220, %1158
  %1222 = shl i32 %1221, 1
  %1223 = lshr i32 %1221, 31
  %1224 = or i32 %1222, %1223
  store i32 %1224, i32* %45, align 4
  %1225 = add i32 %1224, -1894007588
  %1226 = add i32 %1225, %1165
  %1227 = add i32 %1226, %1216
  %1228 = add i32 %1227, %1212
  %1229 = shl i32 %1184, 30
  %1230 = lshr i32 %1184, 2
  %1231 = or i32 %1229, %1230
  %1232 = shl i32 %1228, 5
  %1233 = lshr i32 %1228, 27
  %1234 = or i32 %1232, %1233
  %1235 = xor i32 %1231, %1209
  %1236 = xor i32 %1235, %1206
  %1237 = load i32, i32* %48, align 8
  %1238 = xor i32 %1237, %1195
  %1239 = load i32, i32* %38, align 16
  %1240 = xor i32 %1238, %1239
  %1241 = xor i32 %1240, %1180
  %1242 = shl i32 %1241, 1
  %1243 = lshr i32 %1241, 31
  %1244 = or i32 %1242, %1243
  store i32 %1244, i32* %46, align 16
  %1245 = add i32 %1244, -899497514
  %1246 = add i32 %1245, %1187
  %1247 = add i32 %1246, %1236
  %1248 = add i32 %1247, %1234
  %1249 = shl i32 %1206, 30
  %1250 = lshr i32 %1206, 2
  %1251 = or i32 %1249, %1250
  %1252 = shl i32 %1248, 5
  %1253 = lshr i32 %1248, 27
  %1254 = or i32 %1252, %1253
  %1255 = xor i32 %1251, %1231
  %1256 = xor i32 %1255, %1228
  %1257 = load i32, i32* %49, align 4
  %1258 = xor i32 %1257, %1217
  %1259 = load i32, i32* %39, align 4
  %1260 = xor i32 %1258, %1259
  %1261 = xor i32 %1260, %1202
  %1262 = shl i32 %1261, 1
  %1263 = lshr i32 %1261, 31
  %1264 = or i32 %1262, %1263
  store i32 %1264, i32* %47, align 4
  %1265 = add i32 %1264, -899497514
  %1266 = add i32 %1265, %1209
  %1267 = add i32 %1266, %1256
  %1268 = add i32 %1267, %1254
  %1269 = shl i32 %1228, 30
  %1270 = lshr i32 %1228, 2
  %1271 = or i32 %1269, %1270
  %1272 = shl i32 %1268, 5
  %1273 = lshr i32 %1268, 27
  %1274 = or i32 %1272, %1273
  %1275 = xor i32 %1271, %1251
  %1276 = xor i32 %1275, %1248
  %1277 = load i32, i32* %34, align 16
  %1278 = xor i32 %1277, %1237
  %1279 = load i32, i32* %40, align 8
  %1280 = xor i32 %1278, %1279
  %1281 = xor i32 %1280, %1224
  %1282 = shl i32 %1281, 1
  %1283 = lshr i32 %1281, 31
  %1284 = or i32 %1282, %1283
  store i32 %1284, i32* %48, align 8
  %1285 = add i32 %1284, -899497514
  %1286 = add i32 %1285, %1231
  %1287 = add i32 %1286, %1276
  %1288 = add i32 %1287, %1274
  %1289 = shl i32 %1248, 30
  %1290 = lshr i32 %1248, 2
  %1291 = or i32 %1289, %1290
  %1292 = shl i32 %1288, 5
  %1293 = lshr i32 %1288, 27
  %1294 = or i32 %1292, %1293
  %1295 = xor i32 %1291, %1271
  %1296 = xor i32 %1295, %1268
  %1297 = load i32, i32* %35, align 4
  %1298 = xor i32 %1297, %1257
  %1299 = load i32, i32* %41, align 4
  %1300 = xor i32 %1298, %1299
  %1301 = xor i32 %1300, %1244
  %1302 = shl i32 %1301, 1
  %1303 = lshr i32 %1301, 31
  %1304 = or i32 %1302, %1303
  store i32 %1304, i32* %49, align 4
  %1305 = add i32 %1304, -899497514
  %1306 = add i32 %1305, %1251
  %1307 = add i32 %1306, %1296
  %1308 = add i32 %1307, %1294
  %1309 = shl i32 %1268, 30
  %1310 = lshr i32 %1268, 2
  %1311 = or i32 %1309, %1310
  %1312 = shl i32 %1308, 5
  %1313 = lshr i32 %1308, 27
  %1314 = or i32 %1312, %1313
  %1315 = xor i32 %1311, %1291
  %1316 = xor i32 %1315, %1288
  %1317 = load i32, i32* %36, align 8
  %1318 = xor i32 %1317, %1277
  %1319 = load i32, i32* %42, align 16
  %1320 = xor i32 %1318, %1319
  %1321 = xor i32 %1320, %1264
  %1322 = shl i32 %1321, 1
  %1323 = lshr i32 %1321, 31
  %1324 = or i32 %1322, %1323
  store i32 %1324, i32* %34, align 16
  %1325 = add i32 %1324, -899497514
  %1326 = add i32 %1325, %1271
  %1327 = add i32 %1326, %1316
  %1328 = add i32 %1327, %1314
  %1329 = shl i32 %1288, 30
  %1330 = lshr i32 %1288, 2
  %1331 = or i32 %1329, %1330
  %1332 = shl i32 %1328, 5
  %1333 = lshr i32 %1328, 27
  %1334 = or i32 %1332, %1333
  %1335 = xor i32 %1331, %1311
  %1336 = xor i32 %1335, %1308
  %1337 = load i32, i32* %37, align 4
  %1338 = xor i32 %1337, %1297
  %1339 = load i32, i32* %43, align 4
  %1340 = xor i32 %1338, %1339
  %1341 = xor i32 %1340, %1284
  %1342 = shl i32 %1341, 1
  %1343 = lshr i32 %1341, 31
  %1344 = or i32 %1342, %1343
  store i32 %1344, i32* %35, align 4
  %1345 = add i32 %1344, -899497514
  %1346 = add i32 %1345, %1291
  %1347 = add i32 %1346, %1336
  %1348 = add i32 %1347, %1334
  %1349 = shl i32 %1308, 30
  %1350 = lshr i32 %1308, 2
  %1351 = or i32 %1349, %1350
  %1352 = shl i32 %1348, 5
  %1353 = lshr i32 %1348, 27
  %1354 = or i32 %1352, %1353
  %1355 = xor i32 %1351, %1331
  %1356 = xor i32 %1355, %1328
  %1357 = load i32, i32* %38, align 16
  %1358 = xor i32 %1357, %1317
  %1359 = load i32, i32* %44, align 8
  %1360 = xor i32 %1358, %1359
  %1361 = xor i32 %1360, %1304
  %1362 = shl i32 %1361, 1
  %1363 = lshr i32 %1361, 31
  %1364 = or i32 %1362, %1363
  store i32 %1364, i32* %36, align 8
  %1365 = add i32 %1364, -899497514
  %1366 = add i32 %1365, %1311
  %1367 = add i32 %1366, %1356
  %1368 = add i32 %1367, %1354
  %1369 = shl i32 %1328, 30
  %1370 = lshr i32 %1328, 2
  %1371 = or i32 %1369, %1370
  %1372 = shl i32 %1368, 5
  %1373 = lshr i32 %1368, 27
  %1374 = or i32 %1372, %1373
  %1375 = xor i32 %1371, %1351
  %1376 = xor i32 %1375, %1348
  %1377 = load i32, i32* %39, align 4
  %1378 = xor i32 %1377, %1337
  %1379 = load i32, i32* %45, align 4
  %1380 = xor i32 %1378, %1379
  %1381 = xor i32 %1380, %1324
  %1382 = shl i32 %1381, 1
  %1383 = lshr i32 %1381, 31
  %1384 = or i32 %1382, %1383
  store i32 %1384, i32* %37, align 4
  %1385 = add i32 %1384, -899497514
  %1386 = add i32 %1385, %1331
  %1387 = add i32 %1386, %1376
  %1388 = add i32 %1387, %1374
  %1389 = shl i32 %1348, 30
  %1390 = lshr i32 %1348, 2
  %1391 = or i32 %1389, %1390
  %1392 = shl i32 %1388, 5
  %1393 = lshr i32 %1388, 27
  %1394 = or i32 %1392, %1393
  %1395 = xor i32 %1391, %1371
  %1396 = xor i32 %1395, %1368
  %1397 = load i32, i32* %40, align 8
  %1398 = xor i32 %1397, %1357
  %1399 = load i32, i32* %46, align 16
  %1400 = xor i32 %1398, %1399
  %1401 = xor i32 %1400, %1344
  %1402 = shl i32 %1401, 1
  %1403 = lshr i32 %1401, 31
  %1404 = or i32 %1402, %1403
  store i32 %1404, i32* %38, align 16
  %1405 = add i32 %1404, -899497514
  %1406 = add i32 %1405, %1351
  %1407 = add i32 %1406, %1396
  %1408 = add i32 %1407, %1394
  %1409 = shl i32 %1368, 30
  %1410 = lshr i32 %1368, 2
  %1411 = or i32 %1409, %1410
  %1412 = shl i32 %1408, 5
  %1413 = lshr i32 %1408, 27
  %1414 = or i32 %1412, %1413
  %1415 = xor i32 %1411, %1391
  %1416 = xor i32 %1415, %1388
  %1417 = load i32, i32* %41, align 4
  %1418 = xor i32 %1417, %1377
  %1419 = load i32, i32* %47, align 4
  %1420 = xor i32 %1418, %1419
  %1421 = xor i32 %1420, %1364
  %1422 = shl i32 %1421, 1
  %1423 = lshr i32 %1421, 31
  %1424 = or i32 %1422, %1423
  store i32 %1424, i32* %39, align 4
  %1425 = add i32 %1424, -899497514
  %1426 = add i32 %1425, %1371
  %1427 = add i32 %1426, %1416
  %1428 = add i32 %1427, %1414
  %1429 = shl i32 %1388, 30
  %1430 = lshr i32 %1388, 2
  %1431 = or i32 %1429, %1430
  %1432 = shl i32 %1428, 5
  %1433 = lshr i32 %1428, 27
  %1434 = or i32 %1432, %1433
  %1435 = xor i32 %1431, %1411
  %1436 = xor i32 %1435, %1408
  %1437 = load i32, i32* %42, align 16
  %1438 = xor i32 %1437, %1397
  %1439 = load i32, i32* %48, align 8
  %1440 = xor i32 %1438, %1439
  %1441 = xor i32 %1440, %1384
  %1442 = shl i32 %1441, 1
  %1443 = lshr i32 %1441, 31
  %1444 = or i32 %1442, %1443
  store i32 %1444, i32* %40, align 8
  %1445 = add i32 %1444, -899497514
  %1446 = add i32 %1445, %1391
  %1447 = add i32 %1446, %1436
  %1448 = add i32 %1447, %1434
  %1449 = shl i32 %1408, 30
  %1450 = lshr i32 %1408, 2
  %1451 = or i32 %1449, %1450
  %1452 = shl i32 %1448, 5
  %1453 = lshr i32 %1448, 27
  %1454 = or i32 %1452, %1453
  %1455 = xor i32 %1451, %1431
  %1456 = xor i32 %1455, %1428
  %1457 = load i32, i32* %43, align 4
  %1458 = xor i32 %1457, %1417
  %1459 = load i32, i32* %49, align 4
  %1460 = xor i32 %1458, %1459
  %1461 = xor i32 %1460, %1404
  %1462 = shl i32 %1461, 1
  %1463 = lshr i32 %1461, 31
  %1464 = or i32 %1462, %1463
  store i32 %1464, i32* %41, align 4
  %1465 = add i32 %1464, -899497514
  %1466 = add i32 %1465, %1411
  %1467 = add i32 %1466, %1456
  %1468 = add i32 %1467, %1454
  %1469 = shl i32 %1428, 30
  %1470 = lshr i32 %1428, 2
  %1471 = or i32 %1469, %1470
  %1472 = shl i32 %1468, 5
  %1473 = lshr i32 %1468, 27
  %1474 = or i32 %1472, %1473
  %1475 = xor i32 %1471, %1451
  %1476 = xor i32 %1475, %1448
  %1477 = load i32, i32* %44, align 8
  %1478 = xor i32 %1477, %1437
  %1479 = load i32, i32* %34, align 16
  %1480 = xor i32 %1478, %1479
  %1481 = xor i32 %1480, %1424
  %1482 = shl i32 %1481, 1
  %1483 = lshr i32 %1481, 31
  %1484 = or i32 %1482, %1483
  store i32 %1484, i32* %42, align 16
  %1485 = add i32 %1484, -899497514
  %1486 = add i32 %1485, %1431
  %1487 = add i32 %1486, %1476
  %1488 = add i32 %1487, %1474
  %1489 = shl i32 %1448, 30
  %1490 = lshr i32 %1448, 2
  %1491 = or i32 %1489, %1490
  %1492 = shl i32 %1488, 5
  %1493 = lshr i32 %1488, 27
  %1494 = or i32 %1492, %1493
  %1495 = xor i32 %1491, %1471
  %1496 = xor i32 %1495, %1468
  %1497 = load i32, i32* %45, align 4
  %1498 = xor i32 %1497, %1457
  %1499 = load i32, i32* %35, align 4
  %1500 = xor i32 %1498, %1499
  %1501 = xor i32 %1500, %1444
  %1502 = shl i32 %1501, 1
  %1503 = lshr i32 %1501, 31
  %1504 = or i32 %1502, %1503
  store i32 %1504, i32* %43, align 4
  %1505 = add i32 %1504, -899497514
  %1506 = add i32 %1505, %1451
  %1507 = add i32 %1506, %1496
  %1508 = add i32 %1507, %1494
  %1509 = shl i32 %1468, 30
  %1510 = lshr i32 %1468, 2
  %1511 = or i32 %1509, %1510
  %1512 = shl i32 %1508, 5
  %1513 = lshr i32 %1508, 27
  %1514 = or i32 %1512, %1513
  %1515 = xor i32 %1511, %1491
  %1516 = xor i32 %1515, %1488
  %1517 = load i32, i32* %46, align 16
  %1518 = xor i32 %1517, %1477
  %1519 = load i32, i32* %36, align 8
  %1520 = xor i32 %1518, %1519
  %1521 = xor i32 %1520, %1464
  %1522 = shl i32 %1521, 1
  %1523 = lshr i32 %1521, 31
  %1524 = or i32 %1522, %1523
  store i32 %1524, i32* %44, align 8
  %1525 = add i32 %1524, -899497514
  %1526 = add i32 %1525, %1471
  %1527 = add i32 %1526, %1516
  %1528 = add i32 %1527, %1514
  %1529 = shl i32 %1488, 30
  %1530 = lshr i32 %1488, 2
  %1531 = or i32 %1529, %1530
  %1532 = shl i32 %1528, 5
  %1533 = lshr i32 %1528, 27
  %1534 = or i32 %1532, %1533
  %1535 = xor i32 %1531, %1511
  %1536 = xor i32 %1535, %1508
  %1537 = load i32, i32* %47, align 4
  %1538 = xor i32 %1537, %1497
  %1539 = load i32, i32* %37, align 4
  %1540 = xor i32 %1538, %1539
  %1541 = xor i32 %1540, %1484
  %1542 = shl i32 %1541, 1
  %1543 = lshr i32 %1541, 31
  %1544 = or i32 %1542, %1543
  store i32 %1544, i32* %45, align 4
  %1545 = add i32 %1544, -899497514
  %1546 = add i32 %1545, %1491
  %1547 = add i32 %1546, %1536
  %1548 = add i32 %1547, %1534
  %1549 = shl i32 %1508, 30
  %1550 = lshr i32 %1508, 2
  %1551 = or i32 %1549, %1550
  %1552 = shl i32 %1548, 5
  %1553 = lshr i32 %1548, 27
  %1554 = or i32 %1552, %1553
  %1555 = xor i32 %1551, %1531
  %1556 = xor i32 %1555, %1528
  %1557 = load i32, i32* %48, align 8
  %1558 = xor i32 %1557, %1517
  %1559 = load i32, i32* %38, align 16
  %1560 = xor i32 %1558, %1559
  %1561 = xor i32 %1560, %1504
  %1562 = shl i32 %1561, 1
  %1563 = lshr i32 %1561, 31
  %1564 = or i32 %1562, %1563
  store i32 %1564, i32* %46, align 16
  %1565 = add i32 %1564, -899497514
  %1566 = add i32 %1565, %1511
  %1567 = add i32 %1566, %1556
  %1568 = add i32 %1567, %1554
  %1569 = shl i32 %1528, 30
  %1570 = lshr i32 %1528, 2
  %1571 = or i32 %1569, %1570
  %1572 = shl i32 %1568, 5
  %1573 = lshr i32 %1568, 27
  %1574 = or i32 %1572, %1573
  %1575 = xor i32 %1571, %1551
  %1576 = xor i32 %1575, %1548
  %1577 = load i32, i32* %49, align 4
  %1578 = xor i32 %1577, %1537
  %1579 = load i32, i32* %39, align 4
  %1580 = xor i32 %1578, %1579
  %1581 = xor i32 %1580, %1524
  %1582 = shl i32 %1581, 1
  %1583 = lshr i32 %1581, 31
  %1584 = or i32 %1582, %1583
  store i32 %1584, i32* %47, align 4
  %1585 = add i32 %1584, -899497514
  %1586 = add i32 %1585, %1531
  %1587 = add i32 %1586, %1576
  %1588 = add i32 %1587, %1574
  %1589 = shl i32 %1548, 30
  %1590 = lshr i32 %1548, 2
  %1591 = or i32 %1589, %1590
  %1592 = shl i32 %1588, 5
  %1593 = lshr i32 %1588, 27
  %1594 = or i32 %1592, %1593
  %1595 = xor i32 %1591, %1571
  %1596 = xor i32 %1595, %1568
  %1597 = load i32, i32* %34, align 16
  %1598 = xor i32 %1597, %1557
  %1599 = load i32, i32* %40, align 8
  %1600 = xor i32 %1598, %1599
  %1601 = xor i32 %1600, %1544
  %1602 = shl i32 %1601, 1
  %1603 = lshr i32 %1601, 31
  %1604 = or i32 %1602, %1603
  store i32 %1604, i32* %48, align 8
  %1605 = add i32 %1604, -899497514
  %1606 = add i32 %1605, %1551
  %1607 = add i32 %1606, %1596
  %1608 = add i32 %1607, %1594
  %1609 = shl i32 %1568, 30
  %1610 = lshr i32 %1568, 2
  %1611 = or i32 %1609, %1610
  %1612 = shl i32 %1608, 5
  %1613 = lshr i32 %1608, 27
  %1614 = or i32 %1612, %1613
  %1615 = xor i32 %1611, %1591
  %1616 = xor i32 %1615, %1588
  %1617 = load i32, i32* %35, align 4
  %1618 = xor i32 %1617, %1577
  %1619 = load i32, i32* %41, align 4
  %1620 = xor i32 %1618, %1619
  %1621 = xor i32 %1620, %1564
  %1622 = shl i32 %1621, 1
  %1623 = lshr i32 %1621, 31
  %1624 = or i32 %1622, %1623
  store i32 %1624, i32* %49, align 4
  %1625 = shl i32 %1588, 30
  %1626 = lshr i32 %1588, 2
  %1627 = or i32 %1625, %1626
  %1628 = load i32, i32* %9, align 4
  %1629 = add i32 %1628, -899497514
  %1630 = add i32 %1629, %1624
  %1631 = add i32 %1630, %1571
  %1632 = add i32 %1631, %1616
  %1633 = add i32 %1632, %1614
  store i32 %1633, i32* %9, align 4
  %1634 = load <4 x i32>, <4 x i32>* %53, align 4
  %1635 = insertelement <4 x i32> undef, i32 %1608, i32 0
  %1636 = insertelement <4 x i32> %1635, i32 %1627, i32 1
  %1637 = insertelement <4 x i32> %1636, i32 %1611, i32 2
  %1638 = insertelement <4 x i32> %1637, i32 %1591, i32 3
  %1639 = add <4 x i32> %1638, %1634
  store <4 x i32> %1639, <4 x i32>* %54, align 4
  %1640 = icmp ult i32* %85, %7
  %1641 = extractelement <4 x i32> %1639, i32 0
  %1642 = extractelement <4 x i32> %1639, i32 1
  %1643 = extractelement <4 x i32> %1639, i32 2
  %1644 = extractelement <4 x i32> %1639, i32 3
  br i1 %1640, label %55, label %1645

; <label>:1645:                                   ; preds = %55
  br label %1646

; <label>:1646:                                   ; preds = %1645, %3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %8) #10
  ret void
}

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha1_stream(%struct._IO_FILE*, i8*) local_unnamed_addr #6 {
  %3 = alloca %struct.sha1_ctx, align 16
  %4 = bitcast %struct.sha1_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 160, i8* nonnull %4) #10
  %5 = tail call noalias i8* @malloc(i64 32840) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %37, label %7

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %10, align 16
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %12

; <label>:12:                                     ; preds = %30, %7
  br label %13

; <label>:13:                                     ; preds = %27, %12
  %14 = phi i64 [ 0, %12 ], [ %18, %27 ]
  %15 = getelementptr inbounds i8, i8* %5, i64 %14
  %16 = sub i64 32768, %14
  %17 = tail call i64 @fread_unlocked(i8* %15, i64 1, i64 %16, %struct._IO_FILE* %0) #10
  %18 = add i64 %17, %14
  %19 = icmp eq i64 %18, 32768
  br i1 %19, label %30, label %20

; <label>:20:                                     ; preds = %13
  %21 = icmp eq i64 %17, 0
  %22 = load i32, i32* %11, align 8
  br i1 %21, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = and i32 %22, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

; <label>:26:                                     ; preds = %23
  tail call void @free(i8* %5) #10
  br label %37

; <label>:27:                                     ; preds = %20
  %28 = and i32 %22, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %13, label %31

; <label>:30:                                     ; preds = %13
  call void @sha1_process_block(i8* nonnull %5, i64 32768, %struct.sha1_ctx* nonnull %3)
  br label %12

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %23
  %33 = icmp eq i64 %18, 0
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %32
  call void @sha1_process_bytes(i8* nonnull %5, i64 %18, %struct.sha1_ctx* nonnull %3)
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %3, i8* %1)
  call void @free(i8* %5) #10
  br label %37

; <label>:37:                                     ; preds = %26, %2, %35
  %38 = phi i32 [ 0, %35 ], [ 1, %2 ], [ 1, %26 ]
  call void @llvm.lifetime.end(i64 160, i8* nonnull %4) #10
  ret i32 %38
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_bytes(i8* readonly, i64, %struct.sha1_ctx*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = icmp ugt i64 %9, %1
  %11 = select i1 %10, i64 %1, i64 %9
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0
  %13 = bitcast i32* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 %8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %0, i64 %11, i32 1, i1 false)
  %15 = add i64 %8, %11
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = icmp ugt i32 %16, 64
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %7
  %19 = and i64 %15, 4294967232
  tail call void @sha1_process_block(i8* %13, i64 %19, %struct.sha1_ctx* nonnull %2)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 63
  store i32 %21, i32* %4, align 4
  %22 = and i64 %15, -64
  %23 = getelementptr inbounds i8, i8* %13, i64 %22
  %24 = zext i32 %21 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %23, i64 %24, i32 1, i1 false)
  br label %25

; <label>:25:                                     ; preds = %18, %7
  %26 = getelementptr inbounds i8, i8* %0, i64 %11
  %27 = sub i64 %1, %11
  br label %28

; <label>:28:                                     ; preds = %3, %25
  %29 = phi i64 [ %27, %25 ], [ %1, %3 ]
  %30 = phi i8* [ %26, %25 ], [ %0, %3 ]
  %31 = icmp ugt i64 %29, 63
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %28
  %33 = and i64 %29, -64
  tail call void @sha1_process_block(i8* %30, i64 %33, %struct.sha1_ctx* nonnull %2)
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = and i64 %29, 63
  br label %36

; <label>:36:                                     ; preds = %32, %28
  %37 = phi i64 [ %35, %32 ], [ %29, %28 ]
  %38 = phi i8* [ %34, %32 ], [ %30, %28 ]
  %39 = icmp eq i64 %37, 0
  br i1 %39, label %55, label %40

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7
  %44 = bitcast [32 x i32]* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 %42
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %38, i64 %37, i32 1, i1 false)
  %46 = add i64 %42, %37
  %47 = icmp ugt i64 %46, 63
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %40
  tail call void @sha1_process_block(i8* %44, i64 64, %struct.sha1_ctx* nonnull %2)
  %49 = add i64 %46, -64
  %50 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16
  %51 = bitcast i32* %50 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %51, i64 %49, i32 4, i1 false)
  br label %52

; <label>:52:                                     ; preds = %48, %40
  %53 = phi i64 [ %49, %48 ], [ %46, %40 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %55

; <label>:55:                                     ; preds = %36, %52
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.sha1_ctx, align 16
  %5 = bitcast %struct.sha1_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 160, i8* nonnull %5) #10
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 16
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4)
  %9 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %4, i8* %2)
  call void @llvm.lifetime.end(i64 160, i8* nonnull %5) #10
  ret i8* %9
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #10
  store i32 %23, i32* %22, align 4
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #13
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

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
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 {
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
  tail call void @abort() #14
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #13
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
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #13
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #10
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
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

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.97, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.99, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10
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
  tail call void @free(i8* %8) #10
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
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #10
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
  tail call void @abort() #14
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
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
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
  tail call void @free(i8* %40) #10
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.109, i64 0, i64 0), i32 5) #10
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10
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
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.110, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.111, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.112, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.113, i64 0, i64 0), i32 5) #10
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.114, i64 0, i64 0), i32 5) #10
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.115, i64 0, i64 0), i32 5) #10
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.116, i64 0, i64 0), i32 5) #10
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.117, i64 0, i64 0), i32 5) #10
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.118, i64 0, i64 0), i32 5) #10
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.119, i64 0, i64 0), i32 5) #10
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.123, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.124, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.126, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.127, i64 0, i64 0), i32 5) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
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
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 {
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
  tail call void @xalloc_die() #14
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
  tail call void @free(i8* nonnull %0) #10
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
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
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #10
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #14
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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10
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

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10
  call void @llvm.va_start(i8* nonnull %4)
  %5 = icmp eq i32 %1, 1030
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %7 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %7, 8
  store i32 %15, i32* %6, align 16
  br label %20

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 22
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %75, label %36

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  %45 = icmp sgt i32 %44, -1
  %46 = icmp eq i32 %43, -1
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %75

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #10
  store i32 %57, i32* %56, align 4
  br label %75

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = sext i32 %7 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %7, 8
  store i32 %65, i32* %6, align 16
  br label %70

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 8
  store i8* %69, i8** %67, align 8
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10
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
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #10
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
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.160, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.161, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #13
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
  %29 = tail call noalias i8* @malloc(i64 %28) #10
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.163, i64 0, i64 0)) #10
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.164, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13
  %83 = call i64 @strlen(i8* nonnull %45) #13
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #10
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #10
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #10
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10
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
  %144 = call i64 @strlen(i8* %134) #13
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #13
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

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
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
