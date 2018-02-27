; ModuleID = 'coreutils-8.27/src/sha384sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.sha512_ctx = type { [8 x i64], [2 x i64], i64, [32 x i64] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
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
@.str.12 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
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
@fillbuf = internal unnamed_addr constant [128 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
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
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 384) #10
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
  %3 = alloca [56 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [56 x i8], align 16
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds [56 x i8], [56 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* nonnull %9) #10
  %10 = getelementptr inbounds [56 x i8], [56 x i8]* %7, i64 0, i64 7
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 7
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
  %102 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 7
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %102) #10
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
  %264 = select i1 %263, i64 98, i64 0
  %265 = load i8, i8* %184, align 1
  %266 = icmp eq i8 %265, 92
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, %264
  %269 = icmp ult i64 %262, %268
  br i1 %269, label %370, label %270

; <label>:270:                                    ; preds = %261
  %271 = load i1, i1* @digest_hex_bytes, align 8
  %272 = select i1 %271, i64 96, i64 0
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

; <label>:344:                                    ; preds = %679, %341
  %345 = phi i32 [ 0, %341 ], [ %681, %679 ]
  %346 = phi i8* [ %330, %341 ], [ %680, %679 ]
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

; <label>:361:                                    ; preds = %679
  br label %362

; <label>:362:                                    ; preds = %361, %339
  %363 = phi i8* [ %330, %339 ], [ %680, %361 ]
  %364 = load i8, i8* %363, align 1
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %378, label %370

; <label>:366:                                    ; preds = %671, %353, %344
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
  %412 = select i1 %411, i64 48, i64 0
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %102) #10
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
  %615 = select i1 %614, i64 48, i64 0
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %9) #10
  ret i32 %670

; <label>:671:                                    ; preds = %353
  %672 = getelementptr inbounds i8, i8* %346, i64 2
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i64
  %675 = getelementptr inbounds i16, i16* %343, i64 %674
  %676 = load i16, i16* %675, align 2
  %677 = and i16 %676, 4096
  %678 = icmp eq i16 %677, 0
  br i1 %678, label %366, label %679

; <label>:679:                                    ; preds = %671
  %680 = getelementptr inbounds i8, i8* %346, i64 3
  %681 = add nsw i32 %345, 3
  %682 = icmp ult i32 %681, 96
  br i1 %682, label %344, label %361
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
  %29 = tail call i32 @sha384_stream(%struct._IO_FILE* %28, i8* %1) #10
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
define void @sha512_init_ctx(%struct.sha512_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.sha512_ctx* %0 to <2 x i64>*
  store <2 x i64> <i64 7640891576956012808, i64 -4942790177534073029>, <2 x i64>* %2, align 8
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %4 = bitcast i64* %3 to <2 x i64>*
  store <2 x i64> <i64 4354685564936845355, i64 -6534734903238641935>, <2 x i64>* %4, align 8
  %5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %6 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> <i64 5840696475078001361, i64 -7276294671716946913>, <2 x i64>* %6, align 8
  %7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 6
  %8 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %8, align 8
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 1, i64 0
  %10 = bitcast i64* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha384_init_ctx(%struct.sha512_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.sha512_ctx* %0 to <2 x i64>*
  store <2 x i64> <i64 -3766243637369397544, i64 7105036623409894663>, <2 x i64>* %2, align 8
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %4 = bitcast i64* %3 to <2 x i64>*
  store <2 x i64> <i64 -7973340178411365097, i64 1526699215303891257>, <2 x i64>* %4, align 8
  %5 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %6 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> <i64 7436329637833083697, i64 -8163818279084223215>, <2 x i64>* %6, align 8
  %7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 6
  %8 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> <i64 -2662702644619276377, i64 5167115440072839076>, <2 x i64>* %8, align 8
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 1, i64 0
  %10 = bitcast i64* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha512_read_ctx(%struct.sha512_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = bitcast i8* %1 to i64*
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %11 = bitcast i8* %7 to i64*
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = bitcast i8* %12 to i64*
  store i64 %15, i64* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 24
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %21 = bitcast i8* %17 to i64*
  store i64 %20, i64* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 32
  %23 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i64, i64* %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %26 = bitcast i8* %22 to i64*
  store i64 %25, i64* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 40
  %28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i64, i64* %28, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = bitcast i8* %27 to i64*
  store i64 %30, i64* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 48
  %33 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i64, i64* %33, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %36 = bitcast i8* %32 to i64*
  store i64 %35, i64* %36, align 1
  %37 = getelementptr inbounds i8, i8* %1, i64 56
  %38 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 7
  %39 = load i64, i64* %38, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %41 = bitcast i8* %37 to i64*
  store i64 %40, i64* %41, align 1
  ret i8* %1
}

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha384_read_ctx(%struct.sha512_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = bitcast i8* %1 to i64*
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %11 = bitcast i8* %7 to i64*
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = bitcast i8* %12 to i64*
  store i64 %15, i64* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 24
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %21 = bitcast i8* %17 to i64*
  store i64 %20, i64* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 32
  %23 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i64, i64* %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %26 = bitcast i8* %22 to i64*
  store i64 %25, i64* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 40
  %28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i64, i64* %28, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = bitcast i8* %27 to i64*
  store i64 %30, i64* %31, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha512_finish_ctx(%struct.sha512_ctx*, i8* returned) local_unnamed_addr #6 {
  tail call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* %0)
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #10
  %6 = bitcast i8* %1 to i64*
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #10
  %11 = bitcast i8* %7 to i64*
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #10
  %16 = bitcast i8* %12 to i64*
  store i64 %15, i64* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 24
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #10
  %21 = bitcast i8* %17 to i64*
  store i64 %20, i64* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 32
  %23 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i64, i64* %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #10
  %26 = bitcast i8* %22 to i64*
  store i64 %25, i64* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 40
  %28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i64, i64* %28, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #10
  %31 = bitcast i8* %27 to i64*
  store i64 %30, i64* %31, align 1
  %32 = getelementptr inbounds i8, i8* %1, i64 48
  %33 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 6
  %34 = load i64, i64* %33, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #10
  %36 = bitcast i8* %32 to i64*
  store i64 %35, i64* %36, align 1
  %37 = getelementptr inbounds i8, i8* %1, i64 56
  %38 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 7
  %39 = load i64, i64* %38, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #10
  %41 = bitcast i8* %37 to i64*
  store i64 %40, i64* %41, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sha512_conclude_ctx(%struct.sha512_ctx*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 112
  %5 = select i1 %4, i64 16, i64 32
  %6 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 1, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, %3
  store i64 %8, i64* %6, align 8
  %9 = icmp ult i64 %8, %3
  %10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 1, i64 1
  %11 = load i64, i64* %10, align 8
  br i1 %9, label %12, label %14

; <label>:12:                                     ; preds = %1
  %13 = add i64 %11, 1
  store i64 %13, i64* %10, align 8
  br label %14

; <label>:14:                                     ; preds = %1, %12
  %15 = phi i64 [ %13, %12 ], [ %11, %1 ]
  %16 = add nsw i64 %5, -2
  %17 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 3, i64 %16
  %18 = shl i64 %15, 3
  %19 = lshr i64 %8, 61
  %20 = or i64 %19, %18
  %21 = shl i64 %20, 56
  %22 = shl i64 %15, 43
  %23 = and i64 %22, 71776119061217280
  %24 = shl i64 %15, 27
  %25 = and i64 %24, 280375465082880
  %26 = shl i64 %15, 11
  %27 = and i64 %26, 1095216660480
  %28 = lshr i64 %15, 5
  %29 = and i64 %28, 4278190080
  %30 = lshr i64 %15, 21
  %31 = and i64 %30, 16711680
  %32 = lshr i64 %15, 37
  %33 = and i64 %32, 65280
  %34 = lshr i64 %15, 53
  %35 = and i64 %34, 255
  %36 = or i64 %29, %31
  %37 = or i64 %36, %35
  %38 = or i64 %37, %33
  %39 = or i64 %38, %27
  %40 = or i64 %39, %25
  %41 = or i64 %40, %23
  %42 = or i64 %41, %21
  store i64 %42, i64* %17, align 1
  %43 = add nsw i64 %5, -1
  %44 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 3, i64 %43
  %45 = shl i64 %8, 59
  %46 = shl i64 %8, 43
  %47 = and i64 %46, 71776119061217280
  %48 = shl i64 %8, 27
  %49 = and i64 %48, 280375465082880
  %50 = shl i64 %8, 11
  %51 = and i64 %50, 1095216660480
  %52 = lshr i64 %8, 5
  %53 = and i64 %52, 4278190080
  %54 = lshr i64 %8, 21
  %55 = and i64 %54, 16711680
  %56 = lshr i64 %8, 37
  %57 = and i64 %56, 65280
  %58 = lshr i64 %8, 53
  %59 = and i64 %58, 255
  %60 = or i64 %47, %45
  %61 = or i64 %60, %51
  %62 = or i64 %61, %49
  %63 = or i64 %62, %55
  %64 = or i64 %63, %53
  %65 = or i64 %64, %59
  %66 = or i64 %65, %57
  store i64 %66, i64* %44, align 1
  %67 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 3, i64 0
  %68 = bitcast i64* %67 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 %3
  %70 = shl nsw i64 %16, 3
  %71 = sub i64 %70, %3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fillbuf, i64 0, i64 0), i64 %71, i32 1, i1 false)
  %72 = shl nuw nsw i64 %5, 3
  tail call void @sha512_process_block(i8* %68, i64 %72, %struct.sha512_ctx* nonnull %0)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha512_process_block(i8* readonly, i64, %struct.sha512_ctx* nocapture) local_unnamed_addr #6 {
  %4 = alloca [16 x i64], align 16
  %5 = bitcast i8* %0 to i64*
  %6 = lshr i64 %1, 3
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = bitcast [16 x i64]* %4 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %8) #10
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 3
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 4
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 5
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 6
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 0, i64 7
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 1, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %1
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 1, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %1
  %31 = zext i1 %30 to i64
  %32 = add i64 %31, %29
  store i64 %32, i64* %28, align 8
  %33 = icmp ult i64* %5, %7
  br i1 %33, label %34, label %3981

; <label>:34:                                     ; preds = %3
  %35 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 1
  %37 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 2
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 3
  %39 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 4
  %40 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 5
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 6
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 7
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 8
  %44 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 9
  %45 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 10
  %46 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 11
  %47 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 12
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 13
  %49 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 14
  %50 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 15
  %51 = bitcast i64* %36 to <2 x i64>*
  %52 = bitcast i64* %45 to <2 x i64>*
  %53 = bitcast i64* %38 to <2 x i64>*
  %54 = bitcast i64* %36 to <2 x i64>*
  %55 = bitcast i64* %47 to <2 x i64>*
  %56 = bitcast i64* %40 to <2 x i64>*
  %57 = bitcast i64* %38 to <2 x i64>*
  %58 = bitcast i64* %49 to <2 x i64>*
  %59 = bitcast i64* %42 to <2 x i64>*
  %60 = bitcast i64* %40 to <2 x i64>*
  %61 = bitcast [16 x i64]* %4 to <2 x i64>*
  %62 = bitcast i64* %44 to <2 x i64>*
  %63 = bitcast i64* %42 to <2 x i64>*
  %64 = bitcast i64* %37 to <2 x i64>*
  %65 = bitcast i64* %46 to <2 x i64>*
  %66 = bitcast i64* %44 to <2 x i64>*
  %67 = bitcast i64* %39 to <2 x i64>*
  %68 = bitcast i64* %48 to <2 x i64>*
  %69 = bitcast i64* %46 to <2 x i64>*
  %70 = bitcast i64* %41 to <2 x i64>*
  %71 = bitcast i64* %48 to <2 x i64>*
  %72 = bitcast [16 x i64]* %4 to <2 x i64>*
  %73 = bitcast i64* %44 to <2 x i64>*
  %74 = bitcast i64* %37 to <2 x i64>*
  %75 = bitcast [16 x i64]* %4 to <2 x i64>*
  %76 = bitcast i64* %46 to <2 x i64>*
  %77 = bitcast i64* %39 to <2 x i64>*
  %78 = bitcast i64* %37 to <2 x i64>*
  %79 = bitcast i64* %48 to <2 x i64>*
  %80 = bitcast i64* %41 to <2 x i64>*
  %81 = bitcast i64* %39 to <2 x i64>*
  %82 = bitcast i64* %43 to <2 x i64>*
  %83 = bitcast i64* %41 to <2 x i64>*
  %84 = bitcast i64* %36 to <2 x i64>*
  %85 = bitcast i64* %45 to <2 x i64>*
  %86 = bitcast i64* %43 to <2 x i64>*
  %87 = bitcast i64* %38 to <2 x i64>*
  %88 = bitcast i64* %47 to <2 x i64>*
  %89 = bitcast i64* %45 to <2 x i64>*
  %90 = bitcast i64* %40 to <2 x i64>*
  %91 = bitcast i64* %49 to <2 x i64>*
  %92 = bitcast i64* %47 to <2 x i64>*
  %93 = bitcast i64* %42 to <2 x i64>*
  %94 = bitcast [16 x i64]* %4 to <2 x i64>*
  %95 = bitcast i64* %49 to <2 x i64>*
  %96 = bitcast i64* %44 to <2 x i64>*
  %97 = bitcast i64* %37 to <2 x i64>*
  %98 = bitcast [16 x i64]* %4 to <2 x i64>*
  %99 = bitcast i64* %46 to <2 x i64>*
  %100 = bitcast i64* %39 to <2 x i64>*
  %101 = bitcast i64* %37 to <2 x i64>*
  %102 = bitcast i64* %48 to <2 x i64>*
  %103 = bitcast i64* %41 to <2 x i64>*
  %104 = bitcast i64* %39 to <2 x i64>*
  %105 = bitcast i64* %43 to <2 x i64>*
  %106 = bitcast i64* %41 to <2 x i64>*
  %107 = bitcast i64* %36 to <2 x i64>*
  %108 = bitcast i64* %45 to <2 x i64>*
  %109 = bitcast i64* %43 to <2 x i64>*
  %110 = bitcast i64* %38 to <2 x i64>*
  %111 = bitcast i64* %47 to <2 x i64>*
  %112 = bitcast i64* %45 to <2 x i64>*
  %113 = bitcast i64* %40 to <2 x i64>*
  %114 = bitcast i64* %49 to <2 x i64>*
  %115 = bitcast i64* %47 to <2 x i64>*
  %116 = bitcast i64* %42 to <2 x i64>*
  %117 = bitcast [16 x i64]* %4 to <2 x i64>*
  %118 = bitcast i64* %49 to <2 x i64>*
  %119 = bitcast i64* %44 to <2 x i64>*
  %120 = bitcast i64* %37 to <2 x i64>*
  %121 = bitcast [16 x i64]* %4 to <2 x i64>*
  %122 = bitcast i64* %46 to <2 x i64>*
  %123 = bitcast i64* %39 to <2 x i64>*
  %124 = bitcast i64* %37 to <2 x i64>*
  %125 = bitcast i64* %48 to <2 x i64>*
  %126 = bitcast i64* %41 to <2 x i64>*
  %127 = bitcast i64* %39 to <2 x i64>*
  %128 = bitcast i64* %43 to <2 x i64>*
  %129 = bitcast i64* %41 to <2 x i64>*
  %130 = bitcast i64* %36 to <2 x i64>*
  %131 = bitcast i64* %45 to <2 x i64>*
  %132 = bitcast i64* %43 to <2 x i64>*
  %133 = bitcast i64* %38 to <2 x i64>*
  %134 = bitcast i64* %47 to <2 x i64>*
  %135 = bitcast i64* %45 to <2 x i64>*
  %136 = bitcast i64* %40 to <2 x i64>*
  %137 = bitcast i64* %49 to <2 x i64>*
  %138 = bitcast i64* %47 to <2 x i64>*
  %139 = bitcast i64* %42 to <2 x i64>*
  %140 = bitcast i64* %49 to <2 x i64>*
  br label %141

