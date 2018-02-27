; ModuleID = 'coreutils-8.27/src/sha256sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.sha256_ctx = type { [8 x i32], [2 x i32], i64, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
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
@.str.11 = private unnamed_addr constant [11 x i8] c"FIPS-180-2\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bctw\00", align 1
@long_options = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
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
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4
@.str.63 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.66 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
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
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.108 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.121 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.125 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.126 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.137 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.159 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.160 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.161 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.162 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.163 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.164 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 256) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #10
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
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #10
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #10
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i32 5) #10
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10
  br label %47

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #10
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #10
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
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
  %3 = alloca [36 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [36 x i8], align 16
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 36, i8* nonnull %9) #10
  %10 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 3
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
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10
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
  %102 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i64 0, i64 3
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
  call void @llvm.lifetime.start(i64 36, i8* nonnull %102) #10
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
  %131 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10
  %132 = icmp eq %struct._IO_FILE* %131, null
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %130
  %134 = tail call i32* @__errno_location() #1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %119) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %136) #10
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
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0), i32 5) #10
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
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6) #13
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %261

; <label>:187:                                    ; preds = %181
  %188 = add i64 %183, 6
  %189 = getelementptr inbounds i8, i8* %170, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = icmp eq i8 %190, 32
  %192 = add i64 %183, 7
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
  %264 = select i1 %263, i64 66, i64 0
  %265 = load i8, i8* %184, align 1
  %266 = icmp eq i8 %265, 92
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, %264
  %269 = icmp ult i64 %262, %268
  br i1 %269, label %370, label %270

; <label>:270:                                    ; preds = %261
  %271 = load i1, i1* @digest_hex_bytes, align 8
  %272 = select i1 %271, i64 64, i64 0
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
  %374 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.63, i64 0, i64 0), i32 5) #10
  %375 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %374, i8* %375, i64 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #10
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
  %402 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i64 0, i64 0), i32 5) #10
  %403 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i8* %402) #10
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
  %412 = select i1 %411, i64 32, i64 0
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
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32 5) #10
  %476 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i8* %475) #10
  br label %482

; <label>:477:                                    ; preds = %473
  %478 = load i1, i1* @quiet, align 1
  br i1 %478, label %482, label %479

; <label>:479:                                    ; preds = %477
  %480 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i32 5) #10
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i8* %480) #10
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
  %508 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0), i32 5) #10
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
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %517) #10
  br label %559

; <label>:518:                                    ; preds = %511, %510
  %519 = and i8 %501, 1
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %521, label %524

; <label>:521:                                    ; preds = %518
  %522 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.69, i64 0, i64 0), i32 5) #10
  %523 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %522, i8* %523, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #10
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
  %531 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.71, i64 0, i64 0), i64 %497, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %531, i64 %497) #10
  br label %532

; <label>:532:                                    ; preds = %530, %528
  %533 = icmp eq i64 %500, 0
  br i1 %533, label %536, label %534

; <label>:534:                                    ; preds = %532
  %535 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.73, i64 0, i64 0), i64 %500, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %535, i64 %500) #10
  br label %536

; <label>:536:                                    ; preds = %534, %532
  %537 = icmp eq i64 %499, 0
  br i1 %537, label %540, label %538

; <label>:538:                                    ; preds = %536
  %539 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.75, i64 0, i64 0), i64 %499, i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %539, i64 %499) #10
  br label %540

; <label>:540:                                    ; preds = %538, %536
  %541 = load i1, i1* @ignore_missing, align 1
  %542 = and i8 %502, 1
  %543 = icmp eq i8 %542, 0
  %544 = and i1 %543, %541
  br i1 %544, label %545, label %548

; <label>:545:                                    ; preds = %540
  %546 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0), i32 5) #10
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
  call void @llvm.lifetime.end(i64 36, i8* nonnull %102) #10
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
  %587 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %586) #10
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
  %615 = select i1 %614, i64 32, i64 0
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
  call void @llvm.lifetime.end(i64 36, i8* nonnull %9) #10
  ret i32 %670

; <label>:671:                                    ; preds = %353
  %672 = getelementptr inbounds i8, i8* %346, i64 2
  %673 = add nsw i32 %345, 2
  %674 = icmp ult i32 %673, 64
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
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10
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
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %25) #10
  br label %47