; <label>:141:                                    ; preds = %34, %141
  %142 = phi i64* [ %5, %34 ], [ %198, %141 ]
  %143 = phi i64 [ %10, %34 ], [ %3963, %141 ]
  %144 = phi i64 [ %12, %34 ], [ %3965, %141 ]
  %145 = phi i64 [ %14, %34 ], [ %3967, %141 ]
  %146 = phi i64 [ %16, %34 ], [ %3969, %141 ]
  %147 = phi i64 [ %18, %34 ], [ %3972, %141 ]
  %148 = phi i64 [ %20, %34 ], [ %3974, %141 ]
  %149 = phi i64 [ %22, %34 ], [ %3976, %141 ]
  %150 = phi i64 [ %24, %34 ], [ %3978, %141 ]
  %151 = load i64, i64* %142, align 8
  %152 = tail call i64 @llvm.bswap.i64(i64 %151)
  store i64 %152, i64* %35, align 16
  %153 = getelementptr inbounds i64, i64* %142, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = tail call i64 @llvm.bswap.i64(i64 %154)
  store i64 %155, i64* %36, align 8
  %156 = getelementptr inbounds i64, i64* %142, i64 2
  %157 = load i64, i64* %156, align 8
  %158 = tail call i64 @llvm.bswap.i64(i64 %157)
  store i64 %158, i64* %37, align 16
  %159 = getelementptr inbounds i64, i64* %142, i64 3
  %160 = load i64, i64* %159, align 8
  %161 = tail call i64 @llvm.bswap.i64(i64 %160)
  store i64 %161, i64* %38, align 8
  %162 = getelementptr inbounds i64, i64* %142, i64 4
  %163 = load i64, i64* %162, align 8
  %164 = tail call i64 @llvm.bswap.i64(i64 %163)
  store i64 %164, i64* %39, align 16
  %165 = getelementptr inbounds i64, i64* %142, i64 5
  %166 = load i64, i64* %165, align 8
  %167 = tail call i64 @llvm.bswap.i64(i64 %166)
  store i64 %167, i64* %40, align 8
  %168 = getelementptr inbounds i64, i64* %142, i64 6
  %169 = load i64, i64* %168, align 8
  %170 = tail call i64 @llvm.bswap.i64(i64 %169)
  store i64 %170, i64* %41, align 16
  %171 = getelementptr inbounds i64, i64* %142, i64 7
  %172 = load i64, i64* %171, align 8
  %173 = tail call i64 @llvm.bswap.i64(i64 %172)
  store i64 %173, i64* %42, align 8
  %174 = getelementptr inbounds i64, i64* %142, i64 8
  %175 = load i64, i64* %174, align 8
  %176 = tail call i64 @llvm.bswap.i64(i64 %175)
  store i64 %176, i64* %43, align 16
  %177 = getelementptr inbounds i64, i64* %142, i64 9
  %178 = load i64, i64* %177, align 8
  %179 = tail call i64 @llvm.bswap.i64(i64 %178)
  store i64 %179, i64* %44, align 8
  %180 = getelementptr inbounds i64, i64* %142, i64 10
  %181 = load i64, i64* %180, align 8
  %182 = tail call i64 @llvm.bswap.i64(i64 %181)
  store i64 %182, i64* %45, align 16
  %183 = getelementptr inbounds i64, i64* %142, i64 11
  %184 = load i64, i64* %183, align 8
  %185 = tail call i64 @llvm.bswap.i64(i64 %184)
  store i64 %185, i64* %46, align 8
  %186 = getelementptr inbounds i64, i64* %142, i64 12
  %187 = load i64, i64* %186, align 8
  %188 = tail call i64 @llvm.bswap.i64(i64 %187)
  store i64 %188, i64* %47, align 16
  %189 = getelementptr inbounds i64, i64* %142, i64 13
  %190 = load i64, i64* %189, align 8
  %191 = tail call i64 @llvm.bswap.i64(i64 %190)
  store i64 %191, i64* %48, align 8
  %192 = getelementptr inbounds i64, i64* %142, i64 14
  %193 = load i64, i64* %192, align 8
  %194 = tail call i64 @llvm.bswap.i64(i64 %193)
  store i64 %194, i64* %49, align 16
  %195 = getelementptr inbounds i64, i64* %142, i64 15
  %196 = load i64, i64* %195, align 8
  %197 = tail call i64 @llvm.bswap.i64(i64 %196)
  store i64 %197, i64* %50, align 8
  %198 = getelementptr i64, i64* %142, i64 16
  %199 = shl i64 %143, 36
  %200 = lshr i64 %143, 28
  %201 = or i64 %199, %200
  %202 = shl i64 %143, 30
  %203 = lshr i64 %143, 34
  %204 = or i64 %202, %203
  %205 = shl i64 %143, 25
  %206 = lshr i64 %143, 39
  %207 = or i64 %205, %206
  %208 = xor i64 %204, %207
  %209 = xor i64 %208, %201
  %210 = and i64 %143, %144
  %211 = or i64 %143, %144
  %212 = and i64 %211, %145
  %213 = or i64 %212, %210
  %214 = add i64 %209, %213
  %215 = shl i64 %147, 50
  %216 = lshr i64 %147, 14
  %217 = or i64 %215, %216
  %218 = shl i64 %147, 46
  %219 = lshr i64 %147, 18
  %220 = or i64 %218, %219
  %221 = shl i64 %147, 23
  %222 = lshr i64 %147, 41
  %223 = or i64 %221, %222
  %224 = xor i64 %220, %223
  %225 = xor i64 %224, %217
  %226 = xor i64 %148, %149
  %227 = and i64 %147, %226
  %228 = xor i64 %227, %149
  %229 = add i64 %150, 4794697086780616226
  %230 = add i64 %229, %228
  %231 = add i64 %230, %225
  %232 = add i64 %231, %152
  %233 = add i64 %232, %146
  %234 = add i64 %214, %232
  %235 = shl i64 %234, 36
  %236 = lshr i64 %234, 28
  %237 = or i64 %235, %236
  %238 = shl i64 %234, 30
  %239 = lshr i64 %234, 34
  %240 = or i64 %238, %239
  %241 = shl i64 %234, 25
  %242 = lshr i64 %234, 39
  %243 = or i64 %241, %242
  %244 = xor i64 %240, %243
  %245 = xor i64 %244, %237
  %246 = and i64 %234, %143
  %247 = or i64 %234, %143
  %248 = and i64 %247, %144
  %249 = or i64 %248, %246
  %250 = add i64 %245, %249
  %251 = shl i64 %233, 50
  %252 = lshr i64 %233, 14
  %253 = or i64 %251, %252
  %254 = shl i64 %233, 46
  %255 = lshr i64 %233, 18
  %256 = or i64 %254, %255
  %257 = shl i64 %233, 23
  %258 = lshr i64 %233, 41
  %259 = or i64 %257, %258
  %260 = xor i64 %256, %259
  %261 = xor i64 %260, %253
  %262 = xor i64 %147, %148
  %263 = and i64 %233, %262
  %264 = xor i64 %263, %148
  %265 = load i64, i64* %36, align 8
  %266 = add i64 %149, 8158064640168781261
  %267 = add i64 %266, %265
  %268 = add i64 %267, %264
  %269 = add i64 %268, %261
  %270 = add i64 %269, %145
  %271 = add i64 %250, %269
  %272 = shl i64 %271, 36
  %273 = lshr i64 %271, 28
  %274 = or i64 %272, %273
  %275 = shl i64 %271, 30
  %276 = lshr i64 %271, 34
  %277 = or i64 %275, %276
  %278 = shl i64 %271, 25
  %279 = lshr i64 %271, 39
  %280 = or i64 %278, %279
  %281 = xor i64 %277, %280
  %282 = xor i64 %281, %274
  %283 = and i64 %271, %234
  %284 = or i64 %271, %234
  %285 = and i64 %284, %143
  %286 = or i64 %285, %283
  %287 = add i64 %282, %286
  %288 = shl i64 %270, 50
  %289 = lshr i64 %270, 14
  %290 = or i64 %288, %289
  %291 = shl i64 %270, 46
  %292 = lshr i64 %270, 18
  %293 = or i64 %291, %292
  %294 = shl i64 %270, 23
  %295 = lshr i64 %270, 41
  %296 = or i64 %294, %295
  %297 = xor i64 %293, %296
  %298 = xor i64 %297, %290
  %299 = xor i64 %233, %147
  %300 = and i64 %270, %299
  %301 = xor i64 %300, %147
  %302 = load i64, i64* %37, align 16
  %303 = add i64 %148, -5349999486874862801
  %304 = add i64 %303, %302
  %305 = add i64 %304, %301
  %306 = add i64 %305, %298
  %307 = add i64 %306, %144
  %308 = add i64 %287, %306
  %309 = shl i64 %308, 36
  %310 = lshr i64 %308, 28
  %311 = or i64 %309, %310
  %312 = shl i64 %308, 30
  %313 = lshr i64 %308, 34
  %314 = or i64 %312, %313
  %315 = shl i64 %308, 25
  %316 = lshr i64 %308, 39
  %317 = or i64 %315, %316
  %318 = xor i64 %314, %317
  %319 = xor i64 %318, %311
  %320 = and i64 %308, %271
  %321 = or i64 %308, %271
  %322 = and i64 %321, %234
  %323 = or i64 %322, %320
  %324 = add i64 %319, %323
  %325 = shl i64 %307, 50
  %326 = lshr i64 %307, 14
  %327 = or i64 %325, %326
  %328 = shl i64 %307, 46
  %329 = lshr i64 %307, 18
  %330 = or i64 %328, %329
  %331 = shl i64 %307, 23
  %332 = lshr i64 %307, 41
  %333 = or i64 %331, %332
  %334 = xor i64 %330, %333
  %335 = xor i64 %334, %327
  %336 = xor i64 %270, %233
  %337 = and i64 %307, %336
  %338 = xor i64 %337, %233
  %339 = load i64, i64* %38, align 8
  %340 = add i64 %147, -1606136188198331460
  %341 = add i64 %340, %339
  %342 = add i64 %341, %338
  %343 = add i64 %342, %335
  %344 = add i64 %343, %143
  %345 = add i64 %324, %343
  %346 = shl i64 %345, 36
  %347 = lshr i64 %345, 28
  %348 = or i64 %346, %347
  %349 = shl i64 %345, 30
  %350 = lshr i64 %345, 34
  %351 = or i64 %349, %350
  %352 = shl i64 %345, 25
  %353 = lshr i64 %345, 39
  %354 = or i64 %352, %353
  %355 = xor i64 %351, %354
  %356 = xor i64 %355, %348
  %357 = and i64 %345, %308
  %358 = or i64 %345, %308
  %359 = and i64 %358, %271
  %360 = or i64 %359, %357
  %361 = add i64 %356, %360
  %362 = shl i64 %344, 50
  %363 = lshr i64 %344, 14
  %364 = or i64 %362, %363
  %365 = shl i64 %344, 46
  %366 = lshr i64 %344, 18
  %367 = or i64 %365, %366
  %368 = shl i64 %344, 23
  %369 = lshr i64 %344, 41
  %370 = or i64 %368, %369
  %371 = xor i64 %367, %370
  %372 = xor i64 %371, %364
  %373 = xor i64 %307, %270
  %374 = and i64 %344, %373
  %375 = xor i64 %374, %270
  %376 = load i64, i64* %39, align 16
  %377 = add i64 %376, 4131703408338449720
  %378 = add i64 %377, %233
  %379 = add i64 %378, %375
  %380 = add i64 %379, %372
  %381 = add i64 %380, %234
  %382 = add i64 %361, %380
  %383 = shl i64 %382, 36
  %384 = lshr i64 %382, 28
  %385 = or i64 %383, %384
  %386 = shl i64 %382, 30
  %387 = lshr i64 %382, 34
  %388 = or i64 %386, %387
  %389 = shl i64 %382, 25
  %390 = lshr i64 %382, 39
  %391 = or i64 %389, %390
  %392 = xor i64 %388, %391
  %393 = xor i64 %392, %385
  %394 = and i64 %382, %345
  %395 = or i64 %382, %345
  %396 = and i64 %395, %308
  %397 = or i64 %396, %394
  %398 = add i64 %393, %397
  %399 = shl i64 %381, 50
  %400 = lshr i64 %381, 14
  %401 = or i64 %399, %400
  %402 = shl i64 %381, 46
  %403 = lshr i64 %381, 18
  %404 = or i64 %402, %403
  %405 = shl i64 %381, 23
  %406 = lshr i64 %381, 41
  %407 = or i64 %405, %406
  %408 = xor i64 %404, %407
  %409 = xor i64 %408, %401
  %410 = xor i64 %344, %307
  %411 = and i64 %381, %410
  %412 = xor i64 %411, %307
  %413 = load i64, i64* %40, align 8
  %414 = add i64 %413, 6480981068601479193
  %415 = add i64 %414, %270
  %416 = add i64 %415, %412
  %417 = add i64 %416, %409
  %418 = add i64 %417, %271
  %419 = add i64 %398, %417
  %420 = shl i64 %419, 36
  %421 = lshr i64 %419, 28
  %422 = or i64 %420, %421
  %423 = shl i64 %419, 30
  %424 = lshr i64 %419, 34
  %425 = or i64 %423, %424
  %426 = shl i64 %419, 25
  %427 = lshr i64 %419, 39
  %428 = or i64 %426, %427
  %429 = xor i64 %425, %428
  %430 = xor i64 %429, %422
  %431 = and i64 %419, %382
  %432 = or i64 %419, %382
  %433 = and i64 %432, %345
  %434 = or i64 %433, %431
  %435 = add i64 %430, %434
  %436 = shl i64 %418, 50
  %437 = lshr i64 %418, 14
  %438 = or i64 %436, %437
  %439 = shl i64 %418, 46
  %440 = lshr i64 %418, 18
  %441 = or i64 %439, %440
  %442 = shl i64 %418, 23
  %443 = lshr i64 %418, 41
  %444 = or i64 %442, %443
  %445 = xor i64 %441, %444
  %446 = xor i64 %445, %438
  %447 = xor i64 %381, %344
  %448 = and i64 %418, %447
  %449 = xor i64 %448, %344
  %450 = load i64, i64* %41, align 16
  %451 = add i64 %450, -7908458776815382629
  %452 = add i64 %451, %307
  %453 = add i64 %452, %449
  %454 = add i64 %453, %446
  %455 = add i64 %454, %308
  %456 = add i64 %435, %454
  %457 = shl i64 %456, 36
  %458 = lshr i64 %456, 28
  %459 = or i64 %457, %458
  %460 = shl i64 %456, 30
  %461 = lshr i64 %456, 34
  %462 = or i64 %460, %461
  %463 = shl i64 %456, 25
  %464 = lshr i64 %456, 39
  %465 = or i64 %463, %464
  %466 = xor i64 %462, %465
  %467 = xor i64 %466, %459
  %468 = and i64 %456, %419
  %469 = or i64 %456, %419
  %470 = and i64 %469, %382
  %471 = or i64 %470, %468
  %472 = add i64 %467, %471
  %473 = shl i64 %455, 50
  %474 = lshr i64 %455, 14
  %475 = or i64 %473, %474
  %476 = shl i64 %455, 46
  %477 = lshr i64 %455, 18
  %478 = or i64 %476, %477
  %479 = shl i64 %455, 23
  %480 = lshr i64 %455, 41
  %481 = or i64 %479, %480
  %482 = xor i64 %478, %481
  %483 = xor i64 %482, %475
  %484 = xor i64 %418, %381
  %485 = and i64 %455, %484
  %486 = xor i64 %485, %381
  %487 = load i64, i64* %42, align 8
  %488 = add i64 %487, -6116909921290321640
  %489 = add i64 %488, %344
  %490 = add i64 %489, %486
  %491 = add i64 %490, %483
  %492 = add i64 %491, %345
  %493 = add i64 %472, %491
  %494 = shl i64 %493, 36
  %495 = lshr i64 %493, 28
  %496 = or i64 %494, %495
  %497 = shl i64 %493, 30
  %498 = lshr i64 %493, 34
  %499 = or i64 %497, %498
  %500 = shl i64 %493, 25
  %501 = lshr i64 %493, 39
  %502 = or i64 %500, %501
  %503 = xor i64 %499, %502
  %504 = xor i64 %503, %496
  %505 = and i64 %493, %456
  %506 = or i64 %493, %456
  %507 = and i64 %506, %419
  %508 = or i64 %507, %505
  %509 = add i64 %504, %508
  %510 = shl i64 %492, 50
  %511 = lshr i64 %492, 14
  %512 = or i64 %510, %511
  %513 = shl i64 %492, 46
  %514 = lshr i64 %492, 18
  %515 = or i64 %513, %514
  %516 = shl i64 %492, 23
  %517 = lshr i64 %492, 41
  %518 = or i64 %516, %517
  %519 = xor i64 %515, %518
  %520 = xor i64 %519, %512
  %521 = xor i64 %455, %418
  %522 = and i64 %492, %521
  %523 = xor i64 %522, %418
  %524 = load i64, i64* %43, align 16
  %525 = add i64 %524, -2880145864133508542
  %526 = add i64 %525, %381
  %527 = add i64 %526, %523
  %528 = add i64 %527, %520
  %529 = add i64 %528, %382
  %530 = add i64 %509, %528
  %531 = shl i64 %530, 36
  %532 = lshr i64 %530, 28
  %533 = or i64 %531, %532
  %534 = shl i64 %530, 30
  %535 = lshr i64 %530, 34
  %536 = or i64 %534, %535
  %537 = shl i64 %530, 25
  %538 = lshr i64 %530, 39
  %539 = or i64 %537, %538
  %540 = xor i64 %536, %539
  %541 = xor i64 %540, %533
  %542 = and i64 %530, %493
  %543 = or i64 %530, %493
  %544 = and i64 %543, %456
  %545 = or i64 %544, %542
  %546 = add i64 %541, %545
  %547 = shl i64 %529, 50
  %548 = lshr i64 %529, 14
  %549 = or i64 %547, %548
  %550 = shl i64 %529, 46
  %551 = lshr i64 %529, 18
  %552 = or i64 %550, %551
  %553 = shl i64 %529, 23
  %554 = lshr i64 %529, 41
  %555 = or i64 %553, %554
  %556 = xor i64 %552, %555
  %557 = xor i64 %556, %549
  %558 = xor i64 %492, %455
  %559 = and i64 %529, %558
  %560 = xor i64 %559, %455
  %561 = load i64, i64* %44, align 8
  %562 = add i64 %561, 1334009975649890238
  %563 = add i64 %562, %418
  %564 = add i64 %563, %560
  %565 = add i64 %564, %557
  %566 = add i64 %565, %419
  %567 = add i64 %546, %565
  %568 = shl i64 %567, 36
  %569 = lshr i64 %567, 28
  %570 = or i64 %568, %569
  %571 = shl i64 %567, 30
  %572 = lshr i64 %567, 34
  %573 = or i64 %571, %572
  %574 = shl i64 %567, 25
  %575 = lshr i64 %567, 39
  %576 = or i64 %574, %575
  %577 = xor i64 %573, %576
  %578 = xor i64 %577, %570
  %579 = and i64 %567, %530
  %580 = or i64 %567, %530
  %581 = and i64 %580, %493
  %582 = or i64 %581, %579
  %583 = add i64 %578, %582
  %584 = shl i64 %566, 50
  %585 = lshr i64 %566, 14
  %586 = or i64 %584, %585
  %587 = shl i64 %566, 46
  %588 = lshr i64 %566, 18
  %589 = or i64 %587, %588
  %590 = shl i64 %566, 23
  %591 = lshr i64 %566, 41
  %592 = or i64 %590, %591
  %593 = xor i64 %589, %592
  %594 = xor i64 %593, %586
  %595 = xor i64 %529, %492
  %596 = and i64 %566, %595
  %597 = xor i64 %596, %492
  %598 = load i64, i64* %45, align 16
  %599 = add i64 %598, 2608012711638119052
  %600 = add i64 %599, %455
  %601 = add i64 %600, %597
  %602 = add i64 %601, %594
  %603 = add i64 %602, %456
  %604 = add i64 %583, %602
  %605 = shl i64 %604, 36
  %606 = lshr i64 %604, 28
  %607 = or i64 %605, %606
  %608 = shl i64 %604, 30
  %609 = lshr i64 %604, 34
  %610 = or i64 %608, %609
  %611 = shl i64 %604, 25
  %612 = lshr i64 %604, 39
  %613 = or i64 %611, %612
  %614 = xor i64 %610, %613
  %615 = xor i64 %614, %607
  %616 = and i64 %604, %567
  %617 = or i64 %604, %567
  %618 = and i64 %617, %530
  %619 = or i64 %618, %616
  %620 = add i64 %615, %619
  %621 = shl i64 %603, 50
  %622 = lshr i64 %603, 14
  %623 = or i64 %621, %622
  %624 = shl i64 %603, 46
  %625 = lshr i64 %603, 18
  %626 = or i64 %624, %625
  %627 = shl i64 %603, 23
  %628 = lshr i64 %603, 41
  %629 = or i64 %627, %628
  %630 = xor i64 %626, %629
  %631 = xor i64 %630, %623
  %632 = xor i64 %566, %529
  %633 = and i64 %603, %632
  %634 = xor i64 %633, %529
  %635 = load i64, i64* %46, align 8
  %636 = add i64 %635, 6128411473006802146
  %637 = add i64 %636, %492
  %638 = add i64 %637, %634
  %639 = add i64 %638, %631
  %640 = add i64 %639, %493
  %641 = add i64 %620, %639
  %642 = shl i64 %641, 36
  %643 = lshr i64 %641, 28
  %644 = or i64 %642, %643
  %645 = shl i64 %641, 30
  %646 = lshr i64 %641, 34
  %647 = or i64 %645, %646
  %648 = shl i64 %641, 25
  %649 = lshr i64 %641, 39
  %650 = or i64 %648, %649
  %651 = xor i64 %647, %650
  %652 = xor i64 %651, %644
  %653 = and i64 %641, %604
  %654 = or i64 %641, %604
  %655 = and i64 %654, %567
  %656 = or i64 %655, %653
  %657 = add i64 %652, %656
  %658 = shl i64 %640, 50
  %659 = lshr i64 %640, 14
  %660 = or i64 %658, %659
  %661 = shl i64 %640, 46
  %662 = lshr i64 %640, 18
  %663 = or i64 %661, %662
  %664 = shl i64 %640, 23
  %665 = lshr i64 %640, 41
  %666 = or i64 %664, %665
  %667 = xor i64 %663, %666
  %668 = xor i64 %667, %660
  %669 = xor i64 %603, %566
  %670 = and i64 %640, %669
  %671 = xor i64 %670, %566
  %672 = load i64, i64* %47, align 16
  %673 = add i64 %672, 8268148722764581231
  %674 = add i64 %673, %529
  %675 = add i64 %674, %671
  %676 = add i64 %675, %668
  %677 = add i64 %676, %530
  %678 = add i64 %657, %676
  %679 = shl i64 %678, 36
  %680 = lshr i64 %678, 28
  %681 = or i64 %679, %680
  %682 = shl i64 %678, 30
  %683 = lshr i64 %678, 34
  %684 = or i64 %682, %683
  %685 = shl i64 %678, 25
  %686 = lshr i64 %678, 39
  %687 = or i64 %685, %686
  %688 = xor i64 %684, %687
  %689 = xor i64 %688, %681
  %690 = and i64 %678, %641
  %691 = or i64 %678, %641
  %692 = and i64 %691, %604
  %693 = or i64 %692, %690
  %694 = add i64 %689, %693
  %695 = shl i64 %677, 50
  %696 = lshr i64 %677, 14
  %697 = or i64 %695, %696
  %698 = shl i64 %677, 46
  %699 = lshr i64 %677, 18
  %700 = or i64 %698, %699
  %701 = shl i64 %677, 23
  %702 = lshr i64 %677, 41
  %703 = or i64 %701, %702
  %704 = xor i64 %700, %703
  %705 = xor i64 %704, %697
  %706 = xor i64 %640, %603
  %707 = and i64 %677, %706
  %708 = xor i64 %707, %603
  %709 = load i64, i64* %48, align 8
  %710 = add i64 %709, -9160688886553864527
  %711 = add i64 %710, %566
  %712 = add i64 %711, %708
  %713 = add i64 %712, %705
  %714 = add i64 %713, %567
  %715 = add i64 %694, %713
  %716 = shl i64 %715, 36
  %717 = lshr i64 %715, 28
  %718 = or i64 %716, %717
  %719 = shl i64 %715, 30
  %720 = lshr i64 %715, 34
  %721 = or i64 %719, %720
  %722 = shl i64 %715, 25
  %723 = lshr i64 %715, 39
  %724 = or i64 %722, %723
  %725 = xor i64 %721, %724
  %726 = xor i64 %725, %718
  %727 = and i64 %715, %678
  %728 = or i64 %715, %678
  %729 = and i64 %728, %641
  %730 = or i64 %729, %727
  %731 = add i64 %726, %730
  %732 = shl i64 %714, 50
  %733 = lshr i64 %714, 14
  %734 = or i64 %732, %733
  %735 = shl i64 %714, 46
  %736 = lshr i64 %714, 18
  %737 = or i64 %735, %736
  %738 = shl i64 %714, 23
  %739 = lshr i64 %714, 41
  %740 = or i64 %738, %739
  %741 = xor i64 %737, %740
  %742 = xor i64 %741, %734
  %743 = xor i64 %677, %640
  %744 = and i64 %714, %743
  %745 = xor i64 %744, %640
  %746 = load i64, i64* %49, align 16
  %747 = add i64 %746, -7215885187991268811
  %748 = add i64 %747, %603
  %749 = add i64 %748, %745
  %750 = add i64 %749, %742
  %751 = add i64 %750, %604
  %752 = add i64 %731, %750
  %753 = shl i64 %752, 36
  %754 = lshr i64 %752, 28
  %755 = or i64 %753, %754
  %756 = shl i64 %752, 30
  %757 = lshr i64 %752, 34
  %758 = or i64 %756, %757
  %759 = shl i64 %752, 25
  %760 = lshr i64 %752, 39
  %761 = or i64 %759, %760
  %762 = xor i64 %758, %761
  %763 = xor i64 %762, %755
  %764 = and i64 %752, %715
  %765 = or i64 %752, %715
  %766 = and i64 %765, %678
  %767 = or i64 %766, %764
  %768 = add i64 %763, %767
  %769 = shl i64 %751, 50
  %770 = lshr i64 %751, 14
  %771 = or i64 %769, %770
  %772 = shl i64 %751, 46
  %773 = lshr i64 %751, 18
  %774 = or i64 %772, %773
  %775 = shl i64 %751, 23
  %776 = lshr i64 %751, 41
  %777 = or i64 %775, %776
  %778 = xor i64 %774, %777
  %779 = xor i64 %778, %771
  %780 = xor i64 %714, %677
  %781 = and i64 %751, %780
  %782 = xor i64 %781, %677
  %783 = load i64, i64* %50, align 8
  %784 = add i64 %783, -4495734319001033068
  %785 = add i64 %784, %640
  %786 = add i64 %785, %782
  %787 = add i64 %786, %779
  %788 = add i64 %787, %641
  %789 = add i64 %768, %787
  %790 = shl i64 %789, 36
  %791 = lshr i64 %789, 28
  %792 = or i64 %790, %791
  %793 = shl i64 %789, 30
  %794 = lshr i64 %789, 34
  %795 = or i64 %793, %794
  %796 = shl i64 %789, 25
  %797 = lshr i64 %789, 39
  %798 = or i64 %796, %797
  %799 = xor i64 %795, %798
  %800 = xor i64 %799, %792
  %801 = and i64 %789, %752
  %802 = or i64 %789, %752
  %803 = and i64 %802, %715
  %804 = or i64 %803, %801
  %805 = add i64 %800, %804
  %806 = shl i64 %788, 50
  %807 = lshr i64 %788, 14
  %808 = or i64 %806, %807
  %809 = shl i64 %788, 46
  %810 = lshr i64 %788, 18
  %811 = or i64 %809, %810
  %812 = shl i64 %788, 23
  %813 = lshr i64 %788, 41
  %814 = or i64 %812, %813
  %815 = xor i64 %811, %814
  %816 = xor i64 %815, %808
  %817 = xor i64 %751, %714
  %818 = and i64 %788, %817
  %819 = xor i64 %818, %714
  %820 = shl i64 %746, 45
  %821 = lshr i64 %746, 19
  %822 = or i64 %820, %821
  %823 = shl i64 %746, 3
  %824 = lshr i64 %746, 61
  %825 = or i64 %823, %824
  %826 = lshr i64 %746, 6
  %827 = xor i64 %825, %826
  %828 = xor i64 %827, %822
  %829 = shl i64 %265, 63
  %830 = lshr i64 %265, 1
  %831 = or i64 %829, %830
  %832 = shl i64 %265, 56
  %833 = lshr i64 %265, 8
  %834 = or i64 %832, %833
  %835 = lshr i64 %265, 7
  %836 = xor i64 %834, %835
  %837 = xor i64 %836, %831
  %838 = add i64 %837, %152
  %839 = add i64 %838, %561
  %840 = add i64 %839, %828
  store i64 %840, i64* %35, align 16
  %841 = add i64 %840, -1973867731355612462
  %842 = add i64 %841, %677
  %843 = add i64 %842, %819
  %844 = add i64 %843, %816
  %845 = add i64 %844, %678
  %846 = add i64 %805, %844
  %847 = shl i64 %846, 36
  %848 = lshr i64 %846, 28
  %849 = or i64 %847, %848
  %850 = shl i64 %846, 30
  %851 = lshr i64 %846, 34
  %852 = or i64 %850, %851
  %853 = shl i64 %846, 25
  %854 = lshr i64 %846, 39
  %855 = or i64 %853, %854
  %856 = xor i64 %852, %855
  %857 = xor i64 %856, %849
  %858 = and i64 %846, %789
  %859 = or i64 %846, %789
  %860 = and i64 %859, %752
  %861 = or i64 %860, %858
  %862 = add i64 %857, %861
  %863 = shl i64 %845, 50
  %864 = lshr i64 %845, 14
  %865 = or i64 %863, %864
  %866 = shl i64 %845, 46
  %867 = lshr i64 %845, 18
  %868 = or i64 %866, %867
  %869 = shl i64 %845, 23
  %870 = lshr i64 %845, 41
  %871 = or i64 %869, %870
  %872 = xor i64 %868, %871
  %873 = xor i64 %872, %865
  %874 = xor i64 %788, %751
  %875 = and i64 %845, %874
  %876 = xor i64 %875, %751
  %877 = load <2 x i64>, <2 x i64>* %51, align 8
  %878 = insertelement <2 x i64> undef, i64 %783, i32 0
  %879 = insertelement <2 x i64> %878, i64 %840, i32 1
  %880 = shl <2 x i64> %879, <i64 45, i64 45>
  %881 = lshr <2 x i64> %879, <i64 19, i64 19>
  %882 = or <2 x i64> %880, %881
  %883 = shl <2 x i64> %879, <i64 3, i64 3>
  %884 = lshr <2 x i64> %879, <i64 61, i64 61>
  %885 = or <2 x i64> %883, %884
  %886 = lshr <2 x i64> %879, <i64 6, i64 6>
  %887 = xor <2 x i64> %885, %886
  %888 = xor <2 x i64> %887, %882
  %889 = load <2 x i64>, <2 x i64>* %52, align 16
  %890 = load <2 x i64>, <2 x i64>* %53, align 8
  %891 = shufflevector <2 x i64> %877, <2 x i64> %890, <2 x i32> <i32 1, i32 2>
  %892 = shl <2 x i64> %891, <i64 63, i64 63>
  %893 = lshr <2 x i64> %891, <i64 1, i64 1>
  %894 = or <2 x i64> %892, %893
  %895 = shl <2 x i64> %891, <i64 56, i64 56>
  %896 = lshr <2 x i64> %891, <i64 8, i64 8>
  %897 = or <2 x i64> %895, %896
  %898 = lshr <2 x i64> %891, <i64 7, i64 7>
  %899 = xor <2 x i64> %897, %898
  %900 = xor <2 x i64> %899, %894
  %901 = add <2 x i64> %889, %877
  %902 = add <2 x i64> %901, %888
  %903 = add <2 x i64> %902, %900
  %904 = extractelement <2 x i64> %903, i32 0
  %905 = add i64 %904, -1171420211273849373
  %906 = add i64 %905, %714
  %907 = add i64 %906, %876
  %908 = add i64 %907, %873
  %909 = add i64 %908, %715
  %910 = add i64 %862, %908
  %911 = shl i64 %910, 36
  %912 = lshr i64 %910, 28
  %913 = or i64 %911, %912
  %914 = shl i64 %910, 30
  %915 = lshr i64 %910, 34
  %916 = or i64 %914, %915
  %917 = shl i64 %910, 25
  %918 = lshr i64 %910, 39
  %919 = or i64 %917, %918
  %920 = xor i64 %916, %919
  %921 = xor i64 %920, %913
  %922 = and i64 %910, %846
  %923 = or i64 %910, %846
  %924 = and i64 %923, %789
  %925 = or i64 %924, %922
  %926 = add i64 %921, %925
  %927 = shl i64 %909, 50
  %928 = lshr i64 %909, 14
  %929 = or i64 %927, %928
  %930 = shl i64 %909, 46
  %931 = lshr i64 %909, 18
  %932 = or i64 %930, %931
  %933 = shl i64 %909, 23
  %934 = lshr i64 %909, 41
  %935 = or i64 %933, %934
  %936 = xor i64 %932, %935
  %937 = xor i64 %936, %929
  %938 = xor i64 %845, %788
  %939 = and i64 %909, %938
  %940 = xor i64 %939, %788
  store <2 x i64> %903, <2 x i64>* %54, align 8
  %941 = extractelement <2 x i64> %903, i32 1
  %942 = add i64 %941, 1135362057144423861
  %943 = add i64 %942, %751
  %944 = add i64 %943, %940
  %945 = add i64 %944, %937
  %946 = add i64 %945, %752
  %947 = add i64 %926, %945
  %948 = shl i64 %947, 36
  %949 = lshr i64 %947, 28
  %950 = or i64 %948, %949
  %951 = shl i64 %947, 30
  %952 = lshr i64 %947, 34
  %953 = or i64 %951, %952
  %954 = shl i64 %947, 25
  %955 = lshr i64 %947, 39
  %956 = or i64 %954, %955
  %957 = xor i64 %953, %956
  %958 = xor i64 %957, %950
  %959 = and i64 %947, %910
  %960 = or i64 %947, %910
  %961 = and i64 %960, %846
  %962 = or i64 %961, %959
  %963 = add i64 %958, %962
  %964 = shl i64 %946, 50
  %965 = lshr i64 %946, 14
  %966 = or i64 %964, %965
  %967 = shl i64 %946, 46
  %968 = lshr i64 %946, 18
  %969 = or i64 %967, %968
  %970 = shl i64 %946, 23
  %971 = lshr i64 %946, 41
  %972 = or i64 %970, %971
  %973 = xor i64 %969, %972
  %974 = xor i64 %973, %966
  %975 = xor i64 %909, %845
  %976 = and i64 %946, %975
  %977 = xor i64 %976, %845
  %978 = shl <2 x i64> %903, <i64 45, i64 45>
  %979 = lshr <2 x i64> %903, <i64 19, i64 19>
  %980 = or <2 x i64> %978, %979
  %981 = shl <2 x i64> %903, <i64 3, i64 3>
  %982 = lshr <2 x i64> %903, <i64 61, i64 61>
  %983 = or <2 x i64> %981, %982
  %984 = lshr <2 x i64> %903, <i64 6, i64 6>
  %985 = xor <2 x i64> %983, %984
  %986 = xor <2 x i64> %985, %980
  %987 = load <2 x i64>, <2 x i64>* %55, align 16
  %988 = load <2 x i64>, <2 x i64>* %56, align 8
  %989 = shufflevector <2 x i64> %890, <2 x i64> %988, <2 x i32> <i32 1, i32 2>
  %990 = shl <2 x i64> %989, <i64 63, i64 63>
  %991 = lshr <2 x i64> %989, <i64 1, i64 1>
  %992 = or <2 x i64> %990, %991
  %993 = shl <2 x i64> %989, <i64 56, i64 56>
  %994 = lshr <2 x i64> %989, <i64 8, i64 8>
  %995 = or <2 x i64> %993, %994
  %996 = lshr <2 x i64> %989, <i64 7, i64 7>
  %997 = xor <2 x i64> %995, %996
  %998 = xor <2 x i64> %997, %992
  %999 = add <2 x i64> %987, %890
  %1000 = add <2 x i64> %999, %986
  %1001 = add <2 x i64> %1000, %998
  %1002 = extractelement <2 x i64> %1001, i32 0
  %1003 = add i64 %1002, 2597628984639134821
  %1004 = add i64 %1003, %788
  %1005 = add i64 %1004, %977
  %1006 = add i64 %1005, %974
  %1007 = add i64 %1006, %789
  %1008 = add i64 %963, %1006
  %1009 = shl i64 %1008, 36
  %1010 = lshr i64 %1008, 28
  %1011 = or i64 %1009, %1010
  %1012 = shl i64 %1008, 30
  %1013 = lshr i64 %1008, 34
  %1014 = or i64 %1012, %1013
  %1015 = shl i64 %1008, 25
  %1016 = lshr i64 %1008, 39
  %1017 = or i64 %1015, %1016
  %1018 = xor i64 %1014, %1017
  %1019 = xor i64 %1018, %1011
  %1020 = and i64 %1008, %947
  %1021 = or i64 %1008, %947
  %1022 = and i64 %1021, %910
  %1023 = or i64 %1022, %1020
  %1024 = add i64 %1019, %1023
  %1025 = shl i64 %1007, 50
  %1026 = lshr i64 %1007, 14
  %1027 = or i64 %1025, %1026
  %1028 = shl i64 %1007, 46
  %1029 = lshr i64 %1007, 18
  %1030 = or i64 %1028, %1029
  %1031 = shl i64 %1007, 23
  %1032 = lshr i64 %1007, 41
  %1033 = or i64 %1031, %1032
  %1034 = xor i64 %1030, %1033
  %1035 = xor i64 %1034, %1027
  %1036 = xor i64 %946, %909
  %1037 = and i64 %1007, %1036
  %1038 = xor i64 %1037, %909
  store <2 x i64> %1001, <2 x i64>* %57, align 8
  %1039 = extractelement <2 x i64> %1001, i32 1
  %1040 = add i64 %1039, 3308224258029322869
  %1041 = add i64 %1040, %845
  %1042 = add i64 %1041, %1038
  %1043 = add i64 %1042, %1035
  %1044 = add i64 %1043, %846
  %1045 = add i64 %1024, %1043
  %1046 = shl i64 %1045, 36
  %1047 = lshr i64 %1045, 28
  %1048 = or i64 %1046, %1047
  %1049 = shl i64 %1045, 30
  %1050 = lshr i64 %1045, 34
  %1051 = or i64 %1049, %1050
  %1052 = shl i64 %1045, 25
  %1053 = lshr i64 %1045, 39
  %1054 = or i64 %1052, %1053
  %1055 = xor i64 %1051, %1054
  %1056 = xor i64 %1055, %1048
  %1057 = and i64 %1045, %1008
  %1058 = or i64 %1045, %1008
  %1059 = and i64 %1058, %947
  %1060 = or i64 %1059, %1057
  %1061 = add i64 %1056, %1060
  %1062 = shl i64 %1044, 50
  %1063 = lshr i64 %1044, 14
  %1064 = or i64 %1062, %1063
  %1065 = shl i64 %1044, 46
  %1066 = lshr i64 %1044, 18
  %1067 = or i64 %1065, %1066
  %1068 = shl i64 %1044, 23
  %1069 = lshr i64 %1044, 41
  %1070 = or i64 %1068, %1069
  %1071 = xor i64 %1067, %1070
  %1072 = xor i64 %1071, %1064
  %1073 = xor i64 %1007, %946
  %1074 = and i64 %1044, %1073
  %1075 = xor i64 %1074, %946
  %1076 = shl <2 x i64> %1001, <i64 45, i64 45>
  %1077 = lshr <2 x i64> %1001, <i64 19, i64 19>
  %1078 = or <2 x i64> %1076, %1077
  %1079 = shl <2 x i64> %1001, <i64 3, i64 3>
  %1080 = lshr <2 x i64> %1001, <i64 61, i64 61>
  %1081 = or <2 x i64> %1079, %1080
  %1082 = lshr <2 x i64> %1001, <i64 6, i64 6>
  %1083 = xor <2 x i64> %1081, %1082
  %1084 = xor <2 x i64> %1083, %1078
  %1085 = load <2 x i64>, <2 x i64>* %58, align 16
  %1086 = load <2 x i64>, <2 x i64>* %59, align 8
  %1087 = shufflevector <2 x i64> %988, <2 x i64> %1086, <2 x i32> <i32 1, i32 2>
  %1088 = shl <2 x i64> %1087, <i64 63, i64 63>
  %1089 = lshr <2 x i64> %1087, <i64 1, i64 1>
  %1090 = or <2 x i64> %1088, %1089
  %1091 = shl <2 x i64> %1087, <i64 56, i64 56>
  %1092 = lshr <2 x i64> %1087, <i64 8, i64 8>
  %1093 = or <2 x i64> %1091, %1092
  %1094 = lshr <2 x i64> %1087, <i64 7, i64 7>
  %1095 = xor <2 x i64> %1093, %1094
  %1096 = xor <2 x i64> %1095, %1090
  %1097 = add <2 x i64> %1085, %988
  %1098 = add <2 x i64> %1097, %1084
  %1099 = add <2 x i64> %1098, %1096
  %1100 = extractelement <2 x i64> %1099, i32 0
  %1101 = add i64 %1100, 5365058923640841347
  %1102 = add i64 %1101, %909
  %1103 = add i64 %1102, %1075
  %1104 = add i64 %1103, %1072
  %1105 = add i64 %1104, %910
  %1106 = add i64 %1061, %1104
  %1107 = shl i64 %1106, 36
  %1108 = lshr i64 %1106, 28
  %1109 = or i64 %1107, %1108
  %1110 = shl i64 %1106, 30
  %1111 = lshr i64 %1106, 34
  %1112 = or i64 %1110, %1111
  %1113 = shl i64 %1106, 25
  %1114 = lshr i64 %1106, 39
  %1115 = or i64 %1113, %1114
  %1116 = xor i64 %1112, %1115
  %1117 = xor i64 %1116, %1109
  %1118 = and i64 %1106, %1045
  %1119 = or i64 %1106, %1045
  %1120 = and i64 %1119, %1008
  %1121 = or i64 %1120, %1118
  %1122 = add i64 %1117, %1121
  %1123 = shl i64 %1105, 50
  %1124 = lshr i64 %1105, 14
  %1125 = or i64 %1123, %1124
  %1126 = shl i64 %1105, 46
  %1127 = lshr i64 %1105, 18
  %1128 = or i64 %1126, %1127
  %1129 = shl i64 %1105, 23
  %1130 = lshr i64 %1105, 41
  %1131 = or i64 %1129, %1130
  %1132 = xor i64 %1128, %1131
  %1133 = xor i64 %1132, %1125
  %1134 = xor i64 %1044, %1007
  %1135 = and i64 %1105, %1134
  %1136 = xor i64 %1135, %1007
  store <2 x i64> %1099, <2 x i64>* %60, align 8
  %1137 = extractelement <2 x i64> %1099, i32 1
  %1138 = add i64 %1137, 6679025012923562964
  %1139 = add i64 %1138, %946
  %1140 = add i64 %1139, %1136
  %1141 = add i64 %1140, %1133
  %1142 = add i64 %1141, %947
  %1143 = add i64 %1122, %1141
  %1144 = shl i64 %1143, 36
  %1145 = lshr i64 %1143, 28
  %1146 = or i64 %1144, %1145
  %1147 = shl i64 %1143, 30
  %1148 = lshr i64 %1143, 34
  %1149 = or i64 %1147, %1148
  %1150 = shl i64 %1143, 25
  %1151 = lshr i64 %1143, 39
  %1152 = or i64 %1150, %1151
  %1153 = xor i64 %1149, %1152
  %1154 = xor i64 %1153, %1146
  %1155 = and i64 %1143, %1106
  %1156 = or i64 %1143, %1106
  %1157 = and i64 %1156, %1045
  %1158 = or i64 %1157, %1155
  %1159 = add i64 %1154, %1158
  %1160 = shl i64 %1142, 50
  %1161 = lshr i64 %1142, 14
  %1162 = or i64 %1160, %1161
  %1163 = shl i64 %1142, 46
  %1164 = lshr i64 %1142, 18
  %1165 = or i64 %1163, %1164
  %1166 = shl i64 %1142, 23
  %1167 = lshr i64 %1142, 41
  %1168 = or i64 %1166, %1167
  %1169 = xor i64 %1165, %1168
  %1170 = xor i64 %1169, %1162
  %1171 = xor i64 %1105, %1044
  %1172 = and i64 %1142, %1171
  %1173 = xor i64 %1172, %1044
  %1174 = shl <2 x i64> %1099, <i64 45, i64 45>
  %1175 = lshr <2 x i64> %1099, <i64 19, i64 19>
  %1176 = or <2 x i64> %1174, %1175
  %1177 = shl <2 x i64> %1099, <i64 3, i64 3>
  %1178 = lshr <2 x i64> %1099, <i64 61, i64 61>
  %1179 = or <2 x i64> %1177, %1178
  %1180 = lshr <2 x i64> %1099, <i64 6, i64 6>
  %1181 = xor <2 x i64> %1179, %1180
  %1182 = xor <2 x i64> %1181, %1176
  %1183 = load <2 x i64>, <2 x i64>* %61, align 16
  %1184 = load <2 x i64>, <2 x i64>* %62, align 8
  %1185 = shufflevector <2 x i64> %1086, <2 x i64> %1184, <2 x i32> <i32 1, i32 2>
  %1186 = shl <2 x i64> %1185, <i64 63, i64 63>
  %1187 = lshr <2 x i64> %1185, <i64 1, i64 1>
  %1188 = or <2 x i64> %1186, %1187
  %1189 = shl <2 x i64> %1185, <i64 56, i64 56>
  %1190 = lshr <2 x i64> %1185, <i64 8, i64 8>
  %1191 = or <2 x i64> %1189, %1190
  %1192 = lshr <2 x i64> %1185, <i64 7, i64 7>
  %1193 = xor <2 x i64> %1191, %1192
  %1194 = xor <2 x i64> %1193, %1188
  %1195 = add <2 x i64> %1183, %1086
  %1196 = add <2 x i64> %1195, %1182
  %1197 = add <2 x i64> %1196, %1194
  %1198 = extractelement <2 x i64> %1197, i32 0
  %1199 = add i64 %1198, 8573033837759648693
  %1200 = add i64 %1199, %1007
  %1201 = add i64 %1200, %1173
  %1202 = add i64 %1201, %1170
  %1203 = add i64 %1202, %1008
  %1204 = add i64 %1159, %1202
  %1205 = shl i64 %1204, 36
  %1206 = lshr i64 %1204, 28
  %1207 = or i64 %1205, %1206
  %1208 = shl i64 %1204, 30
  %1209 = lshr i64 %1204, 34
  %1210 = or i64 %1208, %1209
  %1211 = shl i64 %1204, 25
  %1212 = lshr i64 %1204, 39
  %1213 = or i64 %1211, %1212
  %1214 = xor i64 %1210, %1213
  %1215 = xor i64 %1214, %1207
  %1216 = and i64 %1204, %1143
  %1217 = or i64 %1204, %1143
  %1218 = and i64 %1217, %1106
  %1219 = or i64 %1218, %1216
  %1220 = add i64 %1215, %1219
  %1221 = shl i64 %1203, 50
  %1222 = lshr i64 %1203, 14
  %1223 = or i64 %1221, %1222
  %1224 = shl i64 %1203, 46
  %1225 = lshr i64 %1203, 18
  %1226 = or i64 %1224, %1225
  %1227 = shl i64 %1203, 23
  %1228 = lshr i64 %1203, 41
  %1229 = or i64 %1227, %1228
  %1230 = xor i64 %1226, %1229
  %1231 = xor i64 %1230, %1223
  %1232 = xor i64 %1142, %1105
  %1233 = and i64 %1203, %1232
  %1234 = xor i64 %1233, %1105
  store <2 x i64> %1197, <2 x i64>* %63, align 8
  %1235 = extractelement <2 x i64> %1197, i32 1
  %1236 = add i64 %1235, -7476448914759557205
  %1237 = add i64 %1236, %1044
  %1238 = add i64 %1237, %1234
  %1239 = add i64 %1238, %1231
  %1240 = add i64 %1239, %1045
  %1241 = add i64 %1220, %1239
  %1242 = shl i64 %1241, 36
  %1243 = lshr i64 %1241, 28
  %1244 = or i64 %1242, %1243
  %1245 = shl i64 %1241, 30
  %1246 = lshr i64 %1241, 34
  %1247 = or i64 %1245, %1246
  %1248 = shl i64 %1241, 25
  %1249 = lshr i64 %1241, 39
  %1250 = or i64 %1248, %1249
  %1251 = xor i64 %1247, %1250
  %1252 = xor i64 %1251, %1244
  %1253 = and i64 %1241, %1204
  %1254 = or i64 %1241, %1204
  %1255 = and i64 %1254, %1143
  %1256 = or i64 %1255, %1253
  %1257 = add i64 %1252, %1256
  %1258 = shl i64 %1240, 50
  %1259 = lshr i64 %1240, 14
  %1260 = or i64 %1258, %1259
  %1261 = shl i64 %1240, 46
  %1262 = lshr i64 %1240, 18
  %1263 = or i64 %1261, %1262
  %1264 = shl i64 %1240, 23
  %1265 = lshr i64 %1240, 41
  %1266 = or i64 %1264, %1265
  %1267 = xor i64 %1263, %1266
  %1268 = xor i64 %1267, %1260
  %1269 = xor i64 %1203, %1142
  %1270 = and i64 %1240, %1269
  %1271 = xor i64 %1270, %1142
  %1272 = shl <2 x i64> %1197, <i64 45, i64 45>
  %1273 = lshr <2 x i64> %1197, <i64 19, i64 19>
  %1274 = or <2 x i64> %1272, %1273
  %1275 = shl <2 x i64> %1197, <i64 3, i64 3>
  %1276 = lshr <2 x i64> %1197, <i64 61, i64 61>
  %1277 = or <2 x i64> %1275, %1276
  %1278 = lshr <2 x i64> %1197, <i64 6, i64 6>
  %1279 = xor <2 x i64> %1277, %1278
  %1280 = xor <2 x i64> %1279, %1274
  %1281 = load <2 x i64>, <2 x i64>* %64, align 16
  %1282 = load <2 x i64>, <2 x i64>* %65, align 8
  %1283 = shufflevector <2 x i64> %1184, <2 x i64> %1282, <2 x i32> <i32 1, i32 2>
  %1284 = shl <2 x i64> %1283, <i64 63, i64 63>
  %1285 = lshr <2 x i64> %1283, <i64 1, i64 1>
  %1286 = or <2 x i64> %1284, %1285
  %1287 = shl <2 x i64> %1283, <i64 56, i64 56>
  %1288 = lshr <2 x i64> %1283, <i64 8, i64 8>
  %1289 = or <2 x i64> %1287, %1288
  %1290 = lshr <2 x i64> %1283, <i64 7, i64 7>
  %1291 = xor <2 x i64> %1289, %1290
  %1292 = xor <2 x i64> %1291, %1286
  %1293 = add <2 x i64> %1281, %1184
  %1294 = add <2 x i64> %1293, %1280
  %1295 = add <2 x i64> %1294, %1292
  %1296 = extractelement <2 x i64> %1295, i32 0
  %1297 = add i64 %1296, -6327057829258317296
  %1298 = add i64 %1297, %1105
  %1299 = add i64 %1298, %1271
  %1300 = add i64 %1299, %1268
  %1301 = add i64 %1300, %1106
  %1302 = add i64 %1257, %1300
  %1303 = shl i64 %1302, 36
  %1304 = lshr i64 %1302, 28
  %1305 = or i64 %1303, %1304
  %1306 = shl i64 %1302, 30
  %1307 = lshr i64 %1302, 34
  %1308 = or i64 %1306, %1307
  %1309 = shl i64 %1302, 25
  %1310 = lshr i64 %1302, 39
  %1311 = or i64 %1309, %1310
  %1312 = xor i64 %1308, %1311
  %1313 = xor i64 %1312, %1305
  %1314 = and i64 %1302, %1241
  %1315 = or i64 %1302, %1241
  %1316 = and i64 %1315, %1204
  %1317 = or i64 %1316, %1314
  %1318 = add i64 %1313, %1317
  %1319 = shl i64 %1301, 50
  %1320 = lshr i64 %1301, 14
  %1321 = or i64 %1319, %1320
  %1322 = shl i64 %1301, 46
  %1323 = lshr i64 %1301, 18
  %1324 = or i64 %1322, %1323
  %1325 = shl i64 %1301, 23
  %1326 = lshr i64 %1301, 41
  %1327 = or i64 %1325, %1326
  %1328 = xor i64 %1324, %1327
  %1329 = xor i64 %1328, %1321
  %1330 = xor i64 %1240, %1203
  %1331 = and i64 %1301, %1330
  %1332 = xor i64 %1331, %1203
  store <2 x i64> %1295, <2 x i64>* %66, align 8
  %1333 = extractelement <2 x i64> %1295, i32 1
  %1334 = add i64 %1333, -5763719355590565569
  %1335 = add i64 %1334, %1142
  %1336 = add i64 %1335, %1332
  %1337 = add i64 %1336, %1329
  %1338 = add i64 %1337, %1143
  %1339 = add i64 %1318, %1337
  %1340 = shl i64 %1339, 36
  %1341 = lshr i64 %1339, 28
  %1342 = or i64 %1340, %1341
  %1343 = shl i64 %1339, 30
  %1344 = lshr i64 %1339, 34
  %1345 = or i64 %1343, %1344
  %1346 = shl i64 %1339, 25
  %1347 = lshr i64 %1339, 39
  %1348 = or i64 %1346, %1347
  %1349 = xor i64 %1345, %1348
  %1350 = xor i64 %1349, %1342
  %1351 = and i64 %1339, %1302
  %1352 = or i64 %1339, %1302
  %1353 = and i64 %1352, %1241
  %1354 = or i64 %1353, %1351
  %1355 = add i64 %1350, %1354
  %1356 = shl i64 %1338, 50
  %1357 = lshr i64 %1338, 14
  %1358 = or i64 %1356, %1357
  %1359 = shl i64 %1338, 46
  %1360 = lshr i64 %1338, 18
  %1361 = or i64 %1359, %1360
  %1362 = shl i64 %1338, 23
  %1363 = lshr i64 %1338, 41
  %1364 = or i64 %1362, %1363
  %1365 = xor i64 %1361, %1364
  %1366 = xor i64 %1365, %1358
  %1367 = xor i64 %1301, %1240
  %1368 = and i64 %1338, %1367
  %1369 = xor i64 %1368, %1240
  %1370 = shl <2 x i64> %1295, <i64 45, i64 45>
  %1371 = lshr <2 x i64> %1295, <i64 19, i64 19>
  %1372 = or <2 x i64> %1370, %1371
  %1373 = shl <2 x i64> %1295, <i64 3, i64 3>
  %1374 = lshr <2 x i64> %1295, <i64 61, i64 61>
  %1375 = or <2 x i64> %1373, %1374
  %1376 = lshr <2 x i64> %1295, <i64 6, i64 6>
  %1377 = xor <2 x i64> %1375, %1376
  %1378 = xor <2 x i64> %1377, %1372
  %1379 = load <2 x i64>, <2 x i64>* %67, align 16
  %1380 = load <2 x i64>, <2 x i64>* %68, align 8
  %1381 = shufflevector <2 x i64> %1282, <2 x i64> %1380, <2 x i32> <i32 1, i32 2>
  %1382 = shl <2 x i64> %1381, <i64 63, i64 63>
  %1383 = lshr <2 x i64> %1381, <i64 1, i64 1>
  %1384 = or <2 x i64> %1382, %1383
  %1385 = shl <2 x i64> %1381, <i64 56, i64 56>
  %1386 = lshr <2 x i64> %1381, <i64 8, i64 8>
  %1387 = or <2 x i64> %1385, %1386
  %1388 = lshr <2 x i64> %1381, <i64 7, i64 7>
  %1389 = xor <2 x i64> %1387, %1388
  %1390 = xor <2 x i64> %1389, %1384
  %1391 = add <2 x i64> %1379, %1282
  %1392 = add <2 x i64> %1391, %1378
  %1393 = add <2 x i64> %1392, %1390
  %1394 = extractelement <2 x i64> %1393, i32 0
  %1395 = add i64 %1394, -4658551843659510044
  %1396 = add i64 %1395, %1203
  %1397 = add i64 %1396, %1369
  %1398 = add i64 %1397, %1366
  %1399 = add i64 %1398, %1204
  %1400 = add i64 %1355, %1398
  %1401 = shl i64 %1400, 36
  %1402 = lshr i64 %1400, 28
  %1403 = or i64 %1401, %1402
  %1404 = shl i64 %1400, 30
  %1405 = lshr i64 %1400, 34
  %1406 = or i64 %1404, %1405
  %1407 = shl i64 %1400, 25
  %1408 = lshr i64 %1400, 39
  %1409 = or i64 %1407, %1408
  %1410 = xor i64 %1406, %1409
  %1411 = xor i64 %1410, %1403
  %1412 = and i64 %1400, %1339
  %1413 = or i64 %1400, %1339
  %1414 = and i64 %1413, %1302
  %1415 = or i64 %1414, %1412
  %1416 = add i64 %1411, %1415
  %1417 = shl i64 %1399, 50
  %1418 = lshr i64 %1399, 14
  %1419 = or i64 %1417, %1418
  %1420 = shl i64 %1399, 46
  %1421 = lshr i64 %1399, 18
  %1422 = or i64 %1420, %1421
  %1423 = shl i64 %1399, 23
  %1424 = lshr i64 %1399, 41
  %1425 = or i64 %1423, %1424
  %1426 = xor i64 %1422, %1425
  %1427 = xor i64 %1426, %1419
  %1428 = xor i64 %1338, %1301
  %1429 = and i64 %1399, %1428
  %1430 = xor i64 %1429, %1301
  store <2 x i64> %1393, <2 x i64>* %69, align 8
  %1431 = extractelement <2 x i64> %1393, i32 1
  %1432 = add i64 %1431, -4116276920077217854
  %1433 = add i64 %1432, %1240
  %1434 = add i64 %1433, %1430
  %1435 = add i64 %1434, %1427
  %1436 = add i64 %1435, %1241
  %1437 = add i64 %1416, %1435
  %1438 = shl i64 %1437, 36
  %1439 = lshr i64 %1437, 28
  %1440 = or i64 %1438, %1439
  %1441 = shl i64 %1437, 30
  %1442 = lshr i64 %1437, 34
  %1443 = or i64 %1441, %1442
  %1444 = shl i64 %1437, 25
  %1445 = lshr i64 %1437, 39
  %1446 = or i64 %1444, %1445
  %1447 = xor i64 %1443, %1446
  %1448 = xor i64 %1447, %1440
  %1449 = and i64 %1437, %1400
  %1450 = or i64 %1437, %1400
  %1451 = and i64 %1450, %1339
  %1452 = or i64 %1451, %1449
  %1453 = add i64 %1448, %1452
  %1454 = shl i64 %1436, 50
  %1455 = lshr i64 %1436, 14
  %1456 = or i64 %1454, %1455
  %1457 = shl i64 %1436, 46
  %1458 = lshr i64 %1436, 18
  %1459 = or i64 %1457, %1458
  %1460 = shl i64 %1436, 23
  %1461 = lshr i64 %1436, 41
  %1462 = or i64 %1460, %1461
  %1463 = xor i64 %1459, %1462
  %1464 = xor i64 %1463, %1456
  %1465 = xor i64 %1399, %1338
  %1466 = and i64 %1436, %1465
  %1467 = xor i64 %1466, %1338
  %1468 = shl <2 x i64> %1393, <i64 45, i64 45>
  %1469 = lshr <2 x i64> %1393, <i64 19, i64 19>
  %1470 = or <2 x i64> %1468, %1469
  %1471 = shl <2 x i64> %1393, <i64 3, i64 3>
  %1472 = lshr <2 x i64> %1393, <i64 61, i64 61>
  %1473 = or <2 x i64> %1471, %1472
  %1474 = lshr <2 x i64> %1393, <i64 6, i64 6>
  %1475 = xor <2 x i64> %1473, %1474
  %1476 = xor <2 x i64> %1475, %1470
  %1477 = load <2 x i64>, <2 x i64>* %70, align 16
  %1478 = load i64, i64* %50, align 8
  %1479 = extractelement <2 x i64> %1380, i32 1
  %1480 = insertelement <2 x i64> undef, i64 %1479, i32 0
  %1481 = insertelement <2 x i64> %1480, i64 %1478, i32 1
  %1482 = shl <2 x i64> %1481, <i64 63, i64 63>
  %1483 = lshr <2 x i64> %1481, <i64 1, i64 1>
  %1484 = or <2 x i64> %1482, %1483
  %1485 = shl <2 x i64> %1481, <i64 56, i64 56>
  %1486 = lshr <2 x i64> %1481, <i64 8, i64 8>
  %1487 = or <2 x i64> %1485, %1486
  %1488 = lshr <2 x i64> %1481, <i64 7, i64 7>
  %1489 = xor <2 x i64> %1487, %1488
  %1490 = xor <2 x i64> %1489, %1484
  %1491 = add <2 x i64> %1477, %1380
  %1492 = add <2 x i64> %1491, %1476
  %1493 = add <2 x i64> %1492, %1490
  %1494 = extractelement <2 x i64> %1493, i32 0
  %1495 = add i64 %1494, -3051310485924567259
  %1496 = add i64 %1495, %1301
  %1497 = add i64 %1496, %1467
  %1498 = add i64 %1497, %1464
  %1499 = add i64 %1498, %1302
  %1500 = add i64 %1453, %1498
  %1501 = shl i64 %1500, 36
  %1502 = lshr i64 %1500, 28
  %1503 = or i64 %1501, %1502
  %1504 = shl i64 %1500, 30
  %1505 = lshr i64 %1500, 34
  %1506 = or i64 %1504, %1505
  %1507 = shl i64 %1500, 25
  %1508 = lshr i64 %1500, 39
  %1509 = or i64 %1507, %1508
  %1510 = xor i64 %1506, %1509
  %1511 = xor i64 %1510, %1503
  %1512 = and i64 %1500, %1437
  %1513 = or i64 %1500, %1437
  %1514 = and i64 %1513, %1400
  %1515 = or i64 %1514, %1512
  %1516 = add i64 %1511, %1515
  %1517 = shl i64 %1499, 50
  %1518 = lshr i64 %1499, 14
  %1519 = or i64 %1517, %1518
  %1520 = shl i64 %1499, 46
  %1521 = lshr i64 %1499, 18
  %1522 = or i64 %1520, %1521
  %1523 = shl i64 %1499, 23
  %1524 = lshr i64 %1499, 41
  %1525 = or i64 %1523, %1524
  %1526 = xor i64 %1522, %1525
  %1527 = xor i64 %1526, %1519
  %1528 = xor i64 %1436, %1399
  %1529 = and i64 %1499, %1528
  %1530 = xor i64 %1529, %1399
  store <2 x i64> %1493, <2 x i64>* %71, align 8
  %1531 = extractelement <2 x i64> %1493, i32 1
  %1532 = add i64 %1531, 489312712824947311
  %1533 = add i64 %1532, %1338
  %1534 = add i64 %1533, %1530
  %1535 = add i64 %1534, %1527
  %1536 = add i64 %1535, %1339
  %1537 = add i64 %1516, %1535
  %1538 = shl i64 %1537, 36
  %1539 = lshr i64 %1537, 28
  %1540 = or i64 %1538, %1539
  %1541 = shl i64 %1537, 30
  %1542 = lshr i64 %1537, 34
  %1543 = or i64 %1541, %1542
  %1544 = shl i64 %1537, 25
  %1545 = lshr i64 %1537, 39
  %1546 = or i64 %1544, %1545
  %1547 = xor i64 %1543, %1546
  %1548 = xor i64 %1547, %1540
  %1549 = and i64 %1537, %1500
  %1550 = or i64 %1537, %1500
  %1551 = and i64 %1550, %1437
  %1552 = or i64 %1551, %1549
  %1553 = add i64 %1548, %1552
  %1554 = shl i64 %1536, 50
  %1555 = lshr i64 %1536, 14
  %1556 = or i64 %1554, %1555
  %1557 = shl i64 %1536, 46
  %1558 = lshr i64 %1536, 18
  %1559 = or i64 %1557, %1558
  %1560 = shl i64 %1536, 23
  %1561 = lshr i64 %1536, 41
  %1562 = or i64 %1560, %1561
  %1563 = xor i64 %1559, %1562
  %1564 = xor i64 %1563, %1556
  %1565 = xor i64 %1499, %1436
  %1566 = and i64 %1536, %1565
  %1567 = xor i64 %1566, %1436
  %1568 = shl i64 %1494, 45
  %1569 = lshr i64 %1494, 19
  %1570 = or i64 %1568, %1569
  %1571 = shl i64 %1494, 3
  %1572 = lshr i64 %1494, 61
  %1573 = or i64 %1571, %1572
  %1574 = lshr i64 %1494, 6
  %1575 = xor i64 %1573, %1574
  %1576 = xor i64 %1575, %1570
  %1577 = load i64, i64* %43, align 16
  %1578 = load <2 x i64>, <2 x i64>* %72, align 16
  %1579 = extractelement <2 x i64> %1578, i32 0
  %1580 = shl i64 %1579, 63
  %1581 = lshr i64 %1579, 1
  %1582 = or i64 %1580, %1581
  %1583 = shl i64 %1579, 56
  %1584 = lshr i64 %1579, 8
  %1585 = or i64 %1583, %1584
  %1586 = lshr i64 %1579, 7
  %1587 = xor i64 %1585, %1586
  %1588 = xor i64 %1587, %1582
  %1589 = add i64 %1577, %1478
  %1590 = add i64 %1589, %1576
  %1591 = add i64 %1590, %1588
  store i64 %1591, i64* %50, align 8
  %1592 = add i64 %1591, 1452737877330783856
  %1593 = add i64 %1592, %1399
  %1594 = add i64 %1593, %1567
  %1595 = add i64 %1594, %1564
  %1596 = add i64 %1595, %1400
  %1597 = add i64 %1553, %1595
  %1598 = shl i64 %1597, 36
  %1599 = lshr i64 %1597, 28
  %1600 = or i64 %1598, %1599
  %1601 = shl i64 %1597, 30
  %1602 = lshr i64 %1597, 34
  %1603 = or i64 %1601, %1602
  %1604 = shl i64 %1597, 25
  %1605 = lshr i64 %1597, 39
  %1606 = or i64 %1604, %1605
  %1607 = xor i64 %1603, %1606
  %1608 = xor i64 %1607, %1600
  %1609 = and i64 %1597, %1537
  %1610 = or i64 %1597, %1537
  %1611 = and i64 %1610, %1500
  %1612 = or i64 %1611, %1609
  %1613 = add i64 %1608, %1612
  %1614 = shl i64 %1596, 50
  %1615 = lshr i64 %1596, 14
  %1616 = or i64 %1614, %1615
  %1617 = shl i64 %1596, 46
  %1618 = lshr i64 %1596, 18
  %1619 = or i64 %1617, %1618
  %1620 = shl i64 %1596, 23
  %1621 = lshr i64 %1596, 41
  %1622 = or i64 %1620, %1621
  %1623 = xor i64 %1619, %1622
  %1624 = xor i64 %1623, %1616
  %1625 = xor i64 %1536, %1499
  %1626 = and i64 %1596, %1625
  %1627 = xor i64 %1626, %1499
  %1628 = insertelement <2 x i64> undef, i64 %1531, i32 0
  %1629 = insertelement <2 x i64> %1628, i64 %1591, i32 1
  %1630 = shl <2 x i64> %1629, <i64 45, i64 45>
  %1631 = lshr <2 x i64> %1629, <i64 19, i64 19>
  %1632 = or <2 x i64> %1630, %1631
  %1633 = shl <2 x i64> %1629, <i64 3, i64 3>
  %1634 = lshr <2 x i64> %1629, <i64 61, i64 61>
  %1635 = or <2 x i64> %1633, %1634
  %1636 = lshr <2 x i64> %1629, <i64 6, i64 6>
  %1637 = xor <2 x i64> %1635, %1636
  %1638 = xor <2 x i64> %1637, %1632
  %1639 = load <2 x i64>, <2 x i64>* %73, align 8
  %1640 = load <2 x i64>, <2 x i64>* %74, align 16
  %1641 = shufflevector <2 x i64> %1578, <2 x i64> %1640, <2 x i32> <i32 1, i32 2>
  %1642 = shl <2 x i64> %1641, <i64 63, i64 63>
  %1643 = lshr <2 x i64> %1641, <i64 1, i64 1>
  %1644 = or <2 x i64> %1642, %1643
  %1645 = shl <2 x i64> %1641, <i64 56, i64 56>
  %1646 = lshr <2 x i64> %1641, <i64 8, i64 8>
  %1647 = or <2 x i64> %1645, %1646
  %1648 = lshr <2 x i64> %1641, <i64 7, i64 7>
  %1649 = xor <2 x i64> %1647, %1648
  %1650 = xor <2 x i64> %1649, %1644
  %1651 = add <2 x i64> %1639, %1578
  %1652 = add <2 x i64> %1651, %1638
  %1653 = add <2 x i64> %1652, %1650
  %1654 = extractelement <2 x i64> %1653, i32 0
  %1655 = add i64 %1654, 2861767655752347644
  %1656 = add i64 %1655, %1436
  %1657 = add i64 %1656, %1627
  %1658 = add i64 %1657, %1624
  %1659 = add i64 %1658, %1437
  %1660 = add i64 %1613, %1658
  %1661 = shl i64 %1660, 36
  %1662 = lshr i64 %1660, 28
  %1663 = or i64 %1661, %1662
  %1664 = shl i64 %1660, 30
  %1665 = lshr i64 %1660, 34
  %1666 = or i64 %1664, %1665
  %1667 = shl i64 %1660, 25
  %1668 = lshr i64 %1660, 39
  %1669 = or i64 %1667, %1668
  %1670 = xor i64 %1666, %1669
  %1671 = xor i64 %1670, %1663
  %1672 = and i64 %1660, %1597
  %1673 = or i64 %1660, %1597
  %1674 = and i64 %1673, %1537
  %1675 = or i64 %1674, %1672
  %1676 = add i64 %1671, %1675
  %1677 = shl i64 %1659, 50
  %1678 = lshr i64 %1659, 14
  %1679 = or i64 %1677, %1678
  %1680 = shl i64 %1659, 46
  %1681 = lshr i64 %1659, 18
  %1682 = or i64 %1680, %1681
  %1683 = shl i64 %1659, 23
  %1684 = lshr i64 %1659, 41
  %1685 = or i64 %1683, %1684
  %1686 = xor i64 %1682, %1685
  %1687 = xor i64 %1686, %1679
  %1688 = xor i64 %1596, %1536
  %1689 = and i64 %1659, %1688
  %1690 = xor i64 %1689, %1536
  store <2 x i64> %1653, <2 x i64>* %75, align 16
  %1691 = extractelement <2 x i64> %1653, i32 1
  %1692 = add i64 %1691, 3322285676063803686
  %1693 = add i64 %1692, %1499
  %1694 = add i64 %1693, %1690
  %1695 = add i64 %1694, %1687
  %1696 = add i64 %1695, %1500
  %1697 = add i64 %1676, %1695
  %1698 = shl i64 %1697, 36
  %1699 = lshr i64 %1697, 28
  %1700 = or i64 %1698, %1699
  %1701 = shl i64 %1697, 30
  %1702 = lshr i64 %1697, 34
  %1703 = or i64 %1701, %1702
  %1704 = shl i64 %1697, 25
  %1705 = lshr i64 %1697, 39
  %1706 = or i64 %1704, %1705
  %1707 = xor i64 %1703, %1706
  %1708 = xor i64 %1707, %1700
  %1709 = and i64 %1697, %1660
  %1710 = or i64 %1697, %1660
  %1711 = and i64 %1710, %1597
  %1712 = or i64 %1711, %1709
  %1713 = add i64 %1708, %1712
  %1714 = shl i64 %1696, 50
  %1715 = lshr i64 %1696, 14
  %1716 = or i64 %1714, %1715
  %1717 = shl i64 %1696, 46
  %1718 = lshr i64 %1696, 18
  %1719 = or i64 %1717, %1718
  %1720 = shl i64 %1696, 23
  %1721 = lshr i64 %1696, 41
  %1722 = or i64 %1720, %1721
  %1723 = xor i64 %1719, %1722
  %1724 = xor i64 %1723, %1716
  %1725 = xor i64 %1659, %1596
  %1726 = and i64 %1696, %1725
  %1727 = xor i64 %1726, %1596
  %1728 = shl <2 x i64> %1653, <i64 45, i64 45>
  %1729 = lshr <2 x i64> %1653, <i64 19, i64 19>
  %1730 = or <2 x i64> %1728, %1729
  %1731 = shl <2 x i64> %1653, <i64 3, i64 3>
  %1732 = lshr <2 x i64> %1653, <i64 61, i64 61>
  %1733 = or <2 x i64> %1731, %1732
  %1734 = lshr <2 x i64> %1653, <i64 6, i64 6>
  %1735 = xor <2 x i64> %1733, %1734
  %1736 = xor <2 x i64> %1735, %1730
  %1737 = load <2 x i64>, <2 x i64>* %76, align 8
  %1738 = load <2 x i64>, <2 x i64>* %77, align 16
  %1739 = shufflevector <2 x i64> %1640, <2 x i64> %1738, <2 x i32> <i32 1, i32 2>
  %1740 = shl <2 x i64> %1739, <i64 63, i64 63>
  %1741 = lshr <2 x i64> %1739, <i64 1, i64 1>
  %1742 = or <2 x i64> %1740, %1741
  %1743 = shl <2 x i64> %1739, <i64 56, i64 56>
  %1744 = lshr <2 x i64> %1739, <i64 8, i64 8>
  %1745 = or <2 x i64> %1743, %1744
  %1746 = lshr <2 x i64> %1739, <i64 7, i64 7>
  %1747 = xor <2 x i64> %1745, %1746
  %1748 = xor <2 x i64> %1747, %1742
  %1749 = add <2 x i64> %1737, %1640
  %1750 = add <2 x i64> %1749, %1736
  %1751 = add <2 x i64> %1750, %1748
  %1752 = extractelement <2 x i64> %1751, i32 0
  %1753 = add i64 %1752, 5560940570517711597
  %1754 = add i64 %1753, %1536
  %1755 = add i64 %1754, %1727
  %1756 = add i64 %1755, %1724
  %1757 = add i64 %1756, %1537
  %1758 = add i64 %1713, %1756
  %1759 = shl i64 %1758, 36
  %1760 = lshr i64 %1758, 28
  %1761 = or i64 %1759, %1760
  %1762 = shl i64 %1758, 30
  %1763 = lshr i64 %1758, 34
  %1764 = or i64 %1762, %1763
  %1765 = shl i64 %1758, 25
  %1766 = lshr i64 %1758, 39
  %1767 = or i64 %1765, %1766
  %1768 = xor i64 %1764, %1767
  %1769 = xor i64 %1768, %1761
  %1770 = and i64 %1758, %1697
  %1771 = or i64 %1758, %1697
  %1772 = and i64 %1771, %1660
  %1773 = or i64 %1772, %1770
  %1774 = add i64 %1769, %1773
  %1775 = shl i64 %1757, 50
  %1776 = lshr i64 %1757, 14
  %1777 = or i64 %1775, %1776
  %1778 = shl i64 %1757, 46
  %1779 = lshr i64 %1757, 18
  %1780 = or i64 %1778, %1779
  %1781 = shl i64 %1757, 23
  %1782 = lshr i64 %1757, 41
  %1783 = or i64 %1781, %1782
  %1784 = xor i64 %1780, %1783
  %1785 = xor i64 %1784, %1777
  %1786 = xor i64 %1696, %1659
  %1787 = and i64 %1757, %1786
  %1788 = xor i64 %1787, %1659
  store <2 x i64> %1751, <2 x i64>* %78, align 16
  %1789 = extractelement <2 x i64> %1751, i32 1
  %1790 = add i64 %1789, 5996557281743188959
  %1791 = add i64 %1790, %1596
  %1792 = add i64 %1791, %1788
  %1793 = add i64 %1792, %1785
  %1794 = add i64 %1793, %1597
  %1795 = add i64 %1774, %1793
  %1796 = shl i64 %1795, 36
  %1797 = lshr i64 %1795, 28
  %1798 = or i64 %1796, %1797
  %1799 = shl i64 %1795, 30
  %1800 = lshr i64 %1795, 34
  %1801 = or i64 %1799, %1800
  %1802 = shl i64 %1795, 25
  %1803 = lshr i64 %1795, 39
  %1804 = or i64 %1802, %1803
  %1805 = xor i64 %1801, %1804
  %1806 = xor i64 %1805, %1798
  %1807 = and i64 %1795, %1758
  %1808 = or i64 %1795, %1758
  %1809 = and i64 %1808, %1697
  %1810 = or i64 %1809, %1807
  %1811 = add i64 %1806, %1810
  %1812 = shl i64 %1794, 50
  %1813 = lshr i64 %1794, 14
  %1814 = or i64 %1812, %1813
  %1815 = shl i64 %1794, 46
  %1816 = lshr i64 %1794, 18
  %1817 = or i64 %1815, %1816
  %1818 = shl i64 %1794, 23
  %1819 = lshr i64 %1794, 41
  %1820 = or i64 %1818, %1819
  %1821 = xor i64 %1817, %1820
  %1822 = xor i64 %1821, %1814
  %1823 = xor i64 %1757, %1696
  %1824 = and i64 %1794, %1823
  %1825 = xor i64 %1824, %1696
  %1826 = shl <2 x i64> %1751, <i64 45, i64 45>
  %1827 = lshr <2 x i64> %1751, <i64 19, i64 19>
  %1828 = or <2 x i64> %1826, %1827
  %1829 = shl <2 x i64> %1751, <i64 3, i64 3>
  %1830 = lshr <2 x i64> %1751, <i64 61, i64 61>
  %1831 = or <2 x i64> %1829, %1830
  %1832 = lshr <2 x i64> %1751, <i64 6, i64 6>
  %1833 = xor <2 x i64> %1831, %1832
  %1834 = xor <2 x i64> %1833, %1828
  %1835 = load <2 x i64>, <2 x i64>* %79, align 8
  %1836 = load <2 x i64>, <2 x i64>* %80, align 16
  %1837 = shufflevector <2 x i64> %1738, <2 x i64> %1836, <2 x i32> <i32 1, i32 2>
  %1838 = shl <2 x i64> %1837, <i64 63, i64 63>
  %1839 = lshr <2 x i64> %1837, <i64 1, i64 1>
  %1840 = or <2 x i64> %1838, %1839
  %1841 = shl <2 x i64> %1837, <i64 56, i64 56>
  %1842 = lshr <2 x i64> %1837, <i64 8, i64 8>
  %1843 = or <2 x i64> %1841, %1842
  %1844 = lshr <2 x i64> %1837, <i64 7, i64 7>
  %1845 = xor <2 x i64> %1843, %1844
  %1846 = xor <2 x i64> %1845, %1840
  %1847 = add <2 x i64> %1835, %1738
  %1848 = add <2 x i64> %1847, %1834
  %1849 = add <2 x i64> %1848, %1846
  %1850 = extractelement <2 x i64> %1849, i32 0
  %1851 = add i64 %1850, 7280758554555802590
  %1852 = add i64 %1851, %1659
  %1853 = add i64 %1852, %1825
  %1854 = add i64 %1853, %1822
  %1855 = add i64 %1854, %1660
  %1856 = add i64 %1811, %1854
  %1857 = shl i64 %1856, 36
  %1858 = lshr i64 %1856, 28
  %1859 = or i64 %1857, %1858
  %1860 = shl i64 %1856, 30
  %1861 = lshr i64 %1856, 34
  %1862 = or i64 %1860, %1861
  %1863 = shl i64 %1856, 25
  %1864 = lshr i64 %1856, 39
  %1865 = or i64 %1863, %1864
  %1866 = xor i64 %1862, %1865
  %1867 = xor i64 %1866, %1859
  %1868 = and i64 %1856, %1795
  %1869 = or i64 %1856, %1795
  %1870 = and i64 %1869, %1758
  %1871 = or i64 %1870, %1868
  %1872 = add i64 %1867, %1871
  %1873 = shl i64 %1855, 50
  %1874 = lshr i64 %1855, 14
  %1875 = or i64 %1873, %1874
  %1876 = shl i64 %1855, 46
  %1877 = lshr i64 %1855, 18
  %1878 = or i64 %1876, %1877
  %1879 = shl i64 %1855, 23
  %1880 = lshr i64 %1855, 41
  %1881 = or i64 %1879, %1880
  %1882 = xor i64 %1878, %1881
  %1883 = xor i64 %1882, %1875
  %1884 = xor i64 %1794, %1757
  %1885 = and i64 %1855, %1884
  %1886 = xor i64 %1885, %1757
  store <2 x i64> %1849, <2 x i64>* %81, align 16
  %1887 = extractelement <2 x i64> %1849, i32 1
  %1888 = add i64 %1887, 8532644243296465576
  %1889 = add i64 %1888, %1696
  %1890 = add i64 %1889, %1886
  %1891 = add i64 %1890, %1883
  %1892 = add i64 %1891, %1697
  %1893 = add i64 %1872, %1891
  %1894 = shl i64 %1893, 36
  %1895 = lshr i64 %1893, 28
  %1896 = or i64 %1894, %1895
  %1897 = shl i64 %1893, 30
  %1898 = lshr i64 %1893, 34
  %1899 = or i64 %1897, %1898
  %1900 = shl i64 %1893, 25
  %1901 = lshr i64 %1893, 39
  %1902 = or i64 %1900, %1901
  %1903 = xor i64 %1899, %1902
  %1904 = xor i64 %1903, %1896
  %1905 = and i64 %1893, %1856
  %1906 = or i64 %1893, %1856
  %1907 = and i64 %1906, %1795
  %1908 = or i64 %1907, %1905
  %1909 = add i64 %1904, %1908
  %1910 = shl i64 %1892, 50
  %1911 = lshr i64 %1892, 14
  %1912 = or i64 %1910, %1911
  %1913 = shl i64 %1892, 46
  %1914 = lshr i64 %1892, 18
  %1915 = or i64 %1913, %1914
  %1916 = shl i64 %1892, 23
  %1917 = lshr i64 %1892, 41
  %1918 = or i64 %1916, %1917
  %1919 = xor i64 %1915, %1918
  %1920 = xor i64 %1919, %1912
  %1921 = xor i64 %1855, %1794
  %1922 = and i64 %1892, %1921
  %1923 = xor i64 %1922, %1794
  %1924 = load i64, i64* %50, align 8
  %1925 = shl <2 x i64> %1849, <i64 45, i64 45>
  %1926 = lshr <2 x i64> %1849, <i64 19, i64 19>
  %1927 = or <2 x i64> %1925, %1926
  %1928 = shl <2 x i64> %1849, <i64 3, i64 3>
  %1929 = lshr <2 x i64> %1849, <i64 61, i64 61>
  %1930 = or <2 x i64> %1928, %1929
  %1931 = lshr <2 x i64> %1849, <i64 6, i64 6>
  %1932 = xor <2 x i64> %1930, %1931
  %1933 = xor <2 x i64> %1932, %1927
  %1934 = load i64, i64* %35, align 16
  %1935 = load <2 x i64>, <2 x i64>* %82, align 16
  %1936 = shufflevector <2 x i64> %1836, <2 x i64> %1935, <2 x i32> <i32 1, i32 2>
  %1937 = shl <2 x i64> %1936, <i64 63, i64 63>
  %1938 = lshr <2 x i64> %1936, <i64 1, i64 1>
  %1939 = or <2 x i64> %1937, %1938
  %1940 = shl <2 x i64> %1936, <i64 56, i64 56>
  %1941 = lshr <2 x i64> %1936, <i64 8, i64 8>
  %1942 = or <2 x i64> %1940, %1941
  %1943 = lshr <2 x i64> %1936, <i64 7, i64 7>
  %1944 = xor <2 x i64> %1942, %1943
  %1945 = xor <2 x i64> %1944, %1939
  %1946 = insertelement <2 x i64> undef, i64 %1924, i32 0
  %1947 = insertelement <2 x i64> %1946, i64 %1934, i32 1
  %1948 = add <2 x i64> %1947, %1836
  %1949 = add <2 x i64> %1948, %1933
  %1950 = add <2 x i64> %1949, %1945
  %1951 = extractelement <2 x i64> %1950, i32 0
  %1952 = add i64 %1951, -9096487096722542874
  %1953 = add i64 %1952, %1757
  %1954 = add i64 %1953, %1923
  %1955 = add i64 %1954, %1920
  %1956 = add i64 %1955, %1758
  %1957 = add i64 %1909, %1955
  %1958 = shl i64 %1957, 36
  %1959 = lshr i64 %1957, 28
  %1960 = or i64 %1958, %1959
  %1961 = shl i64 %1957, 30
  %1962 = lshr i64 %1957, 34
  %1963 = or i64 %1961, %1962
  %1964 = shl i64 %1957, 25
  %1965 = lshr i64 %1957, 39
  %1966 = or i64 %1964, %1965
  %1967 = xor i64 %1963, %1966
  %1968 = xor i64 %1967, %1960
  %1969 = and i64 %1957, %1893
  %1970 = or i64 %1957, %1893
  %1971 = and i64 %1970, %1856
  %1972 = or i64 %1971, %1969
  %1973 = add i64 %1968, %1972
  %1974 = shl i64 %1956, 50
  %1975 = lshr i64 %1956, 14
  %1976 = or i64 %1974, %1975
  %1977 = shl i64 %1956, 46
  %1978 = lshr i64 %1956, 18
  %1979 = or i64 %1977, %1978
  %1980 = shl i64 %1956, 23
  %1981 = lshr i64 %1956, 41
  %1982 = or i64 %1980, %1981
  %1983 = xor i64 %1979, %1982
  %1984 = xor i64 %1983, %1976
  %1985 = xor i64 %1892, %1855
  %1986 = and i64 %1956, %1985
  %1987 = xor i64 %1986, %1855
  store <2 x i64> %1950, <2 x i64>* %83, align 16
  %1988 = extractelement <2 x i64> %1950, i32 1
  %1989 = add i64 %1988, -7894198246740708037
  %1990 = add i64 %1989, %1794
  %1991 = add i64 %1990, %1987
  %1992 = add i64 %1991, %1984
  %1993 = add i64 %1992, %1795
  %1994 = add i64 %1973, %1992
  %1995 = shl i64 %1994, 36
  %1996 = lshr i64 %1994, 28
  %1997 = or i64 %1995, %1996
  %1998 = shl i64 %1994, 30
  %1999 = lshr i64 %1994, 34
  %2000 = or i64 %1998, %1999
  %2001 = shl i64 %1994, 25
  %2002 = lshr i64 %1994, 39
  %2003 = or i64 %2001, %2002
  %2004 = xor i64 %2000, %2003
  %2005 = xor i64 %2004, %1997
  %2006 = and i64 %1994, %1957
  %2007 = or i64 %1994, %1957
  %2008 = and i64 %2007, %1893
  %2009 = or i64 %2008, %2006
  %2010 = add i64 %2005, %2009
  %2011 = shl i64 %1993, 50
  %2012 = lshr i64 %1993, 14
  %2013 = or i64 %2011, %2012
  %2014 = shl i64 %1993, 46
  %2015 = lshr i64 %1993, 18
  %2016 = or i64 %2014, %2015
  %2017 = shl i64 %1993, 23
  %2018 = lshr i64 %1993, 41
  %2019 = or i64 %2017, %2018
  %2020 = xor i64 %2016, %2019
  %2021 = xor i64 %2020, %2013
  %2022 = xor i64 %1956, %1892
  %2023 = and i64 %1993, %2022
  %2024 = xor i64 %2023, %1892
  %2025 = shl <2 x i64> %1950, <i64 45, i64 45>
  %2026 = lshr <2 x i64> %1950, <i64 19, i64 19>
  %2027 = or <2 x i64> %2025, %2026
  %2028 = shl <2 x i64> %1950, <i64 3, i64 3>
  %2029 = lshr <2 x i64> %1950, <i64 61, i64 61>
  %2030 = or <2 x i64> %2028, %2029
  %2031 = lshr <2 x i64> %1950, <i64 6, i64 6>
  %2032 = xor <2 x i64> %2030, %2031
  %2033 = xor <2 x i64> %2032, %2027
  %2034 = load <2 x i64>, <2 x i64>* %84, align 8
  %2035 = load <2 x i64>, <2 x i64>* %85, align 16
  %2036 = shufflevector <2 x i64> %1935, <2 x i64> %2035, <2 x i32> <i32 1, i32 2>
  %2037 = shl <2 x i64> %2036, <i64 63, i64 63>
  %2038 = lshr <2 x i64> %2036, <i64 1, i64 1>
  %2039 = or <2 x i64> %2037, %2038
  %2040 = shl <2 x i64> %2036, <i64 56, i64 56>
  %2041 = lshr <2 x i64> %2036, <i64 8, i64 8>
  %2042 = or <2 x i64> %2040, %2041
  %2043 = lshr <2 x i64> %2036, <i64 7, i64 7>
  %2044 = xor <2 x i64> %2042, %2043
  %2045 = xor <2 x i64> %2044, %2039
  %2046 = add <2 x i64> %2034, %1935
  %2047 = add <2 x i64> %2046, %2033
  %2048 = add <2 x i64> %2047, %2045
  %2049 = extractelement <2 x i64> %2048, i32 0
  %2050 = add i64 %2049, -6719396339535248540
  %2051 = add i64 %2050, %1855
  %2052 = add i64 %2051, %2024
  %2053 = add i64 %2052, %2021
  %2054 = add i64 %2053, %1856
  %2055 = add i64 %2010, %2053
  %2056 = shl i64 %2055, 36
  %2057 = lshr i64 %2055, 28
  %2058 = or i64 %2056, %2057
  %2059 = shl i64 %2055, 30
  %2060 = lshr i64 %2055, 34
  %2061 = or i64 %2059, %2060
  %2062 = shl i64 %2055, 25
  %2063 = lshr i64 %2055, 39
  %2064 = or i64 %2062, %2063
  %2065 = xor i64 %2061, %2064
  %2066 = xor i64 %2065, %2058
  %2067 = and i64 %2055, %1994
  %2068 = or i64 %2055, %1994
  %2069 = and i64 %2068, %1957
  %2070 = or i64 %2069, %2067
  %2071 = add i64 %2066, %2070
  %2072 = shl i64 %2054, 50
  %2073 = lshr i64 %2054, 14
  %2074 = or i64 %2072, %2073
  %2075 = shl i64 %2054, 46
  %2076 = lshr i64 %2054, 18
  %2077 = or i64 %2075, %2076
  %2078 = shl i64 %2054, 23
  %2079 = lshr i64 %2054, 41
  %2080 = or i64 %2078, %2079
  %2081 = xor i64 %2077, %2080
  %2082 = xor i64 %2081, %2074
  %2083 = xor i64 %1993, %1956
  %2084 = and i64 %2054, %2083
  %2085 = xor i64 %2084, %1956
  store <2 x i64> %2048, <2 x i64>* %86, align 16
  %2086 = extractelement <2 x i64> %2048, i32 1
  %2087 = add i64 %2086, -6333637450476146687
  %2088 = add i64 %2087, %1892
  %2089 = add i64 %2088, %2085
  %2090 = add i64 %2089, %2082
  %2091 = add i64 %2090, %1893
  %2092 = add i64 %2071, %2090
  %2093 = shl i64 %2092, 36
  %2094 = lshr i64 %2092, 28
  %2095 = or i64 %2093, %2094
  %2096 = shl i64 %2092, 30
  %2097 = lshr i64 %2092, 34
  %2098 = or i64 %2096, %2097
  %2099 = shl i64 %2092, 25
  %2100 = lshr i64 %2092, 39
  %2101 = or i64 %2099, %2100
  %2102 = xor i64 %2098, %2101
  %2103 = xor i64 %2102, %2095
  %2104 = and i64 %2092, %2055
  %2105 = or i64 %2092, %2055
  %2106 = and i64 %2105, %1994
  %2107 = or i64 %2106, %2104
  %2108 = add i64 %2103, %2107
  %2109 = shl i64 %2091, 50
  %2110 = lshr i64 %2091, 14
  %2111 = or i64 %2109, %2110
  %2112 = shl i64 %2091, 46
  %2113 = lshr i64 %2091, 18
  %2114 = or i64 %2112, %2113
  %2115 = shl i64 %2091, 23
  %2116 = lshr i64 %2091, 41
  %2117 = or i64 %2115, %2116
  %2118 = xor i64 %2114, %2117
  %2119 = xor i64 %2118, %2111
  %2120 = xor i64 %2054, %1993
  %2121 = and i64 %2091, %2120
  %2122 = xor i64 %2121, %1993
  %2123 = shl <2 x i64> %2048, <i64 45, i64 45>
  %2124 = lshr <2 x i64> %2048, <i64 19, i64 19>
  %2125 = or <2 x i64> %2123, %2124
  %2126 = shl <2 x i64> %2048, <i64 3, i64 3>
  %2127 = lshr <2 x i64> %2048, <i64 61, i64 61>
  %2128 = or <2 x i64> %2126, %2127
  %2129 = lshr <2 x i64> %2048, <i64 6, i64 6>
  %2130 = xor <2 x i64> %2128, %2129
  %2131 = xor <2 x i64> %2130, %2125
  %2132 = load <2 x i64>, <2 x i64>* %87, align 8
  %2133 = load <2 x i64>, <2 x i64>* %88, align 16
  %2134 = shufflevector <2 x i64> %2035, <2 x i64> %2133, <2 x i32> <i32 1, i32 2>
  %2135 = shl <2 x i64> %2134, <i64 63, i64 63>
  %2136 = lshr <2 x i64> %2134, <i64 1, i64 1>
  %2137 = or <2 x i64> %2135, %2136
  %2138 = shl <2 x i64> %2134, <i64 56, i64 56>
  %2139 = lshr <2 x i64> %2134, <i64 8, i64 8>
  %2140 = or <2 x i64> %2138, %2139
  %2141 = lshr <2 x i64> %2134, <i64 7, i64 7>
  %2142 = xor <2 x i64> %2140, %2141
  %2143 = xor <2 x i64> %2142, %2137
  %2144 = add <2 x i64> %2132, %2035
  %2145 = add <2 x i64> %2144, %2131
  %2146 = add <2 x i64> %2145, %2143
  %2147 = extractelement <2 x i64> %2146, i32 0
  %2148 = add i64 %2147, -4446306890439682159
  %2149 = add i64 %2148, %1956
  %2150 = add i64 %2149, %2122
  %2151 = add i64 %2150, %2119
  %2152 = add i64 %2151, %1957
  %2153 = add i64 %2108, %2151
  %2154 = shl i64 %2153, 36
  %2155 = lshr i64 %2153, 28
  %2156 = or i64 %2154, %2155
  %2157 = shl i64 %2153, 30
  %2158 = lshr i64 %2153, 34
  %2159 = or i64 %2157, %2158
  %2160 = shl i64 %2153, 25
  %2161 = lshr i64 %2153, 39
  %2162 = or i64 %2160, %2161
  %2163 = xor i64 %2159, %2162
  %2164 = xor i64 %2163, %2156
  %2165 = and i64 %2153, %2092
  %2166 = or i64 %2153, %2092
  %2167 = and i64 %2166, %2055
  %2168 = or i64 %2167, %2165
  %2169 = add i64 %2164, %2168
  %2170 = shl i64 %2152, 50
  %2171 = lshr i64 %2152, 14
  %2172 = or i64 %2170, %2171
  %2173 = shl i64 %2152, 46
  %2174 = lshr i64 %2152, 18
  %2175 = or i64 %2173, %2174
  %2176 = shl i64 %2152, 23
  %2177 = lshr i64 %2152, 41
  %2178 = or i64 %2176, %2177
  %2179 = xor i64 %2175, %2178
  %2180 = xor i64 %2179, %2172
  %2181 = xor i64 %2091, %2054
  %2182 = and i64 %2152, %2181
  %2183 = xor i64 %2182, %2054
  store <2 x i64> %2146, <2 x i64>* %89, align 16
  %2184 = extractelement <2 x i64> %2146, i32 1
  %2185 = add i64 %2184, -4076793802049405392
  %2186 = add i64 %2185, %1993
  %2187 = add i64 %2186, %2183
  %2188 = add i64 %2187, %2180
  %2189 = add i64 %2188, %1994
  %2190 = add i64 %2169, %2188
  %2191 = shl i64 %2190, 36
  %2192 = lshr i64 %2190, 28
  %2193 = or i64 %2191, %2192
  %2194 = shl i64 %2190, 30
  %2195 = lshr i64 %2190, 34
  %2196 = or i64 %2194, %2195
  %2197 = shl i64 %2190, 25
  %2198 = lshr i64 %2190, 39
  %2199 = or i64 %2197, %2198
  %2200 = xor i64 %2196, %2199
  %2201 = xor i64 %2200, %2193
  %2202 = and i64 %2190, %2153
  %2203 = or i64 %2190, %2153
  %2204 = and i64 %2203, %2092
  %2205 = or i64 %2204, %2202
  %2206 = add i64 %2201, %2205
  %2207 = shl i64 %2189, 50
  %2208 = lshr i64 %2189, 14
  %2209 = or i64 %2207, %2208
  %2210 = shl i64 %2189, 46
  %2211 = lshr i64 %2189, 18
  %2212 = or i64 %2210, %2211
  %2213 = shl i64 %2189, 23
  %2214 = lshr i64 %2189, 41
  %2215 = or i64 %2213, %2214
  %2216 = xor i64 %2212, %2215
  %2217 = xor i64 %2216, %2209
  %2218 = xor i64 %2152, %2091
  %2219 = and i64 %2189, %2218
  %2220 = xor i64 %2219, %2091
  %2221 = shl <2 x i64> %2146, <i64 45, i64 45>
  %2222 = lshr <2 x i64> %2146, <i64 19, i64 19>
  %2223 = or <2 x i64> %2221, %2222
  %2224 = shl <2 x i64> %2146, <i64 3, i64 3>
  %2225 = lshr <2 x i64> %2146, <i64 61, i64 61>
  %2226 = or <2 x i64> %2224, %2225
  %2227 = lshr <2 x i64> %2146, <i64 6, i64 6>
  %2228 = xor <2 x i64> %2226, %2227
  %2229 = xor <2 x i64> %2228, %2223
  %2230 = load <2 x i64>, <2 x i64>* %90, align 8
  %2231 = load <2 x i64>, <2 x i64>* %91, align 16
  %2232 = shufflevector <2 x i64> %2133, <2 x i64> %2231, <2 x i32> <i32 1, i32 2>
  %2233 = shl <2 x i64> %2232, <i64 63, i64 63>
  %2234 = lshr <2 x i64> %2232, <i64 1, i64 1>
  %2235 = or <2 x i64> %2233, %2234
  %2236 = shl <2 x i64> %2232, <i64 56, i64 56>
  %2237 = lshr <2 x i64> %2232, <i64 8, i64 8>
  %2238 = or <2 x i64> %2236, %2237
  %2239 = lshr <2 x i64> %2232, <i64 7, i64 7>
  %2240 = xor <2 x i64> %2238, %2239
  %2241 = xor <2 x i64> %2240, %2235
  %2242 = add <2 x i64> %2230, %2133
  %2243 = add <2 x i64> %2242, %2229
  %2244 = add <2 x i64> %2243, %2241
  %2245 = extractelement <2 x i64> %2244, i32 0
  %2246 = add i64 %2245, -3345356375505022440
  %2247 = add i64 %2246, %2054
  %2248 = add i64 %2247, %2220
  %2249 = add i64 %2248, %2217
  %2250 = add i64 %2249, %2055
  %2251 = add i64 %2206, %2249
  %2252 = shl i64 %2251, 36
  %2253 = lshr i64 %2251, 28
  %2254 = or i64 %2252, %2253
  %2255 = shl i64 %2251, 30
  %2256 = lshr i64 %2251, 34
  %2257 = or i64 %2255, %2256
  %2258 = shl i64 %2251, 25
  %2259 = lshr i64 %2251, 39
  %2260 = or i64 %2258, %2259
  %2261 = xor i64 %2257, %2260
  %2262 = xor i64 %2261, %2254
  %2263 = and i64 %2251, %2190
  %2264 = or i64 %2251, %2190
  %2265 = and i64 %2264, %2153
  %2266 = or i64 %2265, %2263
  %2267 = add i64 %2262, %2266
  %2268 = shl i64 %2250, 50
  %2269 = lshr i64 %2250, 14
  %2270 = or i64 %2268, %2269
  %2271 = shl i64 %2250, 46
  %2272 = lshr i64 %2250, 18
  %2273 = or i64 %2271, %2272
  %2274 = shl i64 %2250, 23
  %2275 = lshr i64 %2250, 41
  %2276 = or i64 %2274, %2275
  %2277 = xor i64 %2273, %2276
  %2278 = xor i64 %2277, %2270
  %2279 = xor i64 %2189, %2152
  %2280 = and i64 %2250, %2279
  %2281 = xor i64 %2280, %2152
  store <2 x i64> %2244, <2 x i64>* %92, align 16
  %2282 = extractelement <2 x i64> %2244, i32 1
  %2283 = add i64 %2282, -2983346525034927856
  %2284 = add i64 %2283, %2091
  %2285 = add i64 %2284, %2281
  %2286 = add i64 %2285, %2278
  %2287 = add i64 %2286, %2092
  %2288 = add i64 %2267, %2286
  %2289 = shl i64 %2288, 36
  %2290 = lshr i64 %2288, 28
  %2291 = or i64 %2289, %2290
  %2292 = shl i64 %2288, 30
  %2293 = lshr i64 %2288, 34
  %2294 = or i64 %2292, %2293
  %2295 = shl i64 %2288, 25
  %2296 = lshr i64 %2288, 39
  %2297 = or i64 %2295, %2296
  %2298 = xor i64 %2294, %2297
  %2299 = xor i64 %2298, %2291
  %2300 = and i64 %2288, %2251
  %2301 = or i64 %2288, %2251
  %2302 = and i64 %2301, %2190
  %2303 = or i64 %2302, %2300
  %2304 = add i64 %2299, %2303
  %2305 = shl i64 %2287, 50
  %2306 = lshr i64 %2287, 14
  %2307 = or i64 %2305, %2306
  %2308 = shl i64 %2287, 46
  %2309 = lshr i64 %2287, 18
  %2310 = or i64 %2308, %2309
  %2311 = shl i64 %2287, 23
  %2312 = lshr i64 %2287, 41
  %2313 = or i64 %2311, %2312
  %2314 = xor i64 %2310, %2313
  %2315 = xor i64 %2314, %2307
  %2316 = xor i64 %2250, %2189
  %2317 = and i64 %2287, %2316
  %2318 = xor i64 %2317, %2189
  %2319 = shl <2 x i64> %2244, <i64 45, i64 45>
  %2320 = lshr <2 x i64> %2244, <i64 19, i64 19>
  %2321 = or <2 x i64> %2319, %2320
  %2322 = shl <2 x i64> %2244, <i64 3, i64 3>
  %2323 = lshr <2 x i64> %2244, <i64 61, i64 61>
  %2324 = or <2 x i64> %2322, %2323
  %2325 = lshr <2 x i64> %2244, <i64 6, i64 6>
  %2326 = xor <2 x i64> %2324, %2325
  %2327 = xor <2 x i64> %2326, %2321
  %2328 = load <2 x i64>, <2 x i64>* %93, align 8
  %2329 = load <2 x i64>, <2 x i64>* %94, align 16
  %2330 = shufflevector <2 x i64> %2231, <2 x i64> %2329, <2 x i32> <i32 1, i32 2>
  %2331 = shl <2 x i64> %2330, <i64 63, i64 63>
  %2332 = lshr <2 x i64> %2330, <i64 1, i64 1>
  %2333 = or <2 x i64> %2331, %2332
  %2334 = shl <2 x i64> %2330, <i64 56, i64 56>
  %2335 = lshr <2 x i64> %2330, <i64 8, i64 8>
  %2336 = or <2 x i64> %2334, %2335
  %2337 = lshr <2 x i64> %2330, <i64 7, i64 7>
  %2338 = xor <2 x i64> %2336, %2337
  %2339 = xor <2 x i64> %2338, %2333
  %2340 = add <2 x i64> %2328, %2231
  %2341 = add <2 x i64> %2340, %2327
  %2342 = add <2 x i64> %2341, %2339
  %2343 = extractelement <2 x i64> %2342, i32 0
  %2344 = add i64 %2343, -860691631967231958
  %2345 = add i64 %2344, %2152
  %2346 = add i64 %2345, %2318
  %2347 = add i64 %2346, %2315
  %2348 = add i64 %2347, %2153
  %2349 = add i64 %2304, %2347
  %2350 = shl i64 %2349, 36
  %2351 = lshr i64 %2349, 28
  %2352 = or i64 %2350, %2351
  %2353 = shl i64 %2349, 30
  %2354 = lshr i64 %2349, 34
  %2355 = or i64 %2353, %2354
  %2356 = shl i64 %2349, 25
  %2357 = lshr i64 %2349, 39
  %2358 = or i64 %2356, %2357
  %2359 = xor i64 %2355, %2358
  %2360 = xor i64 %2359, %2352
  %2361 = and i64 %2349, %2288
  %2362 = or i64 %2349, %2288
  %2363 = and i64 %2362, %2251
  %2364 = or i64 %2363, %2361
  %2365 = add i64 %2360, %2364
  %2366 = shl i64 %2348, 50
  %2367 = lshr i64 %2348, 14
  %2368 = or i64 %2366, %2367
  %2369 = shl i64 %2348, 46
  %2370 = lshr i64 %2348, 18
  %2371 = or i64 %2369, %2370
  %2372 = shl i64 %2348, 23
  %2373 = lshr i64 %2348, 41
  %2374 = or i64 %2372, %2373
  %2375 = xor i64 %2371, %2374
  %2376 = xor i64 %2375, %2368
  %2377 = xor i64 %2287, %2250
  %2378 = and i64 %2348, %2377
  %2379 = xor i64 %2378, %2250
  store <2 x i64> %2342, <2 x i64>* %95, align 16
  %2380 = extractelement <2 x i64> %2342, i32 1
  %2381 = add i64 %2380, 1182934255886127544
  %2382 = add i64 %2381, %2189
  %2383 = add i64 %2382, %2379
  %2384 = add i64 %2383, %2376
  %2385 = add i64 %2384, %2190
  %2386 = add i64 %2365, %2384
  %2387 = shl i64 %2386, 36
  %2388 = lshr i64 %2386, 28
  %2389 = or i64 %2387, %2388
  %2390 = shl i64 %2386, 30
  %2391 = lshr i64 %2386, 34
  %2392 = or i64 %2390, %2391
  %2393 = shl i64 %2386, 25
  %2394 = lshr i64 %2386, 39
  %2395 = or i64 %2393, %2394
  %2396 = xor i64 %2392, %2395
  %2397 = xor i64 %2396, %2389
  %2398 = and i64 %2386, %2349
  %2399 = or i64 %2386, %2349
  %2400 = and i64 %2399, %2288
  %2401 = or i64 %2400, %2398
  %2402 = add i64 %2397, %2401
  %2403 = shl i64 %2385, 50
  %2404 = lshr i64 %2385, 14
  %2405 = or i64 %2403, %2404
  %2406 = shl i64 %2385, 46
  %2407 = lshr i64 %2385, 18
  %2408 = or i64 %2406, %2407
  %2409 = shl i64 %2385, 23
  %2410 = lshr i64 %2385, 41
  %2411 = or i64 %2409, %2410
  %2412 = xor i64 %2408, %2411
  %2413 = xor i64 %2412, %2405
  %2414 = xor i64 %2348, %2287
  %2415 = and i64 %2385, %2414
  %2416 = xor i64 %2415, %2287
  %2417 = shl <2 x i64> %2342, <i64 45, i64 45>
  %2418 = lshr <2 x i64> %2342, <i64 19, i64 19>
  %2419 = or <2 x i64> %2417, %2418
  %2420 = shl <2 x i64> %2342, <i64 3, i64 3>
  %2421 = lshr <2 x i64> %2342, <i64 61, i64 61>
  %2422 = or <2 x i64> %2420, %2421
  %2423 = lshr <2 x i64> %2342, <i64 6, i64 6>
  %2424 = xor <2 x i64> %2422, %2423
  %2425 = xor <2 x i64> %2424, %2419
  %2426 = load <2 x i64>, <2 x i64>* %96, align 8
  %2427 = load <2 x i64>, <2 x i64>* %97, align 16
  %2428 = shufflevector <2 x i64> %2329, <2 x i64> %2427, <2 x i32> <i32 1, i32 2>
  %2429 = shl <2 x i64> %2428, <i64 63, i64 63>
  %2430 = lshr <2 x i64> %2428, <i64 1, i64 1>
  %2431 = or <2 x i64> %2429, %2430
  %2432 = shl <2 x i64> %2428, <i64 56, i64 56>
  %2433 = lshr <2 x i64> %2428, <i64 8, i64 8>
  %2434 = or <2 x i64> %2432, %2433
  %2435 = lshr <2 x i64> %2428, <i64 7, i64 7>
  %2436 = xor <2 x i64> %2434, %2435
  %2437 = xor <2 x i64> %2436, %2431
  %2438 = add <2 x i64> %2426, %2329
  %2439 = add <2 x i64> %2438, %2425
  %2440 = add <2 x i64> %2439, %2437
  %2441 = extractelement <2 x i64> %2440, i32 0
  %2442 = add i64 %2441, 1847814050463011016
  %2443 = add i64 %2442, %2250
  %2444 = add i64 %2443, %2416
  %2445 = add i64 %2444, %2413
  %2446 = add i64 %2445, %2251
  %2447 = add i64 %2402, %2445
  %2448 = shl i64 %2447, 36
  %2449 = lshr i64 %2447, 28
  %2450 = or i64 %2448, %2449
  %2451 = shl i64 %2447, 30
  %2452 = lshr i64 %2447, 34
  %2453 = or i64 %2451, %2452
  %2454 = shl i64 %2447, 25
  %2455 = lshr i64 %2447, 39
  %2456 = or i64 %2454, %2455
  %2457 = xor i64 %2453, %2456
  %2458 = xor i64 %2457, %2450
  %2459 = and i64 %2447, %2386
  %2460 = or i64 %2447, %2386
  %2461 = and i64 %2460, %2349
  %2462 = or i64 %2461, %2459
  %2463 = add i64 %2458, %2462
  %2464 = shl i64 %2446, 50
  %2465 = lshr i64 %2446, 14
  %2466 = or i64 %2464, %2465
  %2467 = shl i64 %2446, 46
  %2468 = lshr i64 %2446, 18
  %2469 = or i64 %2467, %2468
  %2470 = shl i64 %2446, 23
  %2471 = lshr i64 %2446, 41
  %2472 = or i64 %2470, %2471
  %2473 = xor i64 %2469, %2472
  %2474 = xor i64 %2473, %2466
  %2475 = xor i64 %2385, %2348
  %2476 = and i64 %2446, %2475
  %2477 = xor i64 %2476, %2348
  store <2 x i64> %2440, <2 x i64>* %98, align 16
  %2478 = extractelement <2 x i64> %2440, i32 1
  %2479 = add i64 %2478, 2177327727835720531
  %2480 = add i64 %2479, %2287
  %2481 = add i64 %2480, %2477
  %2482 = add i64 %2481, %2474
  %2483 = add i64 %2482, %2288
  %2484 = add i64 %2463, %2482
  %2485 = shl i64 %2484, 36
  %2486 = lshr i64 %2484, 28
  %2487 = or i64 %2485, %2486
  %2488 = shl i64 %2484, 30
  %2489 = lshr i64 %2484, 34
  %2490 = or i64 %2488, %2489
  %2491 = shl i64 %2484, 25
  %2492 = lshr i64 %2484, 39
  %2493 = or i64 %2491, %2492
  %2494 = xor i64 %2490, %2493
  %2495 = xor i64 %2494, %2487
  %2496 = and i64 %2484, %2447
  %2497 = or i64 %2484, %2447
  %2498 = and i64 %2497, %2386
  %2499 = or i64 %2498, %2496
  %2500 = add i64 %2495, %2499
  %2501 = shl i64 %2483, 50
  %2502 = lshr i64 %2483, 14
  %2503 = or i64 %2501, %2502
  %2504 = shl i64 %2483, 46
  %2505 = lshr i64 %2483, 18
  %2506 = or i64 %2504, %2505
  %2507 = shl i64 %2483, 23
  %2508 = lshr i64 %2483, 41
  %2509 = or i64 %2507, %2508
  %2510 = xor i64 %2506, %2509
  %2511 = xor i64 %2510, %2503
  %2512 = xor i64 %2446, %2385
  %2513 = and i64 %2483, %2512
  %2514 = xor i64 %2513, %2385
  %2515 = shl <2 x i64> %2440, <i64 45, i64 45>
  %2516 = lshr <2 x i64> %2440, <i64 19, i64 19>
  %2517 = or <2 x i64> %2515, %2516
  %2518 = shl <2 x i64> %2440, <i64 3, i64 3>
  %2519 = lshr <2 x i64> %2440, <i64 61, i64 61>
  %2520 = or <2 x i64> %2518, %2519
  %2521 = lshr <2 x i64> %2440, <i64 6, i64 6>
  %2522 = xor <2 x i64> %2520, %2521
  %2523 = xor <2 x i64> %2522, %2517
  %2524 = load <2 x i64>, <2 x i64>* %99, align 8
  %2525 = load <2 x i64>, <2 x i64>* %100, align 16
  %2526 = shufflevector <2 x i64> %2427, <2 x i64> %2525, <2 x i32> <i32 1, i32 2>
  %2527 = shl <2 x i64> %2526, <i64 63, i64 63>
  %2528 = lshr <2 x i64> %2526, <i64 1, i64 1>
  %2529 = or <2 x i64> %2527, %2528
  %2530 = shl <2 x i64> %2526, <i64 56, i64 56>
  %2531 = lshr <2 x i64> %2526, <i64 8, i64 8>
  %2532 = or <2 x i64> %2530, %2531
  %2533 = lshr <2 x i64> %2526, <i64 7, i64 7>
  %2534 = xor <2 x i64> %2532, %2533
  %2535 = xor <2 x i64> %2534, %2529
  %2536 = add <2 x i64> %2524, %2427
  %2537 = add <2 x i64> %2536, %2523
  %2538 = add <2 x i64> %2537, %2535
  %2539 = extractelement <2 x i64> %2538, i32 0
  %2540 = add i64 %2539, 2830643537854262169
  %2541 = add i64 %2540, %2348
  %2542 = add i64 %2541, %2514
  %2543 = add i64 %2542, %2511
  %2544 = add i64 %2543, %2349
  %2545 = add i64 %2500, %2543
  %2546 = shl i64 %2545, 36
  %2547 = lshr i64 %2545, 28
  %2548 = or i64 %2546, %2547
  %2549 = shl i64 %2545, 30
  %2550 = lshr i64 %2545, 34
  %2551 = or i64 %2549, %2550
  %2552 = shl i64 %2545, 25
  %2553 = lshr i64 %2545, 39
  %2554 = or i64 %2552, %2553
  %2555 = xor i64 %2551, %2554
  %2556 = xor i64 %2555, %2548
  %2557 = and i64 %2545, %2484
  %2558 = or i64 %2545, %2484
  %2559 = and i64 %2558, %2447
  %2560 = or i64 %2559, %2557
  %2561 = add i64 %2556, %2560
  %2562 = shl i64 %2544, 50
  %2563 = lshr i64 %2544, 14
  %2564 = or i64 %2562, %2563
  %2565 = shl i64 %2544, 46
  %2566 = lshr i64 %2544, 18
  %2567 = or i64 %2565, %2566
  %2568 = shl i64 %2544, 23
  %2569 = lshr i64 %2544, 41
  %2570 = or i64 %2568, %2569
  %2571 = xor i64 %2567, %2570
  %2572 = xor i64 %2571, %2564
  %2573 = xor i64 %2483, %2446
  %2574 = and i64 %2544, %2573
  %2575 = xor i64 %2574, %2446
  store <2 x i64> %2538, <2 x i64>* %101, align 16
  %2576 = extractelement <2 x i64> %2538, i32 1
  %2577 = add i64 %2576, 3796741975233480872
  %2578 = add i64 %2577, %2385
  %2579 = add i64 %2578, %2575
  %2580 = add i64 %2579, %2572
  %2581 = add i64 %2580, %2386
  %2582 = add i64 %2561, %2580
  %2583 = shl i64 %2582, 36
  %2584 = lshr i64 %2582, 28
  %2585 = or i64 %2583, %2584
  %2586 = shl i64 %2582, 30
  %2587 = lshr i64 %2582, 34
  %2588 = or i64 %2586, %2587
  %2589 = shl i64 %2582, 25
  %2590 = lshr i64 %2582, 39
  %2591 = or i64 %2589, %2590
  %2592 = xor i64 %2588, %2591
  %2593 = xor i64 %2592, %2585
  %2594 = and i64 %2582, %2545
  %2595 = or i64 %2582, %2545
  %2596 = and i64 %2595, %2484
  %2597 = or i64 %2596, %2594
  %2598 = add i64 %2593, %2597
  %2599 = shl i64 %2581, 50
  %2600 = lshr i64 %2581, 14
  %2601 = or i64 %2599, %2600
  %2602 = shl i64 %2581, 46
  %2603 = lshr i64 %2581, 18
  %2604 = or i64 %2602, %2603
  %2605 = shl i64 %2581, 23
  %2606 = lshr i64 %2581, 41
  %2607 = or i64 %2605, %2606
  %2608 = xor i64 %2604, %2607
  %2609 = xor i64 %2608, %2601
  %2610 = xor i64 %2544, %2483
  %2611 = and i64 %2581, %2610
  %2612 = xor i64 %2611, %2483
  %2613 = shl <2 x i64> %2538, <i64 45, i64 45>
  %2614 = lshr <2 x i64> %2538, <i64 19, i64 19>
  %2615 = or <2 x i64> %2613, %2614
  %2616 = shl <2 x i64> %2538, <i64 3, i64 3>
  %2617 = lshr <2 x i64> %2538, <i64 61, i64 61>
  %2618 = or <2 x i64> %2616, %2617
  %2619 = lshr <2 x i64> %2538, <i64 6, i64 6>
  %2620 = xor <2 x i64> %2618, %2619
  %2621 = xor <2 x i64> %2620, %2615
  %2622 = load <2 x i64>, <2 x i64>* %102, align 8
  %2623 = load <2 x i64>, <2 x i64>* %103, align 16
  %2624 = shufflevector <2 x i64> %2525, <2 x i64> %2623, <2 x i32> <i32 1, i32 2>
  %2625 = shl <2 x i64> %2624, <i64 63, i64 63>
  %2626 = lshr <2 x i64> %2624, <i64 1, i64 1>
  %2627 = or <2 x i64> %2625, %2626
  %2628 = shl <2 x i64> %2624, <i64 56, i64 56>
  %2629 = lshr <2 x i64> %2624, <i64 8, i64 8>
  %2630 = or <2 x i64> %2628, %2629
  %2631 = lshr <2 x i64> %2624, <i64 7, i64 7>
  %2632 = xor <2 x i64> %2630, %2631
  %2633 = xor <2 x i64> %2632, %2627
  %2634 = add <2 x i64> %2622, %2525
  %2635 = add <2 x i64> %2634, %2621
  %2636 = add <2 x i64> %2635, %2633
  %2637 = extractelement <2 x i64> %2636, i32 0
  %2638 = add i64 %2637, 4115178125766777443
  %2639 = add i64 %2638, %2446
  %2640 = add i64 %2639, %2612
  %2641 = add i64 %2640, %2609
  %2642 = add i64 %2641, %2447
  %2643 = add i64 %2598, %2641
  %2644 = shl i64 %2643, 36
  %2645 = lshr i64 %2643, 28
  %2646 = or i64 %2644, %2645
  %2647 = shl i64 %2643, 30
  %2648 = lshr i64 %2643, 34
  %2649 = or i64 %2647, %2648
  %2650 = shl i64 %2643, 25
  %2651 = lshr i64 %2643, 39
  %2652 = or i64 %2650, %2651
  %2653 = xor i64 %2649, %2652
  %2654 = xor i64 %2653, %2646
  %2655 = and i64 %2643, %2582
  %2656 = or i64 %2643, %2582
  %2657 = and i64 %2656, %2545
  %2658 = or i64 %2657, %2655
  %2659 = add i64 %2654, %2658
  %2660 = shl i64 %2642, 50
  %2661 = lshr i64 %2642, 14
  %2662 = or i64 %2660, %2661
  %2663 = shl i64 %2642, 46
  %2664 = lshr i64 %2642, 18
  %2665 = or i64 %2663, %2664
  %2666 = shl i64 %2642, 23
  %2667 = lshr i64 %2642, 41
  %2668 = or i64 %2666, %2667
  %2669 = xor i64 %2665, %2668
  %2670 = xor i64 %2669, %2662
  %2671 = xor i64 %2581, %2544
  %2672 = and i64 %2642, %2671
  %2673 = xor i64 %2672, %2544
  store <2 x i64> %2636, <2 x i64>* %104, align 16
  %2674 = extractelement <2 x i64> %2636, i32 1
  %2675 = add i64 %2674, 5681478168544905931
  %2676 = add i64 %2675, %2483
  %2677 = add i64 %2676, %2673
  %2678 = add i64 %2677, %2670
  %2679 = add i64 %2678, %2484
  %2680 = add i64 %2659, %2678
  %2681 = shl i64 %2680, 36
  %2682 = lshr i64 %2680, 28
  %2683 = or i64 %2681, %2682
  %2684 = shl i64 %2680, 30
  %2685 = lshr i64 %2680, 34
  %2686 = or i64 %2684, %2685
  %2687 = shl i64 %2680, 25
  %2688 = lshr i64 %2680, 39
  %2689 = or i64 %2687, %2688
  %2690 = xor i64 %2686, %2689
  %2691 = xor i64 %2690, %2683
  %2692 = and i64 %2680, %2643
  %2693 = or i64 %2680, %2643
  %2694 = and i64 %2693, %2582
  %2695 = or i64 %2694, %2692
  %2696 = add i64 %2691, %2695
  %2697 = shl i64 %2679, 50
  %2698 = lshr i64 %2679, 14
  %2699 = or i64 %2697, %2698
  %2700 = shl i64 %2679, 46
  %2701 = lshr i64 %2679, 18
  %2702 = or i64 %2700, %2701
  %2703 = shl i64 %2679, 23
  %2704 = lshr i64 %2679, 41
  %2705 = or i64 %2703, %2704
  %2706 = xor i64 %2702, %2705
  %2707 = xor i64 %2706, %2699
  %2708 = xor i64 %2642, %2581
  %2709 = and i64 %2679, %2708
  %2710 = xor i64 %2709, %2581
  %2711 = load i64, i64* %50, align 8
  %2712 = shl <2 x i64> %2636, <i64 45, i64 45>
  %2713 = lshr <2 x i64> %2636, <i64 19, i64 19>
  %2714 = or <2 x i64> %2712, %2713
  %2715 = shl <2 x i64> %2636, <i64 3, i64 3>
  %2716 = lshr <2 x i64> %2636, <i64 61, i64 61>
  %2717 = or <2 x i64> %2715, %2716
  %2718 = lshr <2 x i64> %2636, <i64 6, i64 6>
  %2719 = xor <2 x i64> %2717, %2718
  %2720 = xor <2 x i64> %2719, %2714
  %2721 = load i64, i64* %35, align 16
  %2722 = load <2 x i64>, <2 x i64>* %105, align 16
  %2723 = shufflevector <2 x i64> %2623, <2 x i64> %2722, <2 x i32> <i32 1, i32 2>
  %2724 = shl <2 x i64> %2723, <i64 63, i64 63>
  %2725 = lshr <2 x i64> %2723, <i64 1, i64 1>
  %2726 = or <2 x i64> %2724, %2725
  %2727 = shl <2 x i64> %2723, <i64 56, i64 56>
  %2728 = lshr <2 x i64> %2723, <i64 8, i64 8>
  %2729 = or <2 x i64> %2727, %2728
  %2730 = lshr <2 x i64> %2723, <i64 7, i64 7>
  %2731 = xor <2 x i64> %2729, %2730
  %2732 = xor <2 x i64> %2731, %2726
  %2733 = insertelement <2 x i64> undef, i64 %2711, i32 0
  %2734 = insertelement <2 x i64> %2733, i64 %2721, i32 1
  %2735 = add <2 x i64> %2734, %2623
  %2736 = add <2 x i64> %2735, %2720
  %2737 = add <2 x i64> %2736, %2732
  %2738 = extractelement <2 x i64> %2737, i32 0
  %2739 = add i64 %2738, 6601373596472566643
  %2740 = add i64 %2739, %2544
  %2741 = add i64 %2740, %2710
  %2742 = add i64 %2741, %2707
  %2743 = add i64 %2742, %2545
  %2744 = add i64 %2696, %2742
  %2745 = shl i64 %2744, 36
  %2746 = lshr i64 %2744, 28
  %2747 = or i64 %2745, %2746
  %2748 = shl i64 %2744, 30
  %2749 = lshr i64 %2744, 34
  %2750 = or i64 %2748, %2749
  %2751 = shl i64 %2744, 25
  %2752 = lshr i64 %2744, 39
  %2753 = or i64 %2751, %2752
  %2754 = xor i64 %2750, %2753
  %2755 = xor i64 %2754, %2747
  %2756 = and i64 %2744, %2680
  %2757 = or i64 %2744, %2680
  %2758 = and i64 %2757, %2643
  %2759 = or i64 %2758, %2756
  %2760 = add i64 %2755, %2759
  %2761 = shl i64 %2743, 50
  %2762 = lshr i64 %2743, 14
  %2763 = or i64 %2761, %2762
  %2764 = shl i64 %2743, 46
  %2765 = lshr i64 %2743, 18
  %2766 = or i64 %2764, %2765
  %2767 = shl i64 %2743, 23
  %2768 = lshr i64 %2743, 41
  %2769 = or i64 %2767, %2768
  %2770 = xor i64 %2766, %2769
  %2771 = xor i64 %2770, %2763
  %2772 = xor i64 %2679, %2642
  %2773 = and i64 %2743, %2772
  %2774 = xor i64 %2773, %2642
  store <2 x i64> %2737, <2 x i64>* %106, align 16
  %2775 = extractelement <2 x i64> %2737, i32 1
  %2776 = add i64 %2775, 7507060721942968483
  %2777 = add i64 %2776, %2581
  %2778 = add i64 %2777, %2774
  %2779 = add i64 %2778, %2771
  %2780 = add i64 %2779, %2582
  %2781 = add i64 %2760, %2779
  %2782 = shl i64 %2781, 36
  %2783 = lshr i64 %2781, 28
  %2784 = or i64 %2782, %2783
  %2785 = shl i64 %2781, 30
  %2786 = lshr i64 %2781, 34
  %2787 = or i64 %2785, %2786
  %2788 = shl i64 %2781, 25
  %2789 = lshr i64 %2781, 39
  %2790 = or i64 %2788, %2789
  %2791 = xor i64 %2787, %2790
  %2792 = xor i64 %2791, %2784
  %2793 = and i64 %2781, %2744
  %2794 = or i64 %2781, %2744
  %2795 = and i64 %2794, %2680
  %2796 = or i64 %2795, %2793
  %2797 = add i64 %2792, %2796
  %2798 = shl i64 %2780, 50
  %2799 = lshr i64 %2780, 14
  %2800 = or i64 %2798, %2799
  %2801 = shl i64 %2780, 46
  %2802 = lshr i64 %2780, 18
  %2803 = or i64 %2801, %2802
  %2804 = shl i64 %2780, 23
  %2805 = lshr i64 %2780, 41
  %2806 = or i64 %2804, %2805
  %2807 = xor i64 %2803, %2806
  %2808 = xor i64 %2807, %2800
  %2809 = xor i64 %2743, %2679
  %2810 = and i64 %2780, %2809
  %2811 = xor i64 %2810, %2679
  %2812 = shl <2 x i64> %2737, <i64 45, i64 45>
  %2813 = lshr <2 x i64> %2737, <i64 19, i64 19>
  %2814 = or <2 x i64> %2812, %2813
  %2815 = shl <2 x i64> %2737, <i64 3, i64 3>
  %2816 = lshr <2 x i64> %2737, <i64 61, i64 61>
  %2817 = or <2 x i64> %2815, %2816
  %2818 = lshr <2 x i64> %2737, <i64 6, i64 6>
  %2819 = xor <2 x i64> %2817, %2818
  %2820 = xor <2 x i64> %2819, %2814
  %2821 = load <2 x i64>, <2 x i64>* %107, align 8
  %2822 = load <2 x i64>, <2 x i64>* %108, align 16
  %2823 = shufflevector <2 x i64> %2722, <2 x i64> %2822, <2 x i32> <i32 1, i32 2>
  %2824 = shl <2 x i64> %2823, <i64 63, i64 63>
  %2825 = lshr <2 x i64> %2823, <i64 1, i64 1>
  %2826 = or <2 x i64> %2824, %2825
  %2827 = shl <2 x i64> %2823, <i64 56, i64 56>
  %2828 = lshr <2 x i64> %2823, <i64 8, i64 8>
  %2829 = or <2 x i64> %2827, %2828
  %2830 = lshr <2 x i64> %2823, <i64 7, i64 7>
  %2831 = xor <2 x i64> %2829, %2830
  %2832 = xor <2 x i64> %2831, %2826
  %2833 = add <2 x i64> %2821, %2722
  %2834 = add <2 x i64> %2833, %2820
  %2835 = add <2 x i64> %2834, %2832
  %2836 = extractelement <2 x i64> %2835, i32 0
  %2837 = add i64 %2836, 8399075790359081724
  %2838 = add i64 %2837, %2642
  %2839 = add i64 %2838, %2811
  %2840 = add i64 %2839, %2808
  %2841 = add i64 %2840, %2643
  %2842 = add i64 %2797, %2840
  %2843 = shl i64 %2842, 36
  %2844 = lshr i64 %2842, 28
  %2845 = or i64 %2843, %2844
  %2846 = shl i64 %2842, 30
  %2847 = lshr i64 %2842, 34
  %2848 = or i64 %2846, %2847
  %2849 = shl i64 %2842, 25
  %2850 = lshr i64 %2842, 39
  %2851 = or i64 %2849, %2850
  %2852 = xor i64 %2848, %2851
  %2853 = xor i64 %2852, %2845
  %2854 = and i64 %2842, %2781
  %2855 = or i64 %2842, %2781
  %2856 = and i64 %2855, %2744
  %2857 = or i64 %2856, %2854
  %2858 = add i64 %2853, %2857
  %2859 = shl i64 %2841, 50
  %2860 = lshr i64 %2841, 14
  %2861 = or i64 %2859, %2860
  %2862 = shl i64 %2841, 46
  %2863 = lshr i64 %2841, 18
  %2864 = or i64 %2862, %2863
  %2865 = shl i64 %2841, 23
  %2866 = lshr i64 %2841, 41
  %2867 = or i64 %2865, %2866
  %2868 = xor i64 %2864, %2867
  %2869 = xor i64 %2868, %2861
  %2870 = xor i64 %2780, %2743
  %2871 = and i64 %2841, %2870
  %2872 = xor i64 %2871, %2743
  store <2 x i64> %2835, <2 x i64>* %109, align 16
  %2873 = extractelement <2 x i64> %2835, i32 1
  %2874 = add i64 %2873, 8693463985226723168
  %2875 = add i64 %2874, %2679
  %2876 = add i64 %2875, %2872
  %2877 = add i64 %2876, %2869
  %2878 = add i64 %2877, %2680
  %2879 = add i64 %2858, %2877
  %2880 = shl i64 %2879, 36
  %2881 = lshr i64 %2879, 28
  %2882 = or i64 %2880, %2881
  %2883 = shl i64 %2879, 30
  %2884 = lshr i64 %2879, 34
  %2885 = or i64 %2883, %2884
  %2886 = shl i64 %2879, 25
  %2887 = lshr i64 %2879, 39
  %2888 = or i64 %2886, %2887
  %2889 = xor i64 %2885, %2888
  %2890 = xor i64 %2889, %2882
  %2891 = and i64 %2879, %2842
  %2892 = or i64 %2879, %2842
  %2893 = and i64 %2892, %2781
  %2894 = or i64 %2893, %2891
  %2895 = add i64 %2890, %2894
  %2896 = shl i64 %2878, 50
  %2897 = lshr i64 %2878, 14
  %2898 = or i64 %2896, %2897
  %2899 = shl i64 %2878, 46
  %2900 = lshr i64 %2878, 18
  %2901 = or i64 %2899, %2900
  %2902 = shl i64 %2878, 23
  %2903 = lshr i64 %2878, 41
  %2904 = or i64 %2902, %2903
  %2905 = xor i64 %2901, %2904
  %2906 = xor i64 %2905, %2898
  %2907 = xor i64 %2841, %2780
  %2908 = and i64 %2878, %2907
  %2909 = xor i64 %2908, %2780
  %2910 = shl <2 x i64> %2835, <i64 45, i64 45>
  %2911 = lshr <2 x i64> %2835, <i64 19, i64 19>
  %2912 = or <2 x i64> %2910, %2911
  %2913 = shl <2 x i64> %2835, <i64 3, i64 3>
  %2914 = lshr <2 x i64> %2835, <i64 61, i64 61>
  %2915 = or <2 x i64> %2913, %2914
  %2916 = lshr <2 x i64> %2835, <i64 6, i64 6>
  %2917 = xor <2 x i64> %2915, %2916
  %2918 = xor <2 x i64> %2917, %2912
  %2919 = load <2 x i64>, <2 x i64>* %110, align 8
  %2920 = load <2 x i64>, <2 x i64>* %111, align 16
  %2921 = shufflevector <2 x i64> %2822, <2 x i64> %2920, <2 x i32> <i32 1, i32 2>
  %2922 = shl <2 x i64> %2921, <i64 63, i64 63>
  %2923 = lshr <2 x i64> %2921, <i64 1, i64 1>
  %2924 = or <2 x i64> %2922, %2923
  %2925 = shl <2 x i64> %2921, <i64 56, i64 56>
  %2926 = lshr <2 x i64> %2921, <i64 8, i64 8>
  %2927 = or <2 x i64> %2925, %2926
  %2928 = lshr <2 x i64> %2921, <i64 7, i64 7>
  %2929 = xor <2 x i64> %2927, %2928
  %2930 = xor <2 x i64> %2929, %2924
  %2931 = add <2 x i64> %2919, %2822
  %2932 = add <2 x i64> %2931, %2918
  %2933 = add <2 x i64> %2932, %2930
  %2934 = extractelement <2 x i64> %2933, i32 0
  %2935 = add i64 %2934, -8878714635349349518
  %2936 = add i64 %2935, %2743
  %2937 = add i64 %2936, %2909
  %2938 = add i64 %2937, %2906
  %2939 = add i64 %2938, %2744
  %2940 = add i64 %2895, %2938
  %2941 = shl i64 %2940, 36
  %2942 = lshr i64 %2940, 28
  %2943 = or i64 %2941, %2942
  %2944 = shl i64 %2940, 30
  %2945 = lshr i64 %2940, 34
  %2946 = or i64 %2944, %2945
  %2947 = shl i64 %2940, 25
  %2948 = lshr i64 %2940, 39
  %2949 = or i64 %2947, %2948
  %2950 = xor i64 %2946, %2949
  %2951 = xor i64 %2950, %2943
  %2952 = and i64 %2940, %2879
  %2953 = or i64 %2940, %2879
  %2954 = and i64 %2953, %2842
  %2955 = or i64 %2954, %2952
  %2956 = add i64 %2951, %2955
  %2957 = shl i64 %2939, 50
  %2958 = lshr i64 %2939, 14
  %2959 = or i64 %2957, %2958
  %2960 = shl i64 %2939, 46
  %2961 = lshr i64 %2939, 18
  %2962 = or i64 %2960, %2961
  %2963 = shl i64 %2939, 23
  %2964 = lshr i64 %2939, 41
  %2965 = or i64 %2963, %2964
  %2966 = xor i64 %2962, %2965
  %2967 = xor i64 %2966, %2959
  %2968 = xor i64 %2878, %2841
  %2969 = and i64 %2939, %2968
  %2970 = xor i64 %2969, %2841
  store <2 x i64> %2933, <2 x i64>* %112, align 16
  %2971 = extractelement <2 x i64> %2933, i32 1
  %2972 = add i64 %2971, -8302665154208450068
  %2973 = add i64 %2972, %2780
  %2974 = add i64 %2973, %2970
  %2975 = add i64 %2974, %2967
  %2976 = add i64 %2975, %2781
  %2977 = add i64 %2956, %2975
  %2978 = shl i64 %2977, 36
  %2979 = lshr i64 %2977, 28
  %2980 = or i64 %2978, %2979
  %2981 = shl i64 %2977, 30
  %2982 = lshr i64 %2977, 34
  %2983 = or i64 %2981, %2982
  %2984 = shl i64 %2977, 25
  %2985 = lshr i64 %2977, 39
  %2986 = or i64 %2984, %2985
  %2987 = xor i64 %2983, %2986
  %2988 = xor i64 %2987, %2980
  %2989 = and i64 %2977, %2940
  %2990 = or i64 %2977, %2940
  %2991 = and i64 %2990, %2879
  %2992 = or i64 %2991, %2989
  %2993 = add i64 %2988, %2992
  %2994 = shl i64 %2976, 50
  %2995 = lshr i64 %2976, 14
  %2996 = or i64 %2994, %2995
  %2997 = shl i64 %2976, 46
  %2998 = lshr i64 %2976, 18
  %2999 = or i64 %2997, %2998
  %3000 = shl i64 %2976, 23
  %3001 = lshr i64 %2976, 41
  %3002 = or i64 %3000, %3001
  %3003 = xor i64 %2999, %3002
  %3004 = xor i64 %3003, %2996
  %3005 = xor i64 %2939, %2878
  %3006 = and i64 %2976, %3005
  %3007 = xor i64 %3006, %2878
  %3008 = shl <2 x i64> %2933, <i64 45, i64 45>
  %3009 = lshr <2 x i64> %2933, <i64 19, i64 19>
  %3010 = or <2 x i64> %3008, %3009
  %3011 = shl <2 x i64> %2933, <i64 3, i64 3>
  %3012 = lshr <2 x i64> %2933, <i64 61, i64 61>
  %3013 = or <2 x i64> %3011, %3012
  %3014 = lshr <2 x i64> %2933, <i64 6, i64 6>
  %3015 = xor <2 x i64> %3013, %3014
  %3016 = xor <2 x i64> %3015, %3010
  %3017 = load <2 x i64>, <2 x i64>* %113, align 8
  %3018 = load <2 x i64>, <2 x i64>* %114, align 16
  %3019 = shufflevector <2 x i64> %2920, <2 x i64> %3018, <2 x i32> <i32 1, i32 2>
  %3020 = shl <2 x i64> %3019, <i64 63, i64 63>
  %3021 = lshr <2 x i64> %3019, <i64 1, i64 1>
  %3022 = or <2 x i64> %3020, %3021
  %3023 = shl <2 x i64> %3019, <i64 56, i64 56>
  %3024 = lshr <2 x i64> %3019, <i64 8, i64 8>
  %3025 = or <2 x i64> %3023, %3024
  %3026 = lshr <2 x i64> %3019, <i64 7, i64 7>
  %3027 = xor <2 x i64> %3025, %3026
  %3028 = xor <2 x i64> %3027, %3022
  %3029 = add <2 x i64> %3017, %2920
  %3030 = add <2 x i64> %3029, %3016
  %3031 = add <2 x i64> %3030, %3028
  %3032 = extractelement <2 x i64> %3031, i32 0
  %3033 = add i64 %3032, -8016688836872298968
  %3034 = add i64 %3033, %2841
  %3035 = add i64 %3034, %3007
  %3036 = add i64 %3035, %3004
  %3037 = add i64 %3036, %2842
  %3038 = add i64 %2993, %3036
  %3039 = shl i64 %3038, 36
  %3040 = lshr i64 %3038, 28
  %3041 = or i64 %3039, %3040
  %3042 = shl i64 %3038, 30
  %3043 = lshr i64 %3038, 34
  %3044 = or i64 %3042, %3043
  %3045 = shl i64 %3038, 25
  %3046 = lshr i64 %3038, 39
  %3047 = or i64 %3045, %3046
  %3048 = xor i64 %3044, %3047
  %3049 = xor i64 %3048, %3041
  %3050 = and i64 %3038, %2977
  %3051 = or i64 %3038, %2977
  %3052 = and i64 %3051, %2940
  %3053 = or i64 %3052, %3050
  %3054 = add i64 %3049, %3053
  %3055 = shl i64 %3037, 50
  %3056 = lshr i64 %3037, 14
  %3057 = or i64 %3055, %3056
  %3058 = shl i64 %3037, 46
  %3059 = lshr i64 %3037, 18
  %3060 = or i64 %3058, %3059
  %3061 = shl i64 %3037, 23
  %3062 = lshr i64 %3037, 41
  %3063 = or i64 %3061, %3062
  %3064 = xor i64 %3060, %3063
  %3065 = xor i64 %3064, %3057
  %3066 = xor i64 %2976, %2939
  %3067 = and i64 %3037, %3066
  %3068 = xor i64 %3067, %2939
  store <2 x i64> %3031, <2 x i64>* %115, align 16
  %3069 = extractelement <2 x i64> %3031, i32 1
  %3070 = add i64 %3069, -6606660893046293015
  %3071 = add i64 %3070, %2878
  %3072 = add i64 %3071, %3068
  %3073 = add i64 %3072, %3065
  %3074 = add i64 %3073, %2879
  %3075 = add i64 %3054, %3073
  %3076 = shl i64 %3075, 36
  %3077 = lshr i64 %3075, 28
  %3078 = or i64 %3076, %3077
  %3079 = shl i64 %3075, 30
  %3080 = lshr i64 %3075, 34
  %3081 = or i64 %3079, %3080
  %3082 = shl i64 %3075, 25
  %3083 = lshr i64 %3075, 39
  %3084 = or i64 %3082, %3083
  %3085 = xor i64 %3081, %3084
  %3086 = xor i64 %3085, %3078
  %3087 = and i64 %3075, %3038
  %3088 = or i64 %3075, %3038
  %3089 = and i64 %3088, %2977
  %3090 = or i64 %3089, %3087
  %3091 = add i64 %3086, %3090
  %3092 = shl i64 %3074, 50
  %3093 = lshr i64 %3074, 14
  %3094 = or i64 %3092, %3093
  %3095 = shl i64 %3074, 46
  %3096 = lshr i64 %3074, 18
  %3097 = or i64 %3095, %3096
  %3098 = shl i64 %3074, 23
  %3099 = lshr i64 %3074, 41
  %3100 = or i64 %3098, %3099
  %3101 = xor i64 %3097, %3100
  %3102 = xor i64 %3101, %3094
  %3103 = xor i64 %3037, %2976
  %3104 = and i64 %3074, %3103
  %3105 = xor i64 %3104, %2976
  %3106 = shl <2 x i64> %3031, <i64 45, i64 45>
  %3107 = lshr <2 x i64> %3031, <i64 19, i64 19>
  %3108 = or <2 x i64> %3106, %3107
  %3109 = shl <2 x i64> %3031, <i64 3, i64 3>
  %3110 = lshr <2 x i64> %3031, <i64 61, i64 61>
  %3111 = or <2 x i64> %3109, %3110
  %3112 = lshr <2 x i64> %3031, <i64 6, i64 6>
  %3113 = xor <2 x i64> %3111, %3112
  %3114 = xor <2 x i64> %3113, %3108
  %3115 = load <2 x i64>, <2 x i64>* %116, align 8
  %3116 = load <2 x i64>, <2 x i64>* %117, align 16
  %3117 = shufflevector <2 x i64> %3018, <2 x i64> %3116, <2 x i32> <i32 1, i32 2>
  %3118 = shl <2 x i64> %3117, <i64 63, i64 63>
  %3119 = lshr <2 x i64> %3117, <i64 1, i64 1>
  %3120 = or <2 x i64> %3118, %3119
  %3121 = shl <2 x i64> %3117, <i64 56, i64 56>
  %3122 = lshr <2 x i64> %3117, <i64 8, i64 8>
  %3123 = or <2 x i64> %3121, %3122
  %3124 = lshr <2 x i64> %3117, <i64 7, i64 7>
  %3125 = xor <2 x i64> %3123, %3124
  %3126 = xor <2 x i64> %3125, %3120
  %3127 = add <2 x i64> %3115, %3018
  %3128 = add <2 x i64> %3127, %3114
  %3129 = add <2 x i64> %3128, %3126
  %3130 = extractelement <2 x i64> %3129, i32 0
  %3131 = add i64 %3130, -4685533653050689259
  %3132 = add i64 %3131, %2939
  %3133 = add i64 %3132, %3105
  %3134 = add i64 %3133, %3102
  %3135 = add i64 %3134, %2940
  %3136 = add i64 %3091, %3134
  %3137 = shl i64 %3136, 36
  %3138 = lshr i64 %3136, 28
  %3139 = or i64 %3137, %3138
  %3140 = shl i64 %3136, 30
  %3141 = lshr i64 %3136, 34
  %3142 = or i64 %3140, %3141
  %3143 = shl i64 %3136, 25
  %3144 = lshr i64 %3136, 39
  %3145 = or i64 %3143, %3144
  %3146 = xor i64 %3142, %3145
  %3147 = xor i64 %3146, %3139
  %3148 = and i64 %3136, %3075
  %3149 = or i64 %3136, %3075
  %3150 = and i64 %3149, %3038
  %3151 = or i64 %3150, %3148
  %3152 = add i64 %3147, %3151
  %3153 = shl i64 %3135, 50
  %3154 = lshr i64 %3135, 14
  %3155 = or i64 %3153, %3154
  %3156 = shl i64 %3135, 46
  %3157 = lshr i64 %3135, 18
  %3158 = or i64 %3156, %3157
  %3159 = shl i64 %3135, 23
  %3160 = lshr i64 %3135, 41
  %3161 = or i64 %3159, %3160
  %3162 = xor i64 %3158, %3161
  %3163 = xor i64 %3162, %3155
  %3164 = xor i64 %3074, %3037
  %3165 = and i64 %3135, %3164
  %3166 = xor i64 %3165, %3037
  store <2 x i64> %3129, <2 x i64>* %118, align 16
  %3167 = extractelement <2 x i64> %3129, i32 1
  %3168 = add i64 %3167, -4147400797238176981
  %3169 = add i64 %3168, %2976
  %3170 = add i64 %3169, %3166
  %3171 = add i64 %3170, %3163
  %3172 = add i64 %3171, %2977
  %3173 = add i64 %3152, %3171
  %3174 = shl i64 %3173, 36
  %3175 = lshr i64 %3173, 28
  %3176 = or i64 %3174, %3175
  %3177 = shl i64 %3173, 30
  %3178 = lshr i64 %3173, 34
  %3179 = or i64 %3177, %3178
  %3180 = shl i64 %3173, 25
  %3181 = lshr i64 %3173, 39
  %3182 = or i64 %3180, %3181
  %3183 = xor i64 %3179, %3182
  %3184 = xor i64 %3183, %3176
  %3185 = and i64 %3173, %3136
  %3186 = or i64 %3173, %3136
  %3187 = and i64 %3186, %3075
  %3188 = or i64 %3187, %3185
  %3189 = add i64 %3184, %3188
  %3190 = shl i64 %3172, 50
  %3191 = lshr i64 %3172, 14
  %3192 = or i64 %3190, %3191
  %3193 = shl i64 %3172, 46
  %3194 = lshr i64 %3172, 18
  %3195 = or i64 %3193, %3194
  %3196 = shl i64 %3172, 23
  %3197 = lshr i64 %3172, 41
  %3198 = or i64 %3196, %3197
  %3199 = xor i64 %3195, %3198
  %3200 = xor i64 %3199, %3192
  %3201 = xor i64 %3135, %3074
  %3202 = and i64 %3172, %3201
  %3203 = xor i64 %3202, %3074
  %3204 = shl <2 x i64> %3129, <i64 45, i64 45>
  %3205 = lshr <2 x i64> %3129, <i64 19, i64 19>
  %3206 = or <2 x i64> %3204, %3205
  %3207 = shl <2 x i64> %3129, <i64 3, i64 3>
  %3208 = lshr <2 x i64> %3129, <i64 61, i64 61>
  %3209 = or <2 x i64> %3207, %3208
  %3210 = lshr <2 x i64> %3129, <i64 6, i64 6>
  %3211 = xor <2 x i64> %3209, %3210
  %3212 = xor <2 x i64> %3211, %3206
  %3213 = load <2 x i64>, <2 x i64>* %119, align 8
  %3214 = load <2 x i64>, <2 x i64>* %120, align 16
  %3215 = shufflevector <2 x i64> %3116, <2 x i64> %3214, <2 x i32> <i32 1, i32 2>
  %3216 = shl <2 x i64> %3215, <i64 63, i64 63>
  %3217 = lshr <2 x i64> %3215, <i64 1, i64 1>
  %3218 = or <2 x i64> %3216, %3217
  %3219 = shl <2 x i64> %3215, <i64 56, i64 56>
  %3220 = lshr <2 x i64> %3215, <i64 8, i64 8>
  %3221 = or <2 x i64> %3219, %3220
  %3222 = lshr <2 x i64> %3215, <i64 7, i64 7>
  %3223 = xor <2 x i64> %3221, %3222
  %3224 = xor <2 x i64> %3223, %3218
  %3225 = add <2 x i64> %3213, %3116
  %3226 = add <2 x i64> %3225, %3212
  %3227 = add <2 x i64> %3226, %3224
  %3228 = extractelement <2 x i64> %3227, i32 0
  %3229 = add i64 %3228, -3880063495543823972
  %3230 = add i64 %3229, %3037
  %3231 = add i64 %3230, %3203
  %3232 = add i64 %3231, %3200
  %3233 = add i64 %3232, %3038
  %3234 = add i64 %3189, %3232
  %3235 = shl i64 %3234, 36
  %3236 = lshr i64 %3234, 28
  %3237 = or i64 %3235, %3236
  %3238 = shl i64 %3234, 30
  %3239 = lshr i64 %3234, 34
  %3240 = or i64 %3238, %3239
  %3241 = shl i64 %3234, 25
  %3242 = lshr i64 %3234, 39
  %3243 = or i64 %3241, %3242
  %3244 = xor i64 %3240, %3243
  %3245 = xor i64 %3244, %3237
  %3246 = and i64 %3234, %3173
  %3247 = or i64 %3234, %3173
  %3248 = and i64 %3247, %3136
  %3249 = or i64 %3248, %3246
  %3250 = add i64 %3245, %3249
  %3251 = shl i64 %3233, 50
  %3252 = lshr i64 %3233, 14
  %3253 = or i64 %3251, %3252
  %3254 = shl i64 %3233, 46
  %3255 = lshr i64 %3233, 18
  %3256 = or i64 %3254, %3255
  %3257 = shl i64 %3233, 23
  %3258 = lshr i64 %3233, 41
  %3259 = or i64 %3257, %3258
  %3260 = xor i64 %3256, %3259
  %3261 = xor i64 %3260, %3253
  %3262 = xor i64 %3172, %3135
  %3263 = and i64 %3233, %3262
  %3264 = xor i64 %3263, %3135
  store <2 x i64> %3227, <2 x i64>* %121, align 16
  %3265 = extractelement <2 x i64> %3227, i32 1
  %3266 = add i64 %3265, -3348786107499101689
  %3267 = add i64 %3266, %3074
  %3268 = add i64 %3267, %3264
  %3269 = add i64 %3268, %3261
  %3270 = add i64 %3269, %3075
  %3271 = add i64 %3250, %3269
  %3272 = shl i64 %3271, 36
  %3273 = lshr i64 %3271, 28
  %3274 = or i64 %3272, %3273
  %3275 = shl i64 %3271, 30
  %3276 = lshr i64 %3271, 34
  %3277 = or i64 %3275, %3276
  %3278 = shl i64 %3271, 25
  %3279 = lshr i64 %3271, 39
  %3280 = or i64 %3278, %3279
  %3281 = xor i64 %3277, %3280
  %3282 = xor i64 %3281, %3274
  %3283 = and i64 %3271, %3234
  %3284 = or i64 %3271, %3234
  %3285 = and i64 %3284, %3173
  %3286 = or i64 %3285, %3283
  %3287 = add i64 %3282, %3286
  %3288 = shl i64 %3270, 50
  %3289 = lshr i64 %3270, 14
  %3290 = or i64 %3288, %3289
  %3291 = shl i64 %3270, 46
  %3292 = lshr i64 %3270, 18
  %3293 = or i64 %3291, %3292
  %3294 = shl i64 %3270, 23
  %3295 = lshr i64 %3270, 41
  %3296 = or i64 %3294, %3295
  %3297 = xor i64 %3293, %3296
  %3298 = xor i64 %3297, %3290
  %3299 = xor i64 %3233, %3172
  %3300 = and i64 %3270, %3299
  %3301 = xor i64 %3300, %3172
  %3302 = shl <2 x i64> %3227, <i64 45, i64 45>
  %3303 = lshr <2 x i64> %3227, <i64 19, i64 19>
  %3304 = or <2 x i64> %3302, %3303
  %3305 = shl <2 x i64> %3227, <i64 3, i64 3>
  %3306 = lshr <2 x i64> %3227, <i64 61, i64 61>
  %3307 = or <2 x i64> %3305, %3306
  %3308 = lshr <2 x i64> %3227, <i64 6, i64 6>
  %3309 = xor <2 x i64> %3307, %3308
  %3310 = xor <2 x i64> %3309, %3304
  %3311 = load <2 x i64>, <2 x i64>* %122, align 8
  %3312 = load <2 x i64>, <2 x i64>* %123, align 16
  %3313 = shufflevector <2 x i64> %3214, <2 x i64> %3312, <2 x i32> <i32 1, i32 2>
  %3314 = shl <2 x i64> %3313, <i64 63, i64 63>
  %3315 = lshr <2 x i64> %3313, <i64 1, i64 1>
  %3316 = or <2 x i64> %3314, %3315
  %3317 = shl <2 x i64> %3313, <i64 56, i64 56>
  %3318 = lshr <2 x i64> %3313, <i64 8, i64 8>
  %3319 = or <2 x i64> %3317, %3318
  %3320 = lshr <2 x i64> %3313, <i64 7, i64 7>
  %3321 = xor <2 x i64> %3319, %3320
  %3322 = xor <2 x i64> %3321, %3316
  %3323 = add <2 x i64> %3311, %3214
  %3324 = add <2 x i64> %3323, %3310
  %3325 = add <2 x i64> %3324, %3322
  %3326 = extractelement <2 x i64> %3325, i32 0
  %3327 = add i64 %3326, -1523767162380948706
  %3328 = add i64 %3327, %3135
  %3329 = add i64 %3328, %3301
  %3330 = add i64 %3329, %3298
  %3331 = add i64 %3330, %3136
  %3332 = add i64 %3287, %3330
  %3333 = shl i64 %3332, 36
  %3334 = lshr i64 %3332, 28
  %3335 = or i64 %3333, %3334
  %3336 = shl i64 %3332, 30
  %3337 = lshr i64 %3332, 34
  %3338 = or i64 %3336, %3337
  %3339 = shl i64 %3332, 25
  %3340 = lshr i64 %3332, 39
  %3341 = or i64 %3339, %3340
  %3342 = xor i64 %3338, %3341
  %3343 = xor i64 %3342, %3335
  %3344 = and i64 %3332, %3271
  %3345 = or i64 %3332, %3271
  %3346 = and i64 %3345, %3234
  %3347 = or i64 %3346, %3344
  %3348 = add i64 %3343, %3347
  %3349 = shl i64 %3331, 50
  %3350 = lshr i64 %3331, 14
  %3351 = or i64 %3349, %3350
  %3352 = shl i64 %3331, 46
  %3353 = lshr i64 %3331, 18
  %3354 = or i64 %3352, %3353
  %3355 = shl i64 %3331, 23
  %3356 = lshr i64 %3331, 41
  %3357 = or i64 %3355, %3356
  %3358 = xor i64 %3354, %3357
  %3359 = xor i64 %3358, %3351
  %3360 = xor i64 %3270, %3233
  %3361 = and i64 %3331, %3360
  %3362 = xor i64 %3361, %3233
  store <2 x i64> %3325, <2 x i64>* %124, align 16
  %3363 = extractelement <2 x i64> %3325, i32 1
  %3364 = add i64 %3363, -757361751448694408
  %3365 = add i64 %3364, %3172
  %3366 = add i64 %3365, %3362
  %3367 = add i64 %3366, %3359
  %3368 = add i64 %3367, %3173
  %3369 = add i64 %3348, %3367
  %3370 = shl i64 %3369, 36
  %3371 = lshr i64 %3369, 28
  %3372 = or i64 %3370, %3371
  %3373 = shl i64 %3369, 30
  %3374 = lshr i64 %3369, 34
  %3375 = or i64 %3373, %3374
  %3376 = shl i64 %3369, 25
  %3377 = lshr i64 %3369, 39
  %3378 = or i64 %3376, %3377
  %3379 = xor i64 %3375, %3378
  %3380 = xor i64 %3379, %3372
  %3381 = and i64 %3369, %3332
  %3382 = or i64 %3369, %3332
  %3383 = and i64 %3382, %3271
  %3384 = or i64 %3383, %3381
  %3385 = add i64 %3380, %3384
  %3386 = shl i64 %3368, 50
  %3387 = lshr i64 %3368, 14
  %3388 = or i64 %3386, %3387
  %3389 = shl i64 %3368, 46
  %3390 = lshr i64 %3368, 18
  %3391 = or i64 %3389, %3390
  %3392 = shl i64 %3368, 23
  %3393 = lshr i64 %3368, 41
  %3394 = or i64 %3392, %3393
  %3395 = xor i64 %3391, %3394
  %3396 = xor i64 %3395, %3388
  %3397 = xor i64 %3331, %3270
  %3398 = and i64 %3368, %3397
  %3399 = xor i64 %3398, %3270
  %3400 = shl <2 x i64> %3325, <i64 45, i64 45>
  %3401 = lshr <2 x i64> %3325, <i64 19, i64 19>
  %3402 = or <2 x i64> %3400, %3401
  %3403 = shl <2 x i64> %3325, <i64 3, i64 3>
  %3404 = lshr <2 x i64> %3325, <i64 61, i64 61>
  %3405 = or <2 x i64> %3403, %3404
  %3406 = lshr <2 x i64> %3325, <i64 6, i64 6>
  %3407 = xor <2 x i64> %3405, %3406
  %3408 = xor <2 x i64> %3407, %3402
  %3409 = load <2 x i64>, <2 x i64>* %125, align 8
  %3410 = load <2 x i64>, <2 x i64>* %126, align 16
  %3411 = shufflevector <2 x i64> %3312, <2 x i64> %3410, <2 x i32> <i32 1, i32 2>
  %3412 = shl <2 x i64> %3411, <i64 63, i64 63>
  %3413 = lshr <2 x i64> %3411, <i64 1, i64 1>
  %3414 = or <2 x i64> %3412, %3413
  %3415 = shl <2 x i64> %3411, <i64 56, i64 56>
  %3416 = lshr <2 x i64> %3411, <i64 8, i64 8>
  %3417 = or <2 x i64> %3415, %3416
  %3418 = lshr <2 x i64> %3411, <i64 7, i64 7>
  %3419 = xor <2 x i64> %3417, %3418
  %3420 = xor <2 x i64> %3419, %3414
  %3421 = add <2 x i64> %3409, %3312
  %3422 = add <2 x i64> %3421, %3408
  %3423 = add <2 x i64> %3422, %3420
  %3424 = extractelement <2 x i64> %3423, i32 0
  %3425 = add i64 %3424, 500013540394364858
  %3426 = add i64 %3425, %3233
  %3427 = add i64 %3426, %3399
  %3428 = add i64 %3427, %3396
  %3429 = add i64 %3428, %3234
  %3430 = add i64 %3385, %3428
  %3431 = shl i64 %3430, 36
  %3432 = lshr i64 %3430, 28
  %3433 = or i64 %3431, %3432
  %3434 = shl i64 %3430, 30
  %3435 = lshr i64 %3430, 34
  %3436 = or i64 %3434, %3435
  %3437 = shl i64 %3430, 25
  %3438 = lshr i64 %3430, 39
  %3439 = or i64 %3437, %3438
  %3440 = xor i64 %3436, %3439
  %3441 = xor i64 %3440, %3433
  %3442 = and i64 %3430, %3369
  %3443 = or i64 %3430, %3369
  %3444 = and i64 %3443, %3332
  %3445 = or i64 %3444, %3442
  %3446 = add i64 %3441, %3445
  %3447 = shl i64 %3429, 50
  %3448 = lshr i64 %3429, 14
  %3449 = or i64 %3447, %3448
  %3450 = shl i64 %3429, 46
  %3451 = lshr i64 %3429, 18
  %3452 = or i64 %3450, %3451
  %3453 = shl i64 %3429, 23
  %3454 = lshr i64 %3429, 41
  %3455 = or i64 %3453, %3454
  %3456 = xor i64 %3452, %3455
  %3457 = xor i64 %3456, %3449
  %3458 = xor i64 %3368, %3331
  %3459 = and i64 %3429, %3458
  %3460 = xor i64 %3459, %3331
  store <2 x i64> %3423, <2 x i64>* %127, align 16
  %3461 = extractelement <2 x i64> %3423, i32 1
  %3462 = add i64 %3461, 748580250866718886
  %3463 = add i64 %3462, %3270
  %3464 = add i64 %3463, %3460
  %3465 = add i64 %3464, %3457
  %3466 = add i64 %3465, %3271
  %3467 = add i64 %3446, %3465
  %3468 = shl i64 %3467, 36
  %3469 = lshr i64 %3467, 28
  %3470 = or i64 %3468, %3469
  %3471 = shl i64 %3467, 30
  %3472 = lshr i64 %3467, 34
  %3473 = or i64 %3471, %3472
  %3474 = shl i64 %3467, 25
  %3475 = lshr i64 %3467, 39
  %3476 = or i64 %3474, %3475
  %3477 = xor i64 %3473, %3476
  %3478 = xor i64 %3477, %3470
  %3479 = and i64 %3467, %3430
  %3480 = or i64 %3467, %3430
  %3481 = and i64 %3480, %3369
  %3482 = or i64 %3481, %3479
  %3483 = add i64 %3478, %3482
  %3484 = shl i64 %3466, 50
  %3485 = lshr i64 %3466, 14
  %3486 = or i64 %3484, %3485
  %3487 = shl i64 %3466, 46
  %3488 = lshr i64 %3466, 18
  %3489 = or i64 %3487, %3488
  %3490 = shl i64 %3466, 23
  %3491 = lshr i64 %3466, 41
  %3492 = or i64 %3490, %3491
  %3493 = xor i64 %3489, %3492
  %3494 = xor i64 %3493, %3486
  %3495 = xor i64 %3429, %3368
  %3496 = and i64 %3466, %3495
  %3497 = xor i64 %3496, %3368
  %3498 = load i64, i64* %50, align 8
  %3499 = shl <2 x i64> %3423, <i64 45, i64 45>
  %3500 = lshr <2 x i64> %3423, <i64 19, i64 19>
  %3501 = or <2 x i64> %3499, %3500
  %3502 = shl <2 x i64> %3423, <i64 3, i64 3>
  %3503 = lshr <2 x i64> %3423, <i64 61, i64 61>
  %3504 = or <2 x i64> %3502, %3503
  %3505 = lshr <2 x i64> %3423, <i64 6, i64 6>
  %3506 = xor <2 x i64> %3504, %3505
  %3507 = xor <2 x i64> %3506, %3501
  %3508 = load i64, i64* %35, align 16
  %3509 = load <2 x i64>, <2 x i64>* %128, align 16
  %3510 = shufflevector <2 x i64> %3410, <2 x i64> %3509, <2 x i32> <i32 1, i32 2>
  %3511 = shl <2 x i64> %3510, <i64 63, i64 63>
  %3512 = lshr <2 x i64> %3510, <i64 1, i64 1>
  %3513 = or <2 x i64> %3511, %3512
  %3514 = shl <2 x i64> %3510, <i64 56, i64 56>
  %3515 = lshr <2 x i64> %3510, <i64 8, i64 8>
  %3516 = or <2 x i64> %3514, %3515
  %3517 = lshr <2 x i64> %3510, <i64 7, i64 7>
  %3518 = xor <2 x i64> %3516, %3517
  %3519 = xor <2 x i64> %3518, %3513
  %3520 = insertelement <2 x i64> undef, i64 %3498, i32 0
  %3521 = insertelement <2 x i64> %3520, i64 %3508, i32 1
  %3522 = add <2 x i64> %3521, %3410
  %3523 = add <2 x i64> %3522, %3507
  %3524 = add <2 x i64> %3523, %3519
  %3525 = extractelement <2 x i64> %3524, i32 0
  %3526 = add i64 %3525, 1242879168328830382
  %3527 = add i64 %3526, %3331
  %3528 = add i64 %3527, %3497
  %3529 = add i64 %3528, %3494
  %3530 = add i64 %3529, %3332
  %3531 = add i64 %3483, %3529
  %3532 = shl i64 %3531, 36
  %3533 = lshr i64 %3531, 28
  %3534 = or i64 %3532, %3533
  %3535 = shl i64 %3531, 30
  %3536 = lshr i64 %3531, 34
  %3537 = or i64 %3535, %3536
  %3538 = shl i64 %3531, 25
  %3539 = lshr i64 %3531, 39
  %3540 = or i64 %3538, %3539
  %3541 = xor i64 %3537, %3540
  %3542 = xor i64 %3541, %3534
  %3543 = and i64 %3531, %3467
  %3544 = or i64 %3531, %3467
  %3545 = and i64 %3544, %3430
  %3546 = or i64 %3545, %3543
  %3547 = add i64 %3542, %3546
  %3548 = shl i64 %3530, 50
  %3549 = lshr i64 %3530, 14
  %3550 = or i64 %3548, %3549
  %3551 = shl i64 %3530, 46
  %3552 = lshr i64 %3530, 18
  %3553 = or i64 %3551, %3552
  %3554 = shl i64 %3530, 23
  %3555 = lshr i64 %3530, 41
  %3556 = or i64 %3554, %3555
  %3557 = xor i64 %3553, %3556
  %3558 = xor i64 %3557, %3550
  %3559 = xor i64 %3466, %3429
  %3560 = and i64 %3530, %3559
  %3561 = xor i64 %3560, %3429
  store <2 x i64> %3524, <2 x i64>* %129, align 16
  %3562 = extractelement <2 x i64> %3524, i32 1
  %3563 = add i64 %3562, 1977374033974150939
  %3564 = add i64 %3563, %3368
  %3565 = add i64 %3564, %3561
  %3566 = add i64 %3565, %3558
  %3567 = add i64 %3566, %3369
  %3568 = add i64 %3547, %3566
  %3569 = shl i64 %3568, 36
  %3570 = lshr i64 %3568, 28
  %3571 = or i64 %3569, %3570
  %3572 = shl i64 %3568, 30
  %3573 = lshr i64 %3568, 34
  %3574 = or i64 %3572, %3573
  %3575 = shl i64 %3568, 25
  %3576 = lshr i64 %3568, 39
  %3577 = or i64 %3575, %3576
  %3578 = xor i64 %3574, %3577
  %3579 = xor i64 %3578, %3571
  %3580 = and i64 %3568, %3531
  %3581 = or i64 %3568, %3531
  %3582 = and i64 %3581, %3467
  %3583 = or i64 %3582, %3580
  %3584 = add i64 %3579, %3583
  %3585 = shl i64 %3567, 50
  %3586 = lshr i64 %3567, 14
  %3587 = or i64 %3585, %3586
  %3588 = shl i64 %3567, 46
  %3589 = lshr i64 %3567, 18
  %3590 = or i64 %3588, %3589
  %3591 = shl i64 %3567, 23
  %3592 = lshr i64 %3567, 41
  %3593 = or i64 %3591, %3592
  %3594 = xor i64 %3590, %3593
  %3595 = xor i64 %3594, %3587
  %3596 = xor i64 %3530, %3466
  %3597 = and i64 %3567, %3596
  %3598 = xor i64 %3597, %3466
  %3599 = shl <2 x i64> %3524, <i64 45, i64 45>
  %3600 = lshr <2 x i64> %3524, <i64 19, i64 19>
  %3601 = or <2 x i64> %3599, %3600
  %3602 = shl <2 x i64> %3524, <i64 3, i64 3>
  %3603 = lshr <2 x i64> %3524, <i64 61, i64 61>
  %3604 = or <2 x i64> %3602, %3603
  %3605 = lshr <2 x i64> %3524, <i64 6, i64 6>
  %3606 = xor <2 x i64> %3604, %3605
  %3607 = xor <2 x i64> %3606, %3601
  %3608 = load <2 x i64>, <2 x i64>* %130, align 8
  %3609 = load <2 x i64>, <2 x i64>* %131, align 16
  %3610 = shufflevector <2 x i64> %3509, <2 x i64> %3609, <2 x i32> <i32 1, i32 2>
  %3611 = shl <2 x i64> %3610, <i64 63, i64 63>
  %3612 = lshr <2 x i64> %3610, <i64 1, i64 1>
  %3613 = or <2 x i64> %3611, %3612
  %3614 = shl <2 x i64> %3610, <i64 56, i64 56>
  %3615 = lshr <2 x i64> %3610, <i64 8, i64 8>
  %3616 = or <2 x i64> %3614, %3615
  %3617 = lshr <2 x i64> %3610, <i64 7, i64 7>
  %3618 = xor <2 x i64> %3616, %3617
  %3619 = xor <2 x i64> %3618, %3613
  %3620 = add <2 x i64> %3608, %3509
  %3621 = add <2 x i64> %3620, %3607
  %3622 = add <2 x i64> %3621, %3619
  %3623 = extractelement <2 x i64> %3622, i32 0
  %3624 = add i64 %3623, 2944078676154940804
  %3625 = add i64 %3624, %3429
  %3626 = add i64 %3625, %3598
  %3627 = add i64 %3626, %3595
  %3628 = add i64 %3627, %3430
  %3629 = add i64 %3584, %3627
  %3630 = shl i64 %3629, 36
  %3631 = lshr i64 %3629, 28
  %3632 = or i64 %3630, %3631
  %3633 = shl i64 %3629, 30
  %3634 = lshr i64 %3629, 34
  %3635 = or i64 %3633, %3634
  %3636 = shl i64 %3629, 25
  %3637 = lshr i64 %3629, 39
  %3638 = or i64 %3636, %3637
  %3639 = xor i64 %3635, %3638
  %3640 = xor i64 %3639, %3632
  %3641 = and i64 %3629, %3568
  %3642 = or i64 %3629, %3568
  %3643 = and i64 %3642, %3531
  %3644 = or i64 %3643, %3641
  %3645 = add i64 %3640, %3644
  %3646 = shl i64 %3628, 50
  %3647 = lshr i64 %3628, 14
  %3648 = or i64 %3646, %3647
  %3649 = shl i64 %3628, 46
  %3650 = lshr i64 %3628, 18
  %3651 = or i64 %3649, %3650
  %3652 = shl i64 %3628, 23
  %3653 = lshr i64 %3628, 41
  %3654 = or i64 %3652, %3653
  %3655 = xor i64 %3651, %3654
  %3656 = xor i64 %3655, %3648
  %3657 = xor i64 %3567, %3530
  %3658 = and i64 %3628, %3657
  %3659 = xor i64 %3658, %3530
  store <2 x i64> %3622, <2 x i64>* %132, align 16
  %3660 = extractelement <2 x i64> %3622, i32 1
  %3661 = add i64 %3660, 3659926193048069267
  %3662 = add i64 %3661, %3466
  %3663 = add i64 %3662, %3659
  %3664 = add i64 %3663, %3656
  %3665 = add i64 %3664, %3467
  %3666 = add i64 %3645, %3664
  %3667 = shl i64 %3666, 36
  %3668 = lshr i64 %3666, 28
  %3669 = or i64 %3667, %3668
  %3670 = shl i64 %3666, 30
  %3671 = lshr i64 %3666, 34
  %3672 = or i64 %3670, %3671
  %3673 = shl i64 %3666, 25
  %3674 = lshr i64 %3666, 39
  %3675 = or i64 %3673, %3674
  %3676 = xor i64 %3672, %3675
  %3677 = xor i64 %3676, %3669
  %3678 = and i64 %3666, %3629
  %3679 = or i64 %3666, %3629
  %3680 = and i64 %3679, %3568
  %3681 = or i64 %3680, %3678
  %3682 = add i64 %3677, %3681
  %3683 = shl i64 %3665, 50
  %3684 = lshr i64 %3665, 14
  %3685 = or i64 %3683, %3684
  %3686 = shl i64 %3665, 46
  %3687 = lshr i64 %3665, 18
  %3688 = or i64 %3686, %3687
  %3689 = shl i64 %3665, 23
  %3690 = lshr i64 %3665, 41
  %3691 = or i64 %3689, %3690
  %3692 = xor i64 %3688, %3691
  %3693 = xor i64 %3692, %3685
  %3694 = xor i64 %3628, %3567
  %3695 = and i64 %3665, %3694
  %3696 = xor i64 %3695, %3567
  %3697 = shl <2 x i64> %3622, <i64 45, i64 45>
  %3698 = lshr <2 x i64> %3622, <i64 19, i64 19>
  %3699 = or <2 x i64> %3697, %3698
  %3700 = shl <2 x i64> %3622, <i64 3, i64 3>
  %3701 = lshr <2 x i64> %3622, <i64 61, i64 61>
  %3702 = or <2 x i64> %3700, %3701
  %3703 = lshr <2 x i64> %3622, <i64 6, i64 6>
  %3704 = xor <2 x i64> %3702, %3703
  %3705 = xor <2 x i64> %3704, %3699
  %3706 = load <2 x i64>, <2 x i64>* %133, align 8
  %3707 = load <2 x i64>, <2 x i64>* %134, align 16
  %3708 = shufflevector <2 x i64> %3609, <2 x i64> %3707, <2 x i32> <i32 1, i32 2>
  %3709 = shl <2 x i64> %3708, <i64 63, i64 63>
  %3710 = lshr <2 x i64> %3708, <i64 1, i64 1>
  %3711 = or <2 x i64> %3709, %3710
  %3712 = shl <2 x i64> %3708, <i64 56, i64 56>
  %3713 = lshr <2 x i64> %3708, <i64 8, i64 8>
  %3714 = or <2 x i64> %3712, %3713
  %3715 = lshr <2 x i64> %3708, <i64 7, i64 7>
  %3716 = xor <2 x i64> %3714, %3715
  %3717 = xor <2 x i64> %3716, %3711
  %3718 = add <2 x i64> %3706, %3609
  %3719 = add <2 x i64> %3718, %3705
  %3720 = add <2 x i64> %3719, %3717
  %3721 = extractelement <2 x i64> %3720, i32 0
  %3722 = add i64 %3721, 4368137639120453308
  %3723 = add i64 %3722, %3530
  %3724 = add i64 %3723, %3696
  %3725 = add i64 %3724, %3693
  %3726 = add i64 %3725, %3531
  %3727 = add i64 %3682, %3725
  %3728 = shl i64 %3727, 36
  %3729 = lshr i64 %3727, 28
  %3730 = or i64 %3728, %3729
  %3731 = shl i64 %3727, 30
  %3732 = lshr i64 %3727, 34
  %3733 = or i64 %3731, %3732
  %3734 = shl i64 %3727, 25
  %3735 = lshr i64 %3727, 39
  %3736 = or i64 %3734, %3735
  %3737 = xor i64 %3733, %3736
  %3738 = xor i64 %3737, %3730
  %3739 = and i64 %3727, %3666
  %3740 = or i64 %3727, %3666
  %3741 = and i64 %3740, %3629
  %3742 = or i64 %3741, %3739
  %3743 = add i64 %3738, %3742
  %3744 = shl i64 %3726, 50
  %3745 = lshr i64 %3726, 14
  %3746 = or i64 %3744, %3745
  %3747 = shl i64 %3726, 46
  %3748 = lshr i64 %3726, 18
  %3749 = or i64 %3747, %3748
  %3750 = shl i64 %3726, 23
  %3751 = lshr i64 %3726, 41
  %3752 = or i64 %3750, %3751
  %3753 = xor i64 %3749, %3752
  %3754 = xor i64 %3753, %3746
  %3755 = xor i64 %3665, %3628
  %3756 = and i64 %3726, %3755
  %3757 = xor i64 %3756, %3628
  store <2 x i64> %3720, <2 x i64>* %135, align 16
  %3758 = extractelement <2 x i64> %3720, i32 1
  %3759 = add i64 %3758, 4836135668995329356
  %3760 = add i64 %3759, %3567
  %3761 = add i64 %3760, %3757
  %3762 = add i64 %3761, %3754
  %3763 = add i64 %3762, %3568
  %3764 = add i64 %3743, %3762
  %3765 = shl i64 %3764, 36
  %3766 = lshr i64 %3764, 28
  %3767 = or i64 %3765, %3766
  %3768 = shl i64 %3764, 30
  %3769 = lshr i64 %3764, 34
  %3770 = or i64 %3768, %3769
  %3771 = shl i64 %3764, 25
  %3772 = lshr i64 %3764, 39
  %3773 = or i64 %3771, %3772
  %3774 = xor i64 %3770, %3773
  %3775 = xor i64 %3774, %3767
  %3776 = and i64 %3764, %3727
  %3777 = or i64 %3764, %3727
  %3778 = and i64 %3777, %3666
  %3779 = or i64 %3778, %3776
  %3780 = add i64 %3775, %3779
  %3781 = shl i64 %3763, 50
  %3782 = lshr i64 %3763, 14
  %3783 = or i64 %3781, %3782
  %3784 = shl i64 %3763, 46
  %3785 = lshr i64 %3763, 18
  %3786 = or i64 %3784, %3785
  %3787 = shl i64 %3763, 23
  %3788 = lshr i64 %3763, 41
  %3789 = or i64 %3787, %3788
  %3790 = xor i64 %3786, %3789
  %3791 = xor i64 %3790, %3783
  %3792 = xor i64 %3726, %3665
  %3793 = and i64 %3763, %3792
  %3794 = xor i64 %3793, %3665
  %3795 = shl <2 x i64> %3720, <i64 45, i64 45>
  %3796 = lshr <2 x i64> %3720, <i64 19, i64 19>
  %3797 = or <2 x i64> %3795, %3796
  %3798 = shl <2 x i64> %3720, <i64 3, i64 3>
  %3799 = lshr <2 x i64> %3720, <i64 61, i64 61>
  %3800 = or <2 x i64> %3798, %3799
  %3801 = lshr <2 x i64> %3720, <i64 6, i64 6>
  %3802 = xor <2 x i64> %3800, %3801
  %3803 = xor <2 x i64> %3802, %3797
  %3804 = load <2 x i64>, <2 x i64>* %136, align 8
  %3805 = load <2 x i64>, <2 x i64>* %137, align 16
  %3806 = shufflevector <2 x i64> %3707, <2 x i64> %3805, <2 x i32> <i32 1, i32 2>
  %3807 = shl <2 x i64> %3806, <i64 63, i64 63>
  %3808 = lshr <2 x i64> %3806, <i64 1, i64 1>
  %3809 = or <2 x i64> %3807, %3808
  %3810 = shl <2 x i64> %3806, <i64 56, i64 56>
  %3811 = lshr <2 x i64> %3806, <i64 8, i64 8>
  %3812 = or <2 x i64> %3810, %3811
  %3813 = lshr <2 x i64> %3806, <i64 7, i64 7>
  %3814 = xor <2 x i64> %3812, %3813
  %3815 = xor <2 x i64> %3814, %3809
  %3816 = add <2 x i64> %3804, %3707
  %3817 = add <2 x i64> %3816, %3803
  %3818 = add <2 x i64> %3817, %3815
  %3819 = extractelement <2 x i64> %3818, i32 0
  %3820 = add i64 %3819, 5532061633213252278
  %3821 = add i64 %3820, %3628
  %3822 = add i64 %3821, %3794
  %3823 = add i64 %3822, %3791
  %3824 = add i64 %3823, %3629
  %3825 = add i64 %3780, %3823
  %3826 = shl i64 %3825, 36
  %3827 = lshr i64 %3825, 28
  %3828 = or i64 %3826, %3827
  %3829 = shl i64 %3825, 30
  %3830 = lshr i64 %3825, 34
  %3831 = or i64 %3829, %3830
  %3832 = shl i64 %3825, 25
  %3833 = lshr i64 %3825, 39
  %3834 = or i64 %3832, %3833
  %3835 = xor i64 %3831, %3834
  %3836 = xor i64 %3835, %3828
  %3837 = and i64 %3825, %3764
  %3838 = or i64 %3825, %3764
  %3839 = and i64 %3838, %3727
  %3840 = or i64 %3839, %3837
  %3841 = add i64 %3836, %3840
  %3842 = shl i64 %3824, 50
  %3843 = lshr i64 %3824, 14
  %3844 = or i64 %3842, %3843
  %3845 = shl i64 %3824, 46
  %3846 = lshr i64 %3824, 18
  %3847 = or i64 %3845, %3846
  %3848 = shl i64 %3824, 23
  %3849 = lshr i64 %3824, 41
  %3850 = or i64 %3848, %3849
  %3851 = xor i64 %3847, %3850
  %3852 = xor i64 %3851, %3844
  %3853 = xor i64 %3763, %3726
  %3854 = and i64 %3824, %3853
  %3855 = xor i64 %3854, %3726
  store <2 x i64> %3818, <2 x i64>* %138, align 16
  %3856 = extractelement <2 x i64> %3818, i32 1
  %3857 = add i64 %3856, 6448918945643986474
  %3858 = add i64 %3857, %3665
  %3859 = add i64 %3858, %3855
  %3860 = add i64 %3859, %3852
  %3861 = add i64 %3860, %3666
  %3862 = add i64 %3841, %3860
  %3863 = shl i64 %3862, 36
  %3864 = lshr i64 %3862, 28
  %3865 = or i64 %3863, %3864
  %3866 = shl i64 %3862, 30
  %3867 = lshr i64 %3862, 34
  %3868 = or i64 %3866, %3867
  %3869 = shl i64 %3862, 25
  %3870 = lshr i64 %3862, 39
  %3871 = or i64 %3869, %3870
  %3872 = xor i64 %3868, %3871
  %3873 = xor i64 %3872, %3865
  %3874 = and i64 %3862, %3825
  %3875 = or i64 %3862, %3825
  %3876 = and i64 %3875, %3764
  %3877 = or i64 %3876, %3874
  %3878 = add i64 %3873, %3877
  %3879 = shl i64 %3861, 50
  %3880 = lshr i64 %3861, 14
  %3881 = or i64 %3879, %3880
  %3882 = shl i64 %3861, 46
  %3883 = lshr i64 %3861, 18
  %3884 = or i64 %3882, %3883
  %3885 = shl i64 %3861, 23
  %3886 = lshr i64 %3861, 41
  %3887 = or i64 %3885, %3886
  %3888 = xor i64 %3884, %3887
  %3889 = xor i64 %3888, %3881
  %3890 = xor i64 %3824, %3763
  %3891 = and i64 %3861, %3890
  %3892 = xor i64 %3891, %3763
  %3893 = shl <2 x i64> %3818, <i64 45, i64 45>
  %3894 = lshr <2 x i64> %3818, <i64 19, i64 19>
  %3895 = or <2 x i64> %3893, %3894
  %3896 = shl <2 x i64> %3818, <i64 3, i64 3>
  %3897 = lshr <2 x i64> %3818, <i64 61, i64 61>
  %3898 = or <2 x i64> %3896, %3897
  %3899 = lshr <2 x i64> %3818, <i64 6, i64 6>
  %3900 = xor <2 x i64> %3898, %3899
  %3901 = xor <2 x i64> %3900, %3895
  %3902 = load <2 x i64>, <2 x i64>* %139, align 8
  %3903 = load i64, i64* %35, align 16
  %3904 = extractelement <2 x i64> %3805, i32 1
  %3905 = insertelement <2 x i64> undef, i64 %3904, i32 0
  %3906 = insertelement <2 x i64> %3905, i64 %3903, i32 1
  %3907 = shl <2 x i64> %3906, <i64 63, i64 63>
  %3908 = lshr <2 x i64> %3906, <i64 1, i64 1>
  %3909 = or <2 x i64> %3907, %3908
  %3910 = shl <2 x i64> %3906, <i64 56, i64 56>
  %3911 = lshr <2 x i64> %3906, <i64 8, i64 8>
  %3912 = or <2 x i64> %3910, %3911
  %3913 = lshr <2 x i64> %3906, <i64 7, i64 7>
  %3914 = xor <2 x i64> %3912, %3913
  %3915 = xor <2 x i64> %3914, %3909
  %3916 = add <2 x i64> %3902, %3805
  %3917 = add <2 x i64> %3916, %3901
  %3918 = add <2 x i64> %3917, %3915
  %3919 = extractelement <2 x i64> %3918, i32 0
  %3920 = add i64 %3919, 6902733635092675308
  %3921 = add i64 %3920, %3726
  %3922 = add i64 %3921, %3892
  %3923 = add i64 %3922, %3889
  %3924 = add i64 %3923, %3727
  %3925 = add i64 %3878, %3923
  %3926 = shl i64 %3925, 36
  %3927 = lshr i64 %3925, 28
  %3928 = or i64 %3926, %3927
  %3929 = shl i64 %3925, 30
  %3930 = lshr i64 %3925, 34
  %3931 = or i64 %3929, %3930
  %3932 = shl i64 %3925, 25
  %3933 = lshr i64 %3925, 39
  %3934 = or i64 %3932, %3933
  %3935 = xor i64 %3931, %3934
  %3936 = xor i64 %3935, %3928
  %3937 = and i64 %3925, %3862
  %3938 = or i64 %3925, %3862
  %3939 = and i64 %3938, %3825
  %3940 = or i64 %3939, %3937
  %3941 = shl i64 %3924, 50
  %3942 = lshr i64 %3924, 14
  %3943 = or i64 %3941, %3942
  %3944 = shl i64 %3924, 46
  %3945 = lshr i64 %3924, 18
  %3946 = or i64 %3944, %3945
  %3947 = shl i64 %3924, 23
  %3948 = lshr i64 %3924, 41
  %3949 = or i64 %3947, %3948
  %3950 = xor i64 %3946, %3949
  %3951 = xor i64 %3950, %3943
  %3952 = xor i64 %3861, %3824
  %3953 = and i64 %3924, %3952
  %3954 = xor i64 %3953, %3824
  store <2 x i64> %3918, <2 x i64>* %140, align 16
  %3955 = extractelement <2 x i64> %3918, i32 1
  %3956 = add i64 %3955, 7801388544844847127
  %3957 = add i64 %3956, %3763
  %3958 = add i64 %3957, %3954
  %3959 = add i64 %3958, %3951
  %3960 = load i64, i64* %9, align 8
  %3961 = add i64 %3940, %3960
  %3962 = add i64 %3961, %3936
  %3963 = add i64 %3962, %3959
  store i64 %3963, i64* %9, align 8
  %3964 = load i64, i64* %11, align 8
  %3965 = add i64 %3925, %3964
  store i64 %3965, i64* %11, align 8
  %3966 = load i64, i64* %13, align 8
  %3967 = add i64 %3862, %3966
  store i64 %3967, i64* %13, align 8
  %3968 = load i64, i64* %15, align 8
  %3969 = add i64 %3825, %3968
  store i64 %3969, i64* %15, align 8
  %3970 = load i64, i64* %17, align 8
  %3971 = add i64 %3764, %3970
  %3972 = add i64 %3971, %3959
  store i64 %3972, i64* %17, align 8
  %3973 = load i64, i64* %19, align 8
  %3974 = add i64 %3924, %3973
  store i64 %3974, i64* %19, align 8
  %3975 = load i64, i64* %21, align 8
  %3976 = add i64 %3861, %3975
  store i64 %3976, i64* %21, align 8
  %3977 = load i64, i64* %23, align 8
  %3978 = add i64 %3824, %3977
  store i64 %3978, i64* %23, align 8
  %3979 = icmp ult i64* %198, %7
  br i1 %3979, label %141, label %3980