; <label>:26:                                     ; preds = %13, %11
  %27 = phi i1 [ true, %11 ], [ false, %13 ]
  %28 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @fadvise(%struct._IO_FILE* %28, i32 2) #10
  %29 = tail call i32 @sha256_stream(%struct._IO_FILE* %28, i8* %1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #1
  %33 = load i32, i32* %32, align 4
  %34 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %34) #10
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
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %46) #10
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
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), %struct._IO_FILE* %15) #10
  br label %32

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %18) #10
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
define void @sha256_init_ctx(%struct.sha256_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.sha256_ctx* %0 to <4 x i32>*
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %2, align 8
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %4 = bitcast i32* %3 to <4 x i32>*
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %4, align 8
  %5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 1, i64 0
  %6 = bitcast i32* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha224_init_ctx(%struct.sha256_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.sha256_ctx* %0 to <4 x i32>*
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, <4 x i32>* %2, align 8
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %4 = bitcast i32* %3 to <4 x i32>*
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, <4 x i32>* %4, align 8
  %5 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 1, i64 0
  %6 = bitcast i32* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha256_read_ctx(%struct.sha256_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = bitcast i8* %7 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = bitcast i8* %12 to i32*
  store i32 %15, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 12
  %18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = bitcast i8* %17 to i32*
  store i32 %20, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 16
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = bitcast i8* %22 to i32*
  store i32 %25, i32* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 20
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = bitcast i8* %27 to i32*
  store i32 %30, i32* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 24
  %33 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = bitcast i8* %32 to i32*
  store i32 %35, i32* %36, align 1
  %37 = getelementptr inbounds i8, i8* %1, i64 28
  %38 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = bitcast i8* %37 to i32*
  store i32 %40, i32* %41, align 1
  ret i8* %1
}

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha224_read_ctx(%struct.sha256_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = bitcast i8* %7 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = bitcast i8* %12 to i32*
  store i32 %15, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 12
  %18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = bitcast i8* %17 to i32*
  store i32 %20, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 16
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = bitcast i8* %22 to i32*
  store i32 %25, i32* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 20
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = bitcast i8* %27 to i32*
  store i32 %30, i32* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 24
  %33 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = bitcast i8* %32 to i32*
  store i32 %35, i32* %36, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha256_finish_ctx(%struct.sha256_ctx*, i8* returned) local_unnamed_addr #6 {
  tail call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* %0)
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %11 = bitcast i8* %7 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = bitcast i8* %12 to i32*
  store i32 %15, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 12
  %18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %21 = bitcast i8* %17 to i32*
  store i32 %20, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 16
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %26 = bitcast i8* %22 to i32*
  store i32 %25, i32* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 20
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = bitcast i8* %27 to i32*
  store i32 %30, i32* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 24
  %33 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = bitcast i8* %32 to i32*
  store i32 %35, i32* %36, align 1
  %37 = getelementptr inbounds i8, i8* %1, i64 28
  %38 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = bitcast i8* %37 to i32*
  store i32 %40, i32* %41, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sha256_conclude_ctx(%struct.sha256_ctx*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 56
  %5 = select i1 %4, i64 16, i64 32
  %6 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 1, i64 0
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = add i64 %8, %3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 8
  %11 = and i64 %9, 4294967295
  %12 = icmp ult i64 %11, %3
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 1, i64 1
  %14 = load i32, i32* %13, align 4
  br i1 %12, label %15, label %17

; <label>:15:                                     ; preds = %1
  %16 = add i32 %14, 1
  store i32 %16, i32* %13, align 4
  br label %17

; <label>:17:                                     ; preds = %1, %15
  %18 = phi i32 [ %16, %15 ], [ %14, %1 ]
  %19 = add nsw i64 %5, -2
  %20 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 3, i64 %19
  %21 = shl i32 %18, 3
  %22 = lshr i32 %10, 29
  %23 = or i32 %22, %21
  %24 = shl i32 %23, 24
  %25 = shl i32 %18, 11
  %26 = and i32 %25, 16711680
  %27 = lshr i32 %18, 5
  %28 = and i32 %27, 65280
  %29 = lshr i32 %18, 21
  %30 = and i32 %29, 255
  %31 = or i32 %28, %26
  %32 = or i32 %31, %30
  %33 = or i32 %32, %24
  store i32 %33, i32* %20, align 1
  %34 = add nsw i64 %5, -1
  %35 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 3, i64 %34
  %36 = shl i32 %10, 27
  %37 = shl i32 %10, 11
  %38 = and i32 %37, 16711680
  %39 = or i32 %38, %36
  %40 = lshr i32 %10, 5
  %41 = and i32 %40, 65280
  %42 = or i32 %39, %41
  %43 = lshr i32 %10, 21
  %44 = and i32 %43, 255
  %45 = or i32 %42, %44
  store i32 %45, i32* %35, align 1
  %46 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 3, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %3
  %49 = shl nsw i64 %19, 2
  %50 = sub i64 %49, %3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %50, i32 1, i1 false)
  %51 = shl nuw nsw i64 %5, 2
  tail call void @sha256_process_block(i8* %47, i64 %51, %struct.sha256_ctx* nonnull %0)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha256_process_block(i8* readonly, i64, %struct.sha256_ctx* nocapture) local_unnamed_addr #6 {
  %4 = alloca [16 x i32], align 16
  %5 = bitcast i8* %0 to i32*
  %6 = lshr i64 %1, 2
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* nonnull %8) #10
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 2
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 4
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 6
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 0, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = trunc i64 %1 to i32
  %26 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 1, i64 0
  %27 = load i32, i32* %26, align 8
  %28 = add i32 %27, %25
  store i32 %28, i32* %26, align 8
  %29 = lshr i64 %1, 32
  %30 = icmp ult i32 %28, %25
  %31 = zext i1 %30 to i64
  %32 = add nuw nsw i64 %31, %29
  %33 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 1, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = icmp ult i32* %5, %7
  br i1 %38, label %39, label %3527

; <label>:39:                                     ; preds = %3
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %56 = bitcast [16 x i32]* %4 to <4 x i32>*
  %57 = bitcast i32* %44 to <4 x i32>*
  %58 = bitcast i32* %48 to <4 x i32>*
  %59 = bitcast i32* %52 to <4 x i32>*
  br label %60

; <label>:60:                                     ; preds = %39, %60
  %61 = phi i32* [ %5, %39 ], [ %85, %60 ]
  %62 = phi i32 [ %10, %39 ], [ %3509, %60 ]
  %63 = phi i32 [ %12, %39 ], [ %3511, %60 ]
  %64 = phi i32 [ %14, %39 ], [ %3513, %60 ]
  %65 = phi i32 [ %24, %39 ], [ %3524, %60 ]
  %66 = phi i32 [ %22, %39 ], [ %3522, %60 ]
  %67 = phi i32 [ %20, %39 ], [ %3520, %60 ]
  %68 = phi i32 [ %18, %39 ], [ %3518, %60 ]
  %69 = phi i32 [ %16, %39 ], [ %3515, %60 ]
  %70 = bitcast i32* %61 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 4
  %72 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %71)
  store <4 x i32> %72, <4 x i32>* %56, align 16
  %73 = getelementptr inbounds i32, i32* %61, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4
  %76 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %75)
  store <4 x i32> %76, <4 x i32>* %57, align 16
  %77 = getelementptr inbounds i32, i32* %61, i64 8
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4
  %80 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %79)
  store <4 x i32> %80, <4 x i32>* %58, align 16
  %81 = getelementptr inbounds i32, i32* %61, i64 12
  %82 = bitcast i32* %81 to <4 x i32>*
  %83 = load <4 x i32>, <4 x i32>* %82, align 4
  %84 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %83)
  store <4 x i32> %84, <4 x i32>* %59, align 16
  %85 = getelementptr i32, i32* %61, i64 16
  %86 = shl i32 %62, 30
  %87 = lshr i32 %62, 2
  %88 = or i32 %86, %87
  %89 = shl i32 %62, 19
  %90 = lshr i32 %62, 13
  %91 = or i32 %89, %90
  %92 = xor i32 %88, %91
  %93 = shl i32 %62, 10
  %94 = lshr i32 %62, 22
  %95 = or i32 %93, %94
  %96 = xor i32 %92, %95
  %97 = and i32 %62, %63
  %98 = or i32 %62, %63
  %99 = and i32 %98, %64
  %100 = or i32 %99, %97
  %101 = add i32 %96, %100
  %102 = shl i32 %68, 26
  %103 = lshr i32 %68, 6
  %104 = or i32 %102, %103
  %105 = shl i32 %68, 21
  %106 = lshr i32 %68, 11
  %107 = or i32 %105, %106
  %108 = xor i32 %104, %107
  %109 = shl i32 %68, 7
  %110 = lshr i32 %68, 25
  %111 = or i32 %109, %110
  %112 = xor i32 %108, %111
  %113 = xor i32 %66, %67
  %114 = and i32 %113, %68
  %115 = xor i32 %114, %66
  %116 = add i32 %65, 1116352408
  %117 = add i32 %116, %112
  %118 = add i32 %117, %115
  %119 = extractelement <4 x i32> %72, i32 0
  %120 = add i32 %118, %119
  %121 = add i32 %120, %69
  %122 = add i32 %101, %120
  %123 = shl i32 %122, 30
  %124 = lshr i32 %122, 2
  %125 = or i32 %123, %124
  %126 = shl i32 %122, 19
  %127 = lshr i32 %122, 13
  %128 = or i32 %126, %127
  %129 = xor i32 %125, %128
  %130 = shl i32 %122, 10
  %131 = lshr i32 %122, 22
  %132 = or i32 %130, %131
  %133 = xor i32 %129, %132
  %134 = and i32 %122, %62
  %135 = or i32 %122, %62
  %136 = and i32 %135, %63
  %137 = or i32 %136, %134
  %138 = add i32 %133, %137
  %139 = shl i32 %121, 26
  %140 = lshr i32 %121, 6
  %141 = or i32 %139, %140
  %142 = shl i32 %121, 21
  %143 = lshr i32 %121, 11
  %144 = or i32 %142, %143
  %145 = xor i32 %141, %144
  %146 = shl i32 %121, 7
  %147 = lshr i32 %121, 25
  %148 = or i32 %146, %147
  %149 = xor i32 %145, %148
  %150 = xor i32 %67, %68
  %151 = and i32 %121, %150
  %152 = xor i32 %151, %67
  %153 = load i32, i32* %41, align 4
  %154 = add i32 %66, 1899447441
  %155 = add i32 %154, %153
  %156 = add i32 %155, %152
  %157 = add i32 %156, %149
  %158 = add i32 %157, %64
  %159 = add i32 %138, %157
  %160 = shl i32 %159, 30
  %161 = lshr i32 %159, 2
  %162 = or i32 %160, %161
  %163 = shl i32 %159, 19
  %164 = lshr i32 %159, 13
  %165 = or i32 %163, %164
  %166 = xor i32 %162, %165
  %167 = shl i32 %159, 10
  %168 = lshr i32 %159, 22
  %169 = or i32 %167, %168
  %170 = xor i32 %166, %169
  %171 = and i32 %159, %122
  %172 = or i32 %159, %122
  %173 = and i32 %172, %62
  %174 = or i32 %173, %171
  %175 = add i32 %170, %174
  %176 = shl i32 %158, 26
  %177 = lshr i32 %158, 6
  %178 = or i32 %176, %177
  %179 = shl i32 %158, 21
  %180 = lshr i32 %158, 11
  %181 = or i32 %179, %180
  %182 = xor i32 %178, %181
  %183 = shl i32 %158, 7
  %184 = lshr i32 %158, 25
  %185 = or i32 %183, %184
  %186 = xor i32 %182, %185
  %187 = xor i32 %121, %68
  %188 = and i32 %158, %187
  %189 = xor i32 %188, %68
  %190 = load i32, i32* %42, align 8
  %191 = add i32 %67, -1245643825
  %192 = add i32 %191, %190
  %193 = add i32 %192, %189
  %194 = add i32 %193, %186
  %195 = add i32 %194, %63
  %196 = add i32 %175, %194
  %197 = shl i32 %196, 30
  %198 = lshr i32 %196, 2
  %199 = or i32 %197, %198
  %200 = shl i32 %196, 19
  %201 = lshr i32 %196, 13
  %202 = or i32 %200, %201
  %203 = xor i32 %199, %202
  %204 = shl i32 %196, 10
  %205 = lshr i32 %196, 22
  %206 = or i32 %204, %205
  %207 = xor i32 %203, %206
  %208 = and i32 %196, %159
  %209 = or i32 %196, %159
  %210 = and i32 %209, %122
  %211 = or i32 %210, %208
  %212 = add i32 %207, %211
  %213 = shl i32 %195, 26
  %214 = lshr i32 %195, 6
  %215 = or i32 %213, %214
  %216 = shl i32 %195, 21
  %217 = lshr i32 %195, 11
  %218 = or i32 %216, %217
  %219 = xor i32 %215, %218
  %220 = shl i32 %195, 7
  %221 = lshr i32 %195, 25
  %222 = or i32 %220, %221
  %223 = xor i32 %219, %222
  %224 = xor i32 %158, %121
  %225 = and i32 %195, %224
  %226 = xor i32 %225, %121
  %227 = load i32, i32* %43, align 4
  %228 = add i32 %68, -373957723
  %229 = add i32 %228, %227
  %230 = add i32 %229, %226
  %231 = add i32 %230, %223
  %232 = add i32 %231, %62
  %233 = add i32 %212, %231
  %234 = shl i32 %233, 30
  %235 = lshr i32 %233, 2
  %236 = or i32 %234, %235
  %237 = shl i32 %233, 19
  %238 = lshr i32 %233, 13
  %239 = or i32 %237, %238
  %240 = xor i32 %236, %239
  %241 = shl i32 %233, 10
  %242 = lshr i32 %233, 22
  %243 = or i32 %241, %242
  %244 = xor i32 %240, %243
  %245 = and i32 %233, %196
  %246 = or i32 %233, %196
  %247 = and i32 %246, %159
  %248 = or i32 %247, %245
  %249 = add i32 %244, %248
  %250 = shl i32 %232, 26
  %251 = lshr i32 %232, 6
  %252 = or i32 %250, %251
  %253 = shl i32 %232, 21
  %254 = lshr i32 %232, 11
  %255 = or i32 %253, %254
  %256 = xor i32 %252, %255
  %257 = shl i32 %232, 7
  %258 = lshr i32 %232, 25
  %259 = or i32 %257, %258
  %260 = xor i32 %256, %259
  %261 = xor i32 %195, %158
  %262 = and i32 %232, %261
  %263 = xor i32 %262, %158
  %264 = load i32, i32* %44, align 16
  %265 = add i32 %121, 961987163
  %266 = add i32 %265, %264
  %267 = add i32 %266, %263
  %268 = add i32 %267, %260
  %269 = add i32 %268, %122
  %270 = add i32 %249, %268
  %271 = shl i32 %270, 30
  %272 = lshr i32 %270, 2
  %273 = or i32 %271, %272
  %274 = shl i32 %270, 19
  %275 = lshr i32 %270, 13
  %276 = or i32 %274, %275
  %277 = xor i32 %273, %276
  %278 = shl i32 %270, 10
  %279 = lshr i32 %270, 22
  %280 = or i32 %278, %279
  %281 = xor i32 %277, %280
  %282 = and i32 %270, %233
  %283 = or i32 %270, %233
  %284 = and i32 %283, %196
  %285 = or i32 %284, %282
  %286 = add i32 %281, %285
  %287 = shl i32 %269, 26
  %288 = lshr i32 %269, 6
  %289 = or i32 %287, %288
  %290 = shl i32 %269, 21
  %291 = lshr i32 %269, 11
  %292 = or i32 %290, %291
  %293 = xor i32 %289, %292
  %294 = shl i32 %269, 7
  %295 = lshr i32 %269, 25
  %296 = or i32 %294, %295
  %297 = xor i32 %293, %296
  %298 = xor i32 %232, %195
  %299 = and i32 %269, %298
  %300 = xor i32 %299, %195
  %301 = load i32, i32* %45, align 4
  %302 = add i32 %301, 1508970993
  %303 = add i32 %302, %158
  %304 = add i32 %303, %300
  %305 = add i32 %304, %297
  %306 = add i32 %305, %159
  %307 = add i32 %286, %305
  %308 = shl i32 %307, 30
  %309 = lshr i32 %307, 2
  %310 = or i32 %308, %309
  %311 = shl i32 %307, 19
  %312 = lshr i32 %307, 13
  %313 = or i32 %311, %312
  %314 = xor i32 %310, %313
  %315 = shl i32 %307, 10
  %316 = lshr i32 %307, 22
  %317 = or i32 %315, %316
  %318 = xor i32 %314, %317
  %319 = and i32 %307, %270
  %320 = or i32 %307, %270
  %321 = and i32 %320, %233
  %322 = or i32 %321, %319
  %323 = add i32 %318, %322
  %324 = shl i32 %306, 26
  %325 = lshr i32 %306, 6
  %326 = or i32 %324, %325
  %327 = shl i32 %306, 21
  %328 = lshr i32 %306, 11
  %329 = or i32 %327, %328
  %330 = xor i32 %326, %329
  %331 = shl i32 %306, 7
  %332 = lshr i32 %306, 25
  %333 = or i32 %331, %332
  %334 = xor i32 %330, %333
  %335 = xor i32 %269, %232
  %336 = and i32 %306, %335
  %337 = xor i32 %336, %232
  %338 = load i32, i32* %46, align 8
  %339 = add i32 %338, -1841331548
  %340 = add i32 %339, %195
  %341 = add i32 %340, %337
  %342 = add i32 %341, %334
  %343 = add i32 %342, %196
  %344 = add i32 %323, %342
  %345 = shl i32 %344, 30
  %346 = lshr i32 %344, 2
  %347 = or i32 %345, %346
  %348 = shl i32 %344, 19
  %349 = lshr i32 %344, 13
  %350 = or i32 %348, %349
  %351 = xor i32 %347, %350
  %352 = shl i32 %344, 10
  %353 = lshr i32 %344, 22
  %354 = or i32 %352, %353
  %355 = xor i32 %351, %354
  %356 = and i32 %344, %307
  %357 = or i32 %344, %307
  %358 = and i32 %357, %270
  %359 = or i32 %358, %356
  %360 = add i32 %355, %359
  %361 = shl i32 %343, 26
  %362 = lshr i32 %343, 6
  %363 = or i32 %361, %362
  %364 = shl i32 %343, 21
  %365 = lshr i32 %343, 11
  %366 = or i32 %364, %365
  %367 = xor i32 %363, %366
  %368 = shl i32 %343, 7
  %369 = lshr i32 %343, 25
  %370 = or i32 %368, %369
  %371 = xor i32 %367, %370
  %372 = xor i32 %306, %269
  %373 = and i32 %343, %372
  %374 = xor i32 %373, %269
  %375 = load i32, i32* %47, align 4
  %376 = add i32 %375, -1424204075
  %377 = add i32 %376, %232
  %378 = add i32 %377, %374
  %379 = add i32 %378, %371
  %380 = add i32 %379, %233
  %381 = add i32 %360, %379
  %382 = shl i32 %381, 30
  %383 = lshr i32 %381, 2
  %384 = or i32 %382, %383
  %385 = shl i32 %381, 19
  %386 = lshr i32 %381, 13
  %387 = or i32 %385, %386
  %388 = xor i32 %384, %387
  %389 = shl i32 %381, 10
  %390 = lshr i32 %381, 22
  %391 = or i32 %389, %390
  %392 = xor i32 %388, %391
  %393 = and i32 %381, %344
  %394 = or i32 %381, %344
  %395 = and i32 %394, %307
  %396 = or i32 %395, %393
  %397 = add i32 %392, %396
  %398 = shl i32 %380, 26
  %399 = lshr i32 %380, 6
  %400 = or i32 %398, %399
  %401 = shl i32 %380, 21
  %402 = lshr i32 %380, 11
  %403 = or i32 %401, %402
  %404 = xor i32 %400, %403
  %405 = shl i32 %380, 7
  %406 = lshr i32 %380, 25
  %407 = or i32 %405, %406
  %408 = xor i32 %404, %407
  %409 = xor i32 %343, %306
  %410 = and i32 %380, %409
  %411 = xor i32 %410, %306
  %412 = load i32, i32* %48, align 16
  %413 = add i32 %412, -670586216
  %414 = add i32 %413, %269
  %415 = add i32 %414, %411
  %416 = add i32 %415, %408
  %417 = add i32 %416, %270
  %418 = add i32 %397, %416
  %419 = shl i32 %418, 30
  %420 = lshr i32 %418, 2
  %421 = or i32 %419, %420
  %422 = shl i32 %418, 19
  %423 = lshr i32 %418, 13
  %424 = or i32 %422, %423
  %425 = xor i32 %421, %424
  %426 = shl i32 %418, 10
  %427 = lshr i32 %418, 22
  %428 = or i32 %426, %427
  %429 = xor i32 %425, %428
  %430 = and i32 %418, %381
  %431 = or i32 %418, %381
  %432 = and i32 %431, %344
  %433 = or i32 %432, %430
  %434 = add i32 %429, %433
  %435 = shl i32 %417, 26
  %436 = lshr i32 %417, 6
  %437 = or i32 %435, %436
  %438 = shl i32 %417, 21
  %439 = lshr i32 %417, 11
  %440 = or i32 %438, %439
  %441 = xor i32 %437, %440
  %442 = shl i32 %417, 7
  %443 = lshr i32 %417, 25
  %444 = or i32 %442, %443
  %445 = xor i32 %441, %444
  %446 = xor i32 %380, %343
  %447 = and i32 %417, %446
  %448 = xor i32 %447, %343
  %449 = load i32, i32* %49, align 4
  %450 = add i32 %449, 310598401
  %451 = add i32 %450, %306
  %452 = add i32 %451, %448
  %453 = add i32 %452, %445
  %454 = add i32 %453, %307
  %455 = add i32 %434, %453
  %456 = shl i32 %455, 30
  %457 = lshr i32 %455, 2
  %458 = or i32 %456, %457
  %459 = shl i32 %455, 19
  %460 = lshr i32 %455, 13
  %461 = or i32 %459, %460
  %462 = xor i32 %458, %461
  %463 = shl i32 %455, 10
  %464 = lshr i32 %455, 22
  %465 = or i32 %463, %464
  %466 = xor i32 %462, %465
  %467 = and i32 %455, %418
  %468 = or i32 %455, %418
  %469 = and i32 %468, %381
  %470 = or i32 %469, %467
  %471 = add i32 %466, %470
  %472 = shl i32 %454, 26
  %473 = lshr i32 %454, 6
  %474 = or i32 %472, %473
  %475 = shl i32 %454, 21
  %476 = lshr i32 %454, 11
  %477 = or i32 %475, %476
  %478 = xor i32 %474, %477
  %479 = shl i32 %454, 7
  %480 = lshr i32 %454, 25
  %481 = or i32 %479, %480
  %482 = xor i32 %478, %481
  %483 = xor i32 %417, %380
  %484 = and i32 %454, %483
  %485 = xor i32 %484, %380
  %486 = load i32, i32* %50, align 8
  %487 = add i32 %486, 607225278
  %488 = add i32 %487, %343
  %489 = add i32 %488, %485
  %490 = add i32 %489, %482
  %491 = add i32 %490, %344
  %492 = add i32 %471, %490
  %493 = shl i32 %492, 30
  %494 = lshr i32 %492, 2
  %495 = or i32 %493, %494
  %496 = shl i32 %492, 19
  %497 = lshr i32 %492, 13
  %498 = or i32 %496, %497
  %499 = xor i32 %495, %498
  %500 = shl i32 %492, 10
  %501 = lshr i32 %492, 22
  %502 = or i32 %500, %501
  %503 = xor i32 %499, %502
  %504 = and i32 %492, %455
  %505 = or i32 %492, %455
  %506 = and i32 %505, %418
  %507 = or i32 %506, %504
  %508 = add i32 %503, %507
  %509 = shl i32 %491, 26
  %510 = lshr i32 %491, 6
  %511 = or i32 %509, %510
  %512 = shl i32 %491, 21
  %513 = lshr i32 %491, 11
  %514 = or i32 %512, %513
  %515 = xor i32 %511, %514
  %516 = shl i32 %491, 7
  %517 = lshr i32 %491, 25
  %518 = or i32 %516, %517
  %519 = xor i32 %515, %518
  %520 = xor i32 %454, %417
  %521 = and i32 %491, %520
  %522 = xor i32 %521, %417
  %523 = load i32, i32* %51, align 4
  %524 = add i32 %523, 1426881987
  %525 = add i32 %524, %380
  %526 = add i32 %525, %522
  %527 = add i32 %526, %519
  %528 = add i32 %527, %381
  %529 = add i32 %508, %527
  %530 = shl i32 %529, 30
  %531 = lshr i32 %529, 2
  %532 = or i32 %530, %531
  %533 = shl i32 %529, 19
  %534 = lshr i32 %529, 13
  %535 = or i32 %533, %534
  %536 = xor i32 %532, %535
  %537 = shl i32 %529, 10
  %538 = lshr i32 %529, 22
  %539 = or i32 %537, %538
  %540 = xor i32 %536, %539
  %541 = and i32 %529, %492
  %542 = or i32 %529, %492
  %543 = and i32 %542, %455
  %544 = or i32 %543, %541
  %545 = add i32 %540, %544
  %546 = shl i32 %528, 26
  %547 = lshr i32 %528, 6
  %548 = or i32 %546, %547
  %549 = shl i32 %528, 21
  %550 = lshr i32 %528, 11
  %551 = or i32 %549, %550
  %552 = xor i32 %548, %551
  %553 = shl i32 %528, 7
  %554 = lshr i32 %528, 25
  %555 = or i32 %553, %554
  %556 = xor i32 %552, %555
  %557 = xor i32 %491, %454
  %558 = and i32 %528, %557
  %559 = xor i32 %558, %454
  %560 = load i32, i32* %52, align 16
  %561 = add i32 %560, 1925078388
  %562 = add i32 %561, %417
  %563 = add i32 %562, %559
  %564 = add i32 %563, %556
  %565 = add i32 %564, %418
  %566 = add i32 %545, %564
  %567 = shl i32 %566, 30
  %568 = lshr i32 %566, 2
  %569 = or i32 %567, %568
  %570 = shl i32 %566, 19
  %571 = lshr i32 %566, 13
  %572 = or i32 %570, %571
  %573 = xor i32 %569, %572
  %574 = shl i32 %566, 10
  %575 = lshr i32 %566, 22
  %576 = or i32 %574, %575
  %577 = xor i32 %573, %576
  %578 = and i32 %566, %529
  %579 = or i32 %566, %529
  %580 = and i32 %579, %492
  %581 = or i32 %580, %578
  %582 = add i32 %577, %581
  %583 = shl i32 %565, 26
  %584 = lshr i32 %565, 6
  %585 = or i32 %583, %584
  %586 = shl i32 %565, 21
  %587 = lshr i32 %565, 11
  %588 = or i32 %586, %587
  %589 = xor i32 %585, %588
  %590 = shl i32 %565, 7
  %591 = lshr i32 %565, 25
  %592 = or i32 %590, %591
  %593 = xor i32 %589, %592
  %594 = xor i32 %528, %491
  %595 = and i32 %565, %594
  %596 = xor i32 %595, %491
  %597 = load i32, i32* %53, align 4
  %598 = add i32 %597, -2132889090
  %599 = add i32 %598, %454
  %600 = add i32 %599, %596
  %601 = add i32 %600, %593
  %602 = add i32 %601, %455
  %603 = add i32 %582, %601
  %604 = shl i32 %603, 30
  %605 = lshr i32 %603, 2
  %606 = or i32 %604, %605
  %607 = shl i32 %603, 19
  %608 = lshr i32 %603, 13
  %609 = or i32 %607, %608
  %610 = xor i32 %606, %609
  %611 = shl i32 %603, 10
  %612 = lshr i32 %603, 22
  %613 = or i32 %611, %612
  %614 = xor i32 %610, %613
  %615 = and i32 %603, %566
  %616 = or i32 %603, %566
  %617 = and i32 %616, %529
  %618 = or i32 %617, %615
  %619 = add i32 %614, %618
  %620 = shl i32 %602, 26
  %621 = lshr i32 %602, 6
  %622 = or i32 %620, %621
  %623 = shl i32 %602, 21
  %624 = lshr i32 %602, 11
  %625 = or i32 %623, %624
  %626 = xor i32 %622, %625
  %627 = shl i32 %602, 7
  %628 = lshr i32 %602, 25
  %629 = or i32 %627, %628
  %630 = xor i32 %626, %629
  %631 = xor i32 %565, %528
  %632 = and i32 %602, %631
  %633 = xor i32 %632, %528
  %634 = load i32, i32* %54, align 8
  %635 = add i32 %634, -1680079193
  %636 = add i32 %635, %491
  %637 = add i32 %636, %633
  %638 = add i32 %637, %630
  %639 = add i32 %638, %492
  %640 = add i32 %619, %638
  %641 = shl i32 %640, 30
  %642 = lshr i32 %640, 2
  %643 = or i32 %641, %642
  %644 = shl i32 %640, 19
  %645 = lshr i32 %640, 13
  %646 = or i32 %644, %645
  %647 = xor i32 %643, %646
  %648 = shl i32 %640, 10
  %649 = lshr i32 %640, 22
  %650 = or i32 %648, %649
  %651 = xor i32 %647, %650
  %652 = and i32 %640, %603
  %653 = or i32 %640, %603
  %654 = and i32 %653, %566
  %655 = or i32 %654, %652
  %656 = add i32 %651, %655
  %657 = shl i32 %639, 26
  %658 = lshr i32 %639, 6
  %659 = or i32 %657, %658
  %660 = shl i32 %639, 21
  %661 = lshr i32 %639, 11
  %662 = or i32 %660, %661
  %663 = xor i32 %659, %662
  %664 = shl i32 %639, 7
  %665 = lshr i32 %639, 25
  %666 = or i32 %664, %665
  %667 = xor i32 %663, %666
  %668 = xor i32 %602, %565
  %669 = and i32 %639, %668
  %670 = xor i32 %669, %565
  %671 = load i32, i32* %55, align 4
  %672 = add i32 %671, -1046744716
  %673 = add i32 %672, %528
  %674 = add i32 %673, %670
  %675 = add i32 %674, %667
  %676 = add i32 %675, %529
  %677 = add i32 %656, %675
  %678 = shl i32 %677, 30
  %679 = lshr i32 %677, 2
  %680 = or i32 %678, %679
  %681 = shl i32 %677, 19
  %682 = lshr i32 %677, 13
  %683 = or i32 %681, %682
  %684 = xor i32 %680, %683
  %685 = shl i32 %677, 10
  %686 = lshr i32 %677, 22
  %687 = or i32 %685, %686
  %688 = xor i32 %684, %687
  %689 = and i32 %677, %640
  %690 = or i32 %677, %640
  %691 = and i32 %690, %603
  %692 = or i32 %691, %689
  %693 = add i32 %688, %692
  %694 = shl i32 %676, 26
  %695 = lshr i32 %676, 6
  %696 = or i32 %694, %695
  %697 = shl i32 %676, 21
  %698 = lshr i32 %676, 11
  %699 = or i32 %697, %698
  %700 = xor i32 %696, %699
  %701 = shl i32 %676, 7
  %702 = lshr i32 %676, 25
  %703 = or i32 %701, %702
  %704 = xor i32 %700, %703
  %705 = xor i32 %639, %602
  %706 = and i32 %676, %705
  %707 = xor i32 %706, %602
  %708 = shl i32 %634, 15
  %709 = lshr i32 %634, 17
  %710 = or i32 %708, %709
  %711 = shl i32 %634, 13
  %712 = lshr i32 %634, 19
  %713 = or i32 %711, %712
  %714 = lshr i32 %634, 10
  %715 = xor i32 %713, %714
  %716 = xor i32 %715, %710
  %717 = shl i32 %153, 25
  %718 = lshr i32 %153, 7
  %719 = or i32 %717, %718
  %720 = shl i32 %153, 14
  %721 = lshr i32 %153, 18
  %722 = or i32 %720, %721
  %723 = lshr i32 %153, 3
  %724 = xor i32 %722, %723
  %725 = xor i32 %724, %719
  %726 = add i32 %725, %119
  %727 = add i32 %726, %449
  %728 = add i32 %727, %716
  store i32 %728, i32* %40, align 16
  %729 = add i32 %728, -459576895
  %730 = add i32 %729, %565
  %731 = add i32 %730, %707
  %732 = add i32 %731, %704
  %733 = add i32 %732, %566
  %734 = add i32 %693, %732
  %735 = shl i32 %734, 30
  %736 = lshr i32 %734, 2
  %737 = or i32 %735, %736
  %738 = shl i32 %734, 19
  %739 = lshr i32 %734, 13
  %740 = or i32 %738, %739
  %741 = xor i32 %737, %740
  %742 = shl i32 %734, 10
  %743 = lshr i32 %734, 22
  %744 = or i32 %742, %743
  %745 = xor i32 %741, %744
  %746 = and i32 %734, %677
  %747 = or i32 %734, %677
  %748 = and i32 %747, %640
  %749 = or i32 %748, %746
  %750 = add i32 %745, %749
  %751 = shl i32 %733, 26
  %752 = lshr i32 %733, 6
  %753 = or i32 %751, %752
  %754 = shl i32 %733, 21
  %755 = lshr i32 %733, 11
  %756 = or i32 %754, %755
  %757 = xor i32 %753, %756
  %758 = shl i32 %733, 7
  %759 = lshr i32 %733, 25
  %760 = or i32 %758, %759
  %761 = xor i32 %757, %760
  %762 = xor i32 %676, %639
  %763 = and i32 %733, %762
  %764 = xor i32 %763, %639
  %765 = shl i32 %671, 15
  %766 = lshr i32 %671, 17
  %767 = or i32 %765, %766
  %768 = shl i32 %671, 13
  %769 = lshr i32 %671, 19
  %770 = or i32 %768, %769
  %771 = lshr i32 %671, 10
  %772 = xor i32 %770, %771
  %773 = xor i32 %772, %767
  %774 = load i32, i32* %50, align 8
  %775 = load i32, i32* %42, align 8
  %776 = shl i32 %775, 25
  %777 = lshr i32 %775, 7
  %778 = or i32 %776, %777
  %779 = shl i32 %775, 14
  %780 = lshr i32 %775, 18
  %781 = or i32 %779, %780
  %782 = lshr i32 %775, 3
  %783 = xor i32 %781, %782
  %784 = xor i32 %783, %778
  %785 = load i32, i32* %41, align 4
  %786 = add i32 %785, %774
  %787 = add i32 %786, %773
  %788 = add i32 %787, %784
  store i32 %788, i32* %41, align 4
  %789 = add i32 %788, -272742522
  %790 = add i32 %789, %602
  %791 = add i32 %790, %764
  %792 = add i32 %791, %761
  %793 = add i32 %792, %603
  %794 = add i32 %750, %792
  %795 = shl i32 %794, 30
  %796 = lshr i32 %794, 2
  %797 = or i32 %795, %796
  %798 = shl i32 %794, 19
  %799 = lshr i32 %794, 13
  %800 = or i32 %798, %799
  %801 = xor i32 %797, %800
  %802 = shl i32 %794, 10
  %803 = lshr i32 %794, 22
  %804 = or i32 %802, %803
  %805 = xor i32 %801, %804
  %806 = and i32 %794, %734
  %807 = or i32 %794, %734
  %808 = and i32 %807, %677
  %809 = or i32 %808, %806
  %810 = add i32 %805, %809
  %811 = shl i32 %793, 26
  %812 = lshr i32 %793, 6
  %813 = or i32 %811, %812
  %814 = shl i32 %793, 21
  %815 = lshr i32 %793, 11
  %816 = or i32 %814, %815
  %817 = xor i32 %813, %816
  %818 = shl i32 %793, 7
  %819 = lshr i32 %793, 25
  %820 = or i32 %818, %819
  %821 = xor i32 %817, %820
  %822 = xor i32 %733, %676
  %823 = and i32 %793, %822
  %824 = xor i32 %823, %676
  %825 = shl i32 %728, 15
  %826 = lshr i32 %728, 17
  %827 = or i32 %825, %826
  %828 = shl i32 %728, 13
  %829 = lshr i32 %728, 19
  %830 = or i32 %828, %829
  %831 = lshr i32 %728, 10
  %832 = xor i32 %830, %831
  %833 = xor i32 %832, %827
  %834 = load i32, i32* %51, align 4
  %835 = load i32, i32* %43, align 4
  %836 = shl i32 %835, 25
  %837 = lshr i32 %835, 7
  %838 = or i32 %836, %837
  %839 = shl i32 %835, 14
  %840 = lshr i32 %835, 18
  %841 = or i32 %839, %840
  %842 = lshr i32 %835, 3
  %843 = xor i32 %841, %842
  %844 = xor i32 %843, %838
  %845 = add i32 %775, %834
  %846 = add i32 %845, %833
  %847 = add i32 %846, %844
  store i32 %847, i32* %42, align 8
  %848 = add i32 %847, 264347078
  %849 = add i32 %848, %639
  %850 = add i32 %849, %824
  %851 = add i32 %850, %821
  %852 = add i32 %851, %640
  %853 = add i32 %810, %851
  %854 = shl i32 %853, 30
  %855 = lshr i32 %853, 2
  %856 = or i32 %854, %855
  %857 = shl i32 %853, 19
  %858 = lshr i32 %853, 13
  %859 = or i32 %857, %858
  %860 = xor i32 %856, %859
  %861 = shl i32 %853, 10
  %862 = lshr i32 %853, 22
  %863 = or i32 %861, %862
  %864 = xor i32 %860, %863
  %865 = and i32 %853, %794
  %866 = or i32 %853, %794
  %867 = and i32 %866, %734
  %868 = or i32 %867, %865
  %869 = add i32 %864, %868
  %870 = shl i32 %852, 26
  %871 = lshr i32 %852, 6
  %872 = or i32 %870, %871
  %873 = shl i32 %852, 21
  %874 = lshr i32 %852, 11
  %875 = or i32 %873, %874
  %876 = xor i32 %872, %875
  %877 = shl i32 %852, 7
  %878 = lshr i32 %852, 25
  %879 = or i32 %877, %878
  %880 = xor i32 %876, %879
  %881 = xor i32 %793, %733
  %882 = and i32 %852, %881
  %883 = xor i32 %882, %733
  %884 = shl i32 %788, 15
  %885 = lshr i32 %788, 17
  %886 = or i32 %884, %885
  %887 = shl i32 %788, 13
  %888 = lshr i32 %788, 19
  %889 = or i32 %887, %888
  %890 = lshr i32 %788, 10
  %891 = xor i32 %889, %890
  %892 = xor i32 %891, %886
  %893 = load i32, i32* %52, align 16
  %894 = load i32, i32* %44, align 16
  %895 = shl i32 %894, 25
  %896 = lshr i32 %894, 7
  %897 = or i32 %895, %896
  %898 = shl i32 %894, 14
  %899 = lshr i32 %894, 18
  %900 = or i32 %898, %899
  %901 = lshr i32 %894, 3
  %902 = xor i32 %900, %901
  %903 = xor i32 %902, %897
  %904 = add i32 %835, %893
  %905 = add i32 %904, %892
  %906 = add i32 %905, %903
  store i32 %906, i32* %43, align 4
  %907 = add i32 %906, 604807628
  %908 = add i32 %907, %676
  %909 = add i32 %908, %883
  %910 = add i32 %909, %880
  %911 = add i32 %910, %677
  %912 = add i32 %869, %910
  %913 = shl i32 %912, 30
  %914 = lshr i32 %912, 2
  %915 = or i32 %913, %914
  %916 = shl i32 %912, 19
  %917 = lshr i32 %912, 13
  %918 = or i32 %916, %917
  %919 = xor i32 %915, %918
  %920 = shl i32 %912, 10
  %921 = lshr i32 %912, 22
  %922 = or i32 %920, %921
  %923 = xor i32 %919, %922
  %924 = and i32 %912, %853
  %925 = or i32 %912, %853
  %926 = and i32 %925, %794
  %927 = or i32 %926, %924
  %928 = add i32 %923, %927
  %929 = shl i32 %911, 26
  %930 = lshr i32 %911, 6
  %931 = or i32 %929, %930
  %932 = shl i32 %911, 21
  %933 = lshr i32 %911, 11
  %934 = or i32 %932, %933
  %935 = xor i32 %931, %934
  %936 = shl i32 %911, 7
  %937 = lshr i32 %911, 25
  %938 = or i32 %936, %937
  %939 = xor i32 %935, %938
  %940 = xor i32 %852, %793
  %941 = and i32 %911, %940
  %942 = xor i32 %941, %793
  %943 = shl i32 %847, 15
  %944 = lshr i32 %847, 17
  %945 = or i32 %943, %944
  %946 = shl i32 %847, 13
  %947 = lshr i32 %847, 19
  %948 = or i32 %946, %947
  %949 = lshr i32 %847, 10
  %950 = xor i32 %948, %949
  %951 = xor i32 %950, %945
  %952 = load i32, i32* %53, align 4
  %953 = load i32, i32* %45, align 4
  %954 = shl i32 %953, 25
  %955 = lshr i32 %953, 7
  %956 = or i32 %954, %955
  %957 = shl i32 %953, 14
  %958 = lshr i32 %953, 18
  %959 = or i32 %957, %958
  %960 = lshr i32 %953, 3
  %961 = xor i32 %959, %960
  %962 = xor i32 %961, %956
  %963 = add i32 %894, %952
  %964 = add i32 %963, %951
  %965 = add i32 %964, %962
  store i32 %965, i32* %44, align 16
  %966 = add i32 %965, 770255983
  %967 = add i32 %966, %733
  %968 = add i32 %967, %942
  %969 = add i32 %968, %939
  %970 = add i32 %969, %734
  %971 = add i32 %928, %969
  %972 = shl i32 %971, 30
  %973 = lshr i32 %971, 2
  %974 = or i32 %972, %973
  %975 = shl i32 %971, 19
  %976 = lshr i32 %971, 13
  %977 = or i32 %975, %976
  %978 = xor i32 %974, %977
  %979 = shl i32 %971, 10
  %980 = lshr i32 %971, 22
  %981 = or i32 %979, %980
  %982 = xor i32 %978, %981
  %983 = and i32 %971, %912
  %984 = or i32 %971, %912
  %985 = and i32 %984, %853
  %986 = or i32 %985, %983
  %987 = add i32 %982, %986
  %988 = shl i32 %970, 26
  %989 = lshr i32 %970, 6
  %990 = or i32 %988, %989
  %991 = shl i32 %970, 21
  %992 = lshr i32 %970, 11
  %993 = or i32 %991, %992
  %994 = xor i32 %990, %993
  %995 = shl i32 %970, 7
  %996 = lshr i32 %970, 25
  %997 = or i32 %995, %996
  %998 = xor i32 %994, %997
  %999 = xor i32 %911, %852
  %1000 = and i32 %970, %999
  %1001 = xor i32 %1000, %852
  %1002 = shl i32 %906, 15
  %1003 = lshr i32 %906, 17
  %1004 = or i32 %1002, %1003
  %1005 = shl i32 %906, 13
  %1006 = lshr i32 %906, 19
  %1007 = or i32 %1005, %1006
  %1008 = lshr i32 %906, 10
  %1009 = xor i32 %1007, %1008
  %1010 = xor i32 %1009, %1004
  %1011 = load i32, i32* %54, align 8
  %1012 = load i32, i32* %46, align 8
  %1013 = shl i32 %1012, 25
  %1014 = lshr i32 %1012, 7
  %1015 = or i32 %1013, %1014
  %1016 = shl i32 %1012, 14
  %1017 = lshr i32 %1012, 18
  %1018 = or i32 %1016, %1017
  %1019 = lshr i32 %1012, 3
  %1020 = xor i32 %1018, %1019
  %1021 = xor i32 %1020, %1015
  %1022 = add i32 %953, %1011
  %1023 = add i32 %1022, %1010
  %1024 = add i32 %1023, %1021
  store i32 %1024, i32* %45, align 4
  %1025 = add i32 %1024, 1249150122
  %1026 = add i32 %1025, %793
  %1027 = add i32 %1026, %1001
  %1028 = add i32 %1027, %998
  %1029 = add i32 %1028, %794
  %1030 = add i32 %987, %1028
  %1031 = shl i32 %1030, 30
  %1032 = lshr i32 %1030, 2
  %1033 = or i32 %1031, %1032
  %1034 = shl i32 %1030, 19
  %1035 = lshr i32 %1030, 13
  %1036 = or i32 %1034, %1035
  %1037 = xor i32 %1033, %1036
  %1038 = shl i32 %1030, 10
  %1039 = lshr i32 %1030, 22
  %1040 = or i32 %1038, %1039
  %1041 = xor i32 %1037, %1040
  %1042 = and i32 %1030, %971
  %1043 = or i32 %1030, %971
  %1044 = and i32 %1043, %912
  %1045 = or i32 %1044, %1042
  %1046 = add i32 %1041, %1045
  %1047 = shl i32 %1029, 26
  %1048 = lshr i32 %1029, 6
  %1049 = or i32 %1047, %1048
  %1050 = shl i32 %1029, 21
  %1051 = lshr i32 %1029, 11
  %1052 = or i32 %1050, %1051
  %1053 = xor i32 %1049, %1052
  %1054 = shl i32 %1029, 7
  %1055 = lshr i32 %1029, 25
  %1056 = or i32 %1054, %1055
  %1057 = xor i32 %1053, %1056
  %1058 = xor i32 %970, %911
  %1059 = and i32 %1029, %1058
  %1060 = xor i32 %1059, %911
  %1061 = shl i32 %965, 15
  %1062 = lshr i32 %965, 17
  %1063 = or i32 %1061, %1062
  %1064 = shl i32 %965, 13
  %1065 = lshr i32 %965, 19
  %1066 = or i32 %1064, %1065
  %1067 = lshr i32 %965, 10
  %1068 = xor i32 %1066, %1067
  %1069 = xor i32 %1068, %1063
  %1070 = load i32, i32* %55, align 4
  %1071 = load i32, i32* %47, align 4
  %1072 = shl i32 %1071, 25
  %1073 = lshr i32 %1071, 7
  %1074 = or i32 %1072, %1073
  %1075 = shl i32 %1071, 14
  %1076 = lshr i32 %1071, 18
  %1077 = or i32 %1075, %1076
  %1078 = lshr i32 %1071, 3
  %1079 = xor i32 %1077, %1078
  %1080 = xor i32 %1079, %1074
  %1081 = add i32 %1012, %1070
  %1082 = add i32 %1081, %1069
  %1083 = add i32 %1082, %1080
  store i32 %1083, i32* %46, align 8
  %1084 = add i32 %1083, 1555081692
  %1085 = add i32 %1084, %852
  %1086 = add i32 %1085, %1060
  %1087 = add i32 %1086, %1057
  %1088 = add i32 %1087, %853
  %1089 = add i32 %1046, %1087
  %1090 = shl i32 %1089, 30
  %1091 = lshr i32 %1089, 2
  %1092 = or i32 %1090, %1091
  %1093 = shl i32 %1089, 19
  %1094 = lshr i32 %1089, 13
  %1095 = or i32 %1093, %1094
  %1096 = xor i32 %1092, %1095
  %1097 = shl i32 %1089, 10
  %1098 = lshr i32 %1089, 22
  %1099 = or i32 %1097, %1098
  %1100 = xor i32 %1096, %1099
  %1101 = and i32 %1089, %1030
  %1102 = or i32 %1089, %1030
  %1103 = and i32 %1102, %971
  %1104 = or i32 %1103, %1101
  %1105 = add i32 %1100, %1104
  %1106 = shl i32 %1088, 26
  %1107 = lshr i32 %1088, 6
  %1108 = or i32 %1106, %1107
  %1109 = shl i32 %1088, 21
  %1110 = lshr i32 %1088, 11
  %1111 = or i32 %1109, %1110
  %1112 = xor i32 %1108, %1111
  %1113 = shl i32 %1088, 7
  %1114 = lshr i32 %1088, 25
  %1115 = or i32 %1113, %1114
  %1116 = xor i32 %1112, %1115
  %1117 = xor i32 %1029, %970
  %1118 = and i32 %1088, %1117
  %1119 = xor i32 %1118, %970
  %1120 = shl i32 %1024, 15
  %1121 = lshr i32 %1024, 17
  %1122 = or i32 %1120, %1121
  %1123 = shl i32 %1024, 13
  %1124 = lshr i32 %1024, 19
  %1125 = or i32 %1123, %1124
  %1126 = lshr i32 %1024, 10
  %1127 = xor i32 %1125, %1126
  %1128 = xor i32 %1127, %1122
  %1129 = load i32, i32* %40, align 16
  %1130 = load i32, i32* %48, align 16
  %1131 = shl i32 %1130, 25
  %1132 = lshr i32 %1130, 7
  %1133 = or i32 %1131, %1132
  %1134 = shl i32 %1130, 14
  %1135 = lshr i32 %1130, 18
  %1136 = or i32 %1134, %1135
  %1137 = lshr i32 %1130, 3
  %1138 = xor i32 %1136, %1137
  %1139 = xor i32 %1138, %1133
  %1140 = add i32 %1071, %1129
  %1141 = add i32 %1140, %1128
  %1142 = add i32 %1141, %1139
  store i32 %1142, i32* %47, align 4
  %1143 = add i32 %1142, 1996064986
  %1144 = add i32 %1143, %911
  %1145 = add i32 %1144, %1119
  %1146 = add i32 %1145, %1116
  %1147 = add i32 %1146, %912
  %1148 = add i32 %1105, %1146
  %1149 = shl i32 %1148, 30
  %1150 = lshr i32 %1148, 2
  %1151 = or i32 %1149, %1150
  %1152 = shl i32 %1148, 19
  %1153 = lshr i32 %1148, 13
  %1154 = or i32 %1152, %1153
  %1155 = xor i32 %1151, %1154
  %1156 = shl i32 %1148, 10
  %1157 = lshr i32 %1148, 22
  %1158 = or i32 %1156, %1157
  %1159 = xor i32 %1155, %1158
  %1160 = and i32 %1148, %1089
  %1161 = or i32 %1148, %1089
  %1162 = and i32 %1161, %1030
  %1163 = or i32 %1162, %1160
  %1164 = add i32 %1159, %1163
  %1165 = shl i32 %1147, 26
  %1166 = lshr i32 %1147, 6
  %1167 = or i32 %1165, %1166
  %1168 = shl i32 %1147, 21
  %1169 = lshr i32 %1147, 11
  %1170 = or i32 %1168, %1169
  %1171 = xor i32 %1167, %1170
  %1172 = shl i32 %1147, 7
  %1173 = lshr i32 %1147, 25
  %1174 = or i32 %1172, %1173
  %1175 = xor i32 %1171, %1174
  %1176 = xor i32 %1088, %1029
  %1177 = and i32 %1147, %1176
  %1178 = xor i32 %1177, %1029
  %1179 = shl i32 %1083, 15
  %1180 = lshr i32 %1083, 17
  %1181 = or i32 %1179, %1180
  %1182 = shl i32 %1083, 13
  %1183 = lshr i32 %1083, 19
  %1184 = or i32 %1182, %1183
  %1185 = lshr i32 %1083, 10
  %1186 = xor i32 %1184, %1185
  %1187 = xor i32 %1186, %1181
  %1188 = load i32, i32* %41, align 4
  %1189 = load i32, i32* %49, align 4
  %1190 = shl i32 %1189, 25
  %1191 = lshr i32 %1189, 7
  %1192 = or i32 %1190, %1191
  %1193 = shl i32 %1189, 14
  %1194 = lshr i32 %1189, 18
  %1195 = or i32 %1193, %1194
  %1196 = lshr i32 %1189, 3
  %1197 = xor i32 %1195, %1196
  %1198 = xor i32 %1197, %1192
  %1199 = add i32 %1130, %1188
  %1200 = add i32 %1199, %1187
  %1201 = add i32 %1200, %1198
  store i32 %1201, i32* %48, align 16
  %1202 = add i32 %1201, -1740746414
  %1203 = add i32 %1202, %970
  %1204 = add i32 %1203, %1178
  %1205 = add i32 %1204, %1175
  %1206 = add i32 %1205, %971
  %1207 = add i32 %1164, %1205
  %1208 = shl i32 %1207, 30
  %1209 = lshr i32 %1207, 2
  %1210 = or i32 %1208, %1209
  %1211 = shl i32 %1207, 19
  %1212 = lshr i32 %1207, 13
  %1213 = or i32 %1211, %1212
  %1214 = xor i32 %1210, %1213
  %1215 = shl i32 %1207, 10
  %1216 = lshr i32 %1207, 22
  %1217 = or i32 %1215, %1216
  %1218 = xor i32 %1214, %1217
  %1219 = and i32 %1207, %1148
  %1220 = or i32 %1207, %1148
  %1221 = and i32 %1220, %1089
  %1222 = or i32 %1221, %1219
  %1223 = add i32 %1218, %1222
  %1224 = shl i32 %1206, 26
  %1225 = lshr i32 %1206, 6
  %1226 = or i32 %1224, %1225
  %1227 = shl i32 %1206, 21
  %1228 = lshr i32 %1206, 11
  %1229 = or i32 %1227, %1228
  %1230 = xor i32 %1226, %1229
  %1231 = shl i32 %1206, 7
  %1232 = lshr i32 %1206, 25
  %1233 = or i32 %1231, %1232
  %1234 = xor i32 %1230, %1233
  %1235 = xor i32 %1147, %1088
  %1236 = and i32 %1206, %1235
  %1237 = xor i32 %1236, %1088
  %1238 = shl i32 %1142, 15
  %1239 = lshr i32 %1142, 17
  %1240 = or i32 %1238, %1239
  %1241 = shl i32 %1142, 13
  %1242 = lshr i32 %1142, 19
  %1243 = or i32 %1241, %1242
  %1244 = lshr i32 %1142, 10
  %1245 = xor i32 %1243, %1244
  %1246 = xor i32 %1245, %1240
  %1247 = load i32, i32* %42, align 8
  %1248 = load i32, i32* %50, align 8
  %1249 = shl i32 %1248, 25
  %1250 = lshr i32 %1248, 7
  %1251 = or i32 %1249, %1250
  %1252 = shl i32 %1248, 14
  %1253 = lshr i32 %1248, 18
  %1254 = or i32 %1252, %1253
  %1255 = lshr i32 %1248, 3
  %1256 = xor i32 %1254, %1255
  %1257 = xor i32 %1256, %1251
  %1258 = add i32 %1189, %1247
  %1259 = add i32 %1258, %1246
  %1260 = add i32 %1259, %1257
  store i32 %1260, i32* %49, align 4
  %1261 = add i32 %1260, -1473132947
  %1262 = add i32 %1261, %1029
  %1263 = add i32 %1262, %1237
  %1264 = add i32 %1263, %1234
  %1265 = add i32 %1264, %1030
  %1266 = add i32 %1223, %1264
  %1267 = shl i32 %1266, 30
  %1268 = lshr i32 %1266, 2
  %1269 = or i32 %1267, %1268
  %1270 = shl i32 %1266, 19
  %1271 = lshr i32 %1266, 13
  %1272 = or i32 %1270, %1271
  %1273 = xor i32 %1269, %1272
  %1274 = shl i32 %1266, 10
  %1275 = lshr i32 %1266, 22
  %1276 = or i32 %1274, %1275
  %1277 = xor i32 %1273, %1276
  %1278 = and i32 %1266, %1207
  %1279 = or i32 %1266, %1207
  %1280 = and i32 %1279, %1148
  %1281 = or i32 %1280, %1278
  %1282 = add i32 %1277, %1281
  %1283 = shl i32 %1265, 26
  %1284 = lshr i32 %1265, 6
  %1285 = or i32 %1283, %1284
  %1286 = shl i32 %1265, 21
  %1287 = lshr i32 %1265, 11
  %1288 = or i32 %1286, %1287
  %1289 = xor i32 %1285, %1288
  %1290 = shl i32 %1265, 7
  %1291 = lshr i32 %1265, 25
  %1292 = or i32 %1290, %1291
  %1293 = xor i32 %1289, %1292
  %1294 = xor i32 %1206, %1147
  %1295 = and i32 %1265, %1294
  %1296 = xor i32 %1295, %1147
  %1297 = shl i32 %1201, 15
  %1298 = lshr i32 %1201, 17
  %1299 = or i32 %1297, %1298
  %1300 = shl i32 %1201, 13
  %1301 = lshr i32 %1201, 19
  %1302 = or i32 %1300, %1301
  %1303 = lshr i32 %1201, 10
  %1304 = xor i32 %1302, %1303
  %1305 = xor i32 %1304, %1299
  %1306 = load i32, i32* %43, align 4
  %1307 = load i32, i32* %51, align 4
  %1308 = shl i32 %1307, 25
  %1309 = lshr i32 %1307, 7
  %1310 = or i32 %1308, %1309
  %1311 = shl i32 %1307, 14
  %1312 = lshr i32 %1307, 18
  %1313 = or i32 %1311, %1312
  %1314 = lshr i32 %1307, 3
  %1315 = xor i32 %1313, %1314
  %1316 = xor i32 %1315, %1310
  %1317 = add i32 %1248, %1306
  %1318 = add i32 %1317, %1305
  %1319 = add i32 %1318, %1316
  store i32 %1319, i32* %50, align 8
  %1320 = add i32 %1319, -1341970488
  %1321 = add i32 %1320, %1088
  %1322 = add i32 %1321, %1296
  %1323 = add i32 %1322, %1293
  %1324 = add i32 %1323, %1089
  %1325 = add i32 %1282, %1323
  %1326 = shl i32 %1325, 30
  %1327 = lshr i32 %1325, 2
  %1328 = or i32 %1326, %1327
  %1329 = shl i32 %1325, 19
  %1330 = lshr i32 %1325, 13
  %1331 = or i32 %1329, %1330
  %1332 = xor i32 %1328, %1331
  %1333 = shl i32 %1325, 10
  %1334 = lshr i32 %1325, 22
  %1335 = or i32 %1333, %1334
  %1336 = xor i32 %1332, %1335
  %1337 = and i32 %1325, %1266
  %1338 = or i32 %1325, %1266
  %1339 = and i32 %1338, %1207
  %1340 = or i32 %1339, %1337
  %1341 = add i32 %1336, %1340
  %1342 = shl i32 %1324, 26
  %1343 = lshr i32 %1324, 6
  %1344 = or i32 %1342, %1343
  %1345 = shl i32 %1324, 21
  %1346 = lshr i32 %1324, 11
  %1347 = or i32 %1345, %1346
  %1348 = xor i32 %1344, %1347
  %1349 = shl i32 %1324, 7
  %1350 = lshr i32 %1324, 25
  %1351 = or i32 %1349, %1350
  %1352 = xor i32 %1348, %1351
  %1353 = xor i32 %1265, %1206
  %1354 = and i32 %1324, %1353
  %1355 = xor i32 %1354, %1206
  %1356 = shl i32 %1260, 15
  %1357 = lshr i32 %1260, 17
  %1358 = or i32 %1356, %1357
  %1359 = shl i32 %1260, 13
  %1360 = lshr i32 %1260, 19
  %1361 = or i32 %1359, %1360
  %1362 = lshr i32 %1260, 10
  %1363 = xor i32 %1361, %1362
  %1364 = xor i32 %1363, %1358
  %1365 = load i32, i32* %44, align 16
  %1366 = load i32, i32* %52, align 16
  %1367 = shl i32 %1366, 25
  %1368 = lshr i32 %1366, 7
  %1369 = or i32 %1367, %1368
  %1370 = shl i32 %1366, 14
  %1371 = lshr i32 %1366, 18
  %1372 = or i32 %1370, %1371
  %1373 = lshr i32 %1366, 3
  %1374 = xor i32 %1372, %1373
  %1375 = xor i32 %1374, %1369
  %1376 = add i32 %1307, %1365
  %1377 = add i32 %1376, %1364
  %1378 = add i32 %1377, %1375
  store i32 %1378, i32* %51, align 4
  %1379 = add i32 %1378, -1084653625
  %1380 = add i32 %1379, %1147
  %1381 = add i32 %1380, %1355
  %1382 = add i32 %1381, %1352
  %1383 = add i32 %1382, %1148
  %1384 = add i32 %1341, %1382
  %1385 = shl i32 %1384, 30
  %1386 = lshr i32 %1384, 2
  %1387 = or i32 %1385, %1386
  %1388 = shl i32 %1384, 19
  %1389 = lshr i32 %1384, 13
  %1390 = or i32 %1388, %1389
  %1391 = xor i32 %1387, %1390
  %1392 = shl i32 %1384, 10
  %1393 = lshr i32 %1384, 22
  %1394 = or i32 %1392, %1393
  %1395 = xor i32 %1391, %1394
  %1396 = and i32 %1384, %1325
  %1397 = or i32 %1384, %1325
  %1398 = and i32 %1397, %1266
  %1399 = or i32 %1398, %1396
  %1400 = add i32 %1395, %1399
  %1401 = shl i32 %1383, 26
  %1402 = lshr i32 %1383, 6
  %1403 = or i32 %1401, %1402
  %1404 = shl i32 %1383, 21
  %1405 = lshr i32 %1383, 11
  %1406 = or i32 %1404, %1405
  %1407 = xor i32 %1403, %1406
  %1408 = shl i32 %1383, 7
  %1409 = lshr i32 %1383, 25
  %1410 = or i32 %1408, %1409
  %1411 = xor i32 %1407, %1410
  %1412 = xor i32 %1324, %1265
  %1413 = and i32 %1383, %1412
  %1414 = xor i32 %1413, %1265
  %1415 = shl i32 %1319, 15
  %1416 = lshr i32 %1319, 17
  %1417 = or i32 %1415, %1416
  %1418 = shl i32 %1319, 13
  %1419 = lshr i32 %1319, 19
  %1420 = or i32 %1418, %1419
  %1421 = lshr i32 %1319, 10
  %1422 = xor i32 %1420, %1421
  %1423 = xor i32 %1422, %1417
  %1424 = load i32, i32* %45, align 4
  %1425 = load i32, i32* %53, align 4
  %1426 = shl i32 %1425, 25
  %1427 = lshr i32 %1425, 7
  %1428 = or i32 %1426, %1427
  %1429 = shl i32 %1425, 14
  %1430 = lshr i32 %1425, 18
  %1431 = or i32 %1429, %1430
  %1432 = lshr i32 %1425, 3
  %1433 = xor i32 %1431, %1432
  %1434 = xor i32 %1433, %1428
  %1435 = add i32 %1366, %1424
  %1436 = add i32 %1435, %1423
  %1437 = add i32 %1436, %1434
  store i32 %1437, i32* %52, align 16
  %1438 = add i32 %1437, -958395405
  %1439 = add i32 %1438, %1206
  %1440 = add i32 %1439, %1414
  %1441 = add i32 %1440, %1411
  %1442 = add i32 %1441, %1207
  %1443 = add i32 %1400, %1441
  %1444 = shl i32 %1443, 30
  %1445 = lshr i32 %1443, 2
  %1446 = or i32 %1444, %1445
  %1447 = shl i32 %1443, 19
  %1448 = lshr i32 %1443, 13
  %1449 = or i32 %1447, %1448
  %1450 = xor i32 %1446, %1449
  %1451 = shl i32 %1443, 10
  %1452 = lshr i32 %1443, 22
  %1453 = or i32 %1451, %1452
  %1454 = xor i32 %1450, %1453
  %1455 = and i32 %1443, %1384
  %1456 = or i32 %1443, %1384
  %1457 = and i32 %1456, %1325
  %1458 = or i32 %1457, %1455
  %1459 = add i32 %1454, %1458
  %1460 = shl i32 %1442, 26
  %1461 = lshr i32 %1442, 6
  %1462 = or i32 %1460, %1461
  %1463 = shl i32 %1442, 21
  %1464 = lshr i32 %1442, 11
  %1465 = or i32 %1463, %1464
  %1466 = xor i32 %1462, %1465
  %1467 = shl i32 %1442, 7
  %1468 = lshr i32 %1442, 25
  %1469 = or i32 %1467, %1468
  %1470 = xor i32 %1466, %1469
  %1471 = xor i32 %1383, %1324
  %1472 = and i32 %1442, %1471
  %1473 = xor i32 %1472, %1324
  %1474 = shl i32 %1378, 15
  %1475 = lshr i32 %1378, 17
  %1476 = or i32 %1474, %1475
  %1477 = shl i32 %1378, 13
  %1478 = lshr i32 %1378, 19
  %1479 = or i32 %1477, %1478
  %1480 = lshr i32 %1378, 10
  %1481 = xor i32 %1479, %1480
  %1482 = xor i32 %1481, %1476
  %1483 = load i32, i32* %46, align 8
  %1484 = load i32, i32* %54, align 8
  %1485 = shl i32 %1484, 25
  %1486 = lshr i32 %1484, 7
  %1487 = or i32 %1485, %1486
  %1488 = shl i32 %1484, 14
  %1489 = lshr i32 %1484, 18
  %1490 = or i32 %1488, %1489
  %1491 = lshr i32 %1484, 3
  %1492 = xor i32 %1490, %1491
  %1493 = xor i32 %1492, %1487
  %1494 = add i32 %1425, %1483
  %1495 = add i32 %1494, %1482
  %1496 = add i32 %1495, %1493
  store i32 %1496, i32* %53, align 4
  %1497 = add i32 %1496, -710438585
  %1498 = add i32 %1497, %1265
  %1499 = add i32 %1498, %1473
  %1500 = add i32 %1499, %1470
  %1501 = add i32 %1500, %1266
  %1502 = add i32 %1459, %1500
  %1503 = shl i32 %1502, 30
  %1504 = lshr i32 %1502, 2
  %1505 = or i32 %1503, %1504
  %1506 = shl i32 %1502, 19
  %1507 = lshr i32 %1502, 13
  %1508 = or i32 %1506, %1507
  %1509 = xor i32 %1505, %1508
  %1510 = shl i32 %1502, 10
  %1511 = lshr i32 %1502, 22
  %1512 = or i32 %1510, %1511
  %1513 = xor i32 %1509, %1512
  %1514 = and i32 %1502, %1443
  %1515 = or i32 %1502, %1443
  %1516 = and i32 %1515, %1384
  %1517 = or i32 %1516, %1514
  %1518 = add i32 %1513, %1517
  %1519 = shl i32 %1501, 26
  %1520 = lshr i32 %1501, 6
  %1521 = or i32 %1519, %1520
  %1522 = shl i32 %1501, 21
  %1523 = lshr i32 %1501, 11
  %1524 = or i32 %1522, %1523
  %1525 = xor i32 %1521, %1524
  %1526 = shl i32 %1501, 7
  %1527 = lshr i32 %1501, 25
  %1528 = or i32 %1526, %1527
  %1529 = xor i32 %1525, %1528
  %1530 = xor i32 %1442, %1383
  %1531 = and i32 %1501, %1530
  %1532 = xor i32 %1531, %1383
  %1533 = shl i32 %1437, 15
  %1534 = lshr i32 %1437, 17
  %1535 = or i32 %1533, %1534
  %1536 = shl i32 %1437, 13
  %1537 = lshr i32 %1437, 19
  %1538 = or i32 %1536, %1537
  %1539 = lshr i32 %1437, 10
  %1540 = xor i32 %1538, %1539
  %1541 = xor i32 %1540, %1535
  %1542 = load i32, i32* %47, align 4
  %1543 = load i32, i32* %55, align 4
  %1544 = shl i32 %1543, 25
  %1545 = lshr i32 %1543, 7
  %1546 = or i32 %1544, %1545
  %1547 = shl i32 %1543, 14
  %1548 = lshr i32 %1543, 18
  %1549 = or i32 %1547, %1548
  %1550 = lshr i32 %1543, 3
  %1551 = xor i32 %1549, %1550
  %1552 = xor i32 %1551, %1546
  %1553 = add i32 %1484, %1542
  %1554 = add i32 %1553, %1541
  %1555 = add i32 %1554, %1552
  store i32 %1555, i32* %54, align 8
  %1556 = add i32 %1555, 113926993
  %1557 = add i32 %1556, %1324
  %1558 = add i32 %1557, %1532
  %1559 = add i32 %1558, %1529
  %1560 = add i32 %1559, %1325
  %1561 = add i32 %1518, %1559
  %1562 = shl i32 %1561, 30
  %1563 = lshr i32 %1561, 2
  %1564 = or i32 %1562, %1563
  %1565 = shl i32 %1561, 19
  %1566 = lshr i32 %1561, 13
  %1567 = or i32 %1565, %1566
  %1568 = xor i32 %1564, %1567
  %1569 = shl i32 %1561, 10
  %1570 = lshr i32 %1561, 22
  %1571 = or i32 %1569, %1570
  %1572 = xor i32 %1568, %1571
  %1573 = and i32 %1561, %1502
  %1574 = or i32 %1561, %1502
  %1575 = and i32 %1574, %1443
  %1576 = or i32 %1575, %1573
  %1577 = add i32 %1572, %1576
  %1578 = shl i32 %1560, 26
  %1579 = lshr i32 %1560, 6
  %1580 = or i32 %1578, %1579
  %1581 = shl i32 %1560, 21
  %1582 = lshr i32 %1560, 11
  %1583 = or i32 %1581, %1582
  %1584 = xor i32 %1580, %1583
  %1585 = shl i32 %1560, 7
  %1586 = lshr i32 %1560, 25
  %1587 = or i32 %1585, %1586
  %1588 = xor i32 %1584, %1587
  %1589 = xor i32 %1501, %1442
  %1590 = and i32 %1560, %1589
  %1591 = xor i32 %1590, %1442
  %1592 = shl i32 %1496, 15
  %1593 = lshr i32 %1496, 17
  %1594 = or i32 %1592, %1593
  %1595 = shl i32 %1496, 13
  %1596 = lshr i32 %1496, 19
  %1597 = or i32 %1595, %1596
  %1598 = lshr i32 %1496, 10
  %1599 = xor i32 %1597, %1598
  %1600 = xor i32 %1599, %1594
  %1601 = load i32, i32* %48, align 16
  %1602 = load i32, i32* %40, align 16
  %1603 = shl i32 %1602, 25
  %1604 = lshr i32 %1602, 7
  %1605 = or i32 %1603, %1604
  %1606 = shl i32 %1602, 14
  %1607 = lshr i32 %1602, 18
  %1608 = or i32 %1606, %1607
  %1609 = lshr i32 %1602, 3
  %1610 = xor i32 %1608, %1609
  %1611 = xor i32 %1610, %1605
  %1612 = add i32 %1543, %1601
  %1613 = add i32 %1612, %1600
  %1614 = add i32 %1613, %1611
  store i32 %1614, i32* %55, align 4
  %1615 = add i32 %1614, 338241895
  %1616 = add i32 %1615, %1383
  %1617 = add i32 %1616, %1591
  %1618 = add i32 %1617, %1588
  %1619 = add i32 %1618, %1384
  %1620 = add i32 %1577, %1618
  %1621 = shl i32 %1620, 30
  %1622 = lshr i32 %1620, 2
  %1623 = or i32 %1621, %1622
  %1624 = shl i32 %1620, 19
  %1625 = lshr i32 %1620, 13
  %1626 = or i32 %1624, %1625
  %1627 = xor i32 %1623, %1626
  %1628 = shl i32 %1620, 10
  %1629 = lshr i32 %1620, 22
  %1630 = or i32 %1628, %1629
  %1631 = xor i32 %1627, %1630
  %1632 = and i32 %1620, %1561
  %1633 = or i32 %1620, %1561
  %1634 = and i32 %1633, %1502
  %1635 = or i32 %1634, %1632
  %1636 = add i32 %1631, %1635
  %1637 = shl i32 %1619, 26
  %1638 = lshr i32 %1619, 6
  %1639 = or i32 %1637, %1638
  %1640 = shl i32 %1619, 21
  %1641 = lshr i32 %1619, 11
  %1642 = or i32 %1640, %1641
  %1643 = xor i32 %1639, %1642
  %1644 = shl i32 %1619, 7
  %1645 = lshr i32 %1619, 25
  %1646 = or i32 %1644, %1645
  %1647 = xor i32 %1643, %1646
  %1648 = xor i32 %1560, %1501
  %1649 = and i32 %1619, %1648
  %1650 = xor i32 %1649, %1501
  %1651 = shl i32 %1555, 15
  %1652 = lshr i32 %1555, 17
  %1653 = or i32 %1651, %1652
  %1654 = shl i32 %1555, 13
  %1655 = lshr i32 %1555, 19
  %1656 = or i32 %1654, %1655
  %1657 = lshr i32 %1555, 10
  %1658 = xor i32 %1656, %1657
  %1659 = xor i32 %1658, %1653
  %1660 = load i32, i32* %49, align 4
  %1661 = load i32, i32* %41, align 4
  %1662 = shl i32 %1661, 25
  %1663 = lshr i32 %1661, 7
  %1664 = or i32 %1662, %1663
  %1665 = shl i32 %1661, 14
  %1666 = lshr i32 %1661, 18
  %1667 = or i32 %1665, %1666
  %1668 = lshr i32 %1661, 3
  %1669 = xor i32 %1667, %1668
  %1670 = xor i32 %1669, %1664
  %1671 = add i32 %1602, %1660
  %1672 = add i32 %1671, %1659
  %1673 = add i32 %1672, %1670
  store i32 %1673, i32* %40, align 16
  %1674 = add i32 %1673, 666307205
  %1675 = add i32 %1674, %1442
  %1676 = add i32 %1675, %1650
  %1677 = add i32 %1676, %1647
  %1678 = add i32 %1677, %1443
  %1679 = add i32 %1636, %1677
  %1680 = shl i32 %1679, 30
  %1681 = lshr i32 %1679, 2
  %1682 = or i32 %1680, %1681
  %1683 = shl i32 %1679, 19
  %1684 = lshr i32 %1679, 13
  %1685 = or i32 %1683, %1684
  %1686 = xor i32 %1682, %1685
  %1687 = shl i32 %1679, 10
  %1688 = lshr i32 %1679, 22
  %1689 = or i32 %1687, %1688
  %1690 = xor i32 %1686, %1689
  %1691 = and i32 %1679, %1620
  %1692 = or i32 %1679, %1620
  %1693 = and i32 %1692, %1561
  %1694 = or i32 %1693, %1691
  %1695 = add i32 %1690, %1694
  %1696 = shl i32 %1678, 26
  %1697 = lshr i32 %1678, 6
  %1698 = or i32 %1696, %1697
  %1699 = shl i32 %1678, 21
  %1700 = lshr i32 %1678, 11
  %1701 = or i32 %1699, %1700
  %1702 = xor i32 %1698, %1701
  %1703 = shl i32 %1678, 7
  %1704 = lshr i32 %1678, 25
  %1705 = or i32 %1703, %1704
  %1706 = xor i32 %1702, %1705
  %1707 = xor i32 %1619, %1560
  %1708 = and i32 %1678, %1707
  %1709 = xor i32 %1708, %1560
  %1710 = shl i32 %1614, 15
  %1711 = lshr i32 %1614, 17
  %1712 = or i32 %1710, %1711
  %1713 = shl i32 %1614, 13
  %1714 = lshr i32 %1614, 19
  %1715 = or i32 %1713, %1714
  %1716 = lshr i32 %1614, 10
  %1717 = xor i32 %1715, %1716
  %1718 = xor i32 %1717, %1712
  %1719 = load i32, i32* %50, align 8
  %1720 = load i32, i32* %42, align 8
  %1721 = shl i32 %1720, 25
  %1722 = lshr i32 %1720, 7
  %1723 = or i32 %1721, %1722
  %1724 = shl i32 %1720, 14
  %1725 = lshr i32 %1720, 18
  %1726 = or i32 %1724, %1725
  %1727 = lshr i32 %1720, 3
  %1728 = xor i32 %1726, %1727
  %1729 = xor i32 %1728, %1723
  %1730 = add i32 %1661, %1719
  %1731 = add i32 %1730, %1718
  %1732 = add i32 %1731, %1729
  store i32 %1732, i32* %41, align 4
  %1733 = add i32 %1732, 773529912
  %1734 = add i32 %1733, %1501
  %1735 = add i32 %1734, %1709
  %1736 = add i32 %1735, %1706
  %1737 = add i32 %1736, %1502
  %1738 = add i32 %1695, %1736
  %1739 = shl i32 %1738, 30
  %1740 = lshr i32 %1738, 2
  %1741 = or i32 %1739, %1740
  %1742 = shl i32 %1738, 19
  %1743 = lshr i32 %1738, 13
  %1744 = or i32 %1742, %1743
  %1745 = xor i32 %1741, %1744
  %1746 = shl i32 %1738, 10
  %1747 = lshr i32 %1738, 22
  %1748 = or i32 %1746, %1747
  %1749 = xor i32 %1745, %1748
  %1750 = and i32 %1738, %1679
  %1751 = or i32 %1738, %1679
  %1752 = and i32 %1751, %1620
  %1753 = or i32 %1752, %1750
  %1754 = add i32 %1749, %1753
  %1755 = shl i32 %1737, 26
  %1756 = lshr i32 %1737, 6
  %1757 = or i32 %1755, %1756
  %1758 = shl i32 %1737, 21
  %1759 = lshr i32 %1737, 11
  %1760 = or i32 %1758, %1759
  %1761 = xor i32 %1757, %1760
  %1762 = shl i32 %1737, 7
  %1763 = lshr i32 %1737, 25
  %1764 = or i32 %1762, %1763
  %1765 = xor i32 %1761, %1764
  %1766 = xor i32 %1678, %1619
  %1767 = and i32 %1737, %1766
  %1768 = xor i32 %1767, %1619
  %1769 = shl i32 %1673, 15
  %1770 = lshr i32 %1673, 17
  %1771 = or i32 %1769, %1770
  %1772 = shl i32 %1673, 13
  %1773 = lshr i32 %1673, 19
  %1774 = or i32 %1772, %1773
  %1775 = lshr i32 %1673, 10
  %1776 = xor i32 %1774, %1775
  %1777 = xor i32 %1776, %1771
  %1778 = load i32, i32* %51, align 4
  %1779 = load i32, i32* %43, align 4
  %1780 = shl i32 %1779, 25
  %1781 = lshr i32 %1779, 7
  %1782 = or i32 %1780, %1781
  %1783 = shl i32 %1779, 14
  %1784 = lshr i32 %1779, 18
  %1785 = or i32 %1783, %1784
  %1786 = lshr i32 %1779, 3
  %1787 = xor i32 %1785, %1786
  %1788 = xor i32 %1787, %1782
  %1789 = add i32 %1720, %1778
  %1790 = add i32 %1789, %1777
  %1791 = add i32 %1790, %1788
  store i32 %1791, i32* %42, align 8
  %1792 = add i32 %1791, 1294757372
  %1793 = add i32 %1792, %1560
  %1794 = add i32 %1793, %1768
  %1795 = add i32 %1794, %1765
  %1796 = add i32 %1795, %1561
  %1797 = add i32 %1754, %1795
  %1798 = shl i32 %1797, 30
  %1799 = lshr i32 %1797, 2
  %1800 = or i32 %1798, %1799
  %1801 = shl i32 %1797, 19
  %1802 = lshr i32 %1797, 13
  %1803 = or i32 %1801, %1802
  %1804 = xor i32 %1800, %1803
  %1805 = shl i32 %1797, 10
  %1806 = lshr i32 %1797, 22
  %1807 = or i32 %1805, %1806
  %1808 = xor i32 %1804, %1807
  %1809 = and i32 %1797, %1738
  %1810 = or i32 %1797, %1738
  %1811 = and i32 %1810, %1679
  %1812 = or i32 %1811, %1809
  %1813 = add i32 %1808, %1812
  %1814 = shl i32 %1796, 26
  %1815 = lshr i32 %1796, 6
  %1816 = or i32 %1814, %1815
  %1817 = shl i32 %1796, 21
  %1818 = lshr i32 %1796, 11
  %1819 = or i32 %1817, %1818
  %1820 = xor i32 %1816, %1819
  %1821 = shl i32 %1796, 7
  %1822 = lshr i32 %1796, 25
  %1823 = or i32 %1821, %1822
  %1824 = xor i32 %1820, %1823
  %1825 = xor i32 %1737, %1678
  %1826 = and i32 %1796, %1825
  %1827 = xor i32 %1826, %1678
  %1828 = shl i32 %1732, 15
  %1829 = lshr i32 %1732, 17
  %1830 = or i32 %1828, %1829
  %1831 = shl i32 %1732, 13
  %1832 = lshr i32 %1732, 19
  %1833 = or i32 %1831, %1832
  %1834 = lshr i32 %1732, 10
  %1835 = xor i32 %1833, %1834
  %1836 = xor i32 %1835, %1830
  %1837 = load i32, i32* %52, align 16
  %1838 = load i32, i32* %44, align 16
  %1839 = shl i32 %1838, 25
  %1840 = lshr i32 %1838, 7
  %1841 = or i32 %1839, %1840
  %1842 = shl i32 %1838, 14
  %1843 = lshr i32 %1838, 18
  %1844 = or i32 %1842, %1843
  %1845 = lshr i32 %1838, 3
  %1846 = xor i32 %1844, %1845
  %1847 = xor i32 %1846, %1841
  %1848 = add i32 %1779, %1837
  %1849 = add i32 %1848, %1836
  %1850 = add i32 %1849, %1847
  store i32 %1850, i32* %43, align 4
  %1851 = add i32 %1850, 1396182291
  %1852 = add i32 %1851, %1619
  %1853 = add i32 %1852, %1827
  %1854 = add i32 %1853, %1824
  %1855 = add i32 %1854, %1620
  %1856 = add i32 %1813, %1854
  %1857 = shl i32 %1856, 30
  %1858 = lshr i32 %1856, 2
  %1859 = or i32 %1857, %1858
  %1860 = shl i32 %1856, 19
  %1861 = lshr i32 %1856, 13
  %1862 = or i32 %1860, %1861
  %1863 = xor i32 %1859, %1862
  %1864 = shl i32 %1856, 10
  %1865 = lshr i32 %1856, 22
  %1866 = or i32 %1864, %1865
  %1867 = xor i32 %1863, %1866
  %1868 = and i32 %1856, %1797
  %1869 = or i32 %1856, %1797
  %1870 = and i32 %1869, %1738
  %1871 = or i32 %1870, %1868
  %1872 = add i32 %1867, %1871
  %1873 = shl i32 %1855, 26
  %1874 = lshr i32 %1855, 6
  %1875 = or i32 %1873, %1874
  %1876 = shl i32 %1855, 21
  %1877 = lshr i32 %1855, 11
  %1878 = or i32 %1876, %1877
  %1879 = xor i32 %1875, %1878
  %1880 = shl i32 %1855, 7
  %1881 = lshr i32 %1855, 25
  %1882 = or i32 %1880, %1881
  %1883 = xor i32 %1879, %1882
  %1884 = xor i32 %1796, %1737
  %1885 = and i32 %1855, %1884
  %1886 = xor i32 %1885, %1737
  %1887 = shl i32 %1791, 15
  %1888 = lshr i32 %1791, 17
  %1889 = or i32 %1887, %1888
  %1890 = shl i32 %1791, 13
  %1891 = lshr i32 %1791, 19
  %1892 = or i32 %1890, %1891
  %1893 = lshr i32 %1791, 10
  %1894 = xor i32 %1892, %1893
  %1895 = xor i32 %1894, %1889
  %1896 = load i32, i32* %53, align 4
  %1897 = load i32, i32* %45, align 4
  %1898 = shl i32 %1897, 25
  %1899 = lshr i32 %1897, 7
  %1900 = or i32 %1898, %1899
  %1901 = shl i32 %1897, 14
  %1902 = lshr i32 %1897, 18
  %1903 = or i32 %1901, %1902
  %1904 = lshr i32 %1897, 3
  %1905 = xor i32 %1903, %1904
  %1906 = xor i32 %1905, %1900
  %1907 = add i32 %1838, %1896
  %1908 = add i32 %1907, %1895
  %1909 = add i32 %1908, %1906
  store i32 %1909, i32* %44, align 16
  %1910 = add i32 %1909, 1695183700
  %1911 = add i32 %1910, %1678
  %1912 = add i32 %1911, %1886
  %1913 = add i32 %1912, %1883
  %1914 = add i32 %1913, %1679
  %1915 = add i32 %1872, %1913
  %1916 = shl i32 %1915, 30
  %1917 = lshr i32 %1915, 2
  %1918 = or i32 %1916, %1917
  %1919 = shl i32 %1915, 19
  %1920 = lshr i32 %1915, 13
  %1921 = or i32 %1919, %1920
  %1922 = xor i32 %1918, %1921
  %1923 = shl i32 %1915, 10
  %1924 = lshr i32 %1915, 22
  %1925 = or i32 %1923, %1924
  %1926 = xor i32 %1922, %1925
  %1927 = and i32 %1915, %1856
  %1928 = or i32 %1915, %1856
  %1929 = and i32 %1928, %1797
  %1930 = or i32 %1929, %1927
  %1931 = add i32 %1926, %1930
  %1932 = shl i32 %1914, 26
  %1933 = lshr i32 %1914, 6
  %1934 = or i32 %1932, %1933
  %1935 = shl i32 %1914, 21
  %1936 = lshr i32 %1914, 11
  %1937 = or i32 %1935, %1936
  %1938 = xor i32 %1934, %1937
  %1939 = shl i32 %1914, 7
  %1940 = lshr i32 %1914, 25
  %1941 = or i32 %1939, %1940
  %1942 = xor i32 %1938, %1941
  %1943 = xor i32 %1855, %1796
  %1944 = and i32 %1914, %1943
  %1945 = xor i32 %1944, %1796
  %1946 = shl i32 %1850, 15
  %1947 = lshr i32 %1850, 17
  %1948 = or i32 %1946, %1947
  %1949 = shl i32 %1850, 13
  %1950 = lshr i32 %1850, 19
  %1951 = or i32 %1949, %1950
  %1952 = lshr i32 %1850, 10
  %1953 = xor i32 %1951, %1952
  %1954 = xor i32 %1953, %1948
  %1955 = load i32, i32* %54, align 8
  %1956 = load i32, i32* %46, align 8
  %1957 = shl i32 %1956, 25
  %1958 = lshr i32 %1956, 7
  %1959 = or i32 %1957, %1958
  %1960 = shl i32 %1956, 14
  %1961 = lshr i32 %1956, 18
  %1962 = or i32 %1960, %1961
  %1963 = lshr i32 %1956, 3
  %1964 = xor i32 %1962, %1963
  %1965 = xor i32 %1964, %1959
  %1966 = add i32 %1897, %1955
  %1967 = add i32 %1966, %1954
  %1968 = add i32 %1967, %1965
  store i32 %1968, i32* %45, align 4
  %1969 = add i32 %1968, 1986661051
  %1970 = add i32 %1969, %1737
  %1971 = add i32 %1970, %1945
  %1972 = add i32 %1971, %1942
  %1973 = add i32 %1972, %1738
  %1974 = add i32 %1931, %1972
  %1975 = shl i32 %1974, 30
  %1976 = lshr i32 %1974, 2
  %1977 = or i32 %1975, %1976
  %1978 = shl i32 %1974, 19
  %1979 = lshr i32 %1974, 13
  %1980 = or i32 %1978, %1979
  %1981 = xor i32 %1977, %1980
  %1982 = shl i32 %1974, 10
  %1983 = lshr i32 %1974, 22
  %1984 = or i32 %1982, %1983
  %1985 = xor i32 %1981, %1984
  %1986 = and i32 %1974, %1915
  %1987 = or i32 %1974, %1915
  %1988 = and i32 %1987, %1856
  %1989 = or i32 %1988, %1986
  %1990 = add i32 %1985, %1989
  %1991 = shl i32 %1973, 26
  %1992 = lshr i32 %1973, 6
  %1993 = or i32 %1991, %1992
  %1994 = shl i32 %1973, 21
  %1995 = lshr i32 %1973, 11
  %1996 = or i32 %1994, %1995
  %1997 = xor i32 %1993, %1996
  %1998 = shl i32 %1973, 7
  %1999 = lshr i32 %1973, 25
  %2000 = or i32 %1998, %1999
  %2001 = xor i32 %1997, %2000
  %2002 = xor i32 %1914, %1855
  %2003 = and i32 %1973, %2002
  %2004 = xor i32 %2003, %1855
  %2005 = shl i32 %1909, 15
  %2006 = lshr i32 %1909, 17
  %2007 = or i32 %2005, %2006
  %2008 = shl i32 %1909, 13
  %2009 = lshr i32 %1909, 19
  %2010 = or i32 %2008, %2009
  %2011 = lshr i32 %1909, 10
  %2012 = xor i32 %2010, %2011
  %2013 = xor i32 %2012, %2007
  %2014 = load i32, i32* %55, align 4
  %2015 = load i32, i32* %47, align 4
  %2016 = shl i32 %2015, 25
  %2017 = lshr i32 %2015, 7
  %2018 = or i32 %2016, %2017
  %2019 = shl i32 %2015, 14
  %2020 = lshr i32 %2015, 18
  %2021 = or i32 %2019, %2020
  %2022 = lshr i32 %2015, 3
  %2023 = xor i32 %2021, %2022
  %2024 = xor i32 %2023, %2018
  %2025 = add i32 %1956, %2014
  %2026 = add i32 %2025, %2013
  %2027 = add i32 %2026, %2024
  store i32 %2027, i32* %46, align 8
  %2028 = add i32 %2027, -2117940946
  %2029 = add i32 %2028, %1796
  %2030 = add i32 %2029, %2004
  %2031 = add i32 %2030, %2001
  %2032 = add i32 %2031, %1797
  %2033 = add i32 %1990, %2031
  %2034 = shl i32 %2033, 30
  %2035 = lshr i32 %2033, 2
  %2036 = or i32 %2034, %2035
  %2037 = shl i32 %2033, 19
  %2038 = lshr i32 %2033, 13
  %2039 = or i32 %2037, %2038
  %2040 = xor i32 %2036, %2039
  %2041 = shl i32 %2033, 10
  %2042 = lshr i32 %2033, 22
  %2043 = or i32 %2041, %2042
  %2044 = xor i32 %2040, %2043
  %2045 = and i32 %2033, %1974
  %2046 = or i32 %2033, %1974
  %2047 = and i32 %2046, %1915
  %2048 = or i32 %2047, %2045
  %2049 = add i32 %2044, %2048
  %2050 = shl i32 %2032, 26
  %2051 = lshr i32 %2032, 6
  %2052 = or i32 %2050, %2051
  %2053 = shl i32 %2032, 21
  %2054 = lshr i32 %2032, 11
  %2055 = or i32 %2053, %2054
  %2056 = xor i32 %2052, %2055
  %2057 = shl i32 %2032, 7
  %2058 = lshr i32 %2032, 25
  %2059 = or i32 %2057, %2058
  %2060 = xor i32 %2056, %2059
  %2061 = xor i32 %1973, %1914
  %2062 = and i32 %2032, %2061
  %2063 = xor i32 %2062, %1914
  %2064 = shl i32 %1968, 15
  %2065 = lshr i32 %1968, 17
  %2066 = or i32 %2064, %2065
  %2067 = shl i32 %1968, 13
  %2068 = lshr i32 %1968, 19
  %2069 = or i32 %2067, %2068
  %2070 = lshr i32 %1968, 10
  %2071 = xor i32 %2069, %2070
  %2072 = xor i32 %2071, %2066
  %2073 = load i32, i32* %40, align 16
  %2074 = load i32, i32* %48, align 16
  %2075 = shl i32 %2074, 25
  %2076 = lshr i32 %2074, 7
  %2077 = or i32 %2075, %2076
  %2078 = shl i32 %2074, 14
  %2079 = lshr i32 %2074, 18
  %2080 = or i32 %2078, %2079
  %2081 = lshr i32 %2074, 3
  %2082 = xor i32 %2080, %2081
  %2083 = xor i32 %2082, %2077
  %2084 = add i32 %2015, %2073
  %2085 = add i32 %2084, %2072
  %2086 = add i32 %2085, %2083
  store i32 %2086, i32* %47, align 4
  %2087 = add i32 %2086, -1838011259
  %2088 = add i32 %2087, %1855
  %2089 = add i32 %2088, %2063
  %2090 = add i32 %2089, %2060
  %2091 = add i32 %2090, %1856
  %2092 = add i32 %2049, %2090
  %2093 = shl i32 %2092, 30
  %2094 = lshr i32 %2092, 2
  %2095 = or i32 %2093, %2094
  %2096 = shl i32 %2092, 19
  %2097 = lshr i32 %2092, 13
  %2098 = or i32 %2096, %2097
  %2099 = xor i32 %2095, %2098
  %2100 = shl i32 %2092, 10
  %2101 = lshr i32 %2092, 22
  %2102 = or i32 %2100, %2101
  %2103 = xor i32 %2099, %2102
  %2104 = and i32 %2092, %2033
  %2105 = or i32 %2092, %2033
  %2106 = and i32 %2105, %1974
  %2107 = or i32 %2106, %2104
  %2108 = add i32 %2103, %2107
  %2109 = shl i32 %2091, 26
  %2110 = lshr i32 %2091, 6
  %2111 = or i32 %2109, %2110
  %2112 = shl i32 %2091, 21
  %2113 = lshr i32 %2091, 11
  %2114 = or i32 %2112, %2113
  %2115 = xor i32 %2111, %2114
  %2116 = shl i32 %2091, 7
  %2117 = lshr i32 %2091, 25
  %2118 = or i32 %2116, %2117
  %2119 = xor i32 %2115, %2118
  %2120 = xor i32 %2032, %1973
  %2121 = and i32 %2091, %2120
  %2122 = xor i32 %2121, %1973
  %2123 = shl i32 %2027, 15
  %2124 = lshr i32 %2027, 17
  %2125 = or i32 %2123, %2124
  %2126 = shl i32 %2027, 13
  %2127 = lshr i32 %2027, 19
  %2128 = or i32 %2126, %2127
  %2129 = lshr i32 %2027, 10
  %2130 = xor i32 %2128, %2129
  %2131 = xor i32 %2130, %2125
  %2132 = load i32, i32* %41, align 4
  %2133 = load i32, i32* %49, align 4
  %2134 = shl i32 %2133, 25
  %2135 = lshr i32 %2133, 7
  %2136 = or i32 %2134, %2135
  %2137 = shl i32 %2133, 14
  %2138 = lshr i32 %2133, 18
  %2139 = or i32 %2137, %2138
  %2140 = lshr i32 %2133, 3
  %2141 = xor i32 %2139, %2140
  %2142 = xor i32 %2141, %2136
  %2143 = add i32 %2074, %2132
  %2144 = add i32 %2143, %2131
  %2145 = add i32 %2144, %2142
  store i32 %2145, i32* %48, align 16
  %2146 = add i32 %2145, -1564481375
  %2147 = add i32 %2146, %1914
  %2148 = add i32 %2147, %2122
  %2149 = add i32 %2148, %2119
  %2150 = add i32 %2149, %1915
  %2151 = add i32 %2108, %2149
  %2152 = shl i32 %2151, 30
  %2153 = lshr i32 %2151, 2
  %2154 = or i32 %2152, %2153
  %2155 = shl i32 %2151, 19
  %2156 = lshr i32 %2151, 13
  %2157 = or i32 %2155, %2156
  %2158 = xor i32 %2154, %2157
  %2159 = shl i32 %2151, 10
  %2160 = lshr i32 %2151, 22
  %2161 = or i32 %2159, %2160
  %2162 = xor i32 %2158, %2161
  %2163 = and i32 %2151, %2092
  %2164 = or i32 %2151, %2092
  %2165 = and i32 %2164, %2033
  %2166 = or i32 %2165, %2163
  %2167 = add i32 %2162, %2166
  %2168 = shl i32 %2150, 26
  %2169 = lshr i32 %2150, 6
  %2170 = or i32 %2168, %2169
  %2171 = shl i32 %2150, 21
  %2172 = lshr i32 %2150, 11
  %2173 = or i32 %2171, %2172
  %2174 = xor i32 %2170, %2173
  %2175 = shl i32 %2150, 7
  %2176 = lshr i32 %2150, 25
  %2177 = or i32 %2175, %2176
  %2178 = xor i32 %2174, %2177
  %2179 = xor i32 %2091, %2032
  %2180 = and i32 %2150, %2179
  %2181 = xor i32 %2180, %2032
  %2182 = shl i32 %2086, 15
  %2183 = lshr i32 %2086, 17
  %2184 = or i32 %2182, %2183
  %2185 = shl i32 %2086, 13
  %2186 = lshr i32 %2086, 19
  %2187 = or i32 %2185, %2186
  %2188 = lshr i32 %2086, 10
  %2189 = xor i32 %2187, %2188
  %2190 = xor i32 %2189, %2184
  %2191 = load i32, i32* %42, align 8
  %2192 = load i32, i32* %50, align 8
  %2193 = shl i32 %2192, 25
  %2194 = lshr i32 %2192, 7
  %2195 = or i32 %2193, %2194
  %2196 = shl i32 %2192, 14
  %2197 = lshr i32 %2192, 18
  %2198 = or i32 %2196, %2197
  %2199 = lshr i32 %2192, 3
  %2200 = xor i32 %2198, %2199
  %2201 = xor i32 %2200, %2195
  %2202 = add i32 %2133, %2191
  %2203 = add i32 %2202, %2190
  %2204 = add i32 %2203, %2201
  store i32 %2204, i32* %49, align 4
  %2205 = add i32 %2204, -1474664885
  %2206 = add i32 %2205, %1973
  %2207 = add i32 %2206, %2181
  %2208 = add i32 %2207, %2178
  %2209 = add i32 %2208, %1974
  %2210 = add i32 %2167, %2208
  %2211 = shl i32 %2210, 30
  %2212 = lshr i32 %2210, 2
  %2213 = or i32 %2211, %2212
  %2214 = shl i32 %2210, 19
  %2215 = lshr i32 %2210, 13
  %2216 = or i32 %2214, %2215
  %2217 = xor i32 %2213, %2216
  %2218 = shl i32 %2210, 10
  %2219 = lshr i32 %2210, 22
  %2220 = or i32 %2218, %2219
  %2221 = xor i32 %2217, %2220
  %2222 = and i32 %2210, %2151
  %2223 = or i32 %2210, %2151
  %2224 = and i32 %2223, %2092
  %2225 = or i32 %2224, %2222
  %2226 = add i32 %2221, %2225
  %2227 = shl i32 %2209, 26
  %2228 = lshr i32 %2209, 6
  %2229 = or i32 %2227, %2228
  %2230 = shl i32 %2209, 21
  %2231 = lshr i32 %2209, 11
  %2232 = or i32 %2230, %2231
  %2233 = xor i32 %2229, %2232
  %2234 = shl i32 %2209, 7
  %2235 = lshr i32 %2209, 25
  %2236 = or i32 %2234, %2235
  %2237 = xor i32 %2233, %2236
  %2238 = xor i32 %2150, %2091
  %2239 = and i32 %2209, %2238
  %2240 = xor i32 %2239, %2091
  %2241 = shl i32 %2145, 15
  %2242 = lshr i32 %2145, 17
  %2243 = or i32 %2241, %2242
  %2244 = shl i32 %2145, 13
  %2245 = lshr i32 %2145, 19
  %2246 = or i32 %2244, %2245
  %2247 = lshr i32 %2145, 10
  %2248 = xor i32 %2246, %2247
  %2249 = xor i32 %2248, %2243
  %2250 = load i32, i32* %43, align 4
  %2251 = load i32, i32* %51, align 4
  %2252 = shl i32 %2251, 25
  %2253 = lshr i32 %2251, 7
  %2254 = or i32 %2252, %2253
  %2255 = shl i32 %2251, 14
  %2256 = lshr i32 %2251, 18
  %2257 = or i32 %2255, %2256
  %2258 = lshr i32 %2251, 3
  %2259 = xor i32 %2257, %2258
  %2260 = xor i32 %2259, %2254
  %2261 = add i32 %2192, %2250
  %2262 = add i32 %2261, %2249
  %2263 = add i32 %2262, %2260
  store i32 %2263, i32* %50, align 8
  %2264 = add i32 %2263, -1035236496
  %2265 = add i32 %2264, %2032
  %2266 = add i32 %2265, %2240
  %2267 = add i32 %2266, %2237
  %2268 = add i32 %2267, %2033
  %2269 = add i32 %2226, %2267
  %2270 = shl i32 %2269, 30
  %2271 = lshr i32 %2269, 2
  %2272 = or i32 %2270, %2271
  %2273 = shl i32 %2269, 19
  %2274 = lshr i32 %2269, 13
  %2275 = or i32 %2273, %2274
  %2276 = xor i32 %2272, %2275
  %2277 = shl i32 %2269, 10
  %2278 = lshr i32 %2269, 22
  %2279 = or i32 %2277, %2278
  %2280 = xor i32 %2276, %2279
  %2281 = and i32 %2269, %2210
  %2282 = or i32 %2269, %2210
  %2283 = and i32 %2282, %2151
  %2284 = or i32 %2283, %2281
  %2285 = add i32 %2280, %2284
  %2286 = shl i32 %2268, 26
  %2287 = lshr i32 %2268, 6
  %2288 = or i32 %2286, %2287
  %2289 = shl i32 %2268, 21
  %2290 = lshr i32 %2268, 11
  %2291 = or i32 %2289, %2290
  %2292 = xor i32 %2288, %2291
  %2293 = shl i32 %2268, 7
  %2294 = lshr i32 %2268, 25
  %2295 = or i32 %2293, %2294
  %2296 = xor i32 %2292, %2295
  %2297 = xor i32 %2209, %2150
  %2298 = and i32 %2268, %2297
  %2299 = xor i32 %2298, %2150
  %2300 = shl i32 %2204, 15
  %2301 = lshr i32 %2204, 17
  %2302 = or i32 %2300, %2301
  %2303 = shl i32 %2204, 13
  %2304 = lshr i32 %2204, 19
  %2305 = or i32 %2303, %2304
  %2306 = lshr i32 %2204, 10
  %2307 = xor i32 %2305, %2306
  %2308 = xor i32 %2307, %2302
  %2309 = load i32, i32* %44, align 16
  %2310 = load i32, i32* %52, align 16
  %2311 = shl i32 %2310, 25
  %2312 = lshr i32 %2310, 7
  %2313 = or i32 %2311, %2312
  %2314 = shl i32 %2310, 14
  %2315 = lshr i32 %2310, 18
  %2316 = or i32 %2314, %2315
  %2317 = lshr i32 %2310, 3
  %2318 = xor i32 %2316, %2317
  %2319 = xor i32 %2318, %2313
  %2320 = add i32 %2251, %2309
  %2321 = add i32 %2320, %2308
  %2322 = add i32 %2321, %2319
  store i32 %2322, i32* %51, align 4
  %2323 = add i32 %2322, -949202525
  %2324 = add i32 %2323, %2091
  %2325 = add i32 %2324, %2299
  %2326 = add i32 %2325, %2296
  %2327 = add i32 %2326, %2092
  %2328 = add i32 %2285, %2326
  %2329 = shl i32 %2328, 30
  %2330 = lshr i32 %2328, 2
  %2331 = or i32 %2329, %2330
  %2332 = shl i32 %2328, 19
  %2333 = lshr i32 %2328, 13
  %2334 = or i32 %2332, %2333
  %2335 = xor i32 %2331, %2334
  %2336 = shl i32 %2328, 10
  %2337 = lshr i32 %2328, 22
  %2338 = or i32 %2336, %2337
  %2339 = xor i32 %2335, %2338
  %2340 = and i32 %2328, %2269
  %2341 = or i32 %2328, %2269
  %2342 = and i32 %2341, %2210
  %2343 = or i32 %2342, %2340
  %2344 = add i32 %2339, %2343
  %2345 = shl i32 %2327, 26
  %2346 = lshr i32 %2327, 6
  %2347 = or i32 %2345, %2346
  %2348 = shl i32 %2327, 21
  %2349 = lshr i32 %2327, 11
  %2350 = or i32 %2348, %2349
  %2351 = xor i32 %2347, %2350
  %2352 = shl i32 %2327, 7
  %2353 = lshr i32 %2327, 25
  %2354 = or i32 %2352, %2353
  %2355 = xor i32 %2351, %2354
  %2356 = xor i32 %2268, %2209
  %2357 = and i32 %2327, %2356
  %2358 = xor i32 %2357, %2209
  %2359 = shl i32 %2263, 15
  %2360 = lshr i32 %2263, 17
  %2361 = or i32 %2359, %2360
  %2362 = shl i32 %2263, 13
  %2363 = lshr i32 %2263, 19
  %2364 = or i32 %2362, %2363
  %2365 = lshr i32 %2263, 10
  %2366 = xor i32 %2364, %2365
  %2367 = xor i32 %2366, %2361
  %2368 = load i32, i32* %45, align 4
  %2369 = load i32, i32* %53, align 4
  %2370 = shl i32 %2369, 25
  %2371 = lshr i32 %2369, 7
  %2372 = or i32 %2370, %2371
  %2373 = shl i32 %2369, 14
  %2374 = lshr i32 %2369, 18
  %2375 = or i32 %2373, %2374
  %2376 = lshr i32 %2369, 3
  %2377 = xor i32 %2375, %2376
  %2378 = xor i32 %2377, %2372
  %2379 = add i32 %2310, %2368
  %2380 = add i32 %2379, %2367
  %2381 = add i32 %2380, %2378
  store i32 %2381, i32* %52, align 16
  %2382 = add i32 %2381, -778901479
  %2383 = add i32 %2382, %2150
  %2384 = add i32 %2383, %2358
  %2385 = add i32 %2384, %2355
  %2386 = add i32 %2385, %2151
  %2387 = add i32 %2344, %2385
  %2388 = shl i32 %2387, 30
  %2389 = lshr i32 %2387, 2
  %2390 = or i32 %2388, %2389
  %2391 = shl i32 %2387, 19
  %2392 = lshr i32 %2387, 13
  %2393 = or i32 %2391, %2392
  %2394 = xor i32 %2390, %2393
  %2395 = shl i32 %2387, 10
  %2396 = lshr i32 %2387, 22
  %2397 = or i32 %2395, %2396
  %2398 = xor i32 %2394, %2397
  %2399 = and i32 %2387, %2328
  %2400 = or i32 %2387, %2328
  %2401 = and i32 %2400, %2269
  %2402 = or i32 %2401, %2399
  %2403 = add i32 %2398, %2402
  %2404 = shl i32 %2386, 26
  %2405 = lshr i32 %2386, 6
  %2406 = or i32 %2404, %2405
  %2407 = shl i32 %2386, 21
  %2408 = lshr i32 %2386, 11
  %2409 = or i32 %2407, %2408
  %2410 = xor i32 %2406, %2409
  %2411 = shl i32 %2386, 7
  %2412 = lshr i32 %2386, 25
  %2413 = or i32 %2411, %2412
  %2414 = xor i32 %2410, %2413
  %2415 = xor i32 %2327, %2268
  %2416 = and i32 %2386, %2415
  %2417 = xor i32 %2416, %2268
  %2418 = shl i32 %2322, 15
  %2419 = lshr i32 %2322, 17
  %2420 = or i32 %2418, %2419
  %2421 = shl i32 %2322, 13
  %2422 = lshr i32 %2322, 19
  %2423 = or i32 %2421, %2422
  %2424 = lshr i32 %2322, 10
  %2425 = xor i32 %2423, %2424
  %2426 = xor i32 %2425, %2420
  %2427 = load i32, i32* %46, align 8
  %2428 = load i32, i32* %54, align 8
  %2429 = shl i32 %2428, 25
  %2430 = lshr i32 %2428, 7
  %2431 = or i32 %2429, %2430
  %2432 = shl i32 %2428, 14
  %2433 = lshr i32 %2428, 18
  %2434 = or i32 %2432, %2433
  %2435 = lshr i32 %2428, 3
  %2436 = xor i32 %2434, %2435
  %2437 = xor i32 %2436, %2431
  %2438 = add i32 %2369, %2427
  %2439 = add i32 %2438, %2426
  %2440 = add i32 %2439, %2437
  store i32 %2440, i32* %53, align 4
  %2441 = add i32 %2440, -694614492
  %2442 = add i32 %2441, %2209
  %2443 = add i32 %2442, %2417
  %2444 = add i32 %2443, %2414
  %2445 = add i32 %2444, %2210
  %2446 = add i32 %2403, %2444
  %2447 = shl i32 %2446, 30
  %2448 = lshr i32 %2446, 2
  %2449 = or i32 %2447, %2448
  %2450 = shl i32 %2446, 19
  %2451 = lshr i32 %2446, 13
  %2452 = or i32 %2450, %2451
  %2453 = xor i32 %2449, %2452
  %2454 = shl i32 %2446, 10
  %2455 = lshr i32 %2446, 22
  %2456 = or i32 %2454, %2455
  %2457 = xor i32 %2453, %2456
  %2458 = and i32 %2446, %2387
  %2459 = or i32 %2446, %2387
  %2460 = and i32 %2459, %2328
  %2461 = or i32 %2460, %2458
  %2462 = add i32 %2457, %2461
  %2463 = shl i32 %2445, 26
  %2464 = lshr i32 %2445, 6
  %2465 = or i32 %2463, %2464
  %2466 = shl i32 %2445, 21
  %2467 = lshr i32 %2445, 11
  %2468 = or i32 %2466, %2467
  %2469 = xor i32 %2465, %2468
  %2470 = shl i32 %2445, 7
  %2471 = lshr i32 %2445, 25
  %2472 = or i32 %2470, %2471
  %2473 = xor i32 %2469, %2472
  %2474 = xor i32 %2386, %2327
  %2475 = and i32 %2445, %2474
  %2476 = xor i32 %2475, %2327
  %2477 = shl i32 %2381, 15
  %2478 = lshr i32 %2381, 17
  %2479 = or i32 %2477, %2478
  %2480 = shl i32 %2381, 13
  %2481 = lshr i32 %2381, 19
  %2482 = or i32 %2480, %2481
  %2483 = lshr i32 %2381, 10
  %2484 = xor i32 %2482, %2483
  %2485 = xor i32 %2484, %2479
  %2486 = load i32, i32* %47, align 4
  %2487 = load i32, i32* %55, align 4
  %2488 = shl i32 %2487, 25
  %2489 = lshr i32 %2487, 7
  %2490 = or i32 %2488, %2489
  %2491 = shl i32 %2487, 14
  %2492 = lshr i32 %2487, 18
  %2493 = or i32 %2491, %2492
  %2494 = lshr i32 %2487, 3
  %2495 = xor i32 %2493, %2494
  %2496 = xor i32 %2495, %2490
  %2497 = add i32 %2428, %2486
  %2498 = add i32 %2497, %2485
  %2499 = add i32 %2498, %2496
  store i32 %2499, i32* %54, align 8
  %2500 = add i32 %2499, -200395387
  %2501 = add i32 %2500, %2268
  %2502 = add i32 %2501, %2476
  %2503 = add i32 %2502, %2473
  %2504 = add i32 %2503, %2269
  %2505 = add i32 %2462, %2503
  %2506 = shl i32 %2505, 30
  %2507 = lshr i32 %2505, 2
  %2508 = or i32 %2506, %2507
  %2509 = shl i32 %2505, 19
  %2510 = lshr i32 %2505, 13
  %2511 = or i32 %2509, %2510
  %2512 = xor i32 %2508, %2511
  %2513 = shl i32 %2505, 10
  %2514 = lshr i32 %2505, 22
  %2515 = or i32 %2513, %2514
  %2516 = xor i32 %2512, %2515
  %2517 = and i32 %2505, %2446
  %2518 = or i32 %2505, %2446
  %2519 = and i32 %2518, %2387
  %2520 = or i32 %2519, %2517
  %2521 = add i32 %2516, %2520
  %2522 = shl i32 %2504, 26
  %2523 = lshr i32 %2504, 6
  %2524 = or i32 %2522, %2523
  %2525 = shl i32 %2504, 21
  %2526 = lshr i32 %2504, 11
  %2527 = or i32 %2525, %2526
  %2528 = xor i32 %2524, %2527
  %2529 = shl i32 %2504, 7
  %2530 = lshr i32 %2504, 25
  %2531 = or i32 %2529, %2530
  %2532 = xor i32 %2528, %2531
  %2533 = xor i32 %2445, %2386
  %2534 = and i32 %2504, %2533
  %2535 = xor i32 %2534, %2386
  %2536 = shl i32 %2440, 15
  %2537 = lshr i32 %2440, 17
  %2538 = or i32 %2536, %2537
  %2539 = shl i32 %2440, 13
  %2540 = lshr i32 %2440, 19
  %2541 = or i32 %2539, %2540
  %2542 = lshr i32 %2440, 10
  %2543 = xor i32 %2541, %2542
  %2544 = xor i32 %2543, %2538
  %2545 = load i32, i32* %48, align 16
  %2546 = load i32, i32* %40, align 16
  %2547 = shl i32 %2546, 25
  %2548 = lshr i32 %2546, 7
  %2549 = or i32 %2547, %2548
  %2550 = shl i32 %2546, 14
  %2551 = lshr i32 %2546, 18
  %2552 = or i32 %2550, %2551
  %2553 = lshr i32 %2546, 3
  %2554 = xor i32 %2552, %2553
  %2555 = xor i32 %2554, %2549
  %2556 = add i32 %2487, %2545
  %2557 = add i32 %2556, %2544
  %2558 = add i32 %2557, %2555
  store i32 %2558, i32* %55, align 4
  %2559 = add i32 %2558, 275423344
  %2560 = add i32 %2559, %2327
  %2561 = add i32 %2560, %2535
  %2562 = add i32 %2561, %2532
  %2563 = add i32 %2562, %2328
  %2564 = add i32 %2521, %2562
  %2565 = shl i32 %2564, 30
  %2566 = lshr i32 %2564, 2
  %2567 = or i32 %2565, %2566
  %2568 = shl i32 %2564, 19
  %2569 = lshr i32 %2564, 13
  %2570 = or i32 %2568, %2569
  %2571 = xor i32 %2567, %2570
  %2572 = shl i32 %2564, 10
  %2573 = lshr i32 %2564, 22
  %2574 = or i32 %2572, %2573
  %2575 = xor i32 %2571, %2574
  %2576 = and i32 %2564, %2505
  %2577 = or i32 %2564, %2505
  %2578 = and i32 %2577, %2446
  %2579 = or i32 %2578, %2576
  %2580 = add i32 %2575, %2579
  %2581 = shl i32 %2563, 26
  %2582 = lshr i32 %2563, 6
  %2583 = or i32 %2581, %2582
  %2584 = shl i32 %2563, 21
  %2585 = lshr i32 %2563, 11
  %2586 = or i32 %2584, %2585
  %2587 = xor i32 %2583, %2586
  %2588 = shl i32 %2563, 7
  %2589 = lshr i32 %2563, 25
  %2590 = or i32 %2588, %2589
  %2591 = xor i32 %2587, %2590
  %2592 = xor i32 %2504, %2445
  %2593 = and i32 %2563, %2592
  %2594 = xor i32 %2593, %2445
  %2595 = shl i32 %2499, 15
  %2596 = lshr i32 %2499, 17
  %2597 = or i32 %2595, %2596
  %2598 = shl i32 %2499, 13
  %2599 = lshr i32 %2499, 19
  %2600 = or i32 %2598, %2599
  %2601 = lshr i32 %2499, 10
  %2602 = xor i32 %2600, %2601
  %2603 = xor i32 %2602, %2597
  %2604 = load i32, i32* %49, align 4
  %2605 = load i32, i32* %41, align 4
  %2606 = shl i32 %2605, 25
  %2607 = lshr i32 %2605, 7
  %2608 = or i32 %2606, %2607
  %2609 = shl i32 %2605, 14
  %2610 = lshr i32 %2605, 18
  %2611 = or i32 %2609, %2610
  %2612 = lshr i32 %2605, 3
  %2613 = xor i32 %2611, %2612
  %2614 = xor i32 %2613, %2608
  %2615 = add i32 %2546, %2604
  %2616 = add i32 %2615, %2603
  %2617 = add i32 %2616, %2614
  store i32 %2617, i32* %40, align 16
  %2618 = add i32 %2617, 430227734
  %2619 = add i32 %2618, %2386
  %2620 = add i32 %2619, %2594
  %2621 = add i32 %2620, %2591
  %2622 = add i32 %2621, %2387
  %2623 = add i32 %2580, %2621
  %2624 = shl i32 %2623, 30
  %2625 = lshr i32 %2623, 2
  %2626 = or i32 %2624, %2625
  %2627 = shl i32 %2623, 19
  %2628 = lshr i32 %2623, 13
  %2629 = or i32 %2627, %2628
  %2630 = xor i32 %2626, %2629
  %2631 = shl i32 %2623, 10
  %2632 = lshr i32 %2623, 22
  %2633 = or i32 %2631, %2632
  %2634 = xor i32 %2630, %2633
  %2635 = and i32 %2623, %2564
  %2636 = or i32 %2623, %2564
  %2637 = and i32 %2636, %2505
  %2638 = or i32 %2637, %2635
  %2639 = add i32 %2634, %2638
  %2640 = shl i32 %2622, 26
  %2641 = lshr i32 %2622, 6
  %2642 = or i32 %2640, %2641
  %2643 = shl i32 %2622, 21
  %2644 = lshr i32 %2622, 11
  %2645 = or i32 %2643, %2644
  %2646 = xor i32 %2642, %2645
  %2647 = shl i32 %2622, 7
  %2648 = lshr i32 %2622, 25
  %2649 = or i32 %2647, %2648
  %2650 = xor i32 %2646, %2649
  %2651 = xor i32 %2563, %2504
  %2652 = and i32 %2622, %2651
  %2653 = xor i32 %2652, %2504
  %2654 = shl i32 %2558, 15
  %2655 = lshr i32 %2558, 17
  %2656 = or i32 %2654, %2655
  %2657 = shl i32 %2558, 13
  %2658 = lshr i32 %2558, 19
  %2659 = or i32 %2657, %2658
  %2660 = lshr i32 %2558, 10
  %2661 = xor i32 %2659, %2660
  %2662 = xor i32 %2661, %2656
  %2663 = load i32, i32* %50, align 8
  %2664 = load i32, i32* %42, align 8
  %2665 = shl i32 %2664, 25
  %2666 = lshr i32 %2664, 7
  %2667 = or i32 %2665, %2666
  %2668 = shl i32 %2664, 14
  %2669 = lshr i32 %2664, 18
  %2670 = or i32 %2668, %2669
  %2671 = lshr i32 %2664, 3
  %2672 = xor i32 %2670, %2671
  %2673 = xor i32 %2672, %2667
  %2674 = add i32 %2605, %2663
  %2675 = add i32 %2674, %2662
  %2676 = add i32 %2675, %2673
  store i32 %2676, i32* %41, align 4
  %2677 = add i32 %2676, 506948616
  %2678 = add i32 %2677, %2445
  %2679 = add i32 %2678, %2653
  %2680 = add i32 %2679, %2650
  %2681 = add i32 %2680, %2446
  %2682 = add i32 %2639, %2680
  %2683 = shl i32 %2682, 30
  %2684 = lshr i32 %2682, 2
  %2685 = or i32 %2683, %2684
  %2686 = shl i32 %2682, 19
  %2687 = lshr i32 %2682, 13
  %2688 = or i32 %2686, %2687
  %2689 = xor i32 %2685, %2688
  %2690 = shl i32 %2682, 10
  %2691 = lshr i32 %2682, 22
  %2692 = or i32 %2690, %2691
  %2693 = xor i32 %2689, %2692
  %2694 = and i32 %2682, %2623
  %2695 = or i32 %2682, %2623
  %2696 = and i32 %2695, %2564
  %2697 = or i32 %2696, %2694
  %2698 = add i32 %2693, %2697
  %2699 = shl i32 %2681, 26
  %2700 = lshr i32 %2681, 6
  %2701 = or i32 %2699, %2700
  %2702 = shl i32 %2681, 21
  %2703 = lshr i32 %2681, 11
  %2704 = or i32 %2702, %2703
  %2705 = xor i32 %2701, %2704
  %2706 = shl i32 %2681, 7
  %2707 = lshr i32 %2681, 25
  %2708 = or i32 %2706, %2707
  %2709 = xor i32 %2705, %2708
  %2710 = xor i32 %2622, %2563
  %2711 = and i32 %2681, %2710
  %2712 = xor i32 %2711, %2563
  %2713 = shl i32 %2617, 15
  %2714 = lshr i32 %2617, 17
  %2715 = or i32 %2713, %2714
  %2716 = shl i32 %2617, 13
  %2717 = lshr i32 %2617, 19
  %2718 = or i32 %2716, %2717
  %2719 = lshr i32 %2617, 10
  %2720 = xor i32 %2718, %2719
  %2721 = xor i32 %2720, %2715
  %2722 = load i32, i32* %51, align 4
  %2723 = load i32, i32* %43, align 4
  %2724 = shl i32 %2723, 25
  %2725 = lshr i32 %2723, 7
  %2726 = or i32 %2724, %2725
  %2727 = shl i32 %2723, 14
  %2728 = lshr i32 %2723, 18
  %2729 = or i32 %2727, %2728
  %2730 = lshr i32 %2723, 3
  %2731 = xor i32 %2729, %2730
  %2732 = xor i32 %2731, %2726
  %2733 = add i32 %2664, %2722
  %2734 = add i32 %2733, %2721
  %2735 = add i32 %2734, %2732
  store i32 %2735, i32* %42, align 8
  %2736 = add i32 %2735, 659060556
  %2737 = add i32 %2736, %2504
  %2738 = add i32 %2737, %2712
  %2739 = add i32 %2738, %2709
  %2740 = add i32 %2739, %2505
  %2741 = add i32 %2698, %2739
  %2742 = shl i32 %2741, 30
  %2743 = lshr i32 %2741, 2
  %2744 = or i32 %2742, %2743
  %2745 = shl i32 %2741, 19
  %2746 = lshr i32 %2741, 13
  %2747 = or i32 %2745, %2746
  %2748 = xor i32 %2744, %2747
  %2749 = shl i32 %2741, 10
  %2750 = lshr i32 %2741, 22
  %2751 = or i32 %2749, %2750
  %2752 = xor i32 %2748, %2751
  %2753 = and i32 %2741, %2682
  %2754 = or i32 %2741, %2682
  %2755 = and i32 %2754, %2623
  %2756 = or i32 %2755, %2753
  %2757 = add i32 %2752, %2756
  %2758 = shl i32 %2740, 26
  %2759 = lshr i32 %2740, 6
  %2760 = or i32 %2758, %2759
  %2761 = shl i32 %2740, 21
  %2762 = lshr i32 %2740, 11
  %2763 = or i32 %2761, %2762
  %2764 = xor i32 %2760, %2763
  %2765 = shl i32 %2740, 7
  %2766 = lshr i32 %2740, 25
  %2767 = or i32 %2765, %2766
  %2768 = xor i32 %2764, %2767
  %2769 = xor i32 %2681, %2622
  %2770 = and i32 %2740, %2769
  %2771 = xor i32 %2770, %2622
  %2772 = shl i32 %2676, 15
  %2773 = lshr i32 %2676, 17
  %2774 = or i32 %2772, %2773
  %2775 = shl i32 %2676, 13
  %2776 = lshr i32 %2676, 19
  %2777 = or i32 %2775, %2776
  %2778 = lshr i32 %2676, 10
  %2779 = xor i32 %2777, %2778
  %2780 = xor i32 %2779, %2774
  %2781 = load i32, i32* %52, align 16
  %2782 = load i32, i32* %44, align 16
  %2783 = shl i32 %2782, 25
  %2784 = lshr i32 %2782, 7
  %2785 = or i32 %2783, %2784
  %2786 = shl i32 %2782, 14
  %2787 = lshr i32 %2782, 18
  %2788 = or i32 %2786, %2787
  %2789 = lshr i32 %2782, 3
  %2790 = xor i32 %2788, %2789
  %2791 = xor i32 %2790, %2785
  %2792 = add i32 %2723, %2781
  %2793 = add i32 %2792, %2780
  %2794 = add i32 %2793, %2791
  store i32 %2794, i32* %43, align 4
  %2795 = add i32 %2794, 883997877
  %2796 = add i32 %2795, %2563
  %2797 = add i32 %2796, %2771
  %2798 = add i32 %2797, %2768
  %2799 = add i32 %2798, %2564
  %2800 = add i32 %2757, %2798
  %2801 = shl i32 %2800, 30
  %2802 = lshr i32 %2800, 2
  %2803 = or i32 %2801, %2802
  %2804 = shl i32 %2800, 19
  %2805 = lshr i32 %2800, 13
  %2806 = or i32 %2804, %2805
  %2807 = xor i32 %2803, %2806
  %2808 = shl i32 %2800, 10
  %2809 = lshr i32 %2800, 22
  %2810 = or i32 %2808, %2809
  %2811 = xor i32 %2807, %2810
  %2812 = and i32 %2800, %2741
  %2813 = or i32 %2800, %2741
  %2814 = and i32 %2813, %2682
  %2815 = or i32 %2814, %2812
  %2816 = add i32 %2811, %2815
  %2817 = shl i32 %2799, 26
  %2818 = lshr i32 %2799, 6
  %2819 = or i32 %2817, %2818
  %2820 = shl i32 %2799, 21
  %2821 = lshr i32 %2799, 11
  %2822 = or i32 %2820, %2821
  %2823 = xor i32 %2819, %2822
  %2824 = shl i32 %2799, 7
  %2825 = lshr i32 %2799, 25
  %2826 = or i32 %2824, %2825
  %2827 = xor i32 %2823, %2826
  %2828 = xor i32 %2740, %2681
  %2829 = and i32 %2799, %2828
  %2830 = xor i32 %2829, %2681
  %2831 = shl i32 %2735, 15
  %2832 = lshr i32 %2735, 17
  %2833 = or i32 %2831, %2832
  %2834 = shl i32 %2735, 13
  %2835 = lshr i32 %2735, 19
  %2836 = or i32 %2834, %2835
  %2837 = lshr i32 %2735, 10
  %2838 = xor i32 %2836, %2837
  %2839 = xor i32 %2838, %2833
  %2840 = load i32, i32* %53, align 4
  %2841 = load i32, i32* %45, align 4
  %2842 = shl i32 %2841, 25
  %2843 = lshr i32 %2841, 7
  %2844 = or i32 %2842, %2843
  %2845 = shl i32 %2841, 14
  %2846 = lshr i32 %2841, 18
  %2847 = or i32 %2845, %2846
  %2848 = lshr i32 %2841, 3
  %2849 = xor i32 %2847, %2848
  %2850 = xor i32 %2849, %2844
  %2851 = add i32 %2782, %2840
  %2852 = add i32 %2851, %2839
  %2853 = add i32 %2852, %2850
  store i32 %2853, i32* %44, align 16
  %2854 = add i32 %2853, 958139571
  %2855 = add i32 %2854, %2622
  %2856 = add i32 %2855, %2830
  %2857 = add i32 %2856, %2827
  %2858 = add i32 %2857, %2623
  %2859 = add i32 %2816, %2857
  %2860 = shl i32 %2859, 30
  %2861 = lshr i32 %2859, 2
  %2862 = or i32 %2860, %2861
  %2863 = shl i32 %2859, 19
  %2864 = lshr i32 %2859, 13
  %2865 = or i32 %2863, %2864
  %2866 = xor i32 %2862, %2865
  %2867 = shl i32 %2859, 10
  %2868 = lshr i32 %2859, 22
  %2869 = or i32 %2867, %2868
  %2870 = xor i32 %2866, %2869
  %2871 = and i32 %2859, %2800
  %2872 = or i32 %2859, %2800
  %2873 = and i32 %2872, %2741
  %2874 = or i32 %2873, %2871
  %2875 = add i32 %2870, %2874
  %2876 = shl i32 %2858, 26
  %2877 = lshr i32 %2858, 6
  %2878 = or i32 %2876, %2877
  %2879 = shl i32 %2858, 21
  %2880 = lshr i32 %2858, 11
  %2881 = or i32 %2879, %2880
  %2882 = xor i32 %2878, %2881
  %2883 = shl i32 %2858, 7
  %2884 = lshr i32 %2858, 25
  %2885 = or i32 %2883, %2884
  %2886 = xor i32 %2882, %2885
  %2887 = xor i32 %2799, %2740
  %2888 = and i32 %2858, %2887
  %2889 = xor i32 %2888, %2740
  %2890 = shl i32 %2794, 15
  %2891 = lshr i32 %2794, 17
  %2892 = or i32 %2890, %2891
  %2893 = shl i32 %2794, 13
  %2894 = lshr i32 %2794, 19
  %2895 = or i32 %2893, %2894
  %2896 = lshr i32 %2794, 10
  %2897 = xor i32 %2895, %2896
  %2898 = xor i32 %2897, %2892
  %2899 = load i32, i32* %54, align 8
  %2900 = load i32, i32* %46, align 8
  %2901 = shl i32 %2900, 25
  %2902 = lshr i32 %2900, 7
  %2903 = or i32 %2901, %2902
  %2904 = shl i32 %2900, 14
  %2905 = lshr i32 %2900, 18
  %2906 = or i32 %2904, %2905
  %2907 = lshr i32 %2900, 3
  %2908 = xor i32 %2906, %2907
  %2909 = xor i32 %2908, %2903
  %2910 = add i32 %2841, %2899
  %2911 = add i32 %2910, %2898
  %2912 = add i32 %2911, %2909
  store i32 %2912, i32* %45, align 4
  %2913 = add i32 %2912, 1322822218
  %2914 = add i32 %2913, %2681
  %2915 = add i32 %2914, %2889
  %2916 = add i32 %2915, %2886
  %2917 = add i32 %2916, %2682
  %2918 = add i32 %2875, %2916
  %2919 = shl i32 %2918, 30
  %2920 = lshr i32 %2918, 2
  %2921 = or i32 %2919, %2920
  %2922 = shl i32 %2918, 19
  %2923 = lshr i32 %2918, 13
  %2924 = or i32 %2922, %2923
  %2925 = xor i32 %2921, %2924
  %2926 = shl i32 %2918, 10
  %2927 = lshr i32 %2918, 22
  %2928 = or i32 %2926, %2927
  %2929 = xor i32 %2925, %2928
  %2930 = and i32 %2918, %2859
  %2931 = or i32 %2918, %2859
  %2932 = and i32 %2931, %2800
  %2933 = or i32 %2932, %2930
  %2934 = add i32 %2929, %2933
  %2935 = shl i32 %2917, 26
  %2936 = lshr i32 %2917, 6
  %2937 = or i32 %2935, %2936
  %2938 = shl i32 %2917, 21
  %2939 = lshr i32 %2917, 11
  %2940 = or i32 %2938, %2939
  %2941 = xor i32 %2937, %2940
  %2942 = shl i32 %2917, 7
  %2943 = lshr i32 %2917, 25
  %2944 = or i32 %2942, %2943
  %2945 = xor i32 %2941, %2944
  %2946 = xor i32 %2858, %2799
  %2947 = and i32 %2917, %2946
  %2948 = xor i32 %2947, %2799
  %2949 = shl i32 %2853, 15
  %2950 = lshr i32 %2853, 17
  %2951 = or i32 %2949, %2950
  %2952 = shl i32 %2853, 13
  %2953 = lshr i32 %2853, 19
  %2954 = or i32 %2952, %2953
  %2955 = lshr i32 %2853, 10
  %2956 = xor i32 %2954, %2955
  %2957 = xor i32 %2956, %2951
  %2958 = load i32, i32* %55, align 4
  %2959 = load i32, i32* %47, align 4
  %2960 = shl i32 %2959, 25
  %2961 = lshr i32 %2959, 7
  %2962 = or i32 %2960, %2961
  %2963 = shl i32 %2959, 14
  %2964 = lshr i32 %2959, 18
  %2965 = or i32 %2963, %2964
  %2966 = lshr i32 %2959, 3
  %2967 = xor i32 %2965, %2966
  %2968 = xor i32 %2967, %2962
  %2969 = add i32 %2900, %2958
  %2970 = add i32 %2969, %2957
  %2971 = add i32 %2970, %2968
  store i32 %2971, i32* %46, align 8
  %2972 = add i32 %2971, 1537002063
  %2973 = add i32 %2972, %2740
  %2974 = add i32 %2973, %2948
  %2975 = add i32 %2974, %2945
  %2976 = add i32 %2975, %2741
  %2977 = add i32 %2934, %2975
  %2978 = shl i32 %2977, 30
  %2979 = lshr i32 %2977, 2
  %2980 = or i32 %2978, %2979
  %2981 = shl i32 %2977, 19
  %2982 = lshr i32 %2977, 13
  %2983 = or i32 %2981, %2982
  %2984 = xor i32 %2980, %2983
  %2985 = shl i32 %2977, 10
  %2986 = lshr i32 %2977, 22
  %2987 = or i32 %2985, %2986
  %2988 = xor i32 %2984, %2987
  %2989 = and i32 %2977, %2918
  %2990 = or i32 %2977, %2918
  %2991 = and i32 %2990, %2859
  %2992 = or i32 %2991, %2989
  %2993 = add i32 %2988, %2992
  %2994 = shl i32 %2976, 26
  %2995 = lshr i32 %2976, 6
  %2996 = or i32 %2994, %2995
  %2997 = shl i32 %2976, 21
  %2998 = lshr i32 %2976, 11
  %2999 = or i32 %2997, %2998
  %3000 = xor i32 %2996, %2999
  %3001 = shl i32 %2976, 7
  %3002 = lshr i32 %2976, 25
  %3003 = or i32 %3001, %3002
  %3004 = xor i32 %3000, %3003
  %3005 = xor i32 %2917, %2858
  %3006 = and i32 %2976, %3005
  %3007 = xor i32 %3006, %2858
  %3008 = shl i32 %2912, 15
  %3009 = lshr i32 %2912, 17
  %3010 = or i32 %3008, %3009
  %3011 = shl i32 %2912, 13
  %3012 = lshr i32 %2912, 19
  %3013 = or i32 %3011, %3012
  %3014 = lshr i32 %2912, 10
  %3015 = xor i32 %3013, %3014
  %3016 = xor i32 %3015, %3010
  %3017 = load i32, i32* %40, align 16
  %3018 = load i32, i32* %48, align 16
  %3019 = shl i32 %3018, 25
  %3020 = lshr i32 %3018, 7
  %3021 = or i32 %3019, %3020
  %3022 = shl i32 %3018, 14
  %3023 = lshr i32 %3018, 18
  %3024 = or i32 %3022, %3023
  %3025 = lshr i32 %3018, 3
  %3026 = xor i32 %3024, %3025
  %3027 = xor i32 %3026, %3021
  %3028 = add i32 %2959, %3017
  %3029 = add i32 %3028, %3016
  %3030 = add i32 %3029, %3027
  store i32 %3030, i32* %47, align 4
  %3031 = add i32 %3030, 1747873779
  %3032 = add i32 %3031, %2799
  %3033 = add i32 %3032, %3007
  %3034 = add i32 %3033, %3004
  %3035 = add i32 %3034, %2800
  %3036 = add i32 %2993, %3034
  %3037 = shl i32 %3036, 30
  %3038 = lshr i32 %3036, 2
  %3039 = or i32 %3037, %3038
  %3040 = shl i32 %3036, 19
  %3041 = lshr i32 %3036, 13
  %3042 = or i32 %3040, %3041
  %3043 = xor i32 %3039, %3042
  %3044 = shl i32 %3036, 10
  %3045 = lshr i32 %3036, 22
  %3046 = or i32 %3044, %3045
  %3047 = xor i32 %3043, %3046
  %3048 = and i32 %3036, %2977
  %3049 = or i32 %3036, %2977
  %3050 = and i32 %3049, %2918
  %3051 = or i32 %3050, %3048
  %3052 = add i32 %3047, %3051
  %3053 = shl i32 %3035, 26
  %3054 = lshr i32 %3035, 6
  %3055 = or i32 %3053, %3054
  %3056 = shl i32 %3035, 21
  %3057 = lshr i32 %3035, 11
  %3058 = or i32 %3056, %3057
  %3059 = xor i32 %3055, %3058
  %3060 = shl i32 %3035, 7
  %3061 = lshr i32 %3035, 25
  %3062 = or i32 %3060, %3061
  %3063 = xor i32 %3059, %3062
  %3064 = xor i32 %2976, %2917
  %3065 = and i32 %3035, %3064
  %3066 = xor i32 %3065, %2917
  %3067 = shl i32 %2971, 15
  %3068 = lshr i32 %2971, 17
  %3069 = or i32 %3067, %3068
  %3070 = shl i32 %2971, 13
  %3071 = lshr i32 %2971, 19
  %3072 = or i32 %3070, %3071
  %3073 = lshr i32 %2971, 10
  %3074 = xor i32 %3072, %3073
  %3075 = xor i32 %3074, %3069
  %3076 = load i32, i32* %41, align 4
  %3077 = load i32, i32* %49, align 4
  %3078 = shl i32 %3077, 25
  %3079 = lshr i32 %3077, 7
  %3080 = or i32 %3078, %3079
  %3081 = shl i32 %3077, 14
  %3082 = lshr i32 %3077, 18
  %3083 = or i32 %3081, %3082
  %3084 = lshr i32 %3077, 3
  %3085 = xor i32 %3083, %3084
  %3086 = xor i32 %3085, %3080
  %3087 = add i32 %3018, %3076
  %3088 = add i32 %3087, %3075
  %3089 = add i32 %3088, %3086
  store i32 %3089, i32* %48, align 16
  %3090 = add i32 %3089, 1955562222
  %3091 = add i32 %3090, %2858
  %3092 = add i32 %3091, %3066
  %3093 = add i32 %3092, %3063
  %3094 = add i32 %3093, %2859
  %3095 = add i32 %3052, %3093
  %3096 = shl i32 %3095, 30
  %3097 = lshr i32 %3095, 2
  %3098 = or i32 %3096, %3097
  %3099 = shl i32 %3095, 19
  %3100 = lshr i32 %3095, 13
  %3101 = or i32 %3099, %3100
  %3102 = xor i32 %3098, %3101
  %3103 = shl i32 %3095, 10
  %3104 = lshr i32 %3095, 22
  %3105 = or i32 %3103, %3104
  %3106 = xor i32 %3102, %3105
  %3107 = and i32 %3095, %3036
  %3108 = or i32 %3095, %3036
  %3109 = and i32 %3108, %2977
  %3110 = or i32 %3109, %3107
  %3111 = add i32 %3106, %3110
  %3112 = shl i32 %3094, 26
  %3113 = lshr i32 %3094, 6
  %3114 = or i32 %3112, %3113
  %3115 = shl i32 %3094, 21
  %3116 = lshr i32 %3094, 11
  %3117 = or i32 %3115, %3116
  %3118 = xor i32 %3114, %3117
  %3119 = shl i32 %3094, 7
  %3120 = lshr i32 %3094, 25
  %3121 = or i32 %3119, %3120
  %3122 = xor i32 %3118, %3121
  %3123 = xor i32 %3035, %2976
  %3124 = and i32 %3094, %3123
  %3125 = xor i32 %3124, %2976
  %3126 = shl i32 %3030, 15
  %3127 = lshr i32 %3030, 17
  %3128 = or i32 %3126, %3127
  %3129 = shl i32 %3030, 13
  %3130 = lshr i32 %3030, 19
  %3131 = or i32 %3129, %3130
  %3132 = lshr i32 %3030, 10
  %3133 = xor i32 %3131, %3132
  %3134 = xor i32 %3133, %3128
  %3135 = load i32, i32* %42, align 8
  %3136 = load i32, i32* %50, align 8
  %3137 = shl i32 %3136, 25
  %3138 = lshr i32 %3136, 7
  %3139 = or i32 %3137, %3138
  %3140 = shl i32 %3136, 14
  %3141 = lshr i32 %3136, 18
  %3142 = or i32 %3140, %3141
  %3143 = lshr i32 %3136, 3
  %3144 = xor i32 %3142, %3143
  %3145 = xor i32 %3144, %3139
  %3146 = add i32 %3077, %3135
  %3147 = add i32 %3146, %3134
  %3148 = add i32 %3147, %3145
  store i32 %3148, i32* %49, align 4
  %3149 = add i32 %3148, 2024104815
  %3150 = add i32 %3149, %2917
  %3151 = add i32 %3150, %3125
  %3152 = add i32 %3151, %3122
  %3153 = add i32 %3152, %2918
  %3154 = add i32 %3111, %3152
  %3155 = shl i32 %3154, 30
  %3156 = lshr i32 %3154, 2
  %3157 = or i32 %3155, %3156
  %3158 = shl i32 %3154, 19
  %3159 = lshr i32 %3154, 13
  %3160 = or i32 %3158, %3159
  %3161 = xor i32 %3157, %3160
  %3162 = shl i32 %3154, 10
  %3163 = lshr i32 %3154, 22
  %3164 = or i32 %3162, %3163
  %3165 = xor i32 %3161, %3164
  %3166 = and i32 %3154, %3095
  %3167 = or i32 %3154, %3095
  %3168 = and i32 %3167, %3036
  %3169 = or i32 %3168, %3166
  %3170 = add i32 %3165, %3169
  %3171 = shl i32 %3153, 26
  %3172 = lshr i32 %3153, 6
  %3173 = or i32 %3171, %3172
  %3174 = shl i32 %3153, 21
  %3175 = lshr i32 %3153, 11
  %3176 = or i32 %3174, %3175
  %3177 = xor i32 %3173, %3176
  %3178 = shl i32 %3153, 7
  %3179 = lshr i32 %3153, 25
  %3180 = or i32 %3178, %3179
  %3181 = xor i32 %3177, %3180
  %3182 = xor i32 %3094, %3035
  %3183 = and i32 %3153, %3182
  %3184 = xor i32 %3183, %3035
  %3185 = shl i32 %3089, 15
  %3186 = lshr i32 %3089, 17
  %3187 = or i32 %3185, %3186
  %3188 = shl i32 %3089, 13
  %3189 = lshr i32 %3089, 19
  %3190 = or i32 %3188, %3189
  %3191 = lshr i32 %3089, 10
  %3192 = xor i32 %3190, %3191
  %3193 = xor i32 %3192, %3187
  %3194 = load i32, i32* %43, align 4
  %3195 = load i32, i32* %51, align 4
  %3196 = shl i32 %3195, 25
  %3197 = lshr i32 %3195, 7
  %3198 = or i32 %3196, %3197
  %3199 = shl i32 %3195, 14
  %3200 = lshr i32 %3195, 18
  %3201 = or i32 %3199, %3200
  %3202 = lshr i32 %3195, 3
  %3203 = xor i32 %3201, %3202
  %3204 = xor i32 %3203, %3198
  %3205 = add i32 %3136, %3194
  %3206 = add i32 %3205, %3193
  %3207 = add i32 %3206, %3204
  store i32 %3207, i32* %50, align 8
  %3208 = add i32 %3207, -2067236844
  %3209 = add i32 %3208, %2976
  %3210 = add i32 %3209, %3184
  %3211 = add i32 %3210, %3181
  %3212 = add i32 %3211, %2977
  %3213 = add i32 %3170, %3211
  %3214 = shl i32 %3213, 30
  %3215 = lshr i32 %3213, 2
  %3216 = or i32 %3214, %3215
  %3217 = shl i32 %3213, 19
  %3218 = lshr i32 %3213, 13
  %3219 = or i32 %3217, %3218
  %3220 = xor i32 %3216, %3219
  %3221 = shl i32 %3213, 10
  %3222 = lshr i32 %3213, 22
  %3223 = or i32 %3221, %3222
  %3224 = xor i32 %3220, %3223
  %3225 = and i32 %3213, %3154
  %3226 = or i32 %3213, %3154
  %3227 = and i32 %3226, %3095
  %3228 = or i32 %3227, %3225
  %3229 = add i32 %3224, %3228
  %3230 = shl i32 %3212, 26
  %3231 = lshr i32 %3212, 6
  %3232 = or i32 %3230, %3231
  %3233 = shl i32 %3212, 21
  %3234 = lshr i32 %3212, 11
  %3235 = or i32 %3233, %3234
  %3236 = xor i32 %3232, %3235
  %3237 = shl i32 %3212, 7
  %3238 = lshr i32 %3212, 25
  %3239 = or i32 %3237, %3238
  %3240 = xor i32 %3236, %3239
  %3241 = xor i32 %3153, %3094
  %3242 = and i32 %3212, %3241
  %3243 = xor i32 %3242, %3094
  %3244 = shl i32 %3148, 15
  %3245 = lshr i32 %3148, 17
  %3246 = or i32 %3244, %3245
  %3247 = shl i32 %3148, 13
  %3248 = lshr i32 %3148, 19
  %3249 = or i32 %3247, %3248
  %3250 = lshr i32 %3148, 10
  %3251 = xor i32 %3249, %3250
  %3252 = xor i32 %3251, %3246
  %3253 = load i32, i32* %44, align 16
  %3254 = load i32, i32* %52, align 16
  %3255 = shl i32 %3254, 25
  %3256 = lshr i32 %3254, 7
  %3257 = or i32 %3255, %3256
  %3258 = shl i32 %3254, 14
  %3259 = lshr i32 %3254, 18
  %3260 = or i32 %3258, %3259
  %3261 = lshr i32 %3254, 3
  %3262 = xor i32 %3260, %3261
  %3263 = xor i32 %3262, %3257
  %3264 = add i32 %3195, %3253
  %3265 = add i32 %3264, %3252
  %3266 = add i32 %3265, %3263
  store i32 %3266, i32* %51, align 4
  %3267 = add i32 %3266, -1933114872
  %3268 = add i32 %3267, %3035
  %3269 = add i32 %3268, %3243
  %3270 = add i32 %3269, %3240
  %3271 = add i32 %3270, %3036
  %3272 = add i32 %3229, %3270
  %3273 = shl i32 %3272, 30
  %3274 = lshr i32 %3272, 2
  %3275 = or i32 %3273, %3274
  %3276 = shl i32 %3272, 19
  %3277 = lshr i32 %3272, 13
  %3278 = or i32 %3276, %3277
  %3279 = xor i32 %3275, %3278
  %3280 = shl i32 %3272, 10
  %3281 = lshr i32 %3272, 22
  %3282 = or i32 %3280, %3281
  %3283 = xor i32 %3279, %3282
  %3284 = and i32 %3272, %3213
  %3285 = or i32 %3272, %3213
  %3286 = and i32 %3285, %3154
  %3287 = or i32 %3286, %3284
  %3288 = add i32 %3283, %3287
  %3289 = shl i32 %3271, 26
  %3290 = lshr i32 %3271, 6
  %3291 = or i32 %3289, %3290
  %3292 = shl i32 %3271, 21
  %3293 = lshr i32 %3271, 11
  %3294 = or i32 %3292, %3293
  %3295 = xor i32 %3291, %3294
  %3296 = shl i32 %3271, 7
  %3297 = lshr i32 %3271, 25
  %3298 = or i32 %3296, %3297
  %3299 = xor i32 %3295, %3298
  %3300 = xor i32 %3212, %3153
  %3301 = and i32 %3271, %3300
  %3302 = xor i32 %3301, %3153
  %3303 = shl i32 %3207, 15
  %3304 = lshr i32 %3207, 17
  %3305 = or i32 %3303, %3304
  %3306 = shl i32 %3207, 13
  %3307 = lshr i32 %3207, 19
  %3308 = or i32 %3306, %3307
  %3309 = lshr i32 %3207, 10
  %3310 = xor i32 %3308, %3309
  %3311 = xor i32 %3310, %3305
  %3312 = load i32, i32* %45, align 4
  %3313 = load i32, i32* %53, align 4
  %3314 = shl i32 %3313, 25
  %3315 = lshr i32 %3313, 7
  %3316 = or i32 %3314, %3315
  %3317 = shl i32 %3313, 14
  %3318 = lshr i32 %3313, 18
  %3319 = or i32 %3317, %3318
  %3320 = lshr i32 %3313, 3
  %3321 = xor i32 %3319, %3320
  %3322 = xor i32 %3321, %3316
  %3323 = add i32 %3254, %3312
  %3324 = add i32 %3323, %3311
  %3325 = add i32 %3324, %3322
  store i32 %3325, i32* %52, align 16
  %3326 = add i32 %3325, -1866530822
  %3327 = add i32 %3326, %3094
  %3328 = add i32 %3327, %3302
  %3329 = add i32 %3328, %3299
  %3330 = add i32 %3329, %3095
  %3331 = add i32 %3288, %3329
  %3332 = shl i32 %3331, 30
  %3333 = lshr i32 %3331, 2
  %3334 = or i32 %3332, %3333
  %3335 = shl i32 %3331, 19
  %3336 = lshr i32 %3331, 13
  %3337 = or i32 %3335, %3336
  %3338 = xor i32 %3334, %3337
  %3339 = shl i32 %3331, 10
  %3340 = lshr i32 %3331, 22
  %3341 = or i32 %3339, %3340
  %3342 = xor i32 %3338, %3341
  %3343 = and i32 %3331, %3272
  %3344 = or i32 %3331, %3272
  %3345 = and i32 %3344, %3213
  %3346 = or i32 %3345, %3343
  %3347 = add i32 %3342, %3346
  %3348 = shl i32 %3330, 26
  %3349 = lshr i32 %3330, 6
  %3350 = or i32 %3348, %3349
  %3351 = shl i32 %3330, 21
  %3352 = lshr i32 %3330, 11
  %3353 = or i32 %3351, %3352
  %3354 = xor i32 %3350, %3353
  %3355 = shl i32 %3330, 7
  %3356 = lshr i32 %3330, 25
  %3357 = or i32 %3355, %3356
  %3358 = xor i32 %3354, %3357
  %3359 = xor i32 %3271, %3212
  %3360 = and i32 %3330, %3359
  %3361 = xor i32 %3360, %3212
  %3362 = shl i32 %3266, 15
  %3363 = lshr i32 %3266, 17
  %3364 = or i32 %3362, %3363
  %3365 = shl i32 %3266, 13
  %3366 = lshr i32 %3266, 19
  %3367 = or i32 %3365, %3366
  %3368 = lshr i32 %3266, 10
  %3369 = xor i32 %3367, %3368
  %3370 = xor i32 %3369, %3364
  %3371 = load i32, i32* %46, align 8
  %3372 = load i32, i32* %54, align 8
  %3373 = shl i32 %3372, 25
  %3374 = lshr i32 %3372, 7
  %3375 = or i32 %3373, %3374
  %3376 = shl i32 %3372, 14
  %3377 = lshr i32 %3372, 18
  %3378 = or i32 %3376, %3377
  %3379 = lshr i32 %3372, 3
  %3380 = xor i32 %3378, %3379
  %3381 = xor i32 %3380, %3375
  %3382 = add i32 %3313, %3371
  %3383 = add i32 %3382, %3370
  %3384 = add i32 %3383, %3381
  store i32 %3384, i32* %53, align 4
  %3385 = add i32 %3384, -1538233109
  %3386 = add i32 %3385, %3153
  %3387 = add i32 %3386, %3361
  %3388 = add i32 %3387, %3358
  %3389 = add i32 %3388, %3154
  %3390 = add i32 %3347, %3388
  %3391 = shl i32 %3390, 30
  %3392 = lshr i32 %3390, 2
  %3393 = or i32 %3391, %3392
  %3394 = shl i32 %3390, 19
  %3395 = lshr i32 %3390, 13
  %3396 = or i32 %3394, %3395
  %3397 = xor i32 %3393, %3396
  %3398 = shl i32 %3390, 10
  %3399 = lshr i32 %3390, 22
  %3400 = or i32 %3398, %3399
  %3401 = xor i32 %3397, %3400
  %3402 = and i32 %3390, %3331
  %3403 = or i32 %3390, %3331
  %3404 = and i32 %3403, %3272
  %3405 = or i32 %3404, %3402
  %3406 = add i32 %3401, %3405
  %3407 = shl i32 %3389, 26
  %3408 = lshr i32 %3389, 6
  %3409 = or i32 %3407, %3408
  %3410 = shl i32 %3389, 21
  %3411 = lshr i32 %3389, 11
  %3412 = or i32 %3410, %3411
  %3413 = xor i32 %3409, %3412
  %3414 = shl i32 %3389, 7
  %3415 = lshr i32 %3389, 25
  %3416 = or i32 %3414, %3415
  %3417 = xor i32 %3413, %3416
  %3418 = xor i32 %3330, %3271
  %3419 = and i32 %3389, %3418
  %3420 = xor i32 %3419, %3271
  %3421 = shl i32 %3325, 15
  %3422 = lshr i32 %3325, 17
  %3423 = or i32 %3421, %3422
  %3424 = shl i32 %3325, 13
  %3425 = lshr i32 %3325, 19
  %3426 = or i32 %3424, %3425
  %3427 = lshr i32 %3325, 10
  %3428 = xor i32 %3426, %3427
  %3429 = xor i32 %3428, %3423
  %3430 = load i32, i32* %47, align 4
  %3431 = load i32, i32* %55, align 4
  %3432 = shl i32 %3431, 25
  %3433 = lshr i32 %3431, 7
  %3434 = or i32 %3432, %3433
  %3435 = shl i32 %3431, 14
  %3436 = lshr i32 %3431, 18
  %3437 = or i32 %3435, %3436
  %3438 = lshr i32 %3431, 3
  %3439 = xor i32 %3437, %3438
  %3440 = xor i32 %3439, %3434
  %3441 = add i32 %3372, %3430
  %3442 = add i32 %3441, %3429
  %3443 = add i32 %3442, %3440
  store i32 %3443, i32* %54, align 8
  %3444 = add i32 %3443, -1090935817
  %3445 = add i32 %3444, %3212
  %3446 = add i32 %3445, %3420
  %3447 = add i32 %3446, %3417
  %3448 = add i32 %3447, %3213
  %3449 = add i32 %3406, %3447
  %3450 = shl i32 %3449, 30
  %3451 = lshr i32 %3449, 2
  %3452 = or i32 %3450, %3451
  %3453 = shl i32 %3449, 19
  %3454 = lshr i32 %3449, 13
  %3455 = or i32 %3453, %3454
  %3456 = xor i32 %3452, %3455
  %3457 = shl i32 %3449, 10
  %3458 = lshr i32 %3449, 22
  %3459 = or i32 %3457, %3458
  %3460 = xor i32 %3456, %3459
  %3461 = and i32 %3449, %3390
  %3462 = or i32 %3449, %3390
  %3463 = and i32 %3462, %3331
  %3464 = or i32 %3463, %3461
  %3465 = shl i32 %3448, 26
  %3466 = lshr i32 %3448, 6
  %3467 = or i32 %3465, %3466
  %3468 = shl i32 %3448, 21
  %3469 = lshr i32 %3448, 11
  %3470 = or i32 %3468, %3469
  %3471 = xor i32 %3467, %3470
  %3472 = shl i32 %3448, 7
  %3473 = lshr i32 %3448, 25
  %3474 = or i32 %3472, %3473
  %3475 = xor i32 %3471, %3474
  %3476 = xor i32 %3389, %3330
  %3477 = and i32 %3448, %3476
  %3478 = xor i32 %3477, %3330
  %3479 = shl i32 %3384, 15
  %3480 = lshr i32 %3384, 17
  %3481 = or i32 %3479, %3480
  %3482 = shl i32 %3384, 13
  %3483 = lshr i32 %3384, 19
  %3484 = or i32 %3482, %3483
  %3485 = lshr i32 %3384, 10
  %3486 = xor i32 %3484, %3485
  %3487 = xor i32 %3486, %3481
  %3488 = load i32, i32* %48, align 16
  %3489 = load i32, i32* %40, align 16
  %3490 = shl i32 %3489, 25
  %3491 = lshr i32 %3489, 7
  %3492 = or i32 %3490, %3491
  %3493 = shl i32 %3489, 14
  %3494 = lshr i32 %3489, 18
  %3495 = or i32 %3493, %3494
  %3496 = lshr i32 %3489, 3
  %3497 = xor i32 %3495, %3496
  %3498 = xor i32 %3497, %3492
  %3499 = add i32 %3431, %3488
  %3500 = add i32 %3499, %3487
  %3501 = add i32 %3500, %3498
  store i32 %3501, i32* %55, align 4
  %3502 = add i32 %3501, -965641998
  %3503 = add i32 %3502, %3271
  %3504 = add i32 %3503, %3478
  %3505 = add i32 %3504, %3475
  %3506 = load i32, i32* %9, align 8
  %3507 = add i32 %3464, %3506
  %3508 = add i32 %3507, %3460
  %3509 = add i32 %3508, %3505
  store i32 %3509, i32* %9, align 8
  %3510 = load i32, i32* %11, align 4
  %3511 = add i32 %3449, %3510
  store i32 %3511, i32* %11, align 4
  %3512 = load i32, i32* %13, align 8
  %3513 = add i32 %3390, %3512
  store i32 %3513, i32* %13, align 8
  %3514 = load i32, i32* %15, align 4
  %3515 = add i32 %3331, %3514
  store i32 %3515, i32* %15, align 4
  %3516 = load i32, i32* %17, align 8
  %3517 = add i32 %3272, %3516
  %3518 = add i32 %3517, %3505
  store i32 %3518, i32* %17, align 8
  %3519 = load i32, i32* %19, align 4
  %3520 = add i32 %3448, %3519
  store i32 %3520, i32* %19, align 4
  %3521 = load i32, i32* %21, align 8
  %3522 = add i32 %3389, %3521
  store i32 %3522, i32* %21, align 8
  %3523 = load i32, i32* %23, align 4
  %3524 = add i32 %3330, %3523
  store i32 %3524, i32* %23, align 4
  %3525 = icmp ult i32* %85, %7
  br i1 %3525, label %60, label %3526

; <label>:3526:                                   ; preds = %60
  br label %3527

; <label>:3527:                                   ; preds = %3526, %3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %8) #10
  ret void
}

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha224_finish_ctx(%struct.sha256_ctx*, i8* returned) local_unnamed_addr #6 {
  tail call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* %0)
  %3 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %6 = bitcast i8* %1 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %11 = bitcast i8* %7 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = bitcast i8* %12 to i32*
  store i32 %15, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 12
  %18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %21 = bitcast i8* %17 to i32*
  store i32 %20, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 16
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %26 = bitcast i8* %22 to i32*
  store i32 %25, i32* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 20
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = bitcast i8* %27 to i32*
  store i32 %30, i32* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 24
  %33 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = bitcast i8* %32 to i32*
  store i32 %35, i32* %36, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha256_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.sha256_ctx, align 16
  %4 = bitcast %struct.sha256_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 176, i8* nonnull %4) #10
  %5 = tail call noalias i8* @malloc(i64 32840) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %47, label %7

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.sha256_ctx* %3 to <4 x i32>*
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %8, align 16
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 0, i64 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %10, align 16
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 1, i64 0
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 16, i1 false) #10
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %14

; <label>:14:                                     ; preds = %32, %7
  br label %15

; <label>:15:                                     ; preds = %29, %14
  %16 = phi i64 [ 0, %14 ], [ %20, %29 ]
  %17 = getelementptr inbounds i8, i8* %5, i64 %16
  %18 = sub i64 32768, %16
  %19 = tail call i64 @fread_unlocked(i8* %17, i64 1, i64 %18, %struct._IO_FILE* %0) #10
  %20 = add i64 %19, %16
  %21 = icmp eq i64 %20, 32768
  br i1 %21, label %32, label %22

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i64 %19, 0
  %24 = load i32, i32* %13, align 8
  br i1 %23, label %25, label %29