; <label>:3980:                                   ; preds = %141
  br label %3981

; <label>:3981:                                   ; preds = %3980, %3
  call void @llvm.lifetime.end(i64 128, i8* nonnull %8) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha384_finish_ctx(%struct.sha512_ctx*, i8* returned) local_unnamed_addr #6 {
  tail call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* %0)
  %3 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #10
  %6 = bitcast i8* %1 to i64*
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #10
  %11 = bitcast i8* %7 to i64*
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 2
  %14 = load i64, i64* %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #10
  %16 = bitcast i8* %12 to i64*
  store i64 %15, i64* %16, align 1
  %17 = getelementptr inbounds i8, i8* %1, i64 24
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #10
  %21 = bitcast i8* %17 to i64*
  store i64 %20, i64* %21, align 1
  %22 = getelementptr inbounds i8, i8* %1, i64 32
  %23 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 4
  %24 = load i64, i64* %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #10
  %26 = bitcast i8* %22 to i64*
  store i64 %25, i64* %26, align 1
  %27 = getelementptr inbounds i8, i8* %1, i64 40
  %28 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %0, i64 0, i32 0, i64 5
  %29 = load i64, i64* %28, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #10
  %31 = bitcast i8* %27 to i64*
  store i64 %30, i64* %31, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha512_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.sha512_ctx, align 16
  %4 = bitcast %struct.sha512_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 344, i8* nonnull %4) #10
  %5 = tail call noalias i8* @malloc(i64 32840) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %78, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 0
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 1
  %10 = bitcast %struct.sha512_ctx* %3 to <2 x i64>*
  store <2 x i64> <i64 7640891576956012808, i64 -4942790177534073029>, <2 x i64>* %10, align 16
  %11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 3
  %13 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> <i64 4354685564936845355, i64 -6534734903238641935>, <2 x i64>* %13, align 16
  %14 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 4
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 5
  %16 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> <i64 5840696475078001361, i64 -7276294671716946913>, <2 x i64>* %16, align 16
  %17 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 6
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 7
  %19 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %19, align 16
  %20 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 1, i64 0
  %21 = bitcast i64* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 16, i1 false) #10
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %23

; <label>:23:                                     ; preds = %41, %7
  br label %24

; <label>:24:                                     ; preds = %38, %23
  %25 = phi i64 [ 0, %23 ], [ %29, %38 ]
  %26 = getelementptr inbounds i8, i8* %5, i64 %25
  %27 = sub i64 32768, %25
  %28 = tail call i64 @fread_unlocked(i8* %26, i64 1, i64 %27, %struct._IO_FILE* %0) #10
  %29 = add i64 %28, %25
  %30 = icmp eq i64 %29, 32768
  br i1 %30, label %41, label %31

; <label>:31:                                     ; preds = %24
  %32 = icmp eq i64 %28, 0
  %33 = load i32, i32* %22, align 8
  br i1 %32, label %34, label %38

; <label>:34:                                     ; preds = %31
  %35 = and i32 %33, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

; <label>:37:                                     ; preds = %34
  tail call void @free(i8* %5) #10
  br label %78

; <label>:38:                                     ; preds = %31
  %39 = and i32 %33, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %24, label %42

; <label>:41:                                     ; preds = %24
  call void @sha512_process_block(i8* nonnull %5, i64 32768, %struct.sha512_ctx* nonnull %3)
  br label %23

; <label>:42:                                     ; preds = %38
  br label %43

; <label>:43:                                     ; preds = %42, %34
  %44 = icmp eq i64 %29, 0
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %43
  call void @sha512_process_bytes(i8* nonnull %5, i64 %29, %struct.sha512_ctx* nonnull %3)
  br label %46