; <label>:25:                                     ; preds = %22
  %26 = and i32 %24, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  tail call void @free(i8* %5) #10
  br label %47

; <label>:29:                                     ; preds = %22
  %30 = and i32 %24, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %15, label %33

; <label>:32:                                     ; preds = %15
  call void @sha256_process_block(i8* nonnull %5, i64 32768, %struct.sha256_ctx* nonnull %3)
  br label %14

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %25
  %35 = icmp eq i64 %20, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %34
  call void @sha256_process_bytes(i8* nonnull %5, i64 %20, %struct.sha256_ctx* nonnull %3)
  br label %37

; <label>:37:                                     ; preds = %34, %36
  call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* nonnull %3) #10
  %38 = bitcast %struct.sha256_ctx* %3 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 16
  %40 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %39)
  %41 = bitcast i8* %1 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %41, align 1
  %42 = getelementptr inbounds i8, i8* %1, i64 16
  %43 = bitcast i32* %9 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 16
  %45 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %44)
  %46 = bitcast i8* %42 to <4 x i32>*
  store <4 x i32> %45, <4 x i32>* %46, align 1
  call void @free(i8* %5) #10
  br label %47

; <label>:47:                                     ; preds = %28, %2, %37
  %48 = phi i32 [ 0, %37 ], [ 1, %2 ], [ 1, %28 ]
  call void @llvm.lifetime.end(i64 176, i8* nonnull %4) #10
  ret i32 %48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @sha256_process_bytes(i8* readonly, i64, %struct.sha256_ctx*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %27, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i64 128, %5
  %9 = icmp ugt i64 %8, %1
  %10 = select i1 %9, i64 %1, i64 %8
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 3, i64 0
  %12 = bitcast i32* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %0, i64 %10, i32 1, i1 false)
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, %10
  store i64 %15, i64* %4, align 8
  %16 = icmp ugt i64 %15, 64
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %7
  %18 = and i64 %15, -64
  tail call void @sha256_process_block(i8* %12, i64 %18, %struct.sha256_ctx* nonnull %2)
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 63
  store i64 %20, i64* %4, align 8
  %21 = add i64 %10, %5
  %22 = and i64 %21, -64
  %23 = getelementptr inbounds i8, i8* %12, i64 %22
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %23, i64 %20, i32 1, i1 false)
  br label %24