; <label>:46:                                     ; preds = %43, %45
  call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* nonnull %3) #10
  %47 = load i64, i64* %8, align 16
  %48 = call i64 @llvm.bswap.i64(i64 %47) #10
  %49 = bitcast i8* %1 to i64*
  store i64 %48, i64* %49, align 1
  %50 = getelementptr inbounds i8, i8* %1, i64 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #10
  %53 = bitcast i8* %50 to i64*
  store i64 %52, i64* %53, align 1
  %54 = getelementptr inbounds i8, i8* %1, i64 16
  %55 = load i64, i64* %11, align 16
  %56 = call i64 @llvm.bswap.i64(i64 %55) #10
  %57 = bitcast i8* %54 to i64*
  store i64 %56, i64* %57, align 1
  %58 = getelementptr inbounds i8, i8* %1, i64 24
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #10
  %61 = bitcast i8* %58 to i64*
  store i64 %60, i64* %61, align 1
  %62 = getelementptr inbounds i8, i8* %1, i64 32
  %63 = load i64, i64* %14, align 16
  %64 = call i64 @llvm.bswap.i64(i64 %63) #10
  %65 = bitcast i8* %62 to i64*
  store i64 %64, i64* %65, align 1
  %66 = getelementptr inbounds i8, i8* %1, i64 40
  %67 = load i64, i64* %15, align 8
  %68 = call i64 @llvm.bswap.i64(i64 %67) #10
  %69 = bitcast i8* %66 to i64*
  store i64 %68, i64* %69, align 1
  %70 = getelementptr inbounds i8, i8* %1, i64 48
  %71 = load i64, i64* %17, align 16
  %72 = call i64 @llvm.bswap.i64(i64 %71) #10
  %73 = bitcast i8* %70 to i64*
  store i64 %72, i64* %73, align 1
  %74 = getelementptr inbounds i8, i8* %1, i64 56
  %75 = load i64, i64* %18, align 8
  %76 = call i64 @llvm.bswap.i64(i64 %75) #10
  %77 = bitcast i8* %74 to i64*
  store i64 %76, i64* %77, align 1
  call void @free(i8* %5) #10
  br label %78