; <label>:24:                                     ; preds = %17, %7
  %25 = getelementptr inbounds i8, i8* %0, i64 %10
  %26 = sub i64 %1, %10
  br label %27

; <label>:27:                                     ; preds = %3, %24
  %28 = phi i64 [ %26, %24 ], [ %1, %3 ]
  %29 = phi i8* [ %25, %24 ], [ %0, %3 ]
  %30 = icmp ugt i64 %28, 63
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %27
  %32 = and i64 %28, -64
  tail call void @sha256_process_block(i8* %29, i64 %32, %struct.sha256_ctx* nonnull %2)
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = and i64 %28, 63
  br label %35

; <label>:35:                                     ; preds = %31, %27
  %36 = phi i64 [ %34, %31 ], [ %28, %27 ]
  %37 = phi i8* [ %33, %31 ], [ %29, %27 ]
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %52, label %39

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 3
  %42 = bitcast [32 x i32]* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %37, i64 %36, i32 1, i1 false)
  %44 = add i64 %40, %36
  %45 = icmp ugt i64 %44, 63
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %39
  tail call void @sha256_process_block(i8* %42, i64 64, %struct.sha256_ctx* nonnull %2)
  %47 = add i64 %44, -64
  %48 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %2, i64 0, i32 3, i64 16
  %49 = bitcast i32* %48 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %49, i64 %47, i32 8, i1 false)
  br label %50