; <label>:78:                                     ; preds = %37, %2, %46
  %79 = phi i32 [ 0, %46 ], [ 1, %2 ], [ 1, %37 ]
  call void @llvm.lifetime.end(i64 344, i8* nonnull %4) #10
  ret i32 %79
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @sha512_process_bytes(i8* readonly, i64, %struct.sha512_ctx*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %27, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i64 256, %5
  %9 = icmp ugt i64 %8, %1
  %10 = select i1 %9, i64 %1, i64 %8
  %11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 3, i64 0
  %12 = bitcast i64* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %0, i64 %10, i32 1, i1 false)
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, %10
  store i64 %15, i64* %4, align 8
  %16 = icmp ugt i64 %15, 128
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %7
  %18 = and i64 %15, -128
  tail call void @sha512_process_block(i8* %12, i64 %18, %struct.sha512_ctx* nonnull %2)
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 127
  store i64 %20, i64* %4, align 8
  %21 = add i64 %10, %5
  %22 = and i64 %21, -128
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
  %30 = icmp ugt i64 %28, 127
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %27
  %32 = and i64 %28, -128
  tail call void @sha512_process_block(i8* %29, i64 %32, %struct.sha512_ctx* nonnull %2)
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = and i64 %28, 127
  br label %35

; <label>:35:                                     ; preds = %31, %27
  %36 = phi i64 [ %34, %31 ], [ %28, %27 ]
  %37 = phi i8* [ %33, %31 ], [ %29, %27 ]
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %52, label %39

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 3
  %42 = bitcast [32 x i64]* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %37, i64 %36, i32 1, i1 false)
  %44 = add i64 %40, %36
  %45 = icmp ugt i64 %44, 127
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %39
  tail call void @sha512_process_block(i8* %42, i64 128, %struct.sha512_ctx* nonnull %2)
  %47 = add i64 %44, -128
  %48 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %2, i64 0, i32 3, i64 16
  %49 = bitcast i64* %48 to i8*
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
define i32 @sha384_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.sha512_ctx, align 16
  %4 = bitcast %struct.sha512_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 344, i8* nonnull %4) #10
  %5 = tail call noalias i8* @malloc(i64 32840) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %69, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 0
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 1
  %10 = bitcast %struct.sha512_ctx* %3 to <2 x i64>*
  store <2 x i64> <i64 -3766243637369397544, i64 7105036623409894663>, <2 x i64>* %10, align 16
  %11 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 3
  %13 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> <i64 -7973340178411365097, i64 1526699215303891257>, <2 x i64>* %13, align 16
  %14 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 4
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 5
  %16 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> <i64 7436329637833083697, i64 -8163818279084223215>, <2 x i64>* %16, align 16
  %17 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 0, i64 6
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> <i64 -2662702644619276377, i64 5167115440072839076>, <2 x i64>* %18, align 16
  %19 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %3, i64 0, i32 1, i64 0
  %20 = bitcast i64* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 24, i32 16, i1 false) #10
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %22