; <label>:50:                                     ; preds = %46, %39
  %51 = phi i64 [ %47, %46 ], [ %44, %39 ]
  store i64 %51, i64* %4, align 8
  br label %52

; <label>:52:                                     ; preds = %35, %50
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha224_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.sha256_ctx, align 16
  %4 = bitcast %struct.sha256_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 176, i8* nonnull %4) #10
  %5 = tail call noalias i8* @malloc(i64 32840) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %56, label %7

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.sha256_ctx* %3 to <4 x i32>*
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, <4 x i32>* %8, align 16
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 0, i64 4
  %10 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 0, i64 5
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 0, i64 6
  %12 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, <4 x i32>* %12, align 16
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %3, i64 0, i32 1, i64 0
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 16, i32 16, i1 false) #10
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %16

; <label>:16:                                     ; preds = %34, %7
  br label %17

; <label>:17:                                     ; preds = %31, %16
  %18 = phi i64 [ 0, %16 ], [ %22, %31 ]
  %19 = getelementptr inbounds i8, i8* %5, i64 %18
  %20 = sub i64 32768, %18
  %21 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %20, %struct._IO_FILE* %0) #10
  %22 = add i64 %21, %18
  %23 = icmp eq i64 %22, 32768
  br i1 %23, label %34, label %24