; <label>:22:                                     ; preds = %40, %7
  br label %23

; <label>:23:                                     ; preds = %37, %22
  %24 = phi i64 [ 0, %22 ], [ %28, %37 ]
  %25 = getelementptr inbounds i8, i8* %5, i64 %24
  %26 = sub i64 32768, %24
  %27 = tail call i64 @fread_unlocked(i8* %25, i64 1, i64 %26, %struct._IO_FILE* %0) #10
  %28 = add i64 %27, %24
  %29 = icmp eq i64 %28, 32768
  br i1 %29, label %40, label %30

; <label>:30:                                     ; preds = %23
  %31 = icmp eq i64 %27, 0
  %32 = load i32, i32* %21, align 8
  br i1 %31, label %33, label %37

; <label>:33:                                     ; preds = %30
  %34 = and i32 %32, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %33
  tail call void @free(i8* %5) #10
  br label %69

; <label>:37:                                     ; preds = %30
  %38 = and i32 %32, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %23, label %41

; <label>:40:                                     ; preds = %23
  call void @sha512_process_block(i8* nonnull %5, i64 32768, %struct.sha512_ctx* nonnull %3)
  br label %22

; <label>:41:                                     ; preds = %37
  br label %42

; <label>:42:                                     ; preds = %41, %33
  %43 = icmp eq i64 %28, 0
  br i1 %43, label %45, label %44

; <label>:44:                                     ; preds = %42
  call void @sha512_process_bytes(i8* nonnull %5, i64 %28, %struct.sha512_ctx* nonnull %3)
  br label %45

; <label>:45:                                     ; preds = %42, %44
  call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* nonnull %3) #10
  %46 = load i64, i64* %8, align 16
  %47 = call i64 @llvm.bswap.i64(i64 %46) #10
  %48 = bitcast i8* %1 to i64*
  store i64 %47, i64* %48, align 1
  %49 = getelementptr inbounds i8, i8* %1, i64 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50) #10
  %52 = bitcast i8* %49 to i64*
  store i64 %51, i64* %52, align 1
  %53 = getelementptr inbounds i8, i8* %1, i64 16
  %54 = load i64, i64* %11, align 16
  %55 = call i64 @llvm.bswap.i64(i64 %54) #10
  %56 = bitcast i8* %53 to i64*
  store i64 %55, i64* %56, align 1
  %57 = getelementptr inbounds i8, i8* %1, i64 24
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58) #10
  %60 = bitcast i8* %57 to i64*
  store i64 %59, i64* %60, align 1
  %61 = getelementptr inbounds i8, i8* %1, i64 32
  %62 = load i64, i64* %14, align 16
  %63 = call i64 @llvm.bswap.i64(i64 %62) #10
  %64 = bitcast i8* %61 to i64*
  store i64 %63, i64* %64, align 1
  %65 = getelementptr inbounds i8, i8* %1, i64 40
  %66 = load i64, i64* %15, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66) #10
  %68 = bitcast i8* %65 to i64*
  store i64 %67, i64* %68, align 1
  call void @free(i8* %5) #10
  br label %69

; <label>:69:                                     ; preds = %36, %2, %45
  %70 = phi i32 [ 0, %45 ], [ 1, %2 ], [ 1, %36 ]
  call void @llvm.lifetime.end(i64 344, i8* nonnull %4) #10
  ret i32 %70
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha512_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.sha512_ctx, align 16
  %5 = bitcast %struct.sha512_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 344, i8* nonnull %5) #10
  %6 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 1
  %8 = bitcast %struct.sha512_ctx* %4 to <2 x i64>*
  store <2 x i64> <i64 7640891576956012808, i64 -4942790177534073029>, <2 x i64>* %8, align 16
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 3
  %11 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> <i64 4354685564936845355, i64 -6534734903238641935>, <2 x i64>* %11, align 16
  %12 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 4
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 5
  %14 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> <i64 5840696475078001361, i64 -7276294671716946913>, <2 x i64>* %14, align 16
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 6
  %16 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 7
  %17 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %17, align 16
  %18 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 1, i64 0
  %19 = bitcast i64* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 16, i1 false) #10
  call void @sha512_process_bytes(i8* %0, i64 %1, %struct.sha512_ctx* nonnull %4)
  call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* nonnull %4) #10
  %20 = load i64, i64* %6, align 16
  %21 = call i64 @llvm.bswap.i64(i64 %20) #10
  %22 = bitcast i8* %2 to i64*
  store i64 %21, i64* %22, align 1
  %23 = getelementptr inbounds i8, i8* %2, i64 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24) #10
  %26 = bitcast i8* %23 to i64*
  store i64 %25, i64* %26, align 1
  %27 = getelementptr inbounds i8, i8* %2, i64 16
  %28 = load i64, i64* %9, align 16
  %29 = call i64 @llvm.bswap.i64(i64 %28) #10
  %30 = bitcast i8* %27 to i64*
  store i64 %29, i64* %30, align 1
  %31 = getelementptr inbounds i8, i8* %2, i64 24
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  %34 = bitcast i8* %31 to i64*
  store i64 %33, i64* %34, align 1
  %35 = getelementptr inbounds i8, i8* %2, i64 32
  %36 = load i64, i64* %12, align 16
  %37 = call i64 @llvm.bswap.i64(i64 %36) #10
  %38 = bitcast i8* %35 to i64*
  store i64 %37, i64* %38, align 1
  %39 = getelementptr inbounds i8, i8* %2, i64 40
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #10
  %42 = bitcast i8* %39 to i64*
  store i64 %41, i64* %42, align 1
  %43 = getelementptr inbounds i8, i8* %2, i64 48
  %44 = load i64, i64* %15, align 16
  %45 = call i64 @llvm.bswap.i64(i64 %44) #10
  %46 = bitcast i8* %43 to i64*
  store i64 %45, i64* %46, align 1
  %47 = getelementptr inbounds i8, i8* %2, i64 56
  %48 = load i64, i64* %16, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #10
  %50 = bitcast i8* %47 to i64*
  store i64 %49, i64* %50, align 1
  call void @llvm.lifetime.end(i64 344, i8* nonnull %5) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha384_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.sha512_ctx, align 16
  %5 = bitcast %struct.sha512_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 344, i8* nonnull %5) #10
  %6 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 1
  %8 = bitcast %struct.sha512_ctx* %4 to <2 x i64>*
  store <2 x i64> <i64 -3766243637369397544, i64 7105036623409894663>, <2 x i64>* %8, align 16
  %9 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 3
  %11 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> <i64 -7973340178411365097, i64 1526699215303891257>, <2 x i64>* %11, align 16
  %12 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 4
  %13 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 5
  %14 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> <i64 7436329637833083697, i64 -8163818279084223215>, <2 x i64>* %14, align 16
  %15 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 0, i64 6
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> <i64 -2662702644619276377, i64 5167115440072839076>, <2 x i64>* %16, align 16
  %17 = getelementptr inbounds %struct.sha512_ctx, %struct.sha512_ctx* %4, i64 0, i32 1, i64 0
  %18 = bitcast i64* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 16, i1 false) #10
  call void @sha512_process_bytes(i8* %0, i64 %1, %struct.sha512_ctx* nonnull %4)
  call fastcc void @sha512_conclude_ctx(%struct.sha512_ctx* nonnull %4) #10
  %19 = load i64, i64* %6, align 16
  %20 = call i64 @llvm.bswap.i64(i64 %19) #10
  %21 = bitcast i8* %2 to i64*
  store i64 %20, i64* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23) #10
  %25 = bitcast i8* %22 to i64*
  store i64 %24, i64* %25, align 1
  %26 = getelementptr inbounds i8, i8* %2, i64 16
  %27 = load i64, i64* %9, align 16
  %28 = call i64 @llvm.bswap.i64(i64 %27) #10
  %29 = bitcast i8* %26 to i64*
  store i64 %28, i64* %29, align 1
  %30 = getelementptr inbounds i8, i8* %2, i64 24
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #10
  %33 = bitcast i8* %30 to i64*
  store i64 %32, i64* %33, align 1
  %34 = getelementptr inbounds i8, i8* %2, i64 32
  %35 = load i64, i64* %12, align 16
  %36 = call i64 @llvm.bswap.i64(i64 %35) #10
  %37 = bitcast i8* %34 to i64*
  store i64 %36, i64* %37, align 1
  %38 = getelementptr inbounds i8, i8* %2, i64 40
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #10
  %41 = bitcast i8* %38 to i64*
  store i64 %40, i64* %41, align 1
  call void @llvm.lifetime.end(i64 344, i8* nonnull %5) #10
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