; <label>:24:                                     ; preds = %17
  %25 = icmp eq i64 %21, 0
  %26 = load i32, i32* %15, align 8
  br i1 %25, label %27, label %31

; <label>:27:                                     ; preds = %24
  %28 = and i32 %26, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %27
  tail call void @free(i8* %5) #10
  br label %56

; <label>:31:                                     ; preds = %24
  %32 = and i32 %26, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %17, label %35

; <label>:34:                                     ; preds = %17
  call void @sha256_process_block(i8* nonnull %5, i64 32768, %struct.sha256_ctx* nonnull %3)
  br label %16

; <label>:35:                                     ; preds = %31
  br label %36

; <label>:36:                                     ; preds = %35, %27
  %37 = icmp eq i64 %22, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %36
  call void @sha256_process_bytes(i8* nonnull %5, i64 %22, %struct.sha256_ctx* nonnull %3)
  br label %39

; <label>:39:                                     ; preds = %36, %38
  call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* nonnull %3) #10
  %40 = bitcast %struct.sha256_ctx* %3 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 16
  %42 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %41)
  %43 = bitcast i8* %1 to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %43, align 1
  %44 = getelementptr inbounds i8, i8* %1, i64 16
  %45 = load i32, i32* %9, align 16
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = bitcast i8* %44 to i32*
  store i32 %46, i32* %47, align 1
  %48 = getelementptr inbounds i8, i8* %1, i64 20
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #10
  %51 = bitcast i8* %48 to i32*
  store i32 %50, i32* %51, align 1
  %52 = getelementptr inbounds i8, i8* %1, i64 24
  %53 = load i32, i32* %11, align 8
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = bitcast i8* %52 to i32*
  store i32 %54, i32* %55, align 1
  call void @free(i8* %5) #10
  br label %56

; <label>:56:                                     ; preds = %30, %2, %39
  %57 = phi i32 [ 0, %39 ], [ 1, %2 ], [ 1, %30 ]
  call void @llvm.lifetime.end(i64 176, i8* nonnull %4) #10
  ret i32 %57
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha256_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.sha256_ctx, align 16
  %5 = bitcast %struct.sha256_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 176, i8* nonnull %5) #10
  %6 = bitcast %struct.sha256_ctx* %4 to <4 x i32>*
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %6, align 16
  %7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 0, i64 4
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %8, align 16
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 1, i64 0
  %10 = bitcast i32* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 16, i1 false) #10
  call void @sha256_process_bytes(i8* %0, i64 %1, %struct.sha256_ctx* nonnull %4)
  call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* nonnull %4) #10
  %11 = bitcast %struct.sha256_ctx* %4 to <4 x i32>*
  %12 = load <4 x i32>, <4 x i32>* %11, align 16
  %13 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %12)
  %14 = bitcast i8* %2 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 16
  %16 = bitcast i32* %7 to <4 x i32>*
  %17 = load <4 x i32>, <4 x i32>* %16, align 16
  %18 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %17)
  %19 = bitcast i8* %15 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %19, align 1
  call void @llvm.lifetime.end(i64 176, i8* nonnull %5) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha224_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.sha256_ctx, align 16
  %5 = bitcast %struct.sha256_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 176, i8* nonnull %5) #10
  %6 = bitcast %struct.sha256_ctx* %4 to <4 x i32>*
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, <4 x i32>* %6, align 16
  %7 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 0, i64 4
  %8 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 0, i64 5
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 0, i64 6
  %10 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, <4 x i32>* %10, align 16
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %4, i64 0, i32 1, i64 0
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 16, i1 false) #10
  call void @sha256_process_bytes(i8* %0, i64 %1, %struct.sha256_ctx* nonnull %4)
  call fastcc void @sha256_conclude_ctx(%struct.sha256_ctx* nonnull %4) #10
  %13 = bitcast %struct.sha256_ctx* %4 to <4 x i32>*
  %14 = load <4 x i32>, <4 x i32>* %13, align 16
  %15 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %14)
  %16 = bitcast i8* %2 to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %16, align 1
  %17 = getelementptr inbounds i8, i8* %2, i64 16
  %18 = load i32, i32* %7, align 16
  %19 = call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = bitcast i8* %17 to i32*
  store i32 %19, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %2, i64 20
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = bitcast i8* %21 to i32*
  store i32 %23, i32* %24, align 1
  %25 = getelementptr inbounds i8, i8* %2, i64 24
  %26 = load i32, i32* %9, align 8
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  %28 = bitcast i8* %25 to i32*
  store i32 %27, i32* %28, align 1
  call void @llvm.lifetime.end(i64 176, i8* nonnull %5) #10
  ret i8* %2
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
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #13
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0)
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
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.108, i64 0, i64 0), i32 5) #10
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.110, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #10
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #10
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #10
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #10
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #10
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #10
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #10
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.121, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.122, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.123, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.124, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.125, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.126, i64 0, i64 0), i32 5) #10
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.137, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i64 0, i64 0), i8* %2) #10
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0)) #10
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
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.159, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.160, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.161, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.161, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.162, i64 0, i64 0)) #10
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.163, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.164, i64 0, i64 0), i8* %158
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
