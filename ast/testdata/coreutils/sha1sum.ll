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
@long_options = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
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
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !238
@.str.64 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !120
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), align 8, !dbg !252
@.str.35 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !258
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !263
@.str.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !266
@exit_failure = global i32 1, align 4, !dbg !278
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !285
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16, !dbg !292
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !304
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !311
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !323
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.98 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.99 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !330
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !337
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !325
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !339
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !345
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !354
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !389
@.str.3.160 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.161 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.162 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.163 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.164 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !791 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !795, metadata !796), !dbg !797
  %2 = icmp eq i32 %0, 0, !dbg !798
  br i1 %2, label %8, label %3, !dbg !800

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !801, !tbaa !804
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !801
  %6 = load i8*, i8** @program_name, align 8, !dbg !801, !tbaa !804
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !808
  br label %52, !dbg !810

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !812
  %10 = load i8*, i8** @program_name, align 8, !dbg !812, !tbaa !804
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #10, !dbg !814
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !816
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !816, !tbaa !804
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !821
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !823
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !823, !tbaa !804
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !825
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !827
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !828
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !829
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !804
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !830
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !831
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !804
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !833
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !835
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !835, !tbaa !804
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !836
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !837
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !837, !tbaa !804
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !838
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !839
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !804
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !840
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !841
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !842
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !88, metadata !796) #10, !dbg !843
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !88, metadata !796) #10, !dbg !843
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !845
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !846
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !848
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !99, metadata !796) #10, !dbg !849
  %40 = icmp eq i8* %39, null, !dbg !850
  br i1 %40, label %47, label %41, !dbg !851

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #13, !dbg !852
  %43 = icmp eq i32 %42, 0, !dbg !852
  br i1 %43, label %47, label %44, !dbg !854

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !856
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !858
  br label %47, !dbg !860

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !861
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !862
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !863
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !864
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #14, !dbg !865
  unreachable, !dbg !865
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !866 {
  %3 = alloca [24 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [24 x i8]* %3, metadata !188, metadata !796), !dbg !895
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !871, metadata !796), !dbg !897
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !872, metadata !796), !dbg !898
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !899
  call void @llvm.lifetime.start(i64 24, i8* nonnull %9) #10, !dbg !899
  tail call void @llvm.dbg.declare(metadata [24 x i8]* %7, metadata !873, metadata !796), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !901, metadata !796), !dbg !909
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3, !dbg !911
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !908, metadata !796), !dbg !912
  %11 = ptrtoint i8* %10 to i64, !dbg !913
  %12 = and i64 %11, 3, !dbg !914
  %13 = sub nsw i64 0, %12, !dbg !915
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !915
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !874, metadata !796), !dbg !916
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !875, metadata !796), !dbg !917
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !796), !dbg !918
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !878, metadata !796), !dbg !919
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !879, metadata !796), !dbg !920
  %15 = load i8*, i8** %1, align 8, !dbg !921, !tbaa !804
  call void @set_program_name(i8* %15) #10, !dbg !922
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !923
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !924
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !925
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !926
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !804
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !928
  br label %22, !dbg !929

; <label>:22:                                     ; preds = %35, %2
  %23 = phi i32 [ -1, %2 ], [ %36, %35 ]
  %24 = phi i8 [ 0, %2 ], [ %37, %35 ]
  %25 = phi i8 [ 0, %2 ], [ %38, %35 ]
  call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !875, metadata !796), !dbg !917
  call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !879, metadata !796), !dbg !920
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !878, metadata !796), !dbg !919
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !930
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !876, metadata !796), !dbg !932
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
  ], !dbg !933

; <label>:27:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !875, metadata !796), !dbg !917
  br label %35, !dbg !934

; <label>:28:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35, !dbg !936

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !878, metadata !796), !dbg !919
  br label %35, !dbg !937

; <label>:30:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35, !dbg !938

; <label>:31:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %35, !dbg !939

; <label>:32:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %35, !dbg !940

; <label>:33:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %35, !dbg !941

; <label>:34:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !879, metadata !796), !dbg !920
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !878, metadata !796), !dbg !919
  br label %35, !dbg !942

; <label>:35:                                     ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %22
  %36 = phi i32 [ 1, %34 ], [ %23, %33 ], [ %23, %32 ], [ %23, %31 ], [ %23, %30 ], [ 0, %29 ], [ %23, %28 ], [ %23, %27 ], [ 1, %22 ]
  %37 = phi i8 [ 1, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %30 ], [ %24, %29 ], [ %24, %28 ], [ %24, %27 ], [ %24, %22 ]
  %38 = phi i8 [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %25, %30 ], [ %25, %29 ], [ %25, %28 ], [ 1, %27 ], [ %25, %22 ]
  br label %22, !dbg !917, !llvm.loop !943

; <label>:39:                                     ; preds = %22
  call void @usage(i32 0) #15, !dbg !945
  unreachable, !dbg !945

; <label>:40:                                     ; preds = %22
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !946, !tbaa !804
  %42 = load i8*, i8** @Version, align 8, !dbg !946, !tbaa !804
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !946
  call void @exit(i32 0) #14, !dbg !947
  unreachable, !dbg !946

; <label>:43:                                     ; preds = %22
  call void @usage(i32 1) #15, !dbg !949
  unreachable, !dbg !949

; <label>:44:                                     ; preds = %22
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %45 = icmp ne i8 %24, 0, !dbg !950
  %46 = xor i1 %45, true, !dbg !952
  %47 = icmp ne i32 %23, 0, !dbg !953
  %48 = or i1 %47, %46, !dbg !952
  br i1 %48, label %51, label %49, !dbg !952

; <label>:49:                                     ; preds = %44
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !955
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10, !dbg !957
  call void @usage(i32 1) #15, !dbg !959
  unreachable, !dbg !959

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i8 %25, 0, !dbg !960
  %53 = or i1 %52, %46, !dbg !963
  br i1 %53, label %56, label %54, !dbg !963

; <label>:54:                                     ; preds = %51
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !964
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55) #10, !dbg !966
  call void @usage(i32 1) #15, !dbg !968
  unreachable, !dbg !968

; <label>:56:                                     ; preds = %51
  %57 = icmp slt i32 %23, 0, !dbg !969
  %58 = or i1 %57, %52, !dbg !971
  br i1 %58, label %61, label %59, !dbg !971

; <label>:59:                                     ; preds = %56
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !972
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60) #10, !dbg !974
  call void @usage(i32 1) #15, !dbg !976
  unreachable, !dbg !976

; <label>:61:                                     ; preds = %56
  %62 = load i1, i1* @ignore_missing, align 1
  %63 = and i1 %52, %62, !dbg !977
  br i1 %63, label %64, label %66, !dbg !977

; <label>:64:                                     ; preds = %61
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !979
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !981
  call void @usage(i32 1) #15, !dbg !982
  unreachable, !dbg !982

; <label>:66:                                     ; preds = %61
  %67 = load i1, i1* @status_only, align 1
  %68 = and i1 %52, %67, !dbg !983
  br i1 %68, label %69, label %71, !dbg !983

; <label>:69:                                     ; preds = %66
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !985
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #10, !dbg !987
  call void @usage(i32 1) #15, !dbg !988
  unreachable, !dbg !988

; <label>:71:                                     ; preds = %66
  %72 = load i1, i1* @warn, align 1
  %73 = and i1 %52, %72, !dbg !989
  br i1 %73, label %74, label %76, !dbg !989

; <label>:74:                                     ; preds = %71
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !991
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #10, !dbg !993
  call void @usage(i32 1) #15, !dbg !994
  unreachable, !dbg !994

; <label>:76:                                     ; preds = %71
  %77 = load i1, i1* @quiet, align 1
  %78 = and i1 %52, %77, !dbg !995
  br i1 %78, label %79, label %81, !dbg !995

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !997
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !999
  call void @usage(i32 1) #15, !dbg !1000
  unreachable, !dbg !1000

; <label>:81:                                     ; preds = %76
  %82 = load i1, i1* @strict, align 1
  %83 = icmp ne i8 %25, 0, !dbg !1001
  %84 = xor i1 %83, true, !dbg !1003
  %85 = and i1 %82, %84, !dbg !1004
  br i1 %85, label %86, label %88, !dbg !1005

; <label>:86:                                     ; preds = %81
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !1008
  call void @usage(i32 1) #15, !dbg !1009
  unreachable, !dbg !1009

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !878, metadata !796), !dbg !919
  %89 = icmp sgt i32 %23, 0, !dbg !1010
  %90 = sext i32 %0 to i64, !dbg !1011
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90, !dbg !1011
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !881, metadata !796), !dbg !1012
  %92 = load i32, i32* @optind, align 4, !dbg !1013, !tbaa !1015
  %93 = icmp eq i32 %92, %0, !dbg !1017
  br i1 %93, label %94, label %96, !dbg !1018

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !1019
  call void @llvm.dbg.value(metadata i8** %95, i64 0, metadata !881, metadata !796), !dbg !1012
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** %91, align 8, !dbg !1020, !tbaa !804
  br label %96, !dbg !1021

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i8** [ %95, %94 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i8** %97, i64 0, metadata !881, metadata !796), !dbg !1012
  %98 = sext i32 %92 to i64, !dbg !1022
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98, !dbg !1022
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !882, metadata !796), !dbg !1023
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !882, metadata !796), !dbg !1023
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !877, metadata !796), !dbg !918
  %100 = icmp ult i8** %99, %97, !dbg !1024
  br i1 %100, label %101, label %113, !dbg !1026

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
  br label %116, !dbg !1026

; <label>:112:                                    ; preds = %655
  br label %113

; <label>:113:                                    ; preds = %112, %96
  %114 = phi i8 [ 1, %96 ], [ %656, %112 ]
  %115 = load i1, i1* @have_read_stdin, align 1
  br i1 %115, label %659, label %667, !dbg !1028

; <label>:116:                                    ; preds = %101, %655
  %117 = phi i8** [ %99, %101 ], [ %657, %655 ]
  %118 = phi i8 [ 1, %101 ], [ %656, %655 ]
  %119 = load i8*, i8** %117, align 8, !dbg !1030, !tbaa !804
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !884, metadata !796), !dbg !1031
  br i1 %83, label %120, label %563, !dbg !1032

; <label>:120:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !126, metadata !796) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !796) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !183, metadata !796) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !184, metadata !796) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !185, metadata !796) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !186, metadata !796) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !187, metadata !796) #10, !dbg !1039
  call void @llvm.lifetime.start(i64 24, i8* nonnull %102) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !901, metadata !796) #10, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !908, metadata !796) #10, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !192, metadata !796) #10, !dbg !1044
  call void @llvm.lifetime.start(i64 8, i8* nonnull %108) #10, !dbg !1045
  call void @llvm.lifetime.start(i64 8, i8* nonnull %109) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !199, metadata !796) #10, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !200, metadata !796) #10, !dbg !1048
  %121 = load i8, i8* %119, align 1, !dbg !1049, !tbaa !1051
  %122 = icmp eq i8 %121, 45, !dbg !1052
  br i1 %122, label %123, label %130, !dbg !1055

; <label>:123:                                    ; preds = %120
  %124 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1057
  %125 = load i8, i8* %124, align 1, !dbg !1057, !tbaa !1051
  %126 = icmp eq i8 %125, 0, !dbg !1060
  br i1 %126, label %127, label %130, !dbg !1062

; <label>:127:                                    ; preds = %123
  store i1 true, i1* @have_read_stdin, align 1
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !126, metadata !796) #10, !dbg !1033
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1066, !tbaa !804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %129, i64 0, metadata !127, metadata !796) #10, !dbg !1067
  br label %137, !dbg !1068

; <label>:130:                                    ; preds = %123, %120
  %131 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, i64 0, metadata !127, metadata !796) #10, !dbg !1067
  %132 = icmp eq %struct._IO_FILE* %131, null, !dbg !1071
  br i1 %132, label %133, label %137, !dbg !1073

; <label>:133:                                    ; preds = %130
  %134 = tail call i32* @__errno_location() #1, !dbg !1074
  %135 = load i32, i32* %134, align 4, !dbg !1074, !tbaa !1015
  %136 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %119) #10, !dbg !1076
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %136) #10, !dbg !1078
  br label %559, !dbg !1080

; <label>:137:                                    ; preds = %130, %127
  %138 = phi i1 [ true, %127 ], [ false, %130 ]
  %139 = phi %struct._IO_FILE* [ %129, %127 ], [ %131, %130 ]
  %140 = phi i8* [ %128, %127 ], [ %119, %130 ]
  call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !126, metadata !796) #10, !dbg !1033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !127, metadata !796) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !193, metadata !796) #10, !dbg !1081
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !194, metadata !796) #10, !dbg !1082
  store i8* null, i8** %4, align 8, !dbg !1083, !tbaa !804
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !195, metadata !796) #10, !dbg !1084
  store i64 0, i64* %5, align 8, !dbg !1085, !tbaa !1086
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 0
  br label %142, !dbg !1088, !llvm.loop !1089

; <label>:142:                                    ; preds = %486, %137
  %143 = phi i64 [ 0, %137 ], [ %150, %486 ]
  %144 = phi i8 [ 0, %137 ], [ %487, %486 ]
  %145 = phi i8 [ 0, %137 ], [ %488, %486 ]
  %146 = phi i64 [ 0, %137 ], [ %489, %486 ]
  %147 = phi i64 [ 0, %137 ], [ %490, %486 ]
  %148 = phi i64 [ 0, %137 ], [ %491, %486 ]
  %149 = phi i64 [ 0, %137 ], [ %492, %486 ]
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !182, metadata !796) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !183, metadata !796) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !184, metadata !796) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !185, metadata !796) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i8 %145, i64 0, metadata !186, metadata !796) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !187, metadata !796) #10, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !193, metadata !796) #10, !dbg !1081
  %150 = add i64 %143, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !193, metadata !796) #10, !dbg !1081
  %151 = icmp eq i64 %150, 0, !dbg !1093
  br i1 %151, label %152, label %155, !dbg !1095

; <label>:152:                                    ; preds = %142
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1096
  %154 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1097
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %154) #10, !dbg !1099
  unreachable, !dbg !1096

; <label>:155:                                    ; preds = %142
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !194, metadata !1101) #10, !dbg !1082
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !195, metadata !1101) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1102, metadata !796) #10, !dbg !1110
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1108, metadata !796) #10, !dbg !1112
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1109, metadata !796) #10, !dbg !1113
  %156 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %139) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !207, metadata !796) #10, !dbg !1115
  %157 = icmp slt i64 %156, 1, !dbg !1116
  br i1 %157, label %496, label %158, !dbg !1118

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %4, align 8, !dbg !1119, !tbaa !804
  call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !194, metadata !796) #10, !dbg !1082
  %160 = load i8, i8* %159, align 1, !dbg !1119, !tbaa !1051
  %161 = icmp eq i8 %160, 35, !dbg !1121
  br i1 %161, label %486, label %162, !dbg !1122

; <label>:162:                                    ; preds = %158
  %163 = add nsw i64 %156, -1, !dbg !1123
  %164 = getelementptr inbounds i8, i8* %159, i64 %163, !dbg !1125
  %165 = load i8, i8* %164, align 1, !dbg !1125, !tbaa !1051
  %166 = icmp eq i8 %165, 10, !dbg !1126
  br i1 %166, label %167, label %169, !dbg !1127

; <label>:167:                                    ; preds = %162
  call void @llvm.dbg.value(metadata i64 %163, i64 0, metadata !207, metadata !796) #10, !dbg !1115
  store i8 0, i8* %164, align 1, !dbg !1128, !tbaa !1051
  %168 = load i8*, i8** %4, align 8, !tbaa !804
  br label %169, !dbg !1129

; <label>:169:                                    ; preds = %167, %162
  %170 = phi i8* [ %168, %167 ], [ %159, %162 ], !dbg !1130
  %171 = phi i64 [ %163, %167 ], [ %156, %162 ]
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !207, metadata !796) #10, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !194, metadata !796) #10, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !1131, metadata !796) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1137, metadata !796) #10, !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1141, metadata !796) #10, !dbg !1147
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  br label %172, !dbg !1149

; <label>:172:                                    ; preds = %176, %169
  %173 = phi i64 [ 0, %169 ], [ %177, %176 ]
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %174 = getelementptr inbounds i8, i8* %170, i64 %173, !dbg !1150
  %175 = load i8, i8* %174, align 1, !dbg !1150, !tbaa !1051
  switch i8 %175, label %180 [
    i8 32, label %176
    i8 9, label %176
    i8 92, label %178
  ], !dbg !1150

; <label>:176:                                    ; preds = %172, %172
  %177 = add i64 %173, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %177, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  br label %172, !dbg !1153, !llvm.loop !1155

; <label>:178:                                    ; preds = %172
  %179 = add i64 %173, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1141, metadata !796) #10, !dbg !1147
  br label %181, !dbg !1161

; <label>:180:                                    ; preds = %172
  br label %181, !dbg !1148

; <label>:181:                                    ; preds = %180, %178
  %182 = phi i1 [ true, %178 ], [ false, %180 ]
  %183 = phi i64 [ %179, %178 ], [ %173, %180 ]
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !1142, metadata !796) #10, !dbg !1162
  %184 = getelementptr inbounds i8, i8* %170, i64 %183, !dbg !1163
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #13, !dbg !1163
  %186 = icmp eq i32 %185, 0, !dbg !1163
  br i1 %186, label %187, label %261, !dbg !1165

; <label>:187:                                    ; preds = %181
  %188 = add i64 %183, 4, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %189 = getelementptr inbounds i8, i8* %170, i64 %188, !dbg !1168
  %190 = load i8, i8* %189, align 1, !dbg !1168, !tbaa !1051
  %191 = icmp eq i8 %190, 32, !dbg !1170
  %192 = add i64 %183, 5, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %192, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %194 = getelementptr inbounds i8, i8* %170, i64 %193, !dbg !1173
  %195 = load i8, i8* %194, align 1, !dbg !1173, !tbaa !1051
  %196 = icmp eq i8 %195, 40, !dbg !1175
  br i1 %196, label %197, label %370, !dbg !1176

; <label>:197:                                    ; preds = %187
  %198 = add i64 %193, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %198, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %199 = getelementptr inbounds i8, i8* %170, i64 %198, !dbg !1179
  %200 = sub i64 %171, %198, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1181, metadata !796) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1186, metadata !796) #10, !dbg !1193
  call void @llvm.dbg.value(metadata i1 %182, i64 0, metadata !1189, metadata !1194) #10, !dbg !1195
  %201 = icmp eq i64 %200, 0, !dbg !1196
  br i1 %201, label %370, label %202, !dbg !1198

; <label>:202:                                    ; preds = %197
  br label %203

; <label>:203:                                    ; preds = %202, %207
  %204 = phi i64 [ %205, %207 ], [ %200, %202 ]
  %205 = add i64 %204, -1
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1190, metadata !796) #10, !dbg !1199
  %206 = icmp eq i64 %205, 0, !dbg !1200
  br i1 %206, label %211, label %207, !dbg !1202

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i8, i8* %199, i64 %205, !dbg !1203
  %209 = load i8, i8* %208, align 1, !dbg !1203, !tbaa !1051
  %210 = icmp eq i8 %209, 41, !dbg !1205
  br i1 %210, label %214, label %203, !dbg !1206, !llvm.loop !1208

; <label>:211:                                    ; preds = %203
  %212 = load i8, i8* %199, align 1, !tbaa !1051
  %213 = icmp eq i8 %212, 41, !dbg !1202
  br i1 %213, label %215, label %370, !dbg !1211

; <label>:214:                                    ; preds = %207
  br label %215, !dbg !1212

; <label>:215:                                    ; preds = %214, %211
  %216 = phi i8* [ %199, %211 ], [ %208, %214 ]
  %217 = phi i1 [ true, %211 ], [ false, %214 ]
  %218 = phi i64 [ 0, %211 ], [ %205, %214 ]
  br i1 %182, label %219, label %247, !dbg !1212

; <label>:219:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1214, metadata !796) #10, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1219, metadata !796) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1220, metadata !796) #10, !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1220, metadata !796) #10, !dbg !1227
  br i1 %217, label %243, label %220, !dbg !1229

; <label>:220:                                    ; preds = %219
  %221 = add i64 %204, -2
  br label %222, !dbg !1229

; <label>:222:                                    ; preds = %236, %220
  %223 = phi i64 [ 0, %220 ], [ %240, %236 ]
  %224 = phi i8* [ %199, %220 ], [ %239, %236 ]
  %225 = getelementptr inbounds i8, i8* %199, i64 %223, !dbg !1231
  %226 = load i8, i8* %225, align 1, !dbg !1231, !tbaa !1051
  %227 = sext i8 %226 to i32, !dbg !1231
  switch i32 %227, label %236 [
    i32 92, label %228
    i32 0, label %368
  ], !dbg !1234

; <label>:228:                                    ; preds = %222
  %229 = icmp eq i64 %223, %221, !dbg !1235
  br i1 %229, label %368, label %230, !dbg !1238

; <label>:230:                                    ; preds = %228
  %231 = add i64 %223, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  %232 = getelementptr inbounds i8, i8* %199, i64 %231, !dbg !1240
  %233 = load i8, i8* %232, align 1, !dbg !1240, !tbaa !1051
  %234 = sext i8 %233 to i32, !dbg !1240
  switch i32 %234, label %368 [
    i32 110, label %235
    i32 92, label %236
  ], !dbg !1241

; <label>:235:                                    ; preds = %230
  br label %236, !dbg !1242

; <label>:236:                                    ; preds = %235, %230, %222
  %237 = phi i8 [ 10, %235 ], [ 92, %230 ], [ %226, %222 ]
  %238 = phi i64 [ %231, %235 ], [ %231, %230 ], [ %223, %222 ]
  store i8 %237, i8* %224, align 1, !tbaa !1051
  %239 = getelementptr inbounds i8, i8* %224, i64 1
  call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !1220, metadata !796) #10, !dbg !1227
  %240 = add i64 %238, 1, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1221, metadata !796) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !1220, metadata !796) #10, !dbg !1227
  %241 = icmp ult i64 %240, %218, !dbg !1246
  br i1 %241, label %222, label %242, !dbg !1229, !llvm.loop !1248

; <label>:242:                                    ; preds = %236
  br label %243, !dbg !1251

; <label>:243:                                    ; preds = %242, %219
  %244 = phi i8* [ %199, %219 ], [ %239, %242 ]
  %245 = icmp ult i8* %244, %216, !dbg !1251
  br i1 %245, label %246, label %247, !dbg !1253

; <label>:246:                                    ; preds = %243
  store i8 0, i8* %244, align 1, !dbg !1254, !tbaa !1051
  br label %247, !dbg !1255

; <label>:247:                                    ; preds = %246, %243, %215
  call void @llvm.dbg.value(metadata i64 %204, i64 0, metadata !1190, metadata !796) #10, !dbg !1199
  store i8 0, i8* %216, align 1, !dbg !1256, !tbaa !1051
  br label %248, !dbg !1257

; <label>:248:                                    ; preds = %253, %247
  %249 = phi i64 [ %204, %247 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i64 %249, i64 0, metadata !1190, metadata !796) #10, !dbg !1199
  %250 = getelementptr inbounds i8, i8* %199, i64 %249, !dbg !1258
  %251 = load i8, i8* %250, align 1, !dbg !1258, !tbaa !1051
  switch i8 %251, label %367 [
    i8 32, label %253
    i8 9, label %253
    i8 61, label %252
  ], !dbg !1258

; <label>:252:                                    ; preds = %248
  br label %255

; <label>:253:                                    ; preds = %248, %248
  %254 = add i64 %249, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %254, i64 0, metadata !1190, metadata !796) #10, !dbg !1199
  br label %248, !dbg !1260, !llvm.loop !1262

; <label>:255:                                    ; preds = %260, %252
  %256 = phi i64 [ %249, %252 ], [ %257, %260 ]
  %257 = add i64 %256, 1
  call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1190, metadata !796) #10, !dbg !1199
  %258 = getelementptr inbounds i8, i8* %199, i64 %257, !dbg !1265
  %259 = load i8, i8* %258, align 1, !dbg !1265, !tbaa !1051
  switch i8 %259, label %328 [
    i8 32, label %260
    i8 9, label %260
  ], !dbg !1265

; <label>:260:                                    ; preds = %255, %255
  br label %255, !llvm.loop !1266

; <label>:261:                                    ; preds = %181
  %262 = sub i64 %171, %183, !dbg !1269
  %263 = load i1, i1* @min_digest_line_length, align 8
  %264 = select i1 %263, i64 42, i64 0
  %265 = load i8, i8* %184, align 1, !dbg !1271, !tbaa !1051
  %266 = icmp eq i8 %265, 92, !dbg !1272
  %267 = zext i1 %266 to i64, !dbg !1273
  %268 = or i64 %267, %264, !dbg !1274
  %269 = icmp ult i64 %262, %268, !dbg !1275
  br i1 %269, label %370, label %270, !dbg !1276

; <label>:270:                                    ; preds = %261
  %271 = load i1, i1* @digest_hex_bytes, align 8
  %272 = select i1 %271, i64 40, i64 0
  %273 = add i64 %272, %183, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %273, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %274 = getelementptr inbounds i8, i8* %170, i64 %273, !dbg !1278
  %275 = load i8, i8* %274, align 1, !dbg !1278, !tbaa !1051
  switch i8 %275, label %370 [
    i8 32, label %276
    i8 9, label %276
  ], !dbg !1278

; <label>:276:                                    ; preds = %270, %270
  %277 = add i64 %273, 1, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %277, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  store i8 0, i8* %274, align 1, !dbg !1281, !tbaa !1051
  %278 = sub i64 %171, %277, !dbg !1282
  %279 = icmp eq i64 %278, 1, !dbg !1284
  br i1 %279, label %283, label %280, !dbg !1285

; <label>:280:                                    ; preds = %276
  %281 = getelementptr inbounds i8, i8* %170, i64 %277, !dbg !1286
  %282 = load i8, i8* %281, align 1, !dbg !1286, !tbaa !1051
  switch i8 %282, label %283 [
    i8 32, label %287
    i8 42, label %287
  ], !dbg !1288

; <label>:283:                                    ; preds = %280, %276
  %284 = load i32, i32* @bsd_reversed, align 4, !dbg !1289, !tbaa !1015
  %285 = icmp eq i32 %284, 0, !dbg !1292
  br i1 %285, label %370, label %286, !dbg !1293

; <label>:286:                                    ; preds = %283
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1294, !tbaa !1015
  br label %292, !dbg !1295

; <label>:287:                                    ; preds = %280, %280
  %288 = load i32, i32* @bsd_reversed, align 4, !dbg !1296, !tbaa !1015
  %289 = icmp eq i32 %288, 1, !dbg !1298
  br i1 %289, label %292, label %290, !dbg !1299

; <label>:290:                                    ; preds = %287
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1300, !tbaa !1015
  %291 = add i64 %273, 2, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  br label %292, !dbg !1303

; <label>:292:                                    ; preds = %290, %287, %286
  %293 = phi i64 [ %277, %286 ], [ %291, %290 ], [ %277, %287 ]
  call void @llvm.dbg.value(metadata i64 %293, i64 0, metadata !1143, metadata !796) #10, !dbg !1148
  %294 = getelementptr inbounds i8, i8* %170, i64 %293, !dbg !1304
  br i1 %182, label %295, label %329, !dbg !1305

; <label>:295:                                    ; preds = %292
  %296 = sub i64 %171, %293, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1214, metadata !796) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1219, metadata !796) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1220, metadata !796) #10, !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1220, metadata !796) #10, !dbg !1311
  %297 = icmp eq i64 %296, 0, !dbg !1313
  br i1 %297, label %321, label %298, !dbg !1314

; <label>:298:                                    ; preds = %295
  %299 = add i64 %296, -1
  br label %300, !dbg !1314

; <label>:300:                                    ; preds = %314, %298
  %301 = phi i64 [ 0, %298 ], [ %318, %314 ]
  %302 = phi i8* [ %294, %298 ], [ %317, %314 ]
  %303 = getelementptr inbounds i8, i8* %294, i64 %301, !dbg !1315
  %304 = load i8, i8* %303, align 1, !dbg !1315, !tbaa !1051
  %305 = sext i8 %304 to i32, !dbg !1315
  switch i32 %305, label %314 [
    i32 92, label %306
    i32 0, label %369
  ], !dbg !1316

; <label>:306:                                    ; preds = %300
  %307 = icmp eq i64 %301, %299, !dbg !1317
  br i1 %307, label %369, label %308, !dbg !1318

; <label>:308:                                    ; preds = %306
  %309 = add i64 %301, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %309, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  %310 = getelementptr inbounds i8, i8* %294, i64 %309, !dbg !1320
  %311 = load i8, i8* %310, align 1, !dbg !1320, !tbaa !1051
  %312 = sext i8 %311 to i32, !dbg !1320
  switch i32 %312, label %369 [
    i32 110, label %313
    i32 92, label %314
  ], !dbg !1321

; <label>:313:                                    ; preds = %308
  br label %314, !dbg !1322

; <label>:314:                                    ; preds = %313, %308, %300
  %315 = phi i8 [ 10, %313 ], [ 92, %308 ], [ %304, %300 ]
  %316 = phi i64 [ %309, %313 ], [ %309, %308 ], [ %301, %300 ]
  store i8 %315, i8* %302, align 1, !tbaa !1051
  %317 = getelementptr inbounds i8, i8* %302, i64 1
  call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1220, metadata !796) #10, !dbg !1311
  %318 = add i64 %316, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %318, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %318, i64 0, metadata !1221, metadata !796) #10, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1220, metadata !796) #10, !dbg !1311
  %319 = icmp ult i64 %318, %296, !dbg !1313
  br i1 %319, label %300, label %320, !dbg !1314, !llvm.loop !1248

; <label>:320:                                    ; preds = %314
  br label %321, !dbg !1324

; <label>:321:                                    ; preds = %320, %295
  %322 = phi i8* [ %294, %295 ], [ %317, %320 ]
  %323 = getelementptr inbounds i8, i8* %294, i64 %296, !dbg !1324
  %324 = icmp ult i8* %322, %323, !dbg !1325
  br i1 %324, label %325, label %326, !dbg !1326

; <label>:325:                                    ; preds = %321
  store i8 0, i8* %322, align 1, !dbg !1327, !tbaa !1051
  br label %326, !dbg !1328

; <label>:326:                                    ; preds = %325, %321
  %327 = icmp eq i8* %294, null, !dbg !1329
  br i1 %327, label %370, label %329, !dbg !1330

; <label>:328:                                    ; preds = %255
  br label %329, !dbg !1331

; <label>:329:                                    ; preds = %328, %326, %292
  %330 = phi i8* [ %184, %326 ], [ %184, %292 ], [ %258, %328 ]
  %331 = phi i8* [ %294, %326 ], [ %294, %292 ], [ %199, %328 ]
  br i1 %138, label %332, label %339, !dbg !1331

; <label>:332:                                    ; preds = %329
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !214, metadata !796) #10, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !203, metadata !796) #10, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !215, metadata !796) #10, !dbg !1335
  %333 = load i8, i8* %331, align 1, !dbg !1336, !tbaa !1051
  %334 = icmp eq i8 %333, 45, !dbg !1338
  br i1 %334, label %335, label %339, !dbg !1341

; <label>:335:                                    ; preds = %332
  %336 = getelementptr inbounds i8, i8* %331, i64 1, !dbg !1343
  %337 = load i8, i8* %336, align 1, !dbg !1343, !tbaa !1051
  %338 = icmp eq i8 %337, 0, !dbg !1346
  br i1 %338, label %370, label %339, !dbg !1348

; <label>:339:                                    ; preds = %335, %332, %329
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !206, metadata !796) #10, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1355, metadata !796) #10, !dbg !1358
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1355, metadata !796) #10, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  %340 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %340, label %341, label %362, !dbg !1359

; <label>:341:                                    ; preds = %339
  %342 = tail call i16** @__ctype_b_loc() #1, !dbg !1362
  %343 = load i16*, i16** %342, align 8, !tbaa !804
  br label %344, !dbg !1359

; <label>:344:                                    ; preds = %671, %341
  %345 = phi i32 [ 0, %341 ], [ %673, %671 ]
  %346 = phi i8* [ %330, %341 ], [ %672, %671 ]
  %347 = load i8, i8* %346, align 1, !dbg !1362, !tbaa !1051
  %348 = zext i8 %347 to i64, !dbg !1362
  %349 = getelementptr inbounds i16, i16* %343, i64 %348, !dbg !1362
  %350 = load i16, i16* %349, align 2, !dbg !1362, !tbaa !1366
  %351 = and i16 %350, 4096, !dbg !1362
  %352 = icmp eq i16 %351, 0, !dbg !1362
  br i1 %352, label %366, label %353, !dbg !1368

; <label>:353:                                    ; preds = %344
  %354 = getelementptr inbounds i8, i8* %346, i64 1, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  %355 = load i8, i8* %354, align 1, !dbg !1362, !tbaa !1051
  %356 = zext i8 %355 to i64, !dbg !1362
  %357 = getelementptr inbounds i16, i16* %343, i64 %356, !dbg !1362
  %358 = load i16, i16* %357, align 2, !dbg !1362, !tbaa !1366
  %359 = and i16 %358, 4096, !dbg !1362
  %360 = icmp eq i16 %359, 0, !dbg !1362
  br i1 %360, label %366, label %671, !dbg !1368

; <label>:361:                                    ; preds = %671
  br label %362, !dbg !1370

; <label>:362:                                    ; preds = %361, %339
  %363 = phi i8* [ %330, %339 ], [ %672, %361 ]
  %364 = load i8, i8* %363, align 1, !dbg !1370, !tbaa !1051
  %365 = icmp eq i8 %364, 0, !dbg !1371
  br i1 %365, label %378, label %370, !dbg !1372

; <label>:366:                                    ; preds = %353, %344
  br label %370, !dbg !1374

; <label>:367:                                    ; preds = %248
  br label %370, !dbg !1374

; <label>:368:                                    ; preds = %222, %228, %230
  br label %370, !dbg !1374

; <label>:369:                                    ; preds = %300, %306, %308
  br label %370, !dbg !1374

; <label>:370:                                    ; preds = %369, %368, %367, %366, %362, %335, %326, %283, %270, %261, %211, %197, %187
  %371 = add i64 %149, 1, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !182, metadata !796) #10, !dbg !1034
  %372 = load i1, i1* @warn, align 1
  br i1 %372, label %373, label %376, !dbg !1376

; <label>:373:                                    ; preds = %370
  %374 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1377
  %375 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1380
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %374, i8* %375, i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1381
  br label %376, !dbg !1382

; <label>:376:                                    ; preds = %373, %370
  %377 = add i64 %148, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !183, metadata !796) #10, !dbg !1035
  br label %486, !dbg !1384

; <label>:378:                                    ; preds = %362
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !220, metadata !1101) #10, !dbg !1385
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #10, !dbg !1386
  %379 = load i1, i1* @status_only, align 1
  br i1 %379, label %383, label %380, !dbg !1387

; <label>:380:                                    ; preds = %378
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !203, metadata !796) #10, !dbg !1334
  %381 = call i8* @strchr(i8* %331, i32 10) #10, !dbg !1388
  %382 = icmp ne i8* %381, null, !dbg !1390
  br label %383

; <label>:383:                                    ; preds = %380, %378
  %384 = phi i1 [ false, %378 ], [ %382, %380 ]
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !186, metadata !796) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !203, metadata !796) #10, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !220, metadata !1101) #10, !dbg !1385
  %385 = call fastcc zeroext i1 @digest_file(i8* %331, i8* %107, i8* nonnull %6) #10, !dbg !1391
  br i1 %385, label %404, label %386, !dbg !1392

; <label>:386:                                    ; preds = %383
  %387 = add i64 %146, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %387, i64 0, metadata !185, metadata !796) #10, !dbg !1037
  %388 = load i1, i1* @status_only, align 1
  br i1 %388, label %482, label %389, !dbg !1395

; <label>:389:                                    ; preds = %386
  br i1 %384, label %390, label %401, !dbg !1396

; <label>:390:                                    ; preds = %389
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1399, metadata !796) #10, !dbg !1404
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1407, !tbaa !804
  %392 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 5, !dbg !1407
  %393 = load i8*, i8** %392, align 8, !dbg !1407, !tbaa !1408
  %394 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 6, !dbg !1407
  %395 = load i8*, i8** %394, align 8, !dbg !1407, !tbaa !1410
  %396 = icmp ult i8* %393, %395, !dbg !1407
  br i1 %396, label %399, label %397, !dbg !1407, !prof !1411

; <label>:397:                                    ; preds = %390
  %398 = call i32 @__overflow(%struct._IO_FILE* %391, i32 92) #10, !dbg !1412
  br label %401, !dbg !1412

; <label>:399:                                    ; preds = %390
  %400 = getelementptr inbounds i8, i8* %393, i64 1, !dbg !1414
  store i8* %400, i8** %392, align 8, !dbg !1414, !tbaa !1408
  store i8 92, i8* %393, align 1, !dbg !1414, !tbaa !1051
  br label %401, !dbg !1414

; <label>:401:                                    ; preds = %399, %397, %389
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !203, metadata !796) #10, !dbg !1334
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10, !dbg !1416
  %402 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1417
  %403 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %402) #10, !dbg !1418
  br label %482, !dbg !1420

; <label>:404:                                    ; preds = %383
  %405 = load i1, i1* @ignore_missing, align 1
  %406 = xor i1 %405, true, !dbg !1421
  %407 = load i8, i8* %6, align 1, !dbg !1422
  %408 = icmp eq i8 %407, 0, !dbg !1422
  %409 = or i1 %408, %406, !dbg !1421
  br i1 %409, label %410, label %482, !dbg !1421

; <label>:410:                                    ; preds = %404
  %411 = load i1, i1* @digest_hex_bytes, align 8
  %412 = select i1 %411, i64 20, i64 0, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %412, i64 0, metadata !222, metadata !796) #10, !dbg !1425
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !226, metadata !796) #10, !dbg !1426
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !226, metadata !796) #10, !dbg !1426
  br i1 %411, label %413, label %451, !dbg !1427

; <label>:413:                                    ; preds = %410
  %414 = tail call i32** @__ctype_tolower_loc() #1, !dbg !1429
  %415 = load i32*, i32** %414, align 8, !tbaa !804
  br label %416, !dbg !1427

; <label>:416:                                    ; preds = %446, %413
  %417 = phi i64 [ 0, %413 ], [ %447, %446 ]
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !206, metadata !796) #10, !dbg !1349
  %418 = shl i64 %417, 1, !dbg !1429
  %419 = getelementptr inbounds i8, i8* %330, i64 %418, !dbg !1429
  %420 = load i8, i8* %419, align 1, !dbg !1429, !tbaa !1051
  %421 = zext i8 %420 to i64, !dbg !1429
  %422 = getelementptr inbounds i32, i32* %415, i64 %421, !dbg !1429
  %423 = load i32, i32* %422, align 4, !dbg !1429, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %423, i64 0, metadata !227, metadata !796) #10, !dbg !1431
  %424 = getelementptr inbounds i8, i8* %107, i64 %417, !dbg !1432
  %425 = load i8, i8* %424, align 1, !dbg !1432, !tbaa !1051
  %426 = zext i8 %425 to i32, !dbg !1432
  %427 = lshr i32 %426, 4, !dbg !1433
  %428 = zext i32 %427 to i64, !dbg !1434
  %429 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %428, !dbg !1434
  %430 = load i8, i8* %429, align 1, !dbg !1434, !tbaa !1051
  %431 = sext i8 %430 to i32, !dbg !1434
  %432 = icmp eq i32 %423, %431, !dbg !1435
  br i1 %432, label %433, label %449, !dbg !1436

; <label>:433:                                    ; preds = %416
  %434 = or i64 %418, 1, !dbg !1437
  %435 = getelementptr inbounds i8, i8* %330, i64 %434, !dbg !1437
  %436 = load i8, i8* %435, align 1, !dbg !1437, !tbaa !1051
  %437 = zext i8 %436 to i64, !dbg !1437
  %438 = getelementptr inbounds i32, i32* %415, i64 %437, !dbg !1437
  %439 = load i32, i32* %438, align 4, !dbg !1437, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !233, metadata !796) #10, !dbg !1440
  %440 = and i32 %426, 15, !dbg !1441
  %441 = zext i32 %440 to i64, !dbg !1442
  %442 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %441, !dbg !1442
  %443 = load i8, i8* %442, align 1, !dbg !1442, !tbaa !1051
  %444 = sext i8 %443 to i32, !dbg !1443
  %445 = icmp eq i32 %439, %444, !dbg !1444
  br i1 %445, label %446, label %449, !dbg !1445

; <label>:446:                                    ; preds = %433
  %447 = add nuw nsw i64 %417, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !226, metadata !796) #10, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !226, metadata !796) #10, !dbg !1426
  %448 = icmp ult i64 %447, %412, !dbg !1449
  br i1 %448, label %416, label %449, !dbg !1427, !llvm.loop !1451

; <label>:449:                                    ; preds = %416, %433, %446
  %450 = phi i64 [ %447, %446 ], [ %417, %416 ], [ %417, %433 ]
  br label %451, !dbg !1454

; <label>:451:                                    ; preds = %449, %410
  %452 = phi i64 [ 0, %410 ], [ %450, %449 ]
  %453 = icmp ne i64 %452, %412, !dbg !1454
  %454 = add i64 %147, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !184, metadata !796) #10, !dbg !1036
  %455 = select i1 %453, i8 %144, i8 1, !dbg !1457
  %456 = select i1 %453, i64 %454, i64 %147, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %456, i64 0, metadata !184, metadata !796) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i8 %455, i64 0, metadata !187, metadata !796) #10, !dbg !1039
  %457 = load i1, i1* @status_only, align 1
  br i1 %457, label %482, label %458, !dbg !1458

; <label>:458:                                    ; preds = %451
  br i1 %453, label %461, label %459, !dbg !1459

; <label>:459:                                    ; preds = %458
  %460 = load i1, i1* @quiet, align 1
  br i1 %460, label %482, label %461, !dbg !1463

; <label>:461:                                    ; preds = %459, %458
  br i1 %384, label %462, label %473, !dbg !1465

; <label>:462:                                    ; preds = %461
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1399, metadata !796) #10, !dbg !1467
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1470, !tbaa !804
  %464 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 5, !dbg !1470
  %465 = load i8*, i8** %464, align 8, !dbg !1470, !tbaa !1408
  %466 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 6, !dbg !1470
  %467 = load i8*, i8** %466, align 8, !dbg !1470, !tbaa !1410
  %468 = icmp ult i8* %465, %467, !dbg !1470
  br i1 %468, label %471, label %469, !dbg !1470, !prof !1411

; <label>:469:                                    ; preds = %462
  %470 = call i32 @__overflow(%struct._IO_FILE* %463, i32 92) #10, !dbg !1471
  br label %473, !dbg !1471

; <label>:471:                                    ; preds = %462
  %472 = getelementptr inbounds i8, i8* %465, i64 1, !dbg !1472
  store i8* %472, i8** %464, align 8, !dbg !1472, !tbaa !1408
  store i8 92, i8* %465, align 1, !dbg !1472, !tbaa !1051
  br label %473, !dbg !1472

; <label>:473:                                    ; preds = %471, %469, %461
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !203, metadata !796) #10, !dbg !1334
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10, !dbg !1473
  br i1 %453, label %474, label %477, !dbg !1474

; <label>:474:                                    ; preds = %473
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1475
  %476 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %475) #10, !dbg !1477
  br label %482, !dbg !1475

; <label>:477:                                    ; preds = %473
  %478 = load i1, i1* @quiet, align 1
  br i1 %478, label %482, label %479, !dbg !1479

; <label>:479:                                    ; preds = %477
  %480 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !1480
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %480) #10, !dbg !1482
  br label %482, !dbg !1480

; <label>:482:                                    ; preds = %479, %477, %474, %459, %451, %404, %401, %386
  %483 = phi i8 [ %144, %386 ], [ %144, %401 ], [ %144, %404 ], [ %144, %474 ], [ 1, %479 ], [ 1, %477 ], [ %455, %451 ], [ 1, %459 ]
  %484 = phi i64 [ %387, %386 ], [ %387, %401 ], [ %146, %404 ], [ %146, %474 ], [ %146, %479 ], [ %146, %477 ], [ %146, %451 ], [ %146, %459 ]
  %485 = phi i64 [ %147, %386 ], [ %147, %401 ], [ %147, %404 ], [ %454, %474 ], [ %147, %479 ], [ %147, %477 ], [ %456, %451 ], [ %147, %459 ]
  call void @llvm.dbg.value(metadata i64 %485, i64 0, metadata !184, metadata !796) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %484, i64 0, metadata !185, metadata !796) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !187, metadata !796) #10, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !220, metadata !1101) #10, !dbg !1385
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #10, !dbg !1484
  br label %486

; <label>:486:                                    ; preds = %482, %376, %158
  %487 = phi i8 [ %483, %482 ], [ %144, %376 ], [ %144, %158 ]
  %488 = phi i8 [ 1, %482 ], [ %145, %376 ], [ %145, %158 ]
  %489 = phi i64 [ %484, %482 ], [ %146, %376 ], [ %146, %158 ]
  %490 = phi i64 [ %485, %482 ], [ %147, %376 ], [ %147, %158 ]
  %491 = phi i64 [ %148, %482 ], [ %377, %376 ], [ %148, %158 ]
  %492 = phi i64 [ %149, %482 ], [ %371, %376 ], [ %149, %158 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1485, metadata !796) #10, !dbg !1490
  %493 = load i32, i32* %141, align 8, !dbg !1492, !tbaa !1493
  %494 = and i32 %493, 48, !dbg !1494
  %495 = icmp eq i32 %494, 0, !dbg !1494
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1495, metadata !796) #10, !dbg !1498
  br i1 %495, label %142, label %496, !dbg !1494, !llvm.loop !1089

; <label>:496:                                    ; preds = %486, %155
  %497 = phi i64 [ %492, %486 ], [ %149, %155 ]
  %498 = phi i64 [ %491, %486 ], [ %148, %155 ]
  %499 = phi i64 [ %490, %486 ], [ %147, %155 ]
  %500 = phi i64 [ %489, %486 ], [ %146, %155 ]
  %501 = phi i8 [ %488, %486 ], [ %145, %155 ]
  %502 = phi i8 [ %487, %486 ], [ %144, %155 ]
  %503 = load i8*, i8** %4, align 8, !dbg !1501, !tbaa !804
  call void @llvm.dbg.value(metadata i8* %503, i64 0, metadata !194, metadata !796) #10, !dbg !1082
  call void @free(i8* %503) #10, !dbg !1502
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1495, metadata !796) #10, !dbg !1503
  %504 = load i32, i32* %141, align 8, !dbg !1506, !tbaa !1493
  %505 = and i32 %504, 32, !dbg !1506
  %506 = icmp eq i32 %505, 0, !dbg !1507
  br i1 %506, label %510, label %507, !dbg !1508

; <label>:507:                                    ; preds = %496
  %508 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1509
  %509 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1511
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %508, i8* %509) #10, !dbg !1513
  br label %559, !dbg !1515

; <label>:510:                                    ; preds = %496
  br i1 %138, label %518, label %511, !dbg !1516

; <label>:511:                                    ; preds = %510
  %512 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %139) #10, !dbg !1518
  %513 = icmp eq i32 %512, 0, !dbg !1520
  br i1 %513, label %518, label %514, !dbg !1521

; <label>:514:                                    ; preds = %511
  %515 = tail call i32* @__errno_location() #1, !dbg !1522
  %516 = load i32, i32* %515, align 4, !dbg !1522, !tbaa !1015
  %517 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1524
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %517) #10, !dbg !1526
  br label %559, !dbg !1528

; <label>:518:                                    ; preds = %511, %510
  %519 = and i8 %501, 1, !dbg !1529
  %520 = icmp eq i8 %519, 0, !dbg !1529
  br i1 %520, label %521, label %524, !dbg !1531

; <label>:521:                                    ; preds = %518
  %522 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1532
  %523 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1534
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %522, i8* %523, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1535
  br label %559, !dbg !1537

; <label>:524:                                    ; preds = %518
  %525 = load i1, i1* @status_only, align 1
  br i1 %525, label %526, label %528, !dbg !1538

; <label>:526:                                    ; preds = %524
  %527 = and i8 %502, 1, !dbg !1540
  br label %548, !dbg !1538

; <label>:528:                                    ; preds = %524
  %529 = icmp eq i64 %497, 0, !dbg !1541
  br i1 %529, label %532, label %530, !dbg !1545

; <label>:530:                                    ; preds = %528
  %531 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0), i64 %497, i32 5) #10, !dbg !1546
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %531, i64 %497) #10, !dbg !1548
  br label %532, !dbg !1548

; <label>:532:                                    ; preds = %530, %528
  %533 = icmp eq i64 %500, 0, !dbg !1549
  br i1 %533, label %536, label %534, !dbg !1551

; <label>:534:                                    ; preds = %532
  %535 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 %500, i32 5) #10, !dbg !1552
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %535, i64 %500) #10, !dbg !1554
  br label %536, !dbg !1554

; <label>:536:                                    ; preds = %534, %532
  %537 = icmp eq i64 %499, 0, !dbg !1555
  br i1 %537, label %540, label %538, !dbg !1557

; <label>:538:                                    ; preds = %536
  %539 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i64 0, i64 0), i64 %499, i32 5) #10, !dbg !1558
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %539, i64 %499) #10, !dbg !1560
  br label %540, !dbg !1560

; <label>:540:                                    ; preds = %538, %536
  %541 = load i1, i1* @ignore_missing, align 1
  %542 = and i8 %502, 1, !dbg !1561
  %543 = icmp eq i8 %542, 0, !dbg !1561
  %544 = and i1 %543, %541, !dbg !1564
  br i1 %544, label %545, label %548, !dbg !1564

; <label>:545:                                    ; preds = %540
  %546 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i32 5) #10, !dbg !1565
  %547 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1566
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %546, i8* %547) #10, !dbg !1567
  br label %559, !dbg !1568

; <label>:548:                                    ; preds = %540, %526
  %549 = phi i8 [ %527, %526 ], [ %542, %540 ], !dbg !1540
  %550 = icmp ne i8 %549, 0, !dbg !1540
  %551 = or i64 %500, %499, !dbg !1568
  %552 = icmp eq i64 %551, 0, !dbg !1568
  %553 = and i1 %552, %550, !dbg !1568
  br i1 %553, label %554, label %559, !dbg !1568

; <label>:554:                                    ; preds = %548
  %555 = load i1, i1* @strict, align 1
  %556 = icmp eq i64 %498, 0, !dbg !1569
  %557 = xor i1 %555, true, !dbg !1571
  %558 = or i1 %556, %557, !dbg !1571
  br label %559, !dbg !1571

; <label>:559:                                    ; preds = %133, %507, %514, %521, %545, %548, %554
  %560 = phi i1 [ false, %507 ], [ false, %514 ], [ false, %133 ], [ false, %548 ], [ %558, %554 ], [ false, %521 ], [ false, %545 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %109) #10, !dbg !1572
  call void @llvm.lifetime.end(i64 8, i8* nonnull %108) #10, !dbg !1572
  call void @llvm.lifetime.end(i64 24, i8* nonnull %102) #10, !dbg !1572
  %561 = zext i1 %560 to i8, !dbg !1573
  %562 = and i8 %561, %118, !dbg !1574
  call void @llvm.dbg.value(metadata i8 %562, i64 0, metadata !877, metadata !796), !dbg !918
  br label %655, !dbg !1575

; <label>:563:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !890, metadata !1101), !dbg !1576
  call void @llvm.lifetime.start(i64 1, i8* nonnull %8) #10, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !890, metadata !1101), !dbg !1576
  %564 = call fastcc zeroext i1 @digest_file(i8* %119, i8* %14, i8* nonnull %8), !dbg !1578
  br i1 %564, label %565, label %653, !dbg !1579

; <label>:565:                                    ; preds = %563
  %566 = call i8* @strchr(i8* %119, i32 92) #10, !dbg !1580
  %567 = icmp eq i8* %566, null, !dbg !1580
  br i1 %567, label %568, label %571, !dbg !1582

; <label>:568:                                    ; preds = %565
  %569 = call i8* @strchr(i8* %119, i32 10) #10, !dbg !1583
  %570 = icmp ne i8* %569, null, !dbg !1585
  br label %571, !dbg !1585

; <label>:571:                                    ; preds = %565, %568
  %572 = phi i1 [ true, %565 ], [ %570, %568 ]
  br i1 %45, label %573, label %592, !dbg !1586

; <label>:573:                                    ; preds = %571
  br i1 %572, label %574, label %585, !dbg !1587

; <label>:574:                                    ; preds = %573
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1399, metadata !796) #10, !dbg !1590
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1593, !tbaa !804
  %576 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 5, !dbg !1593
  %577 = load i8*, i8** %576, align 8, !dbg !1593, !tbaa !1408
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 6, !dbg !1593
  %579 = load i8*, i8** %578, align 8, !dbg !1593, !tbaa !1410
  %580 = icmp ult i8* %577, %579, !dbg !1593
  br i1 %580, label %583, label %581, !dbg !1593, !prof !1411

; <label>:581:                                    ; preds = %574
  %582 = call i32 @__overflow(%struct._IO_FILE* %575, i32 92) #10, !dbg !1594
  br label %585, !dbg !1594

; <label>:583:                                    ; preds = %574
  %584 = getelementptr inbounds i8, i8* %577, i64 1, !dbg !1595
  store i8* %584, i8** %576, align 8, !dbg !1595, !tbaa !1408
  store i8 92, i8* %577, align 1, !dbg !1595, !tbaa !1051
  br label %585, !dbg !1595

; <label>:585:                                    ; preds = %583, %581, %573
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1596, !tbaa !804
  %587 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %586) #10, !dbg !1596
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1597, !tbaa !804
  %589 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %588) #10, !dbg !1597
  call fastcc void @print_filename(i8* %119, i1 zeroext %572), !dbg !1598
  %590 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1599, !tbaa !804
  %591 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %590) #10, !dbg !1599
  br label %604, !dbg !1600

; <label>:592:                                    ; preds = %571
  br i1 %572, label %593, label %604, !dbg !1602

; <label>:593:                                    ; preds = %592
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1399, metadata !796) #10, !dbg !1604
  %594 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1606, !tbaa !804
  %595 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 5, !dbg !1606
  %596 = load i8*, i8** %595, align 8, !dbg !1606, !tbaa !1408
  %597 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 6, !dbg !1606
  %598 = load i8*, i8** %597, align 8, !dbg !1606, !tbaa !1410
  %599 = icmp ult i8* %596, %598, !dbg !1606
  br i1 %599, label %602, label %600, !dbg !1606, !prof !1411

; <label>:600:                                    ; preds = %593
  %601 = call i32 @__overflow(%struct._IO_FILE* %594, i32 92) #10, !dbg !1607
  br label %604, !dbg !1607

; <label>:602:                                    ; preds = %593
  %603 = getelementptr inbounds i8, i8* %596, i64 1, !dbg !1608
  store i8* %603, i8** %595, align 8, !dbg !1608, !tbaa !1408
  store i8 92, i8* %596, align 1, !dbg !1608, !tbaa !1051
  br label %604, !dbg !1608

; <label>:604:                                    ; preds = %592, %585, %600, %602
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !894, metadata !796), !dbg !1609
  %605 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %605, label %606, label %618, !dbg !1610

; <label>:606:                                    ; preds = %604
  br label %607, !dbg !1613

; <label>:607:                                    ; preds = %606, %607
  %608 = phi i64 [ %613, %607 ], [ 0, %606 ]
  %609 = getelementptr inbounds i8, i8* %14, i64 %608, !dbg !1613
  %610 = load i8, i8* %609, align 1, !dbg !1613, !tbaa !1051
  %611 = zext i8 %610 to i32, !dbg !1613
  %612 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %611) #10, !dbg !1613
  %613 = add i64 %608, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %613, i64 0, metadata !894, metadata !796), !dbg !1609
  call void @llvm.dbg.value(metadata i64 %613, i64 0, metadata !894, metadata !796), !dbg !1609
  %614 = load i1, i1* @digest_hex_bytes, align 8
  %615 = select i1 %614, i64 20, i64 0, !dbg !1617
  %616 = icmp ult i64 %613, %615, !dbg !1619
  br i1 %616, label %607, label %617, !dbg !1610, !llvm.loop !1620

; <label>:617:                                    ; preds = %607
  br label %618, !dbg !1623

; <label>:618:                                    ; preds = %617, %604
  br i1 %45, label %642, label %619, !dbg !1623

; <label>:619:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1399, metadata !796) #10, !dbg !1624
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1628, !tbaa !804
  %621 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 5, !dbg !1628
  %622 = load i8*, i8** %621, align 8, !dbg !1628, !tbaa !1408
  %623 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 6, !dbg !1628
  %624 = load i8*, i8** %623, align 8, !dbg !1628, !tbaa !1410
  %625 = icmp ult i8* %622, %624, !dbg !1628
  br i1 %625, label %628, label %626, !dbg !1628, !prof !1411

; <label>:626:                                    ; preds = %619
  %627 = call i32 @__overflow(%struct._IO_FILE* %620, i32 32) #10, !dbg !1629
  br label %630, !dbg !1629

; <label>:628:                                    ; preds = %619
  %629 = getelementptr inbounds i8, i8* %622, i64 1, !dbg !1630
  store i8* %629, i8** %621, align 8, !dbg !1630, !tbaa !1408
  store i8 32, i8* %622, align 1, !dbg !1630, !tbaa !1051
  br label %630, !dbg !1630

; <label>:630:                                    ; preds = %626, %628
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1399, metadata !796) #10, !dbg !1631
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1633, !tbaa !804
  %632 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 5, !dbg !1633
  %633 = load i8*, i8** %632, align 8, !dbg !1633, !tbaa !1408
  %634 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 6, !dbg !1633
  %635 = load i8*, i8** %634, align 8, !dbg !1633, !tbaa !1410
  %636 = icmp ult i8* %633, %635, !dbg !1633
  br i1 %636, label %639, label %637, !dbg !1633, !prof !1411

; <label>:637:                                    ; preds = %630
  %638 = call i32 @__overflow(%struct._IO_FILE* %631, i32 %110) #10, !dbg !1634
  br label %641, !dbg !1634

; <label>:639:                                    ; preds = %630
  %640 = getelementptr inbounds i8, i8* %633, i64 1, !dbg !1635
  store i8* %640, i8** %632, align 8, !dbg !1635, !tbaa !1408
  store i8 %111, i8* %633, align 1, !dbg !1635, !tbaa !1051
  br label %641, !dbg !1635

; <label>:641:                                    ; preds = %637, %639
  call fastcc void @print_filename(i8* %119, i1 zeroext %572), !dbg !1636
  br label %642, !dbg !1637

; <label>:642:                                    ; preds = %641, %618
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1399, metadata !796) #10, !dbg !1638
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1640, !tbaa !804
  %644 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 5, !dbg !1640
  %645 = load i8*, i8** %644, align 8, !dbg !1640, !tbaa !1408
  %646 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 6, !dbg !1640
  %647 = load i8*, i8** %646, align 8, !dbg !1640, !tbaa !1410
  %648 = icmp ult i8* %645, %647, !dbg !1640
  br i1 %648, label %651, label %649, !dbg !1640, !prof !1411

; <label>:649:                                    ; preds = %642
  %650 = call i32 @__overflow(%struct._IO_FILE* %643, i32 10) #10, !dbg !1641
  br label %653, !dbg !1641

; <label>:651:                                    ; preds = %642
  %652 = getelementptr inbounds i8, i8* %645, i64 1, !dbg !1642
  store i8* %652, i8** %644, align 8, !dbg !1642, !tbaa !1408
  store i8 10, i8* %645, align 1, !dbg !1642, !tbaa !1051
  br label %653, !dbg !1642

; <label>:653:                                    ; preds = %651, %649, %563
  %654 = phi i8 [ 0, %563 ], [ %118, %649 ], [ %118, %651 ]
  call void @llvm.dbg.value(metadata i8 %654, i64 0, metadata !877, metadata !796), !dbg !918
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !890, metadata !1101), !dbg !1576
  call void @llvm.lifetime.end(i64 1, i8* nonnull %8) #10, !dbg !1643
  br label %655

; <label>:655:                                    ; preds = %653, %559
  %656 = phi i8 [ %562, %559 ], [ %654, %653 ]
  call void @llvm.dbg.value(metadata i8 %656, i64 0, metadata !877, metadata !796), !dbg !918
  %657 = getelementptr inbounds i8*, i8** %117, i64 1, !dbg !1644
  call void @llvm.dbg.value(metadata i8** %657, i64 0, metadata !882, metadata !796), !dbg !1023
  call void @llvm.dbg.value(metadata i8** %657, i64 0, metadata !882, metadata !796), !dbg !1023
  call void @llvm.dbg.value(metadata i8 %656, i64 0, metadata !877, metadata !796), !dbg !918
  %658 = icmp ult i8** %657, %97, !dbg !1024
  br i1 %658, label %116, label %112, !dbg !1026, !llvm.loop !1646

; <label>:659:                                    ; preds = %113
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1649, !tbaa !804
  %661 = call i32 @rpl_fclose(%struct._IO_FILE* %660) #10, !dbg !1651
  %662 = icmp eq i32 %661, -1, !dbg !1652
  br i1 %662, label %663, label %667, !dbg !1653

; <label>:663:                                    ; preds = %659
  %664 = tail call i32* @__errno_location() #1, !dbg !1654
  %665 = load i32, i32* %664, align 4, !dbg !1654, !tbaa !1015
  %666 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1655
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %665, i8* %666) #10, !dbg !1656
  unreachable, !dbg !1654

; <label>:667:                                    ; preds = %659, %113
  %668 = and i8 %114, 1, !dbg !1658
  %669 = xor i8 %668, 1, !dbg !1658
  %670 = zext i8 %669 to i32, !dbg !1658
  call void @llvm.lifetime.end(i64 24, i8* nonnull %9) #10, !dbg !1659
  ret i32 %670, !dbg !1659

; <label>:671:                                    ; preds = %353
  %672 = getelementptr inbounds i8, i8* %346, i64 2, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  %673 = add nsw i32 %345, 2, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1350, metadata !796) #10, !dbg !1356
  %674 = icmp ult i32 %673, 40, !dbg !1662
  br i1 %674, label %344, label %361, !dbg !1359, !llvm.loop !1664
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
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #6 !dbg !1667 {
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1673, metadata !796), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1681, metadata !796), !dbg !1686
  %4 = load i8, i8* %0, align 1, !dbg !1687, !tbaa !1051
  %5 = icmp eq i8 %4, 45, !dbg !1689
  br i1 %5, label %7, label %6, !dbg !1692

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %2, align 1, !dbg !1694, !tbaa !1695
  br label %13, !dbg !1697

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1698
  %9 = load i8, i8* %8, align 1, !dbg !1698, !tbaa !1051
  %10 = icmp eq i8 %9, 0, !dbg !1701
  store i8 0, i8* %2, align 1, !dbg !1694, !tbaa !1695
  br i1 %10, label %11, label %13, !dbg !1697

; <label>:11:                                     ; preds = %7
  store i1 true, i1* @have_read_stdin, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1703, !tbaa !804
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, i64 0, metadata !1676, metadata !796), !dbg !1706
  br label %26, !dbg !1707

; <label>:13:                                     ; preds = %6, %7
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1708
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1676, metadata !796), !dbg !1706
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !1710
  br i1 %15, label %16, label %26, !dbg !1712

; <label>:16:                                     ; preds = %13
  %17 = load i1, i1* @ignore_missing, align 1
  %18 = tail call i32* @__errno_location() #1, !dbg !1713
  br i1 %17, label %19, label %23, !dbg !1717

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %18, align 4, !dbg !1713, !tbaa !1015
  %21 = icmp eq i32 %20, 2, !dbg !1718
  br i1 %21, label %22, label %23, !dbg !1719

; <label>:22:                                     ; preds = %19
  store i8 1, i8* %2, align 1, !dbg !1721, !tbaa !1695
  br label %47, !dbg !1723

; <label>:23:                                     ; preds = %16, %19
  %24 = load i32, i32* %18, align 4, !dbg !1724, !tbaa !1015
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1725
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %25) #10, !dbg !1726
  br label %47, !dbg !1728

; <label>:26:                                     ; preds = %13, %11
  %27 = phi i1 [ true, %11 ], [ false, %13 ]
  %28 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %28, i64 0, metadata !1676, metadata !796), !dbg !1706
  tail call void @fadvise(%struct._IO_FILE* %28, i32 2) #10, !dbg !1729
  %29 = tail call i32 @sha1_stream(%struct._IO_FILE* %28, i8* %1) #10, !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1677, metadata !796), !dbg !1731
  %30 = icmp eq i32 %29, 0, !dbg !1732
  br i1 %30, label %39, label %31, !dbg !1734

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #1, !dbg !1735
  %33 = load i32, i32* %32, align 4, !dbg !1735, !tbaa !1015
  %34 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1737
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %34) #10, !dbg !1739
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1741, !tbaa !804
  %36 = icmp eq %struct._IO_FILE* %28, %35, !dbg !1743
  br i1 %36, label %47, label %37, !dbg !1744

; <label>:37:                                     ; preds = %31
  %38 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10, !dbg !1745
  br label %47, !dbg !1745

; <label>:39:                                     ; preds = %26
  br i1 %27, label %47, label %40, !dbg !1746

; <label>:40:                                     ; preds = %39
  %41 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10, !dbg !1748
  %42 = icmp eq i32 %41, 0, !dbg !1750
  br i1 %42, label %47, label %43, !dbg !1751

; <label>:43:                                     ; preds = %40
  %44 = tail call i32* @__errno_location() #1, !dbg !1753
  %45 = load i32, i32* %44, align 4, !dbg !1753, !tbaa !1015
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1755
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %46) #10, !dbg !1757
  br label %47, !dbg !1759

; <label>:47:                                     ; preds = %39, %40, %37, %31, %43, %23, %22
  %48 = phi i1 [ false, %43 ], [ true, %22 ], [ false, %23 ], [ false, %31 ], [ false, %37 ], [ true, %40 ], [ true, %39 ]
  ret i1 %48, !dbg !1760
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8*, i1 zeroext) unnamed_addr #6 !dbg !1761 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1765, metadata !796), !dbg !1767
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1766, metadata !1194), !dbg !1768
  br i1 %1, label %3, label %7, !dbg !1769

; <label>:3:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1765, metadata !796), !dbg !1767
  %4 = load i8, i8* %0, align 1, !dbg !1770, !tbaa !1051
  %5 = icmp eq i8 %4, 0, !dbg !1772
  br i1 %5, label %37, label %6, !dbg !1772

; <label>:6:                                      ; preds = %3
  br label %10, !dbg !1773

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1775, !tbaa !804
  %9 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %8) #10, !dbg !1775
  br label %37, !dbg !1778

; <label>:10:                                     ; preds = %6, %32
  %11 = phi i8 [ %34, %32 ], [ %4, %6 ]
  %12 = phi i8* [ %33, %32 ], [ %0, %6 ]
  %13 = sext i8 %11 to i32, !dbg !1773
  switch i32 %13, label %20 [
    i32 10, label %14
    i32 92, label %17
  ], !dbg !1779

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1780, !tbaa !804
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %15) #10, !dbg !1780
  br label %32, !dbg !1782

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1783, !tbaa !804
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* %18) #10, !dbg !1783
  br label %32, !dbg !1784

; <label>:20:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1399, metadata !796) #10, !dbg !1785
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1787, !tbaa !804
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5, !dbg !1787
  %23 = load i8*, i8** %22, align 8, !dbg !1787, !tbaa !1408
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6, !dbg !1787
  %25 = load i8*, i8** %24, align 8, !dbg !1787, !tbaa !1410
  %26 = icmp ult i8* %23, %25, !dbg !1787
  br i1 %26, label %30, label %27, !dbg !1787, !prof !1411

; <label>:27:                                     ; preds = %20
  %28 = and i32 %13, 255, !dbg !1788
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10, !dbg !1788
  br label %32, !dbg !1788

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1789
  store i8* %31, i8** %22, align 8, !dbg !1789, !tbaa !1408
  store i8 %11, i8* %23, align 1, !dbg !1789, !tbaa !1051
  br label %32, !dbg !1789

; <label>:32:                                     ; preds = %30, %27, %17, %14
  %33 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1765, metadata !796), !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1765, metadata !796), !dbg !1767
  %34 = load i8, i8* %33, align 1, !dbg !1770, !tbaa !1051
  %35 = icmp eq i8 %34, 0, !dbg !1772
  br i1 %35, label %36, label %10, !dbg !1772, !llvm.loop !1791

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !1794

; <label>:37:                                     ; preds = %36, %3, %7
  ret void, !dbg !1794
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1795 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1797, metadata !796), !dbg !1798
  store i8* %0, i8** @file_name, align 8, !dbg !1799, !tbaa !804
  ret void, !dbg !1800
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1801 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1805, metadata !1194), !dbg !1806
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1807, !tbaa !1695
  ret void, !dbg !1808
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1809 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1814, !tbaa !804
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1815
  %3 = icmp eq i32 %2, 0, !dbg !1816
  br i1 %3, label %21, label %4, !dbg !1817

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1818, !tbaa !1695, !range !1820
  %6 = icmp eq i8 %5, 0, !dbg !1818
  %7 = tail call i32* @__errno_location() #1, !dbg !1821
  br i1 %6, label %11, label %8, !dbg !1823

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1824, !tbaa !1015
  %10 = icmp eq i32 %9, 32, !dbg !1826
  br i1 %10, label %21, label %11, !dbg !1827

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1811, metadata !796), !dbg !1830
  %13 = load i8*, i8** @file_name, align 8, !dbg !1831, !tbaa !804
  %14 = icmp eq i8* %13, null, !dbg !1831
  %15 = load i32, i32* %7, align 4, !tbaa !1015
  br i1 %14, label %18, label %16, !dbg !1832

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1833
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.39, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1835
  br label %19, !dbg !1837

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.40, i64 0, i64 0), i8* %12) #10, !dbg !1838
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1839, !tbaa !1015
  tail call void @_exit(i32 %20) #14, !dbg !1840
  unreachable, !dbg !1840

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1841, !tbaa !804
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1843
  %24 = icmp eq i32 %23, 0, !dbg !1844
  br i1 %24, label %27, label %25, !dbg !1845

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1846, !tbaa !1015
  tail call void @_exit(i32 %26) #14, !dbg !1847
  unreachable, !dbg !1847

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1848
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_init_ctx(%struct.sha1_ctx* nocapture) local_unnamed_addr #6 !dbg !1849 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1871, metadata !796), !dbg !1872
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*, !dbg !1873
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1873, !tbaa !1015
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1874
  %4 = bitcast i32* %3 to <4 x i32>*, !dbg !1875
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4, !dbg !1875, !tbaa !1015
  ret void, !dbg !1876
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 !dbg !1877 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1883, metadata !796), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1884, metadata !796), !dbg !1887
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1885, metadata !796), !dbg !1888
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1889
  %4 = load i32, i32* %3, align 4, !dbg !1889, !tbaa !1890
  %5 = tail call i32 @llvm.bswap.i32(i32 %4), !dbg !1889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1892, metadata !796), !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1897, metadata !796), !dbg !1900
  %6 = bitcast i8* %1 to i32*, !dbg !1901
  store i32 %5, i32* %6, align 1, !dbg !1901
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1902
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1903
  %9 = load i32, i32* %8, align 4, !dbg !1903, !tbaa !1904
  %10 = tail call i32 @llvm.bswap.i32(i32 %9), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1892, metadata !796), !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1897, metadata !796), !dbg !1907
  %11 = bitcast i8* %7 to i32*, !dbg !1908
  store i32 %10, i32* %11, align 1, !dbg !1908
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1909
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1910
  %14 = load i32, i32* %13, align 4, !dbg !1910, !tbaa !1911
  %15 = tail call i32 @llvm.bswap.i32(i32 %14), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1892, metadata !796), !dbg !1912
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1897, metadata !796), !dbg !1914
  %16 = bitcast i8* %12 to i32*, !dbg !1915
  store i32 %15, i32* %16, align 1, !dbg !1915
  %17 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1916
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1917
  %19 = load i32, i32* %18, align 4, !dbg !1917, !tbaa !1918
  %20 = tail call i32 @llvm.bswap.i32(i32 %19), !dbg !1917
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1892, metadata !796), !dbg !1919
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1897, metadata !796), !dbg !1921
  %21 = bitcast i8* %17 to i32*, !dbg !1922
  store i32 %20, i32* %21, align 1, !dbg !1922
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1923
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1924
  %24 = load i32, i32* %23, align 4, !dbg !1924, !tbaa !1925
  %25 = tail call i32 @llvm.bswap.i32(i32 %24), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1892, metadata !796), !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1897, metadata !796), !dbg !1928
  %26 = bitcast i8* %22 to i32*, !dbg !1929
  store i32 %25, i32* %26, align 1, !dbg !1929
  ret i8* %1, !dbg !1930
}

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_finish_ctx(%struct.sha1_ctx*, i8* returned) local_unnamed_addr #6 !dbg !1931 {
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1935, metadata !796), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1936, metadata !796), !dbg !1940
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6, !dbg !1941
  %4 = load i32, i32* %3, align 4, !dbg !1941, !tbaa !1942
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1937, metadata !796), !dbg !1943
  %5 = icmp ult i32 %4, 56, !dbg !1944
  %6 = select i1 %5, i64 16, i64 32, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1938, metadata !796), !dbg !1946
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0, !dbg !1947
  %8 = load i32, i32* %7, align 4, !dbg !1948, !tbaa !1015
  %9 = add i32 %8, %4, !dbg !1948
  store i32 %9, i32* %7, align 4, !dbg !1948, !tbaa !1015
  %10 = icmp ult i32 %9, %4, !dbg !1949
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1
  %12 = load i32, i32* %11, align 4, !tbaa !1015
  br i1 %10, label %13, label %15, !dbg !1951

; <label>:13:                                     ; preds = %2
  %14 = add i32 %12, 1, !dbg !1952
  store i32 %14, i32* %11, align 4, !dbg !1952, !tbaa !1015
  br label %15, !dbg !1952

; <label>:15:                                     ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !1953
  %17 = shl i32 %16, 3, !dbg !1953
  %18 = lshr i32 %9, 29, !dbg !1953
  %19 = or i32 %18, %17, !dbg !1953
  %20 = shl i32 %19, 24, !dbg !1953
  %21 = shl i32 %16, 11, !dbg !1953
  %22 = and i32 %21, 16711680, !dbg !1953
  %23 = lshr i32 %16, 5, !dbg !1953
  %24 = and i32 %23, 65280, !dbg !1953
  %25 = lshr i32 %16, 21, !dbg !1953
  %26 = and i32 %25, 255, !dbg !1953
  %27 = or i32 %24, %22, !dbg !1953
  %28 = or i32 %27, %26, !dbg !1953
  %29 = or i32 %28, %20, !dbg !1953
  %30 = add nsw i64 %6, -2, !dbg !1954
  %31 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %30, !dbg !1955
  store i32 %29, i32* %31, align 4, !dbg !1956, !tbaa !1015
  %32 = shl i32 %9, 27, !dbg !1957
  %33 = shl i32 %9, 11, !dbg !1957
  %34 = and i32 %33, 16711680, !dbg !1957
  %35 = or i32 %34, %32, !dbg !1957
  %36 = lshr i32 %9, 5, !dbg !1957
  %37 = and i32 %36, 65280, !dbg !1957
  %38 = or i32 %35, %37, !dbg !1957
  %39 = lshr i32 %9, 21, !dbg !1957
  %40 = and i32 %39, 255, !dbg !1957
  %41 = or i32 %38, %40, !dbg !1957
  %42 = add nsw i64 %6, -1, !dbg !1958
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %42, !dbg !1959
  store i32 %41, i32* %43, align 4, !dbg !1960, !tbaa !1015
  %44 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0, !dbg !1961
  %45 = bitcast i32* %44 to i8*, !dbg !1961
  %46 = zext i32 %4 to i64, !dbg !1961
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1961
  %48 = shl nsw i64 %30, 2, !dbg !1962
  %49 = sub nsw i64 %48, %46, !dbg !1963
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %49, i32 1, i1 false), !dbg !1964
  %50 = shl nuw nsw i64 %6, 2, !dbg !1965
  tail call void @sha1_process_block(i8* %45, i64 %50, %struct.sha1_ctx* nonnull %0), !dbg !1966
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, i64 0, metadata !1883, metadata !796) #10, !dbg !1967
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1884, metadata !796) #10, !dbg !1969
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1885, metadata !796) #10, !dbg !1970
  %51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1971
  %52 = load i32, i32* %51, align 4, !dbg !1971, !tbaa !1890
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1892, metadata !796) #10, !dbg !1972
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !1897, metadata !796) #10, !dbg !1974
  %54 = bitcast i8* %1 to i32*, !dbg !1975
  store i32 %53, i32* %54, align 1, !dbg !1975
  %55 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1976
  %56 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1977
  %57 = load i32, i32* %56, align 4, !dbg !1977, !tbaa !1904
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10, !dbg !1977
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1892, metadata !796) #10, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !1897, metadata !796) #10, !dbg !1980
  %59 = bitcast i8* %55 to i32*, !dbg !1981
  store i32 %58, i32* %59, align 1, !dbg !1981
  %60 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1982
  %61 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1983
  %62 = load i32, i32* %61, align 4, !dbg !1983, !tbaa !1911
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10, !dbg !1983
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1892, metadata !796) #10, !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1897, metadata !796) #10, !dbg !1986
  %64 = bitcast i8* %60 to i32*, !dbg !1987
  store i32 %63, i32* %64, align 1, !dbg !1987
  %65 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1988
  %66 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1989
  %67 = load i32, i32* %66, align 4, !dbg !1989, !tbaa !1918
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10, !dbg !1989
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1892, metadata !796) #10, !dbg !1990
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !1897, metadata !796) #10, !dbg !1992
  %69 = bitcast i8* %65 to i32*, !dbg !1993
  store i32 %68, i32* %69, align 1, !dbg !1993
  %70 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1994
  %71 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1995
  %72 = load i32, i32* %71, align 4, !dbg !1995, !tbaa !1925
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10, !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1892, metadata !796) #10, !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1897, metadata !796) #10, !dbg !1998
  %74 = bitcast i8* %70 to i32*, !dbg !1999
  store i32 %73, i32* %74, align 1, !dbg !1999
  ret i8* %1, !dbg !2000
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_block(i8* readonly, i64, %struct.sha1_ctx* nocapture) local_unnamed_addr #6 !dbg !2001 {
  %4 = alloca [16 x i32], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2005, metadata !796), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2006, metadata !796), !dbg !2025
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, i64 0, metadata !2007, metadata !796), !dbg !2026
  %5 = bitcast i8* %0 to i32*, !dbg !2027
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2008, metadata !796), !dbg !2028
  %6 = lshr i64 %1, 2, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !2011, metadata !796), !dbg !2030
  %7 = getelementptr inbounds i32, i32* %5, i64 %6, !dbg !2031
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2012, metadata !796), !dbg !2032
  %8 = bitcast [16 x i32]* %4 to i8*, !dbg !2033
  call void @llvm.lifetime.start(i64 64, i8* nonnull %8) #10, !dbg !2033
  tail call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !2013, metadata !796), !dbg !2034
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0, !dbg !2035
  %10 = load i32, i32* %9, align 4, !dbg !2035, !tbaa !1890
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2015, metadata !796), !dbg !2036
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1, !dbg !2037
  %12 = load i32, i32* %11, align 4, !dbg !2037, !tbaa !1904
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2016, metadata !796), !dbg !2038
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 2, !dbg !2039
  %14 = load i32, i32* %13, align 4, !dbg !2039, !tbaa !1911
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2017, metadata !796), !dbg !2040
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 3, !dbg !2041
  %16 = load i32, i32* %15, align 4, !dbg !2041, !tbaa !1918
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !2018, metadata !796), !dbg !2042
  %17 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 4, !dbg !2043
  %18 = load i32, i32* %17, align 4, !dbg !2043, !tbaa !1925
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2019, metadata !796), !dbg !2044
  %19 = trunc i64 %1 to i32, !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !2020, metadata !796), !dbg !2046
  %20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0, !dbg !2047
  %21 = load i32, i32* %20, align 4, !dbg !2048, !tbaa !1015
  %22 = add i32 %21, %19, !dbg !2048
  store i32 %22, i32* %20, align 4, !dbg !2048, !tbaa !1015
  %23 = lshr i64 %1, 32, !dbg !2049
  %24 = icmp ult i32 %22, %19, !dbg !2050
  %25 = zext i1 %24 to i64, !dbg !2051
  %26 = add nuw nsw i64 %25, %23, !dbg !2052
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1, !dbg !2053
  %28 = load i32, i32* %27, align 4, !dbg !2054, !tbaa !1015
  %29 = zext i32 %28 to i64, !dbg !2054
  %30 = add nuw nsw i64 %26, %29, !dbg !2054
  %31 = trunc i64 %30 to i32, !dbg !2054
  store i32 %31, i32* %27, align 4, !dbg !2054, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2015, metadata !796), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2019, metadata !796), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !2018, metadata !796), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2017, metadata !796), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2016, metadata !796), !dbg !2038
  %32 = icmp ult i32* %5, %7, !dbg !2055
  br i1 %32, label %33, label %1646, !dbg !2057

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
  br label %55, !dbg !2057

; <label>:55:                                     ; preds = %33, %55
  %56 = phi i32* [ %5, %33 ], [ %85, %55 ]
  %57 = phi i32 [ %10, %33 ], [ %1633, %55 ]
  %58 = phi i32 [ %18, %33 ], [ %1644, %55 ]
  %59 = phi i32 [ %16, %33 ], [ %1643, %55 ]
  %60 = phi i32 [ %14, %33 ], [ %1642, %55 ]
  %61 = phi i32 [ %12, %33 ], [ %1641, %55 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2023, metadata !796), !dbg !2058
  tail call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !2008, metadata !796), !dbg !2028
  %62 = load i32, i32* %56, align 4, !dbg !2059, !tbaa !1015
  %63 = tail call i32 @llvm.bswap.i32(i32 %62), !dbg !2059
  store i32 %63, i32* %34, align 16, !dbg !2063, !tbaa !1015
  %64 = getelementptr inbounds i32, i32* %56, i64 1, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %65 = load i32, i32* %64, align 4, !dbg !2059, !tbaa !1015
  %66 = tail call i32 @llvm.bswap.i32(i32 %65), !dbg !2059
  store i32 %66, i32* %35, align 4, !dbg !2063, !tbaa !1015
  %67 = getelementptr inbounds i32, i32* %56, i64 2, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %68 = load i32, i32* %67, align 4, !dbg !2059, !tbaa !1015
  %69 = tail call i32 @llvm.bswap.i32(i32 %68), !dbg !2059
  store i32 %69, i32* %36, align 8, !dbg !2063, !tbaa !1015
  %70 = getelementptr inbounds i32, i32* %56, i64 3, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %71 = bitcast i32* %70 to <4 x i32>*, !dbg !2059
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !dbg !2059, !tbaa !1015
  %73 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %72), !dbg !2059
  store <4 x i32> %73, <4 x i32>* %50, align 4, !dbg !2063, !tbaa !1015
  %74 = getelementptr inbounds i32, i32* %56, i64 7, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %75 = bitcast i32* %74 to <4 x i32>*, !dbg !2059
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !dbg !2059, !tbaa !1015
  %77 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %76), !dbg !2059
  store <4 x i32> %77, <4 x i32>* %51, align 4, !dbg !2063, !tbaa !1015
  %78 = getelementptr inbounds i32, i32* %56, i64 11, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !2059
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !dbg !2059, !tbaa !1015
  %81 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %80), !dbg !2059
  store <4 x i32> %81, <4 x i32>* %52, align 4, !dbg !2063, !tbaa !1015
  %82 = getelementptr inbounds i32, i32* %56, i64 15, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %83 = load i32, i32* %82, align 4, !dbg !2059, !tbaa !1015
  %84 = tail call i32 @llvm.bswap.i32(i32 %83), !dbg !2059
  store i32 %84, i32* %49, align 4, !dbg !2063, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  %85 = getelementptr i32, i32* %56, i64 16, !dbg !2065
  %86 = shl i32 %57, 5, !dbg !2067
  %87 = lshr i32 %57, 27, !dbg !2067
  %88 = or i32 %86, %87, !dbg !2067
  %89 = xor i32 %59, %60, !dbg !2067
  %90 = and i32 %89, %61, !dbg !2067
  %91 = xor i32 %90, %59, !dbg !2067
  %92 = add i32 %58, 1518500249, !dbg !2067
  %93 = add i32 %92, %91, !dbg !2067
  %94 = add i32 %93, %88, !dbg !2067
  %95 = add i32 %94, %63, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2019, metadata !796), !dbg !2044
  %96 = shl i32 %61, 30, !dbg !2067
  %97 = lshr i32 %61, 2, !dbg !2067
  %98 = or i32 %96, %97, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !2016, metadata !796), !dbg !2038
  %99 = shl i32 %95, 5, !dbg !2070
  %100 = lshr i32 %95, 27, !dbg !2070
  %101 = or i32 %99, %100, !dbg !2070
  %102 = xor i32 %98, %60, !dbg !2070
  %103 = and i32 %57, %102, !dbg !2070
  %104 = xor i32 %103, %60, !dbg !2070
  %105 = add i32 %59, 1518500249, !dbg !2070
  %106 = add i32 %105, %104, !dbg !2070
  %107 = add i32 %106, %66, !dbg !2070
  %108 = add i32 %107, %101, !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !2018, metadata !796), !dbg !2042
  %109 = shl i32 %57, 30, !dbg !2070
  %110 = lshr i32 %57, 2, !dbg !2070
  %111 = or i32 %109, %110, !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !2015, metadata !796), !dbg !2036
  %112 = shl i32 %108, 5, !dbg !2073
  %113 = lshr i32 %108, 27, !dbg !2073
  %114 = or i32 %112, %113, !dbg !2073
  %115 = xor i32 %111, %98, !dbg !2073
  %116 = and i32 %95, %115, !dbg !2073
  %117 = xor i32 %116, %98, !dbg !2073
  %118 = add i32 %60, 1518500249, !dbg !2073
  %119 = add i32 %118, %69, !dbg !2073
  %120 = add i32 %119, %117, !dbg !2073
  %121 = add i32 %120, %114, !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !2017, metadata !796), !dbg !2040
  %122 = shl i32 %95, 30, !dbg !2073
  %123 = lshr i32 %95, 2, !dbg !2073
  %124 = or i32 %122, %123, !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !2019, metadata !796), !dbg !2044
  %125 = shl i32 %121, 5, !dbg !2076
  %126 = lshr i32 %121, 27, !dbg !2076
  %127 = or i32 %125, %126, !dbg !2076
  %128 = xor i32 %124, %111, !dbg !2076
  %129 = and i32 %108, %128, !dbg !2076
  %130 = xor i32 %129, %111, !dbg !2076
  %131 = add i32 %98, 1518500249, !dbg !2076
  %132 = extractelement <4 x i32> %73, i32 0, !dbg !2076
  %133 = add i32 %131, %132, !dbg !2076
  %134 = add i32 %133, %130, !dbg !2076
  %135 = add i32 %134, %127, !dbg !2076
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !2016, metadata !796), !dbg !2038
  %136 = shl i32 %108, 30, !dbg !2076
  %137 = lshr i32 %108, 2, !dbg !2076
  %138 = or i32 %136, %137, !dbg !2076
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !2018, metadata !796), !dbg !2042
  %139 = shl i32 %135, 5, !dbg !2079
  %140 = lshr i32 %135, 27, !dbg !2079
  %141 = or i32 %139, %140, !dbg !2079
  %142 = xor i32 %138, %124, !dbg !2079
  %143 = and i32 %121, %142, !dbg !2079
  %144 = xor i32 %143, %124, !dbg !2079
  %145 = load i32, i32* %38, align 16, !dbg !2079, !tbaa !1015
  %146 = add i32 %111, 1518500249, !dbg !2079
  %147 = add i32 %146, %145, !dbg !2079
  %148 = add i32 %147, %144, !dbg !2079
  %149 = add i32 %148, %141, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !2015, metadata !796), !dbg !2036
  %150 = shl i32 %121, 30, !dbg !2079
  %151 = lshr i32 %121, 2, !dbg !2079
  %152 = or i32 %150, %151, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !2017, metadata !796), !dbg !2040
  %153 = shl i32 %149, 5, !dbg !2082
  %154 = lshr i32 %149, 27, !dbg !2082
  %155 = or i32 %153, %154, !dbg !2082
  %156 = xor i32 %152, %138, !dbg !2082
  %157 = and i32 %135, %156, !dbg !2082
  %158 = xor i32 %157, %138, !dbg !2082
  %159 = load i32, i32* %39, align 4, !dbg !2082, !tbaa !1015
  %160 = add i32 %124, 1518500249, !dbg !2082
  %161 = add i32 %160, %159, !dbg !2082
  %162 = add i32 %161, %158, !dbg !2082
  %163 = add i32 %162, %155, !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !2019, metadata !796), !dbg !2044
  %164 = shl i32 %135, 30, !dbg !2082
  %165 = lshr i32 %135, 2, !dbg !2082
  %166 = or i32 %164, %165, !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 %166, i64 0, metadata !2016, metadata !796), !dbg !2038
  %167 = shl i32 %163, 5, !dbg !2085
  %168 = lshr i32 %163, 27, !dbg !2085
  %169 = or i32 %167, %168, !dbg !2085
  %170 = xor i32 %166, %152, !dbg !2085
  %171 = and i32 %149, %170, !dbg !2085
  %172 = xor i32 %171, %152, !dbg !2085
  %173 = load i32, i32* %40, align 8, !dbg !2085, !tbaa !1015
  %174 = add i32 %173, 1518500249, !dbg !2085
  %175 = add i32 %174, %138, !dbg !2085
  %176 = add i32 %175, %172, !dbg !2085
  %177 = add i32 %176, %169, !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 %177, i64 0, metadata !2018, metadata !796), !dbg !2042
  %178 = shl i32 %149, 30, !dbg !2085
  %179 = lshr i32 %149, 2, !dbg !2085
  %180 = or i32 %178, %179, !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !2015, metadata !796), !dbg !2036
  %181 = shl i32 %177, 5, !dbg !2088
  %182 = lshr i32 %177, 27, !dbg !2088
  %183 = or i32 %181, %182, !dbg !2088
  %184 = xor i32 %180, %166, !dbg !2088
  %185 = and i32 %163, %184, !dbg !2088
  %186 = xor i32 %185, %166, !dbg !2088
  %187 = load i32, i32* %41, align 4, !dbg !2088, !tbaa !1015
  %188 = add i32 %187, 1518500249, !dbg !2088
  %189 = add i32 %188, %152, !dbg !2088
  %190 = add i32 %189, %186, !dbg !2088
  %191 = add i32 %190, %183, !dbg !2088
  tail call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !2017, metadata !796), !dbg !2040
  %192 = shl i32 %163, 30, !dbg !2088
  %193 = lshr i32 %163, 2, !dbg !2088
  %194 = or i32 %192, %193, !dbg !2088
  tail call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !2019, metadata !796), !dbg !2044
  %195 = shl i32 %191, 5, !dbg !2091
  %196 = lshr i32 %191, 27, !dbg !2091
  %197 = or i32 %195, %196, !dbg !2091
  %198 = xor i32 %194, %180, !dbg !2091
  %199 = and i32 %177, %198, !dbg !2091
  %200 = xor i32 %199, %180, !dbg !2091
  %201 = load i32, i32* %42, align 16, !dbg !2091, !tbaa !1015
  %202 = add i32 %201, 1518500249, !dbg !2091
  %203 = add i32 %202, %166, !dbg !2091
  %204 = add i32 %203, %200, !dbg !2091
  %205 = add i32 %204, %197, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !2016, metadata !796), !dbg !2038
  %206 = shl i32 %177, 30, !dbg !2091
  %207 = lshr i32 %177, 2, !dbg !2091
  %208 = or i32 %206, %207, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %208, i64 0, metadata !2018, metadata !796), !dbg !2042
  %209 = shl i32 %205, 5, !dbg !2094
  %210 = lshr i32 %205, 27, !dbg !2094
  %211 = or i32 %209, %210, !dbg !2094
  %212 = xor i32 %208, %194, !dbg !2094
  %213 = and i32 %191, %212, !dbg !2094
  %214 = xor i32 %213, %194, !dbg !2094
  %215 = load i32, i32* %43, align 4, !dbg !2094, !tbaa !1015
  %216 = add i32 %215, 1518500249, !dbg !2094
  %217 = add i32 %216, %180, !dbg !2094
  %218 = add i32 %217, %214, !dbg !2094
  %219 = add i32 %218, %211, !dbg !2094
  tail call void @llvm.dbg.value(metadata i32 %219, i64 0, metadata !2015, metadata !796), !dbg !2036
  %220 = shl i32 %191, 30, !dbg !2094
  %221 = lshr i32 %191, 2, !dbg !2094
  %222 = or i32 %220, %221, !dbg !2094
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !2017, metadata !796), !dbg !2040
  %223 = shl i32 %219, 5, !dbg !2097
  %224 = lshr i32 %219, 27, !dbg !2097
  %225 = or i32 %223, %224, !dbg !2097
  %226 = xor i32 %222, %208, !dbg !2097
  %227 = and i32 %205, %226, !dbg !2097
  %228 = xor i32 %227, %208, !dbg !2097
  %229 = load i32, i32* %44, align 8, !dbg !2097, !tbaa !1015
  %230 = add i32 %229, 1518500249, !dbg !2097
  %231 = add i32 %230, %194, !dbg !2097
  %232 = add i32 %231, %228, !dbg !2097
  %233 = add i32 %232, %225, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !2019, metadata !796), !dbg !2044
  %234 = shl i32 %205, 30, !dbg !2097
  %235 = lshr i32 %205, 2, !dbg !2097
  %236 = or i32 %234, %235, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %236, i64 0, metadata !2016, metadata !796), !dbg !2038
  %237 = shl i32 %233, 5, !dbg !2100
  %238 = lshr i32 %233, 27, !dbg !2100
  %239 = or i32 %237, %238, !dbg !2100
  %240 = xor i32 %236, %222, !dbg !2100
  %241 = and i32 %219, %240, !dbg !2100
  %242 = xor i32 %241, %222, !dbg !2100
  %243 = load i32, i32* %45, align 4, !dbg !2100, !tbaa !1015
  %244 = add i32 %243, 1518500249, !dbg !2100
  %245 = add i32 %244, %208, !dbg !2100
  %246 = add i32 %245, %242, !dbg !2100
  %247 = add i32 %246, %239, !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !2018, metadata !796), !dbg !2042
  %248 = shl i32 %219, 30, !dbg !2100
  %249 = lshr i32 %219, 2, !dbg !2100
  %250 = or i32 %248, %249, !dbg !2100
  tail call void @llvm.dbg.value(metadata i32 %250, i64 0, metadata !2015, metadata !796), !dbg !2036
  %251 = shl i32 %247, 5, !dbg !2103
  %252 = lshr i32 %247, 27, !dbg !2103
  %253 = or i32 %251, %252, !dbg !2103
  %254 = xor i32 %250, %236, !dbg !2103
  %255 = and i32 %233, %254, !dbg !2103
  %256 = xor i32 %255, %236, !dbg !2103
  %257 = load i32, i32* %46, align 16, !dbg !2103, !tbaa !1015
  %258 = add i32 %257, 1518500249, !dbg !2103
  %259 = add i32 %258, %222, !dbg !2103
  %260 = add i32 %259, %256, !dbg !2103
  %261 = add i32 %260, %253, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !2017, metadata !796), !dbg !2040
  %262 = shl i32 %233, 30, !dbg !2103
  %263 = lshr i32 %233, 2, !dbg !2103
  %264 = or i32 %262, %263, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !2019, metadata !796), !dbg !2044
  %265 = shl i32 %261, 5, !dbg !2106
  %266 = lshr i32 %261, 27, !dbg !2106
  %267 = or i32 %265, %266, !dbg !2106
  %268 = xor i32 %264, %250, !dbg !2106
  %269 = and i32 %247, %268, !dbg !2106
  %270 = xor i32 %269, %250, !dbg !2106
  %271 = load i32, i32* %47, align 4, !dbg !2106, !tbaa !1015
  %272 = add i32 %271, 1518500249, !dbg !2106
  %273 = add i32 %272, %236, !dbg !2106
  %274 = add i32 %273, %270, !dbg !2106
  %275 = add i32 %274, %267, !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %275, i64 0, metadata !2016, metadata !796), !dbg !2038
  %276 = shl i32 %247, 30, !dbg !2106
  %277 = lshr i32 %247, 2, !dbg !2106
  %278 = or i32 %276, %277, !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %278, i64 0, metadata !2018, metadata !796), !dbg !2042
  %279 = shl i32 %275, 5, !dbg !2109
  %280 = lshr i32 %275, 27, !dbg !2109
  %281 = or i32 %279, %280, !dbg !2109
  %282 = xor i32 %278, %264, !dbg !2109
  %283 = and i32 %261, %282, !dbg !2109
  %284 = xor i32 %283, %264, !dbg !2109
  %285 = load i32, i32* %48, align 8, !dbg !2109, !tbaa !1015
  %286 = add i32 %285, 1518500249, !dbg !2109
  %287 = add i32 %286, %250, !dbg !2109
  %288 = add i32 %287, %284, !dbg !2109
  %289 = add i32 %288, %281, !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %289, i64 0, metadata !2015, metadata !796), !dbg !2036
  %290 = shl i32 %261, 30, !dbg !2109
  %291 = lshr i32 %261, 2, !dbg !2109
  %292 = or i32 %290, %291, !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %292, i64 0, metadata !2017, metadata !796), !dbg !2040
  %293 = shl i32 %289, 5, !dbg !2112
  %294 = lshr i32 %289, 27, !dbg !2112
  %295 = or i32 %293, %294, !dbg !2112
  %296 = xor i32 %292, %278, !dbg !2112
  %297 = and i32 %275, %296, !dbg !2112
  %298 = xor i32 %297, %278, !dbg !2112
  %299 = load i32, i32* %49, align 4, !dbg !2112, !tbaa !1015
  %300 = add i32 %299, 1518500249, !dbg !2112
  %301 = add i32 %300, %264, !dbg !2112
  %302 = add i32 %301, %298, !dbg !2112
  %303 = add i32 %302, %295, !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %303, i64 0, metadata !2019, metadata !796), !dbg !2044
  %304 = shl i32 %275, 30, !dbg !2112
  %305 = lshr i32 %275, 2, !dbg !2112
  %306 = or i32 %304, %305, !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %306, i64 0, metadata !2016, metadata !796), !dbg !2038
  %307 = shl i32 %303, 5, !dbg !2115
  %308 = lshr i32 %303, 27, !dbg !2115
  %309 = or i32 %307, %308, !dbg !2115
  %310 = xor i32 %306, %292, !dbg !2115
  %311 = and i32 %289, %310, !dbg !2115
  %312 = xor i32 %311, %292, !dbg !2115
  %313 = xor i32 %68, %62, !dbg !2115
  %314 = call i32 @llvm.bswap.i32(i32 %313), !dbg !2115
  %315 = xor i32 %314, %201, !dbg !2115
  %316 = xor i32 %315, %271, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %316, i64 0, metadata !2021, metadata !796), !dbg !2118
  %317 = shl i32 %316, 1, !dbg !2115
  %318 = lshr i32 %316, 31, !dbg !2115
  %319 = or i32 %317, %318, !dbg !2115
  store i32 %319, i32* %34, align 16, !dbg !2115, !tbaa !1015
  %320 = add i32 %319, 1518500249, !dbg !2115
  %321 = add i32 %320, %278, !dbg !2115
  %322 = add i32 %321, %312, !dbg !2115
  %323 = add i32 %322, %309, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !2018, metadata !796), !dbg !2042
  %324 = shl i32 %289, 30, !dbg !2115
  %325 = lshr i32 %289, 2, !dbg !2115
  %326 = or i32 %324, %325, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !2015, metadata !796), !dbg !2036
  %327 = shl i32 %323, 5, !dbg !2119
  %328 = lshr i32 %323, 27, !dbg !2119
  %329 = or i32 %327, %328, !dbg !2119
  %330 = xor i32 %326, %306, !dbg !2119
  %331 = and i32 %303, %330, !dbg !2119
  %332 = xor i32 %331, %306, !dbg !2119
  %333 = load i32, i32* %35, align 4, !dbg !2119, !tbaa !1015
  %334 = load i32, i32* %37, align 4, !dbg !2119, !tbaa !1015
  %335 = xor i32 %334, %333, !dbg !2119
  %336 = load i32, i32* %43, align 4, !dbg !2119, !tbaa !1015
  %337 = xor i32 %335, %336, !dbg !2119
  %338 = xor i32 %337, %285, !dbg !2119
  tail call void @llvm.dbg.value(metadata i32 %338, i64 0, metadata !2021, metadata !796), !dbg !2118
  %339 = shl i32 %338, 1, !dbg !2119
  %340 = lshr i32 %338, 31, !dbg !2119
  %341 = or i32 %339, %340, !dbg !2119
  store i32 %341, i32* %35, align 4, !dbg !2119, !tbaa !1015
  %342 = add i32 %341, 1518500249, !dbg !2119
  %343 = add i32 %342, %292, !dbg !2119
  %344 = add i32 %343, %332, !dbg !2119
  %345 = add i32 %344, %329, !dbg !2119
  tail call void @llvm.dbg.value(metadata i32 %345, i64 0, metadata !2017, metadata !796), !dbg !2040
  %346 = shl i32 %303, 30, !dbg !2119
  %347 = lshr i32 %303, 2, !dbg !2119
  %348 = or i32 %346, %347, !dbg !2119
  tail call void @llvm.dbg.value(metadata i32 %348, i64 0, metadata !2019, metadata !796), !dbg !2044
  %349 = shl i32 %345, 5, !dbg !2122
  %350 = lshr i32 %345, 27, !dbg !2122
  %351 = or i32 %349, %350, !dbg !2122
  %352 = xor i32 %348, %326, !dbg !2122
  %353 = and i32 %323, %352, !dbg !2122
  %354 = xor i32 %353, %326, !dbg !2122
  %355 = load i32, i32* %36, align 8, !dbg !2122, !tbaa !1015
  %356 = load i32, i32* %38, align 16, !dbg !2122, !tbaa !1015
  %357 = xor i32 %356, %355, !dbg !2122
  %358 = load i32, i32* %44, align 8, !dbg !2122, !tbaa !1015
  %359 = xor i32 %357, %358, !dbg !2122
  %360 = xor i32 %359, %299, !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 %360, i64 0, metadata !2021, metadata !796), !dbg !2118
  %361 = shl i32 %360, 1, !dbg !2122
  %362 = lshr i32 %360, 31, !dbg !2122
  %363 = or i32 %361, %362, !dbg !2122
  store i32 %363, i32* %36, align 8, !dbg !2122, !tbaa !1015
  %364 = add i32 %363, 1518500249, !dbg !2122
  %365 = add i32 %364, %306, !dbg !2122
  %366 = add i32 %365, %354, !dbg !2122
  %367 = add i32 %366, %351, !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 %367, i64 0, metadata !2016, metadata !796), !dbg !2038
  %368 = shl i32 %323, 30, !dbg !2122
  %369 = lshr i32 %323, 2, !dbg !2122
  %370 = or i32 %368, %369, !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 %370, i64 0, metadata !2018, metadata !796), !dbg !2042
  %371 = shl i32 %367, 5, !dbg !2125
  %372 = lshr i32 %367, 27, !dbg !2125
  %373 = or i32 %371, %372, !dbg !2125
  %374 = xor i32 %370, %348, !dbg !2125
  %375 = and i32 %345, %374, !dbg !2125
  %376 = xor i32 %375, %348, !dbg !2125
  %377 = load i32, i32* %39, align 4, !dbg !2125, !tbaa !1015
  %378 = xor i32 %377, %334, !dbg !2125
  %379 = load i32, i32* %45, align 4, !dbg !2125, !tbaa !1015
  %380 = xor i32 %378, %379, !dbg !2125
  %381 = xor i32 %380, %319, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %381, i64 0, metadata !2021, metadata !796), !dbg !2118
  %382 = shl i32 %381, 1, !dbg !2125
  %383 = lshr i32 %381, 31, !dbg !2125
  %384 = or i32 %382, %383, !dbg !2125
  store i32 %384, i32* %37, align 4, !dbg !2125, !tbaa !1015
  %385 = add i32 %384, 1518500249, !dbg !2125
  %386 = add i32 %385, %326, !dbg !2125
  %387 = add i32 %386, %376, !dbg !2125
  %388 = add i32 %387, %373, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %388, i64 0, metadata !2015, metadata !796), !dbg !2036
  %389 = shl i32 %345, 30, !dbg !2125
  %390 = lshr i32 %345, 2, !dbg !2125
  %391 = or i32 %389, %390, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %391, i64 0, metadata !2017, metadata !796), !dbg !2040
  %392 = shl i32 %388, 5, !dbg !2128
  %393 = lshr i32 %388, 27, !dbg !2128
  %394 = or i32 %392, %393, !dbg !2128
  %395 = xor i32 %391, %370, !dbg !2128
  %396 = xor i32 %395, %367, !dbg !2128
  %397 = load i32, i32* %40, align 8, !dbg !2128, !tbaa !1015
  %398 = xor i32 %397, %356, !dbg !2128
  %399 = load i32, i32* %46, align 16, !dbg !2128, !tbaa !1015
  %400 = xor i32 %398, %399, !dbg !2128
  %401 = xor i32 %400, %341, !dbg !2128
  tail call void @llvm.dbg.value(metadata i32 %401, i64 0, metadata !2021, metadata !796), !dbg !2118
  %402 = shl i32 %401, 1, !dbg !2128
  %403 = lshr i32 %401, 31, !dbg !2128
  %404 = or i32 %402, %403, !dbg !2128
  store i32 %404, i32* %38, align 16, !dbg !2128, !tbaa !1015
  %405 = add i32 %404, 1859775393, !dbg !2128
  %406 = add i32 %405, %348, !dbg !2128
  %407 = add i32 %406, %396, !dbg !2128
  %408 = add i32 %407, %394, !dbg !2128
  tail call void @llvm.dbg.value(metadata i32 %408, i64 0, metadata !2019, metadata !796), !dbg !2044
  %409 = shl i32 %367, 30, !dbg !2128
  %410 = lshr i32 %367, 2, !dbg !2128
  %411 = or i32 %409, %410, !dbg !2128
  tail call void @llvm.dbg.value(metadata i32 %411, i64 0, metadata !2016, metadata !796), !dbg !2038
  %412 = shl i32 %408, 5, !dbg !2131
  %413 = lshr i32 %408, 27, !dbg !2131
  %414 = or i32 %412, %413, !dbg !2131
  %415 = xor i32 %411, %391, !dbg !2131
  %416 = xor i32 %415, %388, !dbg !2131
  %417 = load i32, i32* %41, align 4, !dbg !2131, !tbaa !1015
  %418 = xor i32 %417, %377, !dbg !2131
  %419 = load i32, i32* %47, align 4, !dbg !2131, !tbaa !1015
  %420 = xor i32 %418, %419, !dbg !2131
  %421 = xor i32 %420, %363, !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %421, i64 0, metadata !2021, metadata !796), !dbg !2118
  %422 = shl i32 %421, 1, !dbg !2131
  %423 = lshr i32 %421, 31, !dbg !2131
  %424 = or i32 %422, %423, !dbg !2131
  store i32 %424, i32* %39, align 4, !dbg !2131, !tbaa !1015
  %425 = add i32 %424, 1859775393, !dbg !2131
  %426 = add i32 %425, %370, !dbg !2131
  %427 = add i32 %426, %416, !dbg !2131
  %428 = add i32 %427, %414, !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %428, i64 0, metadata !2018, metadata !796), !dbg !2042
  %429 = shl i32 %388, 30, !dbg !2131
  %430 = lshr i32 %388, 2, !dbg !2131
  %431 = or i32 %429, %430, !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %431, i64 0, metadata !2015, metadata !796), !dbg !2036
  %432 = shl i32 %428, 5, !dbg !2134
  %433 = lshr i32 %428, 27, !dbg !2134
  %434 = or i32 %432, %433, !dbg !2134
  %435 = xor i32 %431, %411, !dbg !2134
  %436 = xor i32 %435, %408, !dbg !2134
  %437 = load i32, i32* %42, align 16, !dbg !2134, !tbaa !1015
  %438 = xor i32 %437, %397, !dbg !2134
  %439 = load i32, i32* %48, align 8, !dbg !2134, !tbaa !1015
  %440 = xor i32 %438, %439, !dbg !2134
  %441 = xor i32 %440, %384, !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %441, i64 0, metadata !2021, metadata !796), !dbg !2118
  %442 = shl i32 %441, 1, !dbg !2134
  %443 = lshr i32 %441, 31, !dbg !2134
  %444 = or i32 %442, %443, !dbg !2134
  store i32 %444, i32* %40, align 8, !dbg !2134, !tbaa !1015
  %445 = add i32 %444, 1859775393, !dbg !2134
  %446 = add i32 %445, %391, !dbg !2134
  %447 = add i32 %446, %436, !dbg !2134
  %448 = add i32 %447, %434, !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %448, i64 0, metadata !2017, metadata !796), !dbg !2040
  %449 = shl i32 %408, 30, !dbg !2134
  %450 = lshr i32 %408, 2, !dbg !2134
  %451 = or i32 %449, %450, !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %451, i64 0, metadata !2019, metadata !796), !dbg !2044
  %452 = shl i32 %448, 5, !dbg !2137
  %453 = lshr i32 %448, 27, !dbg !2137
  %454 = or i32 %452, %453, !dbg !2137
  %455 = xor i32 %451, %431, !dbg !2137
  %456 = xor i32 %455, %428, !dbg !2137
  %457 = load i32, i32* %43, align 4, !dbg !2137, !tbaa !1015
  %458 = xor i32 %457, %417, !dbg !2137
  %459 = load i32, i32* %49, align 4, !dbg !2137, !tbaa !1015
  %460 = xor i32 %458, %459, !dbg !2137
  %461 = xor i32 %460, %404, !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %461, i64 0, metadata !2021, metadata !796), !dbg !2118
  %462 = shl i32 %461, 1, !dbg !2137
  %463 = lshr i32 %461, 31, !dbg !2137
  %464 = or i32 %462, %463, !dbg !2137
  store i32 %464, i32* %41, align 4, !dbg !2137, !tbaa !1015
  %465 = add i32 %464, 1859775393, !dbg !2137
  %466 = add i32 %465, %411, !dbg !2137
  %467 = add i32 %466, %456, !dbg !2137
  %468 = add i32 %467, %454, !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %468, i64 0, metadata !2016, metadata !796), !dbg !2038
  %469 = shl i32 %428, 30, !dbg !2137
  %470 = lshr i32 %428, 2, !dbg !2137
  %471 = or i32 %469, %470, !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %471, i64 0, metadata !2018, metadata !796), !dbg !2042
  %472 = shl i32 %468, 5, !dbg !2140
  %473 = lshr i32 %468, 27, !dbg !2140
  %474 = or i32 %472, %473, !dbg !2140
  %475 = xor i32 %471, %451, !dbg !2140
  %476 = xor i32 %475, %448, !dbg !2140
  %477 = load i32, i32* %44, align 8, !dbg !2140, !tbaa !1015
  %478 = xor i32 %477, %437, !dbg !2140
  %479 = load i32, i32* %34, align 16, !dbg !2140, !tbaa !1015
  %480 = xor i32 %478, %479, !dbg !2140
  %481 = xor i32 %480, %424, !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %481, i64 0, metadata !2021, metadata !796), !dbg !2118
  %482 = shl i32 %481, 1, !dbg !2140
  %483 = lshr i32 %481, 31, !dbg !2140
  %484 = or i32 %482, %483, !dbg !2140
  store i32 %484, i32* %42, align 16, !dbg !2140, !tbaa !1015
  %485 = add i32 %484, 1859775393, !dbg !2140
  %486 = add i32 %485, %431, !dbg !2140
  %487 = add i32 %486, %476, !dbg !2140
  %488 = add i32 %487, %474, !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %488, i64 0, metadata !2015, metadata !796), !dbg !2036
  %489 = shl i32 %448, 30, !dbg !2140
  %490 = lshr i32 %448, 2, !dbg !2140
  %491 = or i32 %489, %490, !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %491, i64 0, metadata !2017, metadata !796), !dbg !2040
  %492 = shl i32 %488, 5, !dbg !2143
  %493 = lshr i32 %488, 27, !dbg !2143
  %494 = or i32 %492, %493, !dbg !2143
  %495 = xor i32 %491, %471, !dbg !2143
  %496 = xor i32 %495, %468, !dbg !2143
  %497 = load i32, i32* %45, align 4, !dbg !2143, !tbaa !1015
  %498 = xor i32 %497, %457, !dbg !2143
  %499 = load i32, i32* %35, align 4, !dbg !2143, !tbaa !1015
  %500 = xor i32 %498, %499, !dbg !2143
  %501 = xor i32 %500, %444, !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %501, i64 0, metadata !2021, metadata !796), !dbg !2118
  %502 = shl i32 %501, 1, !dbg !2143
  %503 = lshr i32 %501, 31, !dbg !2143
  %504 = or i32 %502, %503, !dbg !2143
  store i32 %504, i32* %43, align 4, !dbg !2143, !tbaa !1015
  %505 = add i32 %504, 1859775393, !dbg !2143
  %506 = add i32 %505, %451, !dbg !2143
  %507 = add i32 %506, %496, !dbg !2143
  %508 = add i32 %507, %494, !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %508, i64 0, metadata !2019, metadata !796), !dbg !2044
  %509 = shl i32 %468, 30, !dbg !2143
  %510 = lshr i32 %468, 2, !dbg !2143
  %511 = or i32 %509, %510, !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %511, i64 0, metadata !2016, metadata !796), !dbg !2038
  %512 = shl i32 %508, 5, !dbg !2146
  %513 = lshr i32 %508, 27, !dbg !2146
  %514 = or i32 %512, %513, !dbg !2146
  %515 = xor i32 %511, %491, !dbg !2146
  %516 = xor i32 %515, %488, !dbg !2146
  %517 = load i32, i32* %46, align 16, !dbg !2146, !tbaa !1015
  %518 = xor i32 %517, %477, !dbg !2146
  %519 = load i32, i32* %36, align 8, !dbg !2146, !tbaa !1015
  %520 = xor i32 %518, %519, !dbg !2146
  %521 = xor i32 %520, %464, !dbg !2146
  tail call void @llvm.dbg.value(metadata i32 %521, i64 0, metadata !2021, metadata !796), !dbg !2118
  %522 = shl i32 %521, 1, !dbg !2146
  %523 = lshr i32 %521, 31, !dbg !2146
  %524 = or i32 %522, %523, !dbg !2146
  store i32 %524, i32* %44, align 8, !dbg !2146, !tbaa !1015
  %525 = add i32 %524, 1859775393, !dbg !2146
  %526 = add i32 %525, %471, !dbg !2146
  %527 = add i32 %526, %516, !dbg !2146
  %528 = add i32 %527, %514, !dbg !2146
  tail call void @llvm.dbg.value(metadata i32 %528, i64 0, metadata !2018, metadata !796), !dbg !2042
  %529 = shl i32 %488, 30, !dbg !2146
  %530 = lshr i32 %488, 2, !dbg !2146
  %531 = or i32 %529, %530, !dbg !2146
  tail call void @llvm.dbg.value(metadata i32 %531, i64 0, metadata !2015, metadata !796), !dbg !2036
  %532 = shl i32 %528, 5, !dbg !2149
  %533 = lshr i32 %528, 27, !dbg !2149
  %534 = or i32 %532, %533, !dbg !2149
  %535 = xor i32 %531, %511, !dbg !2149
  %536 = xor i32 %535, %508, !dbg !2149
  %537 = load i32, i32* %47, align 4, !dbg !2149, !tbaa !1015
  %538 = xor i32 %537, %497, !dbg !2149
  %539 = load i32, i32* %37, align 4, !dbg !2149, !tbaa !1015
  %540 = xor i32 %538, %539, !dbg !2149
  %541 = xor i32 %540, %484, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 %541, i64 0, metadata !2021, metadata !796), !dbg !2118
  %542 = shl i32 %541, 1, !dbg !2149
  %543 = lshr i32 %541, 31, !dbg !2149
  %544 = or i32 %542, %543, !dbg !2149
  store i32 %544, i32* %45, align 4, !dbg !2149, !tbaa !1015
  %545 = add i32 %544, 1859775393, !dbg !2149
  %546 = add i32 %545, %491, !dbg !2149
  %547 = add i32 %546, %536, !dbg !2149
  %548 = add i32 %547, %534, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 %548, i64 0, metadata !2017, metadata !796), !dbg !2040
  %549 = shl i32 %508, 30, !dbg !2149
  %550 = lshr i32 %508, 2, !dbg !2149
  %551 = or i32 %549, %550, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 %551, i64 0, metadata !2019, metadata !796), !dbg !2044
  %552 = shl i32 %548, 5, !dbg !2152
  %553 = lshr i32 %548, 27, !dbg !2152
  %554 = or i32 %552, %553, !dbg !2152
  %555 = xor i32 %551, %531, !dbg !2152
  %556 = xor i32 %555, %528, !dbg !2152
  %557 = load i32, i32* %48, align 8, !dbg !2152, !tbaa !1015
  %558 = xor i32 %557, %517, !dbg !2152
  %559 = load i32, i32* %38, align 16, !dbg !2152, !tbaa !1015
  %560 = xor i32 %558, %559, !dbg !2152
  %561 = xor i32 %560, %504, !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %561, i64 0, metadata !2021, metadata !796), !dbg !2118
  %562 = shl i32 %561, 1, !dbg !2152
  %563 = lshr i32 %561, 31, !dbg !2152
  %564 = or i32 %562, %563, !dbg !2152
  store i32 %564, i32* %46, align 16, !dbg !2152, !tbaa !1015
  %565 = add i32 %564, 1859775393, !dbg !2152
  %566 = add i32 %565, %511, !dbg !2152
  %567 = add i32 %566, %556, !dbg !2152
  %568 = add i32 %567, %554, !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %568, i64 0, metadata !2016, metadata !796), !dbg !2038
  %569 = shl i32 %528, 30, !dbg !2152
  %570 = lshr i32 %528, 2, !dbg !2152
  %571 = or i32 %569, %570, !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %571, i64 0, metadata !2018, metadata !796), !dbg !2042
  %572 = shl i32 %568, 5, !dbg !2155
  %573 = lshr i32 %568, 27, !dbg !2155
  %574 = or i32 %572, %573, !dbg !2155
  %575 = xor i32 %571, %551, !dbg !2155
  %576 = xor i32 %575, %548, !dbg !2155
  %577 = load i32, i32* %49, align 4, !dbg !2155, !tbaa !1015
  %578 = xor i32 %577, %537, !dbg !2155
  %579 = load i32, i32* %39, align 4, !dbg !2155, !tbaa !1015
  %580 = xor i32 %578, %579, !dbg !2155
  %581 = xor i32 %580, %524, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %581, i64 0, metadata !2021, metadata !796), !dbg !2118
  %582 = shl i32 %581, 1, !dbg !2155
  %583 = lshr i32 %581, 31, !dbg !2155
  %584 = or i32 %582, %583, !dbg !2155
  store i32 %584, i32* %47, align 4, !dbg !2155, !tbaa !1015
  %585 = add i32 %584, 1859775393, !dbg !2155
  %586 = add i32 %585, %531, !dbg !2155
  %587 = add i32 %586, %576, !dbg !2155
  %588 = add i32 %587, %574, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %588, i64 0, metadata !2015, metadata !796), !dbg !2036
  %589 = shl i32 %548, 30, !dbg !2155
  %590 = lshr i32 %548, 2, !dbg !2155
  %591 = or i32 %589, %590, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %591, i64 0, metadata !2017, metadata !796), !dbg !2040
  %592 = shl i32 %588, 5, !dbg !2158
  %593 = lshr i32 %588, 27, !dbg !2158
  %594 = or i32 %592, %593, !dbg !2158
  %595 = xor i32 %591, %571, !dbg !2158
  %596 = xor i32 %595, %568, !dbg !2158
  %597 = load i32, i32* %34, align 16, !dbg !2158, !tbaa !1015
  %598 = xor i32 %597, %557, !dbg !2158
  %599 = load i32, i32* %40, align 8, !dbg !2158, !tbaa !1015
  %600 = xor i32 %598, %599, !dbg !2158
  %601 = xor i32 %600, %544, !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %601, i64 0, metadata !2021, metadata !796), !dbg !2118
  %602 = shl i32 %601, 1, !dbg !2158
  %603 = lshr i32 %601, 31, !dbg !2158
  %604 = or i32 %602, %603, !dbg !2158
  store i32 %604, i32* %48, align 8, !dbg !2158, !tbaa !1015
  %605 = add i32 %604, 1859775393, !dbg !2158
  %606 = add i32 %605, %551, !dbg !2158
  %607 = add i32 %606, %596, !dbg !2158
  %608 = add i32 %607, %594, !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %608, i64 0, metadata !2019, metadata !796), !dbg !2044
  %609 = shl i32 %568, 30, !dbg !2158
  %610 = lshr i32 %568, 2, !dbg !2158
  %611 = or i32 %609, %610, !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %611, i64 0, metadata !2016, metadata !796), !dbg !2038
  %612 = shl i32 %608, 5, !dbg !2161
  %613 = lshr i32 %608, 27, !dbg !2161
  %614 = or i32 %612, %613, !dbg !2161
  %615 = xor i32 %611, %591, !dbg !2161
  %616 = xor i32 %615, %588, !dbg !2161
  %617 = load i32, i32* %35, align 4, !dbg !2161, !tbaa !1015
  %618 = xor i32 %617, %577, !dbg !2161
  %619 = load i32, i32* %41, align 4, !dbg !2161, !tbaa !1015
  %620 = xor i32 %618, %619, !dbg !2161
  %621 = xor i32 %620, %564, !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %621, i64 0, metadata !2021, metadata !796), !dbg !2118
  %622 = shl i32 %621, 1, !dbg !2161
  %623 = lshr i32 %621, 31, !dbg !2161
  %624 = or i32 %622, %623, !dbg !2161
  store i32 %624, i32* %49, align 4, !dbg !2161, !tbaa !1015
  %625 = add i32 %624, 1859775393, !dbg !2161
  %626 = add i32 %625, %571, !dbg !2161
  %627 = add i32 %626, %616, !dbg !2161
  %628 = add i32 %627, %614, !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %628, i64 0, metadata !2018, metadata !796), !dbg !2042
  %629 = shl i32 %588, 30, !dbg !2161
  %630 = lshr i32 %588, 2, !dbg !2161
  %631 = or i32 %629, %630, !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %631, i64 0, metadata !2015, metadata !796), !dbg !2036
  %632 = shl i32 %628, 5, !dbg !2164
  %633 = lshr i32 %628, 27, !dbg !2164
  %634 = or i32 %632, %633, !dbg !2164
  %635 = xor i32 %631, %611, !dbg !2164
  %636 = xor i32 %635, %608, !dbg !2164
  %637 = load i32, i32* %36, align 8, !dbg !2164, !tbaa !1015
  %638 = xor i32 %637, %597, !dbg !2164
  %639 = load i32, i32* %42, align 16, !dbg !2164, !tbaa !1015
  %640 = xor i32 %638, %639, !dbg !2164
  %641 = xor i32 %640, %584, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %641, i64 0, metadata !2021, metadata !796), !dbg !2118
  %642 = shl i32 %641, 1, !dbg !2164
  %643 = lshr i32 %641, 31, !dbg !2164
  %644 = or i32 %642, %643, !dbg !2164
  store i32 %644, i32* %34, align 16, !dbg !2164, !tbaa !1015
  %645 = add i32 %644, 1859775393, !dbg !2164
  %646 = add i32 %645, %591, !dbg !2164
  %647 = add i32 %646, %636, !dbg !2164
  %648 = add i32 %647, %634, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %648, i64 0, metadata !2017, metadata !796), !dbg !2040
  %649 = shl i32 %608, 30, !dbg !2164
  %650 = lshr i32 %608, 2, !dbg !2164
  %651 = or i32 %649, %650, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %651, i64 0, metadata !2019, metadata !796), !dbg !2044
  %652 = shl i32 %648, 5, !dbg !2167
  %653 = lshr i32 %648, 27, !dbg !2167
  %654 = or i32 %652, %653, !dbg !2167
  %655 = xor i32 %651, %631, !dbg !2167
  %656 = xor i32 %655, %628, !dbg !2167
  %657 = load i32, i32* %37, align 4, !dbg !2167, !tbaa !1015
  %658 = xor i32 %657, %617, !dbg !2167
  %659 = load i32, i32* %43, align 4, !dbg !2167, !tbaa !1015
  %660 = xor i32 %658, %659, !dbg !2167
  %661 = xor i32 %660, %604, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %661, i64 0, metadata !2021, metadata !796), !dbg !2118
  %662 = shl i32 %661, 1, !dbg !2167
  %663 = lshr i32 %661, 31, !dbg !2167
  %664 = or i32 %662, %663, !dbg !2167
  store i32 %664, i32* %35, align 4, !dbg !2167, !tbaa !1015
  %665 = add i32 %664, 1859775393, !dbg !2167
  %666 = add i32 %665, %611, !dbg !2167
  %667 = add i32 %666, %656, !dbg !2167
  %668 = add i32 %667, %654, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %668, i64 0, metadata !2016, metadata !796), !dbg !2038
  %669 = shl i32 %628, 30, !dbg !2167
  %670 = lshr i32 %628, 2, !dbg !2167
  %671 = or i32 %669, %670, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %671, i64 0, metadata !2018, metadata !796), !dbg !2042
  %672 = shl i32 %668, 5, !dbg !2170
  %673 = lshr i32 %668, 27, !dbg !2170
  %674 = or i32 %672, %673, !dbg !2170
  %675 = xor i32 %671, %651, !dbg !2170
  %676 = xor i32 %675, %648, !dbg !2170
  %677 = load i32, i32* %38, align 16, !dbg !2170, !tbaa !1015
  %678 = xor i32 %677, %637, !dbg !2170
  %679 = load i32, i32* %44, align 8, !dbg !2170, !tbaa !1015
  %680 = xor i32 %678, %679, !dbg !2170
  %681 = xor i32 %680, %624, !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %681, i64 0, metadata !2021, metadata !796), !dbg !2118
  %682 = shl i32 %681, 1, !dbg !2170
  %683 = lshr i32 %681, 31, !dbg !2170
  %684 = or i32 %682, %683, !dbg !2170
  store i32 %684, i32* %36, align 8, !dbg !2170, !tbaa !1015
  %685 = add i32 %684, 1859775393, !dbg !2170
  %686 = add i32 %685, %631, !dbg !2170
  %687 = add i32 %686, %676, !dbg !2170
  %688 = add i32 %687, %674, !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %688, i64 0, metadata !2015, metadata !796), !dbg !2036
  %689 = shl i32 %648, 30, !dbg !2170
  %690 = lshr i32 %648, 2, !dbg !2170
  %691 = or i32 %689, %690, !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %691, i64 0, metadata !2017, metadata !796), !dbg !2040
  %692 = shl i32 %688, 5, !dbg !2173
  %693 = lshr i32 %688, 27, !dbg !2173
  %694 = or i32 %692, %693, !dbg !2173
  %695 = xor i32 %691, %671, !dbg !2173
  %696 = xor i32 %695, %668, !dbg !2173
  %697 = load i32, i32* %39, align 4, !dbg !2173, !tbaa !1015
  %698 = xor i32 %697, %657, !dbg !2173
  %699 = load i32, i32* %45, align 4, !dbg !2173, !tbaa !1015
  %700 = xor i32 %698, %699, !dbg !2173
  %701 = xor i32 %700, %644, !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %701, i64 0, metadata !2021, metadata !796), !dbg !2118
  %702 = shl i32 %701, 1, !dbg !2173
  %703 = lshr i32 %701, 31, !dbg !2173
  %704 = or i32 %702, %703, !dbg !2173
  store i32 %704, i32* %37, align 4, !dbg !2173, !tbaa !1015
  %705 = add i32 %704, 1859775393, !dbg !2173
  %706 = add i32 %705, %651, !dbg !2173
  %707 = add i32 %706, %696, !dbg !2173
  %708 = add i32 %707, %694, !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %708, i64 0, metadata !2019, metadata !796), !dbg !2044
  %709 = shl i32 %668, 30, !dbg !2173
  %710 = lshr i32 %668, 2, !dbg !2173
  %711 = or i32 %709, %710, !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 %711, i64 0, metadata !2016, metadata !796), !dbg !2038
  %712 = shl i32 %708, 5, !dbg !2176
  %713 = lshr i32 %708, 27, !dbg !2176
  %714 = or i32 %712, %713, !dbg !2176
  %715 = xor i32 %711, %691, !dbg !2176
  %716 = xor i32 %715, %688, !dbg !2176
  %717 = load i32, i32* %40, align 8, !dbg !2176, !tbaa !1015
  %718 = xor i32 %717, %677, !dbg !2176
  %719 = load i32, i32* %46, align 16, !dbg !2176, !tbaa !1015
  %720 = xor i32 %718, %719, !dbg !2176
  %721 = xor i32 %720, %664, !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 %721, i64 0, metadata !2021, metadata !796), !dbg !2118
  %722 = shl i32 %721, 1, !dbg !2176
  %723 = lshr i32 %721, 31, !dbg !2176
  %724 = or i32 %722, %723, !dbg !2176
  store i32 %724, i32* %38, align 16, !dbg !2176, !tbaa !1015
  %725 = add i32 %724, 1859775393, !dbg !2176
  %726 = add i32 %725, %671, !dbg !2176
  %727 = add i32 %726, %716, !dbg !2176
  %728 = add i32 %727, %714, !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 %728, i64 0, metadata !2018, metadata !796), !dbg !2042
  %729 = shl i32 %688, 30, !dbg !2176
  %730 = lshr i32 %688, 2, !dbg !2176
  %731 = or i32 %729, %730, !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 %731, i64 0, metadata !2015, metadata !796), !dbg !2036
  %732 = shl i32 %728, 5, !dbg !2179
  %733 = lshr i32 %728, 27, !dbg !2179
  %734 = or i32 %732, %733, !dbg !2179
  %735 = xor i32 %731, %711, !dbg !2179
  %736 = xor i32 %735, %708, !dbg !2179
  %737 = load i32, i32* %41, align 4, !dbg !2179, !tbaa !1015
  %738 = xor i32 %737, %697, !dbg !2179
  %739 = load i32, i32* %47, align 4, !dbg !2179, !tbaa !1015
  %740 = xor i32 %738, %739, !dbg !2179
  %741 = xor i32 %740, %684, !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %741, i64 0, metadata !2021, metadata !796), !dbg !2118
  %742 = shl i32 %741, 1, !dbg !2179
  %743 = lshr i32 %741, 31, !dbg !2179
  %744 = or i32 %742, %743, !dbg !2179
  store i32 %744, i32* %39, align 4, !dbg !2179, !tbaa !1015
  %745 = add i32 %744, 1859775393, !dbg !2179
  %746 = add i32 %745, %691, !dbg !2179
  %747 = add i32 %746, %736, !dbg !2179
  %748 = add i32 %747, %734, !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %748, i64 0, metadata !2017, metadata !796), !dbg !2040
  %749 = shl i32 %708, 30, !dbg !2179
  %750 = lshr i32 %708, 2, !dbg !2179
  %751 = or i32 %749, %750, !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %751, i64 0, metadata !2019, metadata !796), !dbg !2044
  %752 = shl i32 %748, 5, !dbg !2182
  %753 = lshr i32 %748, 27, !dbg !2182
  %754 = or i32 %752, %753, !dbg !2182
  %755 = xor i32 %751, %731, !dbg !2182
  %756 = xor i32 %755, %728, !dbg !2182
  %757 = load i32, i32* %42, align 16, !dbg !2182, !tbaa !1015
  %758 = xor i32 %757, %717, !dbg !2182
  %759 = load i32, i32* %48, align 8, !dbg !2182, !tbaa !1015
  %760 = xor i32 %758, %759, !dbg !2182
  %761 = xor i32 %760, %704, !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %761, i64 0, metadata !2021, metadata !796), !dbg !2118
  %762 = shl i32 %761, 1, !dbg !2182
  %763 = lshr i32 %761, 31, !dbg !2182
  %764 = or i32 %762, %763, !dbg !2182
  store i32 %764, i32* %40, align 8, !dbg !2182, !tbaa !1015
  %765 = add i32 %764, 1859775393, !dbg !2182
  %766 = add i32 %765, %711, !dbg !2182
  %767 = add i32 %766, %756, !dbg !2182
  %768 = add i32 %767, %754, !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %768, i64 0, metadata !2016, metadata !796), !dbg !2038
  %769 = shl i32 %728, 30, !dbg !2182
  %770 = lshr i32 %728, 2, !dbg !2182
  %771 = or i32 %769, %770, !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %771, i64 0, metadata !2018, metadata !796), !dbg !2042
  %772 = shl i32 %768, 5, !dbg !2185
  %773 = lshr i32 %768, 27, !dbg !2185
  %774 = or i32 %772, %773, !dbg !2185
  %775 = xor i32 %771, %751, !dbg !2185
  %776 = xor i32 %775, %748, !dbg !2185
  %777 = load i32, i32* %43, align 4, !dbg !2185, !tbaa !1015
  %778 = xor i32 %777, %737, !dbg !2185
  %779 = load i32, i32* %49, align 4, !dbg !2185, !tbaa !1015
  %780 = xor i32 %778, %779, !dbg !2185
  %781 = xor i32 %780, %724, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %781, i64 0, metadata !2021, metadata !796), !dbg !2118
  %782 = shl i32 %781, 1, !dbg !2185
  %783 = lshr i32 %781, 31, !dbg !2185
  %784 = or i32 %782, %783, !dbg !2185
  store i32 %784, i32* %41, align 4, !dbg !2185, !tbaa !1015
  %785 = add i32 %784, 1859775393, !dbg !2185
  %786 = add i32 %785, %731, !dbg !2185
  %787 = add i32 %786, %776, !dbg !2185
  %788 = add i32 %787, %774, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %788, i64 0, metadata !2015, metadata !796), !dbg !2036
  %789 = shl i32 %748, 30, !dbg !2185
  %790 = lshr i32 %748, 2, !dbg !2185
  %791 = or i32 %789, %790, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %791, i64 0, metadata !2017, metadata !796), !dbg !2040
  %792 = shl i32 %788, 5, !dbg !2188
  %793 = lshr i32 %788, 27, !dbg !2188
  %794 = or i32 %792, %793, !dbg !2188
  %795 = and i32 %768, %791, !dbg !2188
  %796 = or i32 %768, %791, !dbg !2188
  %797 = and i32 %796, %771, !dbg !2188
  %798 = or i32 %797, %795, !dbg !2188
  %799 = load i32, i32* %44, align 8, !dbg !2188, !tbaa !1015
  %800 = xor i32 %799, %757, !dbg !2188
  %801 = load i32, i32* %34, align 16, !dbg !2188, !tbaa !1015
  %802 = xor i32 %800, %801, !dbg !2188
  %803 = xor i32 %802, %744, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %803, i64 0, metadata !2021, metadata !796), !dbg !2118
  %804 = shl i32 %803, 1, !dbg !2188
  %805 = lshr i32 %803, 31, !dbg !2188
  %806 = or i32 %804, %805, !dbg !2188
  store i32 %806, i32* %42, align 16, !dbg !2188, !tbaa !1015
  %807 = add i32 %806, -1894007588, !dbg !2188
  %808 = add i32 %807, %751, !dbg !2188
  %809 = add i32 %808, %798, !dbg !2188
  %810 = add i32 %809, %794, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %810, i64 0, metadata !2019, metadata !796), !dbg !2044
  %811 = shl i32 %768, 30, !dbg !2188
  %812 = lshr i32 %768, 2, !dbg !2188
  %813 = or i32 %811, %812, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %813, i64 0, metadata !2016, metadata !796), !dbg !2038
  %814 = shl i32 %810, 5, !dbg !2191
  %815 = lshr i32 %810, 27, !dbg !2191
  %816 = or i32 %814, %815, !dbg !2191
  %817 = and i32 %788, %813, !dbg !2191
  %818 = or i32 %788, %813, !dbg !2191
  %819 = and i32 %818, %791, !dbg !2191
  %820 = or i32 %819, %817, !dbg !2191
  %821 = load i32, i32* %45, align 4, !dbg !2191, !tbaa !1015
  %822 = xor i32 %821, %777, !dbg !2191
  %823 = load i32, i32* %35, align 4, !dbg !2191, !tbaa !1015
  %824 = xor i32 %822, %823, !dbg !2191
  %825 = xor i32 %824, %764, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 %825, i64 0, metadata !2021, metadata !796), !dbg !2118
  %826 = shl i32 %825, 1, !dbg !2191
  %827 = lshr i32 %825, 31, !dbg !2191
  %828 = or i32 %826, %827, !dbg !2191
  store i32 %828, i32* %43, align 4, !dbg !2191, !tbaa !1015
  %829 = add i32 %828, -1894007588, !dbg !2191
  %830 = add i32 %829, %771, !dbg !2191
  %831 = add i32 %830, %820, !dbg !2191
  %832 = add i32 %831, %816, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 %832, i64 0, metadata !2018, metadata !796), !dbg !2042
  %833 = shl i32 %788, 30, !dbg !2191
  %834 = lshr i32 %788, 2, !dbg !2191
  %835 = or i32 %833, %834, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 %835, i64 0, metadata !2015, metadata !796), !dbg !2036
  %836 = shl i32 %832, 5, !dbg !2194
  %837 = lshr i32 %832, 27, !dbg !2194
  %838 = or i32 %836, %837, !dbg !2194
  %839 = and i32 %810, %835, !dbg !2194
  %840 = or i32 %810, %835, !dbg !2194
  %841 = and i32 %840, %813, !dbg !2194
  %842 = or i32 %841, %839, !dbg !2194
  %843 = load i32, i32* %46, align 16, !dbg !2194, !tbaa !1015
  %844 = xor i32 %843, %799, !dbg !2194
  %845 = load i32, i32* %36, align 8, !dbg !2194, !tbaa !1015
  %846 = xor i32 %844, %845, !dbg !2194
  %847 = xor i32 %846, %784, !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %847, i64 0, metadata !2021, metadata !796), !dbg !2118
  %848 = shl i32 %847, 1, !dbg !2194
  %849 = lshr i32 %847, 31, !dbg !2194
  %850 = or i32 %848, %849, !dbg !2194
  store i32 %850, i32* %44, align 8, !dbg !2194, !tbaa !1015
  %851 = add i32 %850, -1894007588, !dbg !2194
  %852 = add i32 %851, %791, !dbg !2194
  %853 = add i32 %852, %842, !dbg !2194
  %854 = add i32 %853, %838, !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %854, i64 0, metadata !2017, metadata !796), !dbg !2040
  %855 = shl i32 %810, 30, !dbg !2194
  %856 = lshr i32 %810, 2, !dbg !2194
  %857 = or i32 %855, %856, !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %857, i64 0, metadata !2019, metadata !796), !dbg !2044
  %858 = shl i32 %854, 5, !dbg !2197
  %859 = lshr i32 %854, 27, !dbg !2197
  %860 = or i32 %858, %859, !dbg !2197
  %861 = and i32 %832, %857, !dbg !2197
  %862 = or i32 %832, %857, !dbg !2197
  %863 = and i32 %862, %835, !dbg !2197
  %864 = or i32 %863, %861, !dbg !2197
  %865 = load i32, i32* %47, align 4, !dbg !2197, !tbaa !1015
  %866 = xor i32 %865, %821, !dbg !2197
  %867 = load i32, i32* %37, align 4, !dbg !2197, !tbaa !1015
  %868 = xor i32 %866, %867, !dbg !2197
  %869 = xor i32 %868, %806, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %869, i64 0, metadata !2021, metadata !796), !dbg !2118
  %870 = shl i32 %869, 1, !dbg !2197
  %871 = lshr i32 %869, 31, !dbg !2197
  %872 = or i32 %870, %871, !dbg !2197
  store i32 %872, i32* %45, align 4, !dbg !2197, !tbaa !1015
  %873 = add i32 %872, -1894007588, !dbg !2197
  %874 = add i32 %873, %813, !dbg !2197
  %875 = add i32 %874, %864, !dbg !2197
  %876 = add i32 %875, %860, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %876, i64 0, metadata !2016, metadata !796), !dbg !2038
  %877 = shl i32 %832, 30, !dbg !2197
  %878 = lshr i32 %832, 2, !dbg !2197
  %879 = or i32 %877, %878, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %879, i64 0, metadata !2018, metadata !796), !dbg !2042
  %880 = shl i32 %876, 5, !dbg !2200
  %881 = lshr i32 %876, 27, !dbg !2200
  %882 = or i32 %880, %881, !dbg !2200
  %883 = and i32 %854, %879, !dbg !2200
  %884 = or i32 %854, %879, !dbg !2200
  %885 = and i32 %884, %857, !dbg !2200
  %886 = or i32 %885, %883, !dbg !2200
  %887 = load i32, i32* %48, align 8, !dbg !2200, !tbaa !1015
  %888 = xor i32 %887, %843, !dbg !2200
  %889 = load i32, i32* %38, align 16, !dbg !2200, !tbaa !1015
  %890 = xor i32 %888, %889, !dbg !2200
  %891 = xor i32 %890, %828, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %891, i64 0, metadata !2021, metadata !796), !dbg !2118
  %892 = shl i32 %891, 1, !dbg !2200
  %893 = lshr i32 %891, 31, !dbg !2200
  %894 = or i32 %892, %893, !dbg !2200
  store i32 %894, i32* %46, align 16, !dbg !2200, !tbaa !1015
  %895 = add i32 %894, -1894007588, !dbg !2200
  %896 = add i32 %895, %835, !dbg !2200
  %897 = add i32 %896, %886, !dbg !2200
  %898 = add i32 %897, %882, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %898, i64 0, metadata !2015, metadata !796), !dbg !2036
  %899 = shl i32 %854, 30, !dbg !2200
  %900 = lshr i32 %854, 2, !dbg !2200
  %901 = or i32 %899, %900, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %901, i64 0, metadata !2017, metadata !796), !dbg !2040
  %902 = shl i32 %898, 5, !dbg !2203
  %903 = lshr i32 %898, 27, !dbg !2203
  %904 = or i32 %902, %903, !dbg !2203
  %905 = and i32 %876, %901, !dbg !2203
  %906 = or i32 %876, %901, !dbg !2203
  %907 = and i32 %906, %879, !dbg !2203
  %908 = or i32 %907, %905, !dbg !2203
  %909 = load i32, i32* %49, align 4, !dbg !2203, !tbaa !1015
  %910 = xor i32 %909, %865, !dbg !2203
  %911 = load i32, i32* %39, align 4, !dbg !2203, !tbaa !1015
  %912 = xor i32 %910, %911, !dbg !2203
  %913 = xor i32 %912, %850, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %913, i64 0, metadata !2021, metadata !796), !dbg !2118
  %914 = shl i32 %913, 1, !dbg !2203
  %915 = lshr i32 %913, 31, !dbg !2203
  %916 = or i32 %914, %915, !dbg !2203
  store i32 %916, i32* %47, align 4, !dbg !2203, !tbaa !1015
  %917 = add i32 %916, -1894007588, !dbg !2203
  %918 = add i32 %917, %857, !dbg !2203
  %919 = add i32 %918, %908, !dbg !2203
  %920 = add i32 %919, %904, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %920, i64 0, metadata !2019, metadata !796), !dbg !2044
  %921 = shl i32 %876, 30, !dbg !2203
  %922 = lshr i32 %876, 2, !dbg !2203
  %923 = or i32 %921, %922, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %923, i64 0, metadata !2016, metadata !796), !dbg !2038
  %924 = shl i32 %920, 5, !dbg !2206
  %925 = lshr i32 %920, 27, !dbg !2206
  %926 = or i32 %924, %925, !dbg !2206
  %927 = and i32 %898, %923, !dbg !2206
  %928 = or i32 %898, %923, !dbg !2206
  %929 = and i32 %928, %901, !dbg !2206
  %930 = or i32 %929, %927, !dbg !2206
  %931 = load i32, i32* %34, align 16, !dbg !2206, !tbaa !1015
  %932 = xor i32 %931, %887, !dbg !2206
  %933 = load i32, i32* %40, align 8, !dbg !2206, !tbaa !1015
  %934 = xor i32 %932, %933, !dbg !2206
  %935 = xor i32 %934, %872, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 %935, i64 0, metadata !2021, metadata !796), !dbg !2118
  %936 = shl i32 %935, 1, !dbg !2206
  %937 = lshr i32 %935, 31, !dbg !2206
  %938 = or i32 %936, %937, !dbg !2206
  store i32 %938, i32* %48, align 8, !dbg !2206, !tbaa !1015
  %939 = add i32 %938, -1894007588, !dbg !2206
  %940 = add i32 %939, %879, !dbg !2206
  %941 = add i32 %940, %930, !dbg !2206
  %942 = add i32 %941, %926, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 %942, i64 0, metadata !2018, metadata !796), !dbg !2042
  %943 = shl i32 %898, 30, !dbg !2206
  %944 = lshr i32 %898, 2, !dbg !2206
  %945 = or i32 %943, %944, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 %945, i64 0, metadata !2015, metadata !796), !dbg !2036
  %946 = shl i32 %942, 5, !dbg !2209
  %947 = lshr i32 %942, 27, !dbg !2209
  %948 = or i32 %946, %947, !dbg !2209
  %949 = and i32 %920, %945, !dbg !2209
  %950 = or i32 %920, %945, !dbg !2209
  %951 = and i32 %950, %923, !dbg !2209
  %952 = or i32 %951, %949, !dbg !2209
  %953 = load i32, i32* %35, align 4, !dbg !2209, !tbaa !1015
  %954 = xor i32 %953, %909, !dbg !2209
  %955 = load i32, i32* %41, align 4, !dbg !2209, !tbaa !1015
  %956 = xor i32 %954, %955, !dbg !2209
  %957 = xor i32 %956, %894, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %957, i64 0, metadata !2021, metadata !796), !dbg !2118
  %958 = shl i32 %957, 1, !dbg !2209
  %959 = lshr i32 %957, 31, !dbg !2209
  %960 = or i32 %958, %959, !dbg !2209
  store i32 %960, i32* %49, align 4, !dbg !2209, !tbaa !1015
  %961 = add i32 %960, -1894007588, !dbg !2209
  %962 = add i32 %961, %901, !dbg !2209
  %963 = add i32 %962, %952, !dbg !2209
  %964 = add i32 %963, %948, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %964, i64 0, metadata !2017, metadata !796), !dbg !2040
  %965 = shl i32 %920, 30, !dbg !2209
  %966 = lshr i32 %920, 2, !dbg !2209
  %967 = or i32 %965, %966, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %967, i64 0, metadata !2019, metadata !796), !dbg !2044
  %968 = shl i32 %964, 5, !dbg !2212
  %969 = lshr i32 %964, 27, !dbg !2212
  %970 = or i32 %968, %969, !dbg !2212
  %971 = and i32 %942, %967, !dbg !2212
  %972 = or i32 %942, %967, !dbg !2212
  %973 = and i32 %972, %945, !dbg !2212
  %974 = or i32 %973, %971, !dbg !2212
  %975 = load i32, i32* %36, align 8, !dbg !2212, !tbaa !1015
  %976 = xor i32 %975, %931, !dbg !2212
  %977 = load i32, i32* %42, align 16, !dbg !2212, !tbaa !1015
  %978 = xor i32 %976, %977, !dbg !2212
  %979 = xor i32 %978, %916, !dbg !2212
  tail call void @llvm.dbg.value(metadata i32 %979, i64 0, metadata !2021, metadata !796), !dbg !2118
  %980 = shl i32 %979, 1, !dbg !2212
  %981 = lshr i32 %979, 31, !dbg !2212
  %982 = or i32 %980, %981, !dbg !2212
  store i32 %982, i32* %34, align 16, !dbg !2212, !tbaa !1015
  %983 = add i32 %982, -1894007588, !dbg !2212
  %984 = add i32 %983, %923, !dbg !2212
  %985 = add i32 %984, %974, !dbg !2212
  %986 = add i32 %985, %970, !dbg !2212
  tail call void @llvm.dbg.value(metadata i32 %986, i64 0, metadata !2016, metadata !796), !dbg !2038
  %987 = shl i32 %942, 30, !dbg !2212
  %988 = lshr i32 %942, 2, !dbg !2212
  %989 = or i32 %987, %988, !dbg !2212
  tail call void @llvm.dbg.value(metadata i32 %989, i64 0, metadata !2018, metadata !796), !dbg !2042
  %990 = shl i32 %986, 5, !dbg !2215
  %991 = lshr i32 %986, 27, !dbg !2215
  %992 = or i32 %990, %991, !dbg !2215
  %993 = and i32 %964, %989, !dbg !2215
  %994 = or i32 %964, %989, !dbg !2215
  %995 = and i32 %994, %967, !dbg !2215
  %996 = or i32 %995, %993, !dbg !2215
  %997 = load i32, i32* %37, align 4, !dbg !2215, !tbaa !1015
  %998 = xor i32 %997, %953, !dbg !2215
  %999 = load i32, i32* %43, align 4, !dbg !2215, !tbaa !1015
  %1000 = xor i32 %998, %999, !dbg !2215
  %1001 = xor i32 %1000, %938, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %1001, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1002 = shl i32 %1001, 1, !dbg !2215
  %1003 = lshr i32 %1001, 31, !dbg !2215
  %1004 = or i32 %1002, %1003, !dbg !2215
  store i32 %1004, i32* %35, align 4, !dbg !2215, !tbaa !1015
  %1005 = add i32 %1004, -1894007588, !dbg !2215
  %1006 = add i32 %1005, %945, !dbg !2215
  %1007 = add i32 %1006, %996, !dbg !2215
  %1008 = add i32 %1007, %992, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %1008, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1009 = shl i32 %964, 30, !dbg !2215
  %1010 = lshr i32 %964, 2, !dbg !2215
  %1011 = or i32 %1009, %1010, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %1011, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1012 = shl i32 %1008, 5, !dbg !2218
  %1013 = lshr i32 %1008, 27, !dbg !2218
  %1014 = or i32 %1012, %1013, !dbg !2218
  %1015 = and i32 %986, %1011, !dbg !2218
  %1016 = or i32 %986, %1011, !dbg !2218
  %1017 = and i32 %1016, %989, !dbg !2218
  %1018 = or i32 %1017, %1015, !dbg !2218
  %1019 = load i32, i32* %38, align 16, !dbg !2218, !tbaa !1015
  %1020 = xor i32 %1019, %975, !dbg !2218
  %1021 = load i32, i32* %44, align 8, !dbg !2218, !tbaa !1015
  %1022 = xor i32 %1020, %1021, !dbg !2218
  %1023 = xor i32 %1022, %960, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %1023, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1024 = shl i32 %1023, 1, !dbg !2218
  %1025 = lshr i32 %1023, 31, !dbg !2218
  %1026 = or i32 %1024, %1025, !dbg !2218
  store i32 %1026, i32* %36, align 8, !dbg !2218, !tbaa !1015
  %1027 = add i32 %1026, -1894007588, !dbg !2218
  %1028 = add i32 %1027, %967, !dbg !2218
  %1029 = add i32 %1028, %1018, !dbg !2218
  %1030 = add i32 %1029, %1014, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %1030, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1031 = shl i32 %986, 30, !dbg !2218
  %1032 = lshr i32 %986, 2, !dbg !2218
  %1033 = or i32 %1031, %1032, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %1033, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1034 = shl i32 %1030, 5, !dbg !2221
  %1035 = lshr i32 %1030, 27, !dbg !2221
  %1036 = or i32 %1034, %1035, !dbg !2221
  %1037 = and i32 %1008, %1033, !dbg !2221
  %1038 = or i32 %1008, %1033, !dbg !2221
  %1039 = and i32 %1038, %1011, !dbg !2221
  %1040 = or i32 %1039, %1037, !dbg !2221
  %1041 = load i32, i32* %39, align 4, !dbg !2221, !tbaa !1015
  %1042 = xor i32 %1041, %997, !dbg !2221
  %1043 = load i32, i32* %45, align 4, !dbg !2221, !tbaa !1015
  %1044 = xor i32 %1042, %1043, !dbg !2221
  %1045 = xor i32 %1044, %982, !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %1045, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1046 = shl i32 %1045, 1, !dbg !2221
  %1047 = lshr i32 %1045, 31, !dbg !2221
  %1048 = or i32 %1046, %1047, !dbg !2221
  store i32 %1048, i32* %37, align 4, !dbg !2221, !tbaa !1015
  %1049 = add i32 %1048, -1894007588, !dbg !2221
  %1050 = add i32 %1049, %989, !dbg !2221
  %1051 = add i32 %1050, %1040, !dbg !2221
  %1052 = add i32 %1051, %1036, !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %1052, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1053 = shl i32 %1008, 30, !dbg !2221
  %1054 = lshr i32 %1008, 2, !dbg !2221
  %1055 = or i32 %1053, %1054, !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %1055, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1056 = shl i32 %1052, 5, !dbg !2224
  %1057 = lshr i32 %1052, 27, !dbg !2224
  %1058 = or i32 %1056, %1057, !dbg !2224
  %1059 = and i32 %1030, %1055, !dbg !2224
  %1060 = or i32 %1030, %1055, !dbg !2224
  %1061 = and i32 %1060, %1033, !dbg !2224
  %1062 = or i32 %1061, %1059, !dbg !2224
  %1063 = load i32, i32* %40, align 8, !dbg !2224, !tbaa !1015
  %1064 = xor i32 %1063, %1019, !dbg !2224
  %1065 = load i32, i32* %46, align 16, !dbg !2224, !tbaa !1015
  %1066 = xor i32 %1064, %1065, !dbg !2224
  %1067 = xor i32 %1066, %1004, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 %1067, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1068 = shl i32 %1067, 1, !dbg !2224
  %1069 = lshr i32 %1067, 31, !dbg !2224
  %1070 = or i32 %1068, %1069, !dbg !2224
  store i32 %1070, i32* %38, align 16, !dbg !2224, !tbaa !1015
  %1071 = add i32 %1070, -1894007588, !dbg !2224
  %1072 = add i32 %1071, %1011, !dbg !2224
  %1073 = add i32 %1072, %1062, !dbg !2224
  %1074 = add i32 %1073, %1058, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 %1074, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1075 = shl i32 %1030, 30, !dbg !2224
  %1076 = lshr i32 %1030, 2, !dbg !2224
  %1077 = or i32 %1075, %1076, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 %1077, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1078 = shl i32 %1074, 5, !dbg !2227
  %1079 = lshr i32 %1074, 27, !dbg !2227
  %1080 = or i32 %1078, %1079, !dbg !2227
  %1081 = and i32 %1052, %1077, !dbg !2227
  %1082 = or i32 %1052, %1077, !dbg !2227
  %1083 = and i32 %1082, %1055, !dbg !2227
  %1084 = or i32 %1083, %1081, !dbg !2227
  %1085 = load i32, i32* %41, align 4, !dbg !2227, !tbaa !1015
  %1086 = xor i32 %1085, %1041, !dbg !2227
  %1087 = load i32, i32* %47, align 4, !dbg !2227, !tbaa !1015
  %1088 = xor i32 %1086, %1087, !dbg !2227
  %1089 = xor i32 %1088, %1026, !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %1089, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1090 = shl i32 %1089, 1, !dbg !2227
  %1091 = lshr i32 %1089, 31, !dbg !2227
  %1092 = or i32 %1090, %1091, !dbg !2227
  store i32 %1092, i32* %39, align 4, !dbg !2227, !tbaa !1015
  %1093 = add i32 %1092, -1894007588, !dbg !2227
  %1094 = add i32 %1093, %1033, !dbg !2227
  %1095 = add i32 %1094, %1084, !dbg !2227
  %1096 = add i32 %1095, %1080, !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %1096, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1097 = shl i32 %1052, 30, !dbg !2227
  %1098 = lshr i32 %1052, 2, !dbg !2227
  %1099 = or i32 %1097, %1098, !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %1099, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1100 = shl i32 %1096, 5, !dbg !2230
  %1101 = lshr i32 %1096, 27, !dbg !2230
  %1102 = or i32 %1100, %1101, !dbg !2230
  %1103 = and i32 %1074, %1099, !dbg !2230
  %1104 = or i32 %1074, %1099, !dbg !2230
  %1105 = and i32 %1104, %1077, !dbg !2230
  %1106 = or i32 %1105, %1103, !dbg !2230
  %1107 = load i32, i32* %42, align 16, !dbg !2230, !tbaa !1015
  %1108 = xor i32 %1107, %1063, !dbg !2230
  %1109 = load i32, i32* %48, align 8, !dbg !2230, !tbaa !1015
  %1110 = xor i32 %1108, %1109, !dbg !2230
  %1111 = xor i32 %1110, %1048, !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %1111, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1112 = shl i32 %1111, 1, !dbg !2230
  %1113 = lshr i32 %1111, 31, !dbg !2230
  %1114 = or i32 %1112, %1113, !dbg !2230
  store i32 %1114, i32* %40, align 8, !dbg !2230, !tbaa !1015
  %1115 = add i32 %1114, -1894007588, !dbg !2230
  %1116 = add i32 %1115, %1055, !dbg !2230
  %1117 = add i32 %1116, %1106, !dbg !2230
  %1118 = add i32 %1117, %1102, !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %1118, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1119 = shl i32 %1074, 30, !dbg !2230
  %1120 = lshr i32 %1074, 2, !dbg !2230
  %1121 = or i32 %1119, %1120, !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %1121, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1122 = shl i32 %1118, 5, !dbg !2233
  %1123 = lshr i32 %1118, 27, !dbg !2233
  %1124 = or i32 %1122, %1123, !dbg !2233
  %1125 = and i32 %1096, %1121, !dbg !2233
  %1126 = or i32 %1096, %1121, !dbg !2233
  %1127 = and i32 %1126, %1099, !dbg !2233
  %1128 = or i32 %1127, %1125, !dbg !2233
  %1129 = load i32, i32* %43, align 4, !dbg !2233, !tbaa !1015
  %1130 = xor i32 %1129, %1085, !dbg !2233
  %1131 = load i32, i32* %49, align 4, !dbg !2233, !tbaa !1015
  %1132 = xor i32 %1130, %1131, !dbg !2233
  %1133 = xor i32 %1132, %1070, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %1133, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1134 = shl i32 %1133, 1, !dbg !2233
  %1135 = lshr i32 %1133, 31, !dbg !2233
  %1136 = or i32 %1134, %1135, !dbg !2233
  store i32 %1136, i32* %41, align 4, !dbg !2233, !tbaa !1015
  %1137 = add i32 %1136, -1894007588, !dbg !2233
  %1138 = add i32 %1137, %1077, !dbg !2233
  %1139 = add i32 %1138, %1128, !dbg !2233
  %1140 = add i32 %1139, %1124, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %1140, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1141 = shl i32 %1096, 30, !dbg !2233
  %1142 = lshr i32 %1096, 2, !dbg !2233
  %1143 = or i32 %1141, %1142, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %1143, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1144 = shl i32 %1140, 5, !dbg !2236
  %1145 = lshr i32 %1140, 27, !dbg !2236
  %1146 = or i32 %1144, %1145, !dbg !2236
  %1147 = and i32 %1118, %1143, !dbg !2236
  %1148 = or i32 %1118, %1143, !dbg !2236
  %1149 = and i32 %1148, %1121, !dbg !2236
  %1150 = or i32 %1149, %1147, !dbg !2236
  %1151 = load i32, i32* %44, align 8, !dbg !2236, !tbaa !1015
  %1152 = xor i32 %1151, %1107, !dbg !2236
  %1153 = load i32, i32* %34, align 16, !dbg !2236, !tbaa !1015
  %1154 = xor i32 %1152, %1153, !dbg !2236
  %1155 = xor i32 %1154, %1092, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %1155, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1156 = shl i32 %1155, 1, !dbg !2236
  %1157 = lshr i32 %1155, 31, !dbg !2236
  %1158 = or i32 %1156, %1157, !dbg !2236
  store i32 %1158, i32* %42, align 16, !dbg !2236, !tbaa !1015
  %1159 = add i32 %1158, -1894007588, !dbg !2236
  %1160 = add i32 %1159, %1099, !dbg !2236
  %1161 = add i32 %1160, %1150, !dbg !2236
  %1162 = add i32 %1161, %1146, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %1162, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1163 = shl i32 %1118, 30, !dbg !2236
  %1164 = lshr i32 %1118, 2, !dbg !2236
  %1165 = or i32 %1163, %1164, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %1165, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1166 = shl i32 %1162, 5, !dbg !2239
  %1167 = lshr i32 %1162, 27, !dbg !2239
  %1168 = or i32 %1166, %1167, !dbg !2239
  %1169 = and i32 %1140, %1165, !dbg !2239
  %1170 = or i32 %1140, %1165, !dbg !2239
  %1171 = and i32 %1170, %1143, !dbg !2239
  %1172 = or i32 %1171, %1169, !dbg !2239
  %1173 = load i32, i32* %45, align 4, !dbg !2239, !tbaa !1015
  %1174 = xor i32 %1173, %1129, !dbg !2239
  %1175 = load i32, i32* %35, align 4, !dbg !2239, !tbaa !1015
  %1176 = xor i32 %1174, %1175, !dbg !2239
  %1177 = xor i32 %1176, %1114, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 %1177, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1178 = shl i32 %1177, 1, !dbg !2239
  %1179 = lshr i32 %1177, 31, !dbg !2239
  %1180 = or i32 %1178, %1179, !dbg !2239
  store i32 %1180, i32* %43, align 4, !dbg !2239, !tbaa !1015
  %1181 = add i32 %1180, -1894007588, !dbg !2239
  %1182 = add i32 %1181, %1121, !dbg !2239
  %1183 = add i32 %1182, %1172, !dbg !2239
  %1184 = add i32 %1183, %1168, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 %1184, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1185 = shl i32 %1140, 30, !dbg !2239
  %1186 = lshr i32 %1140, 2, !dbg !2239
  %1187 = or i32 %1185, %1186, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 %1187, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1188 = shl i32 %1184, 5, !dbg !2242
  %1189 = lshr i32 %1184, 27, !dbg !2242
  %1190 = or i32 %1188, %1189, !dbg !2242
  %1191 = and i32 %1162, %1187, !dbg !2242
  %1192 = or i32 %1162, %1187, !dbg !2242
  %1193 = and i32 %1192, %1165, !dbg !2242
  %1194 = or i32 %1193, %1191, !dbg !2242
  %1195 = load i32, i32* %46, align 16, !dbg !2242, !tbaa !1015
  %1196 = xor i32 %1195, %1151, !dbg !2242
  %1197 = load i32, i32* %36, align 8, !dbg !2242, !tbaa !1015
  %1198 = xor i32 %1196, %1197, !dbg !2242
  %1199 = xor i32 %1198, %1136, !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 %1199, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1200 = shl i32 %1199, 1, !dbg !2242
  %1201 = lshr i32 %1199, 31, !dbg !2242
  %1202 = or i32 %1200, %1201, !dbg !2242
  store i32 %1202, i32* %44, align 8, !dbg !2242, !tbaa !1015
  %1203 = add i32 %1202, -1894007588, !dbg !2242
  %1204 = add i32 %1203, %1143, !dbg !2242
  %1205 = add i32 %1204, %1194, !dbg !2242
  %1206 = add i32 %1205, %1190, !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 %1206, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1207 = shl i32 %1162, 30, !dbg !2242
  %1208 = lshr i32 %1162, 2, !dbg !2242
  %1209 = or i32 %1207, %1208, !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 %1209, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1210 = shl i32 %1206, 5, !dbg !2245
  %1211 = lshr i32 %1206, 27, !dbg !2245
  %1212 = or i32 %1210, %1211, !dbg !2245
  %1213 = and i32 %1184, %1209, !dbg !2245
  %1214 = or i32 %1184, %1209, !dbg !2245
  %1215 = and i32 %1214, %1187, !dbg !2245
  %1216 = or i32 %1215, %1213, !dbg !2245
  %1217 = load i32, i32* %47, align 4, !dbg !2245, !tbaa !1015
  %1218 = xor i32 %1217, %1173, !dbg !2245
  %1219 = load i32, i32* %37, align 4, !dbg !2245, !tbaa !1015
  %1220 = xor i32 %1218, %1219, !dbg !2245
  %1221 = xor i32 %1220, %1158, !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 %1221, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1222 = shl i32 %1221, 1, !dbg !2245
  %1223 = lshr i32 %1221, 31, !dbg !2245
  %1224 = or i32 %1222, %1223, !dbg !2245
  store i32 %1224, i32* %45, align 4, !dbg !2245, !tbaa !1015
  %1225 = add i32 %1224, -1894007588, !dbg !2245
  %1226 = add i32 %1225, %1165, !dbg !2245
  %1227 = add i32 %1226, %1216, !dbg !2245
  %1228 = add i32 %1227, %1212, !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 %1228, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1229 = shl i32 %1184, 30, !dbg !2245
  %1230 = lshr i32 %1184, 2, !dbg !2245
  %1231 = or i32 %1229, %1230, !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 %1231, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1232 = shl i32 %1228, 5, !dbg !2248
  %1233 = lshr i32 %1228, 27, !dbg !2248
  %1234 = or i32 %1232, %1233, !dbg !2248
  %1235 = xor i32 %1231, %1209, !dbg !2248
  %1236 = xor i32 %1235, %1206, !dbg !2248
  %1237 = load i32, i32* %48, align 8, !dbg !2248, !tbaa !1015
  %1238 = xor i32 %1237, %1195, !dbg !2248
  %1239 = load i32, i32* %38, align 16, !dbg !2248, !tbaa !1015
  %1240 = xor i32 %1238, %1239, !dbg !2248
  %1241 = xor i32 %1240, %1180, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %1241, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1242 = shl i32 %1241, 1, !dbg !2248
  %1243 = lshr i32 %1241, 31, !dbg !2248
  %1244 = or i32 %1242, %1243, !dbg !2248
  store i32 %1244, i32* %46, align 16, !dbg !2248, !tbaa !1015
  %1245 = add i32 %1244, -899497514, !dbg !2248
  %1246 = add i32 %1245, %1187, !dbg !2248
  %1247 = add i32 %1246, %1236, !dbg !2248
  %1248 = add i32 %1247, %1234, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %1248, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1249 = shl i32 %1206, 30, !dbg !2248
  %1250 = lshr i32 %1206, 2, !dbg !2248
  %1251 = or i32 %1249, %1250, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %1251, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1252 = shl i32 %1248, 5, !dbg !2251
  %1253 = lshr i32 %1248, 27, !dbg !2251
  %1254 = or i32 %1252, %1253, !dbg !2251
  %1255 = xor i32 %1251, %1231, !dbg !2251
  %1256 = xor i32 %1255, %1228, !dbg !2251
  %1257 = load i32, i32* %49, align 4, !dbg !2251, !tbaa !1015
  %1258 = xor i32 %1257, %1217, !dbg !2251
  %1259 = load i32, i32* %39, align 4, !dbg !2251, !tbaa !1015
  %1260 = xor i32 %1258, %1259, !dbg !2251
  %1261 = xor i32 %1260, %1202, !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 %1261, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1262 = shl i32 %1261, 1, !dbg !2251
  %1263 = lshr i32 %1261, 31, !dbg !2251
  %1264 = or i32 %1262, %1263, !dbg !2251
  store i32 %1264, i32* %47, align 4, !dbg !2251, !tbaa !1015
  %1265 = add i32 %1264, -899497514, !dbg !2251
  %1266 = add i32 %1265, %1209, !dbg !2251
  %1267 = add i32 %1266, %1256, !dbg !2251
  %1268 = add i32 %1267, %1254, !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 %1268, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1269 = shl i32 %1228, 30, !dbg !2251
  %1270 = lshr i32 %1228, 2, !dbg !2251
  %1271 = or i32 %1269, %1270, !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 %1271, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1272 = shl i32 %1268, 5, !dbg !2254
  %1273 = lshr i32 %1268, 27, !dbg !2254
  %1274 = or i32 %1272, %1273, !dbg !2254
  %1275 = xor i32 %1271, %1251, !dbg !2254
  %1276 = xor i32 %1275, %1248, !dbg !2254
  %1277 = load i32, i32* %34, align 16, !dbg !2254, !tbaa !1015
  %1278 = xor i32 %1277, %1237, !dbg !2254
  %1279 = load i32, i32* %40, align 8, !dbg !2254, !tbaa !1015
  %1280 = xor i32 %1278, %1279, !dbg !2254
  %1281 = xor i32 %1280, %1224, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %1281, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1282 = shl i32 %1281, 1, !dbg !2254
  %1283 = lshr i32 %1281, 31, !dbg !2254
  %1284 = or i32 %1282, %1283, !dbg !2254
  store i32 %1284, i32* %48, align 8, !dbg !2254, !tbaa !1015
  %1285 = add i32 %1284, -899497514, !dbg !2254
  %1286 = add i32 %1285, %1231, !dbg !2254
  %1287 = add i32 %1286, %1276, !dbg !2254
  %1288 = add i32 %1287, %1274, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %1288, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1289 = shl i32 %1248, 30, !dbg !2254
  %1290 = lshr i32 %1248, 2, !dbg !2254
  %1291 = or i32 %1289, %1290, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %1291, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1292 = shl i32 %1288, 5, !dbg !2257
  %1293 = lshr i32 %1288, 27, !dbg !2257
  %1294 = or i32 %1292, %1293, !dbg !2257
  %1295 = xor i32 %1291, %1271, !dbg !2257
  %1296 = xor i32 %1295, %1268, !dbg !2257
  %1297 = load i32, i32* %35, align 4, !dbg !2257, !tbaa !1015
  %1298 = xor i32 %1297, %1257, !dbg !2257
  %1299 = load i32, i32* %41, align 4, !dbg !2257, !tbaa !1015
  %1300 = xor i32 %1298, %1299, !dbg !2257
  %1301 = xor i32 %1300, %1244, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1301, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1302 = shl i32 %1301, 1, !dbg !2257
  %1303 = lshr i32 %1301, 31, !dbg !2257
  %1304 = or i32 %1302, %1303, !dbg !2257
  store i32 %1304, i32* %49, align 4, !dbg !2257, !tbaa !1015
  %1305 = add i32 %1304, -899497514, !dbg !2257
  %1306 = add i32 %1305, %1251, !dbg !2257
  %1307 = add i32 %1306, %1296, !dbg !2257
  %1308 = add i32 %1307, %1294, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1308, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1309 = shl i32 %1268, 30, !dbg !2257
  %1310 = lshr i32 %1268, 2, !dbg !2257
  %1311 = or i32 %1309, %1310, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1311, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1312 = shl i32 %1308, 5, !dbg !2260
  %1313 = lshr i32 %1308, 27, !dbg !2260
  %1314 = or i32 %1312, %1313, !dbg !2260
  %1315 = xor i32 %1311, %1291, !dbg !2260
  %1316 = xor i32 %1315, %1288, !dbg !2260
  %1317 = load i32, i32* %36, align 8, !dbg !2260, !tbaa !1015
  %1318 = xor i32 %1317, %1277, !dbg !2260
  %1319 = load i32, i32* %42, align 16, !dbg !2260, !tbaa !1015
  %1320 = xor i32 %1318, %1319, !dbg !2260
  %1321 = xor i32 %1320, %1264, !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %1321, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1322 = shl i32 %1321, 1, !dbg !2260
  %1323 = lshr i32 %1321, 31, !dbg !2260
  %1324 = or i32 %1322, %1323, !dbg !2260
  store i32 %1324, i32* %34, align 16, !dbg !2260, !tbaa !1015
  %1325 = add i32 %1324, -899497514, !dbg !2260
  %1326 = add i32 %1325, %1271, !dbg !2260
  %1327 = add i32 %1326, %1316, !dbg !2260
  %1328 = add i32 %1327, %1314, !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %1328, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1329 = shl i32 %1288, 30, !dbg !2260
  %1330 = lshr i32 %1288, 2, !dbg !2260
  %1331 = or i32 %1329, %1330, !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %1331, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1332 = shl i32 %1328, 5, !dbg !2263
  %1333 = lshr i32 %1328, 27, !dbg !2263
  %1334 = or i32 %1332, %1333, !dbg !2263
  %1335 = xor i32 %1331, %1311, !dbg !2263
  %1336 = xor i32 %1335, %1308, !dbg !2263
  %1337 = load i32, i32* %37, align 4, !dbg !2263, !tbaa !1015
  %1338 = xor i32 %1337, %1297, !dbg !2263
  %1339 = load i32, i32* %43, align 4, !dbg !2263, !tbaa !1015
  %1340 = xor i32 %1338, %1339, !dbg !2263
  %1341 = xor i32 %1340, %1284, !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %1341, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1342 = shl i32 %1341, 1, !dbg !2263
  %1343 = lshr i32 %1341, 31, !dbg !2263
  %1344 = or i32 %1342, %1343, !dbg !2263
  store i32 %1344, i32* %35, align 4, !dbg !2263, !tbaa !1015
  %1345 = add i32 %1344, -899497514, !dbg !2263
  %1346 = add i32 %1345, %1291, !dbg !2263
  %1347 = add i32 %1346, %1336, !dbg !2263
  %1348 = add i32 %1347, %1334, !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %1348, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1349 = shl i32 %1308, 30, !dbg !2263
  %1350 = lshr i32 %1308, 2, !dbg !2263
  %1351 = or i32 %1349, %1350, !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %1351, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1352 = shl i32 %1348, 5, !dbg !2266
  %1353 = lshr i32 %1348, 27, !dbg !2266
  %1354 = or i32 %1352, %1353, !dbg !2266
  %1355 = xor i32 %1351, %1331, !dbg !2266
  %1356 = xor i32 %1355, %1328, !dbg !2266
  %1357 = load i32, i32* %38, align 16, !dbg !2266, !tbaa !1015
  %1358 = xor i32 %1357, %1317, !dbg !2266
  %1359 = load i32, i32* %44, align 8, !dbg !2266, !tbaa !1015
  %1360 = xor i32 %1358, %1359, !dbg !2266
  %1361 = xor i32 %1360, %1304, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %1361, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1362 = shl i32 %1361, 1, !dbg !2266
  %1363 = lshr i32 %1361, 31, !dbg !2266
  %1364 = or i32 %1362, %1363, !dbg !2266
  store i32 %1364, i32* %36, align 8, !dbg !2266, !tbaa !1015
  %1365 = add i32 %1364, -899497514, !dbg !2266
  %1366 = add i32 %1365, %1311, !dbg !2266
  %1367 = add i32 %1366, %1356, !dbg !2266
  %1368 = add i32 %1367, %1354, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %1368, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1369 = shl i32 %1328, 30, !dbg !2266
  %1370 = lshr i32 %1328, 2, !dbg !2266
  %1371 = or i32 %1369, %1370, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %1371, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1372 = shl i32 %1368, 5, !dbg !2269
  %1373 = lshr i32 %1368, 27, !dbg !2269
  %1374 = or i32 %1372, %1373, !dbg !2269
  %1375 = xor i32 %1371, %1351, !dbg !2269
  %1376 = xor i32 %1375, %1348, !dbg !2269
  %1377 = load i32, i32* %39, align 4, !dbg !2269, !tbaa !1015
  %1378 = xor i32 %1377, %1337, !dbg !2269
  %1379 = load i32, i32* %45, align 4, !dbg !2269, !tbaa !1015
  %1380 = xor i32 %1378, %1379, !dbg !2269
  %1381 = xor i32 %1380, %1324, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %1381, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1382 = shl i32 %1381, 1, !dbg !2269
  %1383 = lshr i32 %1381, 31, !dbg !2269
  %1384 = or i32 %1382, %1383, !dbg !2269
  store i32 %1384, i32* %37, align 4, !dbg !2269, !tbaa !1015
  %1385 = add i32 %1384, -899497514, !dbg !2269
  %1386 = add i32 %1385, %1331, !dbg !2269
  %1387 = add i32 %1386, %1376, !dbg !2269
  %1388 = add i32 %1387, %1374, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %1388, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1389 = shl i32 %1348, 30, !dbg !2269
  %1390 = lshr i32 %1348, 2, !dbg !2269
  %1391 = or i32 %1389, %1390, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %1391, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1392 = shl i32 %1388, 5, !dbg !2272
  %1393 = lshr i32 %1388, 27, !dbg !2272
  %1394 = or i32 %1392, %1393, !dbg !2272
  %1395 = xor i32 %1391, %1371, !dbg !2272
  %1396 = xor i32 %1395, %1368, !dbg !2272
  %1397 = load i32, i32* %40, align 8, !dbg !2272, !tbaa !1015
  %1398 = xor i32 %1397, %1357, !dbg !2272
  %1399 = load i32, i32* %46, align 16, !dbg !2272, !tbaa !1015
  %1400 = xor i32 %1398, %1399, !dbg !2272
  %1401 = xor i32 %1400, %1344, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %1401, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1402 = shl i32 %1401, 1, !dbg !2272
  %1403 = lshr i32 %1401, 31, !dbg !2272
  %1404 = or i32 %1402, %1403, !dbg !2272
  store i32 %1404, i32* %38, align 16, !dbg !2272, !tbaa !1015
  %1405 = add i32 %1404, -899497514, !dbg !2272
  %1406 = add i32 %1405, %1351, !dbg !2272
  %1407 = add i32 %1406, %1396, !dbg !2272
  %1408 = add i32 %1407, %1394, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %1408, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1409 = shl i32 %1368, 30, !dbg !2272
  %1410 = lshr i32 %1368, 2, !dbg !2272
  %1411 = or i32 %1409, %1410, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %1411, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1412 = shl i32 %1408, 5, !dbg !2275
  %1413 = lshr i32 %1408, 27, !dbg !2275
  %1414 = or i32 %1412, %1413, !dbg !2275
  %1415 = xor i32 %1411, %1391, !dbg !2275
  %1416 = xor i32 %1415, %1388, !dbg !2275
  %1417 = load i32, i32* %41, align 4, !dbg !2275, !tbaa !1015
  %1418 = xor i32 %1417, %1377, !dbg !2275
  %1419 = load i32, i32* %47, align 4, !dbg !2275, !tbaa !1015
  %1420 = xor i32 %1418, %1419, !dbg !2275
  %1421 = xor i32 %1420, %1364, !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %1421, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1422 = shl i32 %1421, 1, !dbg !2275
  %1423 = lshr i32 %1421, 31, !dbg !2275
  %1424 = or i32 %1422, %1423, !dbg !2275
  store i32 %1424, i32* %39, align 4, !dbg !2275, !tbaa !1015
  %1425 = add i32 %1424, -899497514, !dbg !2275
  %1426 = add i32 %1425, %1371, !dbg !2275
  %1427 = add i32 %1426, %1416, !dbg !2275
  %1428 = add i32 %1427, %1414, !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %1428, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1429 = shl i32 %1388, 30, !dbg !2275
  %1430 = lshr i32 %1388, 2, !dbg !2275
  %1431 = or i32 %1429, %1430, !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %1431, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1432 = shl i32 %1428, 5, !dbg !2278
  %1433 = lshr i32 %1428, 27, !dbg !2278
  %1434 = or i32 %1432, %1433, !dbg !2278
  %1435 = xor i32 %1431, %1411, !dbg !2278
  %1436 = xor i32 %1435, %1408, !dbg !2278
  %1437 = load i32, i32* %42, align 16, !dbg !2278, !tbaa !1015
  %1438 = xor i32 %1437, %1397, !dbg !2278
  %1439 = load i32, i32* %48, align 8, !dbg !2278, !tbaa !1015
  %1440 = xor i32 %1438, %1439, !dbg !2278
  %1441 = xor i32 %1440, %1384, !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %1441, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1442 = shl i32 %1441, 1, !dbg !2278
  %1443 = lshr i32 %1441, 31, !dbg !2278
  %1444 = or i32 %1442, %1443, !dbg !2278
  store i32 %1444, i32* %40, align 8, !dbg !2278, !tbaa !1015
  %1445 = add i32 %1444, -899497514, !dbg !2278
  %1446 = add i32 %1445, %1391, !dbg !2278
  %1447 = add i32 %1446, %1436, !dbg !2278
  %1448 = add i32 %1447, %1434, !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %1448, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1449 = shl i32 %1408, 30, !dbg !2278
  %1450 = lshr i32 %1408, 2, !dbg !2278
  %1451 = or i32 %1449, %1450, !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %1451, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1452 = shl i32 %1448, 5, !dbg !2281
  %1453 = lshr i32 %1448, 27, !dbg !2281
  %1454 = or i32 %1452, %1453, !dbg !2281
  %1455 = xor i32 %1451, %1431, !dbg !2281
  %1456 = xor i32 %1455, %1428, !dbg !2281
  %1457 = load i32, i32* %43, align 4, !dbg !2281, !tbaa !1015
  %1458 = xor i32 %1457, %1417, !dbg !2281
  %1459 = load i32, i32* %49, align 4, !dbg !2281, !tbaa !1015
  %1460 = xor i32 %1458, %1459, !dbg !2281
  %1461 = xor i32 %1460, %1404, !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %1461, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1462 = shl i32 %1461, 1, !dbg !2281
  %1463 = lshr i32 %1461, 31, !dbg !2281
  %1464 = or i32 %1462, %1463, !dbg !2281
  store i32 %1464, i32* %41, align 4, !dbg !2281, !tbaa !1015
  %1465 = add i32 %1464, -899497514, !dbg !2281
  %1466 = add i32 %1465, %1411, !dbg !2281
  %1467 = add i32 %1466, %1456, !dbg !2281
  %1468 = add i32 %1467, %1454, !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %1468, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1469 = shl i32 %1428, 30, !dbg !2281
  %1470 = lshr i32 %1428, 2, !dbg !2281
  %1471 = or i32 %1469, %1470, !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %1471, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1472 = shl i32 %1468, 5, !dbg !2284
  %1473 = lshr i32 %1468, 27, !dbg !2284
  %1474 = or i32 %1472, %1473, !dbg !2284
  %1475 = xor i32 %1471, %1451, !dbg !2284
  %1476 = xor i32 %1475, %1448, !dbg !2284
  %1477 = load i32, i32* %44, align 8, !dbg !2284, !tbaa !1015
  %1478 = xor i32 %1477, %1437, !dbg !2284
  %1479 = load i32, i32* %34, align 16, !dbg !2284, !tbaa !1015
  %1480 = xor i32 %1478, %1479, !dbg !2284
  %1481 = xor i32 %1480, %1424, !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 %1481, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1482 = shl i32 %1481, 1, !dbg !2284
  %1483 = lshr i32 %1481, 31, !dbg !2284
  %1484 = or i32 %1482, %1483, !dbg !2284
  store i32 %1484, i32* %42, align 16, !dbg !2284, !tbaa !1015
  %1485 = add i32 %1484, -899497514, !dbg !2284
  %1486 = add i32 %1485, %1431, !dbg !2284
  %1487 = add i32 %1486, %1476, !dbg !2284
  %1488 = add i32 %1487, %1474, !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 %1488, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1489 = shl i32 %1448, 30, !dbg !2284
  %1490 = lshr i32 %1448, 2, !dbg !2284
  %1491 = or i32 %1489, %1490, !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 %1491, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1492 = shl i32 %1488, 5, !dbg !2287
  %1493 = lshr i32 %1488, 27, !dbg !2287
  %1494 = or i32 %1492, %1493, !dbg !2287
  %1495 = xor i32 %1491, %1471, !dbg !2287
  %1496 = xor i32 %1495, %1468, !dbg !2287
  %1497 = load i32, i32* %45, align 4, !dbg !2287, !tbaa !1015
  %1498 = xor i32 %1497, %1457, !dbg !2287
  %1499 = load i32, i32* %35, align 4, !dbg !2287, !tbaa !1015
  %1500 = xor i32 %1498, %1499, !dbg !2287
  %1501 = xor i32 %1500, %1444, !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %1501, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1502 = shl i32 %1501, 1, !dbg !2287
  %1503 = lshr i32 %1501, 31, !dbg !2287
  %1504 = or i32 %1502, %1503, !dbg !2287
  store i32 %1504, i32* %43, align 4, !dbg !2287, !tbaa !1015
  %1505 = add i32 %1504, -899497514, !dbg !2287
  %1506 = add i32 %1505, %1451, !dbg !2287
  %1507 = add i32 %1506, %1496, !dbg !2287
  %1508 = add i32 %1507, %1494, !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %1508, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1509 = shl i32 %1468, 30, !dbg !2287
  %1510 = lshr i32 %1468, 2, !dbg !2287
  %1511 = or i32 %1509, %1510, !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %1511, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1512 = shl i32 %1508, 5, !dbg !2290
  %1513 = lshr i32 %1508, 27, !dbg !2290
  %1514 = or i32 %1512, %1513, !dbg !2290
  %1515 = xor i32 %1511, %1491, !dbg !2290
  %1516 = xor i32 %1515, %1488, !dbg !2290
  %1517 = load i32, i32* %46, align 16, !dbg !2290, !tbaa !1015
  %1518 = xor i32 %1517, %1477, !dbg !2290
  %1519 = load i32, i32* %36, align 8, !dbg !2290, !tbaa !1015
  %1520 = xor i32 %1518, %1519, !dbg !2290
  %1521 = xor i32 %1520, %1464, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %1521, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1522 = shl i32 %1521, 1, !dbg !2290
  %1523 = lshr i32 %1521, 31, !dbg !2290
  %1524 = or i32 %1522, %1523, !dbg !2290
  store i32 %1524, i32* %44, align 8, !dbg !2290, !tbaa !1015
  %1525 = add i32 %1524, -899497514, !dbg !2290
  %1526 = add i32 %1525, %1471, !dbg !2290
  %1527 = add i32 %1526, %1516, !dbg !2290
  %1528 = add i32 %1527, %1514, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %1528, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1529 = shl i32 %1488, 30, !dbg !2290
  %1530 = lshr i32 %1488, 2, !dbg !2290
  %1531 = or i32 %1529, %1530, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %1531, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1532 = shl i32 %1528, 5, !dbg !2293
  %1533 = lshr i32 %1528, 27, !dbg !2293
  %1534 = or i32 %1532, %1533, !dbg !2293
  %1535 = xor i32 %1531, %1511, !dbg !2293
  %1536 = xor i32 %1535, %1508, !dbg !2293
  %1537 = load i32, i32* %47, align 4, !dbg !2293, !tbaa !1015
  %1538 = xor i32 %1537, %1497, !dbg !2293
  %1539 = load i32, i32* %37, align 4, !dbg !2293, !tbaa !1015
  %1540 = xor i32 %1538, %1539, !dbg !2293
  %1541 = xor i32 %1540, %1484, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %1541, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1542 = shl i32 %1541, 1, !dbg !2293
  %1543 = lshr i32 %1541, 31, !dbg !2293
  %1544 = or i32 %1542, %1543, !dbg !2293
  store i32 %1544, i32* %45, align 4, !dbg !2293, !tbaa !1015
  %1545 = add i32 %1544, -899497514, !dbg !2293
  %1546 = add i32 %1545, %1491, !dbg !2293
  %1547 = add i32 %1546, %1536, !dbg !2293
  %1548 = add i32 %1547, %1534, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %1548, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1549 = shl i32 %1508, 30, !dbg !2293
  %1550 = lshr i32 %1508, 2, !dbg !2293
  %1551 = or i32 %1549, %1550, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %1551, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1552 = shl i32 %1548, 5, !dbg !2296
  %1553 = lshr i32 %1548, 27, !dbg !2296
  %1554 = or i32 %1552, %1553, !dbg !2296
  %1555 = xor i32 %1551, %1531, !dbg !2296
  %1556 = xor i32 %1555, %1528, !dbg !2296
  %1557 = load i32, i32* %48, align 8, !dbg !2296, !tbaa !1015
  %1558 = xor i32 %1557, %1517, !dbg !2296
  %1559 = load i32, i32* %38, align 16, !dbg !2296, !tbaa !1015
  %1560 = xor i32 %1558, %1559, !dbg !2296
  %1561 = xor i32 %1560, %1504, !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %1561, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1562 = shl i32 %1561, 1, !dbg !2296
  %1563 = lshr i32 %1561, 31, !dbg !2296
  %1564 = or i32 %1562, %1563, !dbg !2296
  store i32 %1564, i32* %46, align 16, !dbg !2296, !tbaa !1015
  %1565 = add i32 %1564, -899497514, !dbg !2296
  %1566 = add i32 %1565, %1511, !dbg !2296
  %1567 = add i32 %1566, %1556, !dbg !2296
  %1568 = add i32 %1567, %1554, !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %1568, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1569 = shl i32 %1528, 30, !dbg !2296
  %1570 = lshr i32 %1528, 2, !dbg !2296
  %1571 = or i32 %1569, %1570, !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %1571, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1572 = shl i32 %1568, 5, !dbg !2299
  %1573 = lshr i32 %1568, 27, !dbg !2299
  %1574 = or i32 %1572, %1573, !dbg !2299
  %1575 = xor i32 %1571, %1551, !dbg !2299
  %1576 = xor i32 %1575, %1548, !dbg !2299
  %1577 = load i32, i32* %49, align 4, !dbg !2299, !tbaa !1015
  %1578 = xor i32 %1577, %1537, !dbg !2299
  %1579 = load i32, i32* %39, align 4, !dbg !2299, !tbaa !1015
  %1580 = xor i32 %1578, %1579, !dbg !2299
  %1581 = xor i32 %1580, %1524, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %1581, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1582 = shl i32 %1581, 1, !dbg !2299
  %1583 = lshr i32 %1581, 31, !dbg !2299
  %1584 = or i32 %1582, %1583, !dbg !2299
  store i32 %1584, i32* %47, align 4, !dbg !2299, !tbaa !1015
  %1585 = add i32 %1584, -899497514, !dbg !2299
  %1586 = add i32 %1585, %1531, !dbg !2299
  %1587 = add i32 %1586, %1576, !dbg !2299
  %1588 = add i32 %1587, %1574, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %1588, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1589 = shl i32 %1548, 30, !dbg !2299
  %1590 = lshr i32 %1548, 2, !dbg !2299
  %1591 = or i32 %1589, %1590, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %1591, i64 0, metadata !2019, metadata !796), !dbg !2044
  %1592 = shl i32 %1588, 5, !dbg !2302
  %1593 = lshr i32 %1588, 27, !dbg !2302
  %1594 = or i32 %1592, %1593, !dbg !2302
  %1595 = xor i32 %1591, %1571, !dbg !2302
  %1596 = xor i32 %1595, %1568, !dbg !2302
  %1597 = load i32, i32* %34, align 16, !dbg !2302, !tbaa !1015
  %1598 = xor i32 %1597, %1557, !dbg !2302
  %1599 = load i32, i32* %40, align 8, !dbg !2302, !tbaa !1015
  %1600 = xor i32 %1598, %1599, !dbg !2302
  %1601 = xor i32 %1600, %1544, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %1601, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1602 = shl i32 %1601, 1, !dbg !2302
  %1603 = lshr i32 %1601, 31, !dbg !2302
  %1604 = or i32 %1602, %1603, !dbg !2302
  store i32 %1604, i32* %48, align 8, !dbg !2302, !tbaa !1015
  %1605 = add i32 %1604, -899497514, !dbg !2302
  %1606 = add i32 %1605, %1551, !dbg !2302
  %1607 = add i32 %1606, %1596, !dbg !2302
  %1608 = add i32 %1607, %1594, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %1608, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1609 = shl i32 %1568, 30, !dbg !2302
  %1610 = lshr i32 %1568, 2, !dbg !2302
  %1611 = or i32 %1609, %1610, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %1611, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1612 = shl i32 %1608, 5, !dbg !2305
  %1613 = lshr i32 %1608, 27, !dbg !2305
  %1614 = or i32 %1612, %1613, !dbg !2305
  %1615 = xor i32 %1611, %1591, !dbg !2305
  %1616 = xor i32 %1615, %1588, !dbg !2305
  %1617 = load i32, i32* %35, align 4, !dbg !2305, !tbaa !1015
  %1618 = xor i32 %1617, %1577, !dbg !2305
  %1619 = load i32, i32* %41, align 4, !dbg !2305, !tbaa !1015
  %1620 = xor i32 %1618, %1619, !dbg !2305
  %1621 = xor i32 %1620, %1564, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %1621, i64 0, metadata !2021, metadata !796), !dbg !2118
  %1622 = shl i32 %1621, 1, !dbg !2305
  %1623 = lshr i32 %1621, 31, !dbg !2305
  %1624 = or i32 %1622, %1623, !dbg !2305
  store i32 %1624, i32* %49, align 4, !dbg !2305, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %1632, i64 0, metadata !2015, metadata !796), !dbg !2036
  %1625 = shl i32 %1588, 30, !dbg !2305
  %1626 = lshr i32 %1588, 2, !dbg !2305
  %1627 = or i32 %1625, %1626, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %1627, i64 0, metadata !2017, metadata !796), !dbg !2040
  %1628 = load i32, i32* %9, align 4, !dbg !2308, !tbaa !1890
  %1629 = add i32 %1628, -899497514, !dbg !2305
  %1630 = add i32 %1629, %1624, !dbg !2305
  %1631 = add i32 %1630, %1571, !dbg !2305
  %1632 = add i32 %1631, %1616, !dbg !2305
  %1633 = add i32 %1632, %1614, !dbg !2308
  store i32 %1633, i32* %9, align 4, !dbg !2308, !tbaa !1890
  tail call void @llvm.dbg.value(metadata i32 %1633, i64 0, metadata !2015, metadata !796), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2016, metadata !796), !dbg !2038
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2017, metadata !796), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2018, metadata !796), !dbg !2042
  %1634 = load <4 x i32>, <4 x i32>* %53, align 4, !dbg !2309, !tbaa !1015
  %1635 = insertelement <4 x i32> undef, i32 %1608, i32 0, !dbg !2309
  %1636 = insertelement <4 x i32> %1635, i32 %1627, i32 1, !dbg !2309
  %1637 = insertelement <4 x i32> %1636, i32 %1611, i32 2, !dbg !2309
  %1638 = insertelement <4 x i32> %1637, i32 %1591, i32 3, !dbg !2309
  %1639 = add <4 x i32> %1638, %1634, !dbg !2309
  store <4 x i32> %1639, <4 x i32>* %54, align 4, !dbg !2309, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2019, metadata !796), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !2008, metadata !796), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %1633, i64 0, metadata !2015, metadata !796), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2019, metadata !796), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2018, metadata !796), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2017, metadata !796), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2016, metadata !796), !dbg !2038
  %1640 = icmp ult i32* %85, %7, !dbg !2055
  %1641 = extractelement <4 x i32> %1639, i32 0, !dbg !2057
  %1642 = extractelement <4 x i32> %1639, i32 1, !dbg !2057
  %1643 = extractelement <4 x i32> %1639, i32 2, !dbg !2057
  %1644 = extractelement <4 x i32> %1639, i32 3, !dbg !2057
  br i1 %1640, label %55, label %1645, !dbg !2057, !llvm.loop !2310

; <label>:1645:                                   ; preds = %55
  br label %1646, !dbg !2313

; <label>:1646:                                   ; preds = %1645, %3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %8) #10, !dbg !2313
  ret void, !dbg !2313
}

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @sha1_stream(%struct._IO_FILE*, i8*) local_unnamed_addr #6 !dbg !2314 {
  %3 = alloca %struct.sha1_ctx, align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2358, metadata !796), !dbg !2365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2359, metadata !796), !dbg !2366
  %4 = bitcast %struct.sha1_ctx* %3 to i8*, !dbg !2367
  call void @llvm.lifetime.start(i64 160, i8* nonnull %4) #10, !dbg !2367
  %5 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2362, metadata !796), !dbg !2369
  %6 = icmp eq i8* %5, null, !dbg !2370
  br i1 %6, label %37, label %7, !dbg !2372

; <label>:7:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2360, metadata !1101), !dbg !2373
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !1871, metadata !796), !dbg !2374
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2376
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2376, !tbaa !1015
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4, !dbg !2377
  %10 = bitcast i32* %9 to <4 x i32>*, !dbg !2378
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %10, align 16, !dbg !2378, !tbaa !1015
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %12, !dbg !2379

; <label>:12:                                     ; preds = %30, %7
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2361, metadata !796), !dbg !2380
  br label %13, !dbg !2381

; <label>:13:                                     ; preds = %27, %12
  %14 = phi i64 [ 0, %12 ], [ %18, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2361, metadata !796), !dbg !2380
  %15 = getelementptr inbounds i8, i8* %5, i64 %14, !dbg !2382
  %16 = sub i64 32768, %14, !dbg !2382
  %17 = tail call i64 @fread_unlocked(i8* %15, i64 1, i64 %16, %struct._IO_FILE* %0) #10, !dbg !2382
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !2363, metadata !796), !dbg !2384
  %18 = add i64 %17, %14, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !2361, metadata !796), !dbg !2380
  %19 = icmp eq i64 %18, 32768, !dbg !2386
  br i1 %19, label %30, label %20, !dbg !2388

; <label>:20:                                     ; preds = %13
  %21 = icmp eq i64 %17, 0, !dbg !2389
  %22 = load i32, i32* %11, align 8, !tbaa !1493
  br i1 %21, label %23, label %27, !dbg !2391

; <label>:23:                                     ; preds = %20
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2392, metadata !796), !dbg !2397
  %24 = and i32 %22, 32, !dbg !2401
  %25 = icmp eq i32 %24, 0, !dbg !2402
  br i1 %25, label %32, label %26, !dbg !2403

; <label>:26:                                     ; preds = %23
  tail call void @free(i8* %5) #10, !dbg !2404
  br label %37

; <label>:27:                                     ; preds = %20
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2406, metadata !796), !dbg !2409
  %28 = and i32 %22, 16, !dbg !2412
  %29 = icmp eq i32 %28, 0, !dbg !2413
  br i1 %29, label %13, label %31, !dbg !2414, !llvm.loop !2415

; <label>:30:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2360, metadata !1101), !dbg !2373
  call void @sha1_process_block(i8* nonnull %5, i64 32768, %struct.sha1_ctx* nonnull %3), !dbg !2417
  br label %12

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !2418

; <label>:32:                                     ; preds = %31, %23
  %33 = icmp eq i64 %18, 0, !dbg !2418
  br i1 %33, label %35, label %34, !dbg !2420

; <label>:34:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2360, metadata !1101), !dbg !2373
  call void @sha1_process_bytes(i8* nonnull %5, i64 %18, %struct.sha1_ctx* nonnull %3), !dbg !2421
  br label %35, !dbg !2421

; <label>:35:                                     ; preds = %32, %34
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, i64 0, metadata !2360, metadata !1101), !dbg !2373
  %36 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %3, i8* %1), !dbg !2422
  call void @free(i8* %5) #10, !dbg !2423
  br label %37, !dbg !2424

; <label>:37:                                     ; preds = %26, %2, %35
  %38 = phi i32 [ 0, %35 ], [ 1, %2 ], [ 1, %26 ]
  call void @llvm.lifetime.end(i64 160, i8* nonnull %4) #10, !dbg !2425
  ret i32 %38, !dbg !2425
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @sha1_process_bytes(i8* readonly, i64, %struct.sha1_ctx*) local_unnamed_addr #6 !dbg !2426 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2428, metadata !796), !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2429, metadata !796), !dbg !2439
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, i64 0, metadata !2430, metadata !796), !dbg !2440
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6, !dbg !2441
  %5 = load i32, i32* %4, align 4, !dbg !2441, !tbaa !1942
  %6 = icmp eq i32 %5, 0, !dbg !2442
  br i1 %6, label %28, label %7, !dbg !2443

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2431, metadata !796), !dbg !2445
  %9 = sub nsw i64 128, %8, !dbg !2446
  %10 = icmp ugt i64 %9, %1, !dbg !2447
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2434, metadata !796), !dbg !2449
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2450
  %13 = bitcast i32* %12 to i8*, !dbg !2450
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2450
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %0, i64 %11, i32 1, i1 false), !dbg !2451
  %15 = add i64 %8, %11, !dbg !2452
  %16 = trunc i64 %15 to i32, !dbg !2452
  store i32 %16, i32* %4, align 4, !dbg !2452, !tbaa !1942
  %17 = icmp ugt i32 %16, 64, !dbg !2453
  br i1 %17, label %18, label %25, !dbg !2455

; <label>:18:                                     ; preds = %7
  %19 = and i64 %15, 4294967232, !dbg !2456
  tail call void @sha1_process_block(i8* %13, i64 %19, %struct.sha1_ctx* nonnull %2), !dbg !2458
  %20 = load i32, i32* %4, align 4, !dbg !2459, !tbaa !1942
  %21 = and i32 %20, 63, !dbg !2459
  store i32 %21, i32* %4, align 4, !dbg !2459, !tbaa !1942
  %22 = and i64 %15, -64, !dbg !2460
  %23 = getelementptr inbounds i8, i8* %13, i64 %22, !dbg !2461
  %24 = zext i32 %21 to i64, !dbg !2462
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %23, i64 %24, i32 1, i1 false), !dbg !2463
  br label %25, !dbg !2464

; <label>:25:                                     ; preds = %18, %7
  %26 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2428, metadata !796), !dbg !2438
  %27 = sub i64 %1, %11, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2429, metadata !796), !dbg !2439
  br label %28, !dbg !2467

; <label>:28:                                     ; preds = %3, %25
  %29 = phi i64 [ %27, %25 ], [ %1, %3 ]
  %30 = phi i8* [ %26, %25 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2428, metadata !796), !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2429, metadata !796), !dbg !2439
  %31 = icmp ugt i64 %29, 63, !dbg !2468
  br i1 %31, label %32, label %36, !dbg !2470

; <label>:32:                                     ; preds = %28
  %33 = and i64 %29, -64, !dbg !2471
  tail call void @sha1_process_block(i8* %30, i64 %33, %struct.sha1_ctx* nonnull %2), !dbg !2474
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !2428, metadata !796), !dbg !2438
  %35 = and i64 %29, 63, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2429, metadata !796), !dbg !2439
  br label %36, !dbg !2477

; <label>:36:                                     ; preds = %32, %28
  %37 = phi i64 [ %35, %32 ], [ %29, %28 ]
  %38 = phi i8* [ %34, %32 ], [ %30, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !2428, metadata !796), !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !2429, metadata !796), !dbg !2439
  %39 = icmp eq i64 %37, 0, !dbg !2478
  br i1 %39, label %55, label %40, !dbg !2479

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %4, align 4, !dbg !2480, !tbaa !1942
  %42 = zext i32 %41 to i64, !dbg !2481
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !2435, metadata !796), !dbg !2482
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, !dbg !2483
  %44 = bitcast [32 x i32]* %43 to i8*, !dbg !2484
  %45 = getelementptr inbounds i8, i8* %44, i64 %42, !dbg !2484
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %38, i64 %37, i32 1, i1 false), !dbg !2485
  %46 = add i64 %42, %37, !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !2435, metadata !796), !dbg !2482
  %47 = icmp ugt i64 %46, 63, !dbg !2487
  br i1 %47, label %48, label %52, !dbg !2489

; <label>:48:                                     ; preds = %40
  tail call void @sha1_process_block(i8* %44, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2490
  %49 = add i64 %46, -64, !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2435, metadata !796), !dbg !2482
  %50 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16, !dbg !2493
  %51 = bitcast i32* %50 to i8*, !dbg !2494
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %51, i64 %49, i32 4, i1 false), !dbg !2494
  br label %52, !dbg !2495

; <label>:52:                                     ; preds = %48, %40
  %53 = phi i64 [ %49, %48 ], [ %46, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !2435, metadata !796), !dbg !2482
  %54 = trunc i64 %53 to i32, !dbg !2496
  store i32 %54, i32* %4, align 4, !dbg !2497, !tbaa !1942
  br label %55, !dbg !2498

; <label>:55:                                     ; preds = %36, %52
  ret void, !dbg !2499
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @sha1_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 !dbg !2500 {
  %4 = alloca %struct.sha1_ctx, align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2504, metadata !796), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2505, metadata !796), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2506, metadata !796), !dbg !2510
  %5 = bitcast %struct.sha1_ctx* %4 to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 160, i8* nonnull %5) #10, !dbg !2511
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2507, metadata !1101), !dbg !2512
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !1871, metadata !796), !dbg !2513
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2515
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2515, !tbaa !1015
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4, !dbg !2516
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !2517
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 16, !dbg !2517, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2507, metadata !1101), !dbg !2512
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, i64 0, metadata !2507, metadata !1101), !dbg !2512
  %9 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %4, i8* %2), !dbg !2519
  call void @llvm.lifetime.end(i64 160, i8* nonnull %5) #10, !dbg !2520
  ret i8* %9, !dbg !2521
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2522 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !796), !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2530, metadata !796), !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2531, metadata !796), !dbg !2537
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2532, metadata !796), !dbg !2538
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2533, metadata !796), !dbg !2539
  ret void, !dbg !2540
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2541 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2585, metadata !796), !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2586, metadata !796), !dbg !2588
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2589
  br i1 %3, label %7, label %4, !dbg !2591

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2529, metadata !796) #10, !dbg !2593
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2530, metadata !796) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2531, metadata !796) #10, !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2532, metadata !796) #10, !dbg !2598
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2533, metadata !796) #10, !dbg !2599
  br label %7, !dbg !2600

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2601
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2647, metadata !796), !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2648, metadata !796), !dbg !2663
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2664
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !2649, metadata !796), !dbg !2665
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2666
  br i1 %4, label %25, label %5, !dbg !2667

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2650, metadata !796), !dbg !2669
  %7 = icmp ult i32 %6, 3, !dbg !2670
  br i1 %7, label %8, label %25, !dbg !2670

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2653, metadata !796), !dbg !2672
  %10 = icmp slt i32 %9, 0, !dbg !2673
  br i1 %10, label %11, label %15, !dbg !2674

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1, !dbg !2675
  %13 = load i32, i32* %12, align 4, !dbg !2675, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2656, metadata !796), !dbg !2676
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2677
  store i32 %13, i32* %12, align 4, !dbg !2678, !tbaa !1015
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2679
  %17 = icmp eq i32 %16, 0, !dbg !2680
  br i1 %17, label %18, label %21, !dbg !2681

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !2649, metadata !796), !dbg !2665
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2684
  br i1 %20, label %21, label %25, !dbg !2685

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1, !dbg !2687
  %23 = load i32, i32* %22, align 4, !dbg !2687, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !2659, metadata !796), !dbg !2688
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2689
  store i32 %23, i32* %22, align 4, !dbg !2690, !tbaa !1015
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !2691
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2692 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !796), !dbg !2697
  %2 = icmp eq i8* %0, null, !dbg !2698
  br i1 %2, label %3, label %6, !dbg !2700

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2701, !tbaa !804
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2703
  tail call void @abort() #14, !dbg !2704
  unreachable, !dbg !2704

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2695, metadata !796), !dbg !2706
  %8 = icmp ne i8* %7, null, !dbg !2707
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2708
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2696, metadata !796), !dbg !2711
  %11 = ptrtoint i8* %10 to i64, !dbg !2712
  %12 = ptrtoint i8* %0 to i64, !dbg !2712
  %13 = sub i64 %11, %12, !dbg !2712
  %14 = icmp sgt i64 %13, 6, !dbg !2714
  br i1 %14, label %15, label %24, !dbg !2715

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2716
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #13, !dbg !2716
  %18 = icmp eq i32 %17, 0, !dbg !2718
  br i1 %18, label %19, label %24, !dbg !2719

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2694, metadata !796), !dbg !2697
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #13, !dbg !2720
  %21 = icmp eq i32 %20, 0, !dbg !2723
  br i1 %21, label %22, label %24, !dbg !2724

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2694, metadata !796), !dbg !2697
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2727, !tbaa !804
  br label %24, !dbg !2728

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2694, metadata !796), !dbg !2697
  store i8* %25, i8** @program_name, align 8, !dbg !2729, !tbaa !804
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2730, !tbaa !804
  ret void, !dbg !2731
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2732 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2737, metadata !796), !dbg !2740
  %2 = tail call i32* @__errno_location() #1, !dbg !2741
  %3 = load i32, i32* %2, align 4, !dbg !2741, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2738, metadata !796), !dbg !2742
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2743
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2744
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2744
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2746
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2746
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2739, metadata !796), !dbg !2747
  store i32 %3, i32* %2, align 4, !dbg !2748, !tbaa !1015
  ret %struct.quoting_options* %8, !dbg !2749
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2750 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2756, metadata !796), !dbg !2757
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2758
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2758
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2759
  %5 = load i32, i32* %4, align 8, !dbg !2759, !tbaa !2761
  ret i32 %5, !dbg !2763
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2764 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2768, metadata !796), !dbg !2770
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !796), !dbg !2771
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2772
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2772
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2773
  store i32 %1, i32* %5, align 8, !dbg !2775, !tbaa !2761
  ret void, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2781, metadata !796), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2782, metadata !796), !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2783, metadata !796), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2784, metadata !796), !dbg !2792
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2793
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2793
  %6 = lshr i8 %1, 5, !dbg !2794
  %7 = zext i8 %6 to i64, !dbg !2794
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2796
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2785, metadata !796), !dbg !2797
  %9 = and i8 %1, 31, !dbg !2798
  %10 = zext i8 %9 to i32, !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2787, metadata !796), !dbg !2800
  %11 = load i32, i32* %8, align 4, !dbg !2801, !tbaa !1015
  %12 = lshr i32 %11, %10, !dbg !2802
  %13 = and i32 %12, 1, !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2788, metadata !796), !dbg !2804
  %14 = and i32 %2, 1, !dbg !2805
  %15 = xor i32 %13, %14, !dbg !2806
  %16 = shl i32 %15, %10, !dbg !2807
  %17 = xor i32 %16, %11, !dbg !2808
  store i32 %17, i32* %8, align 4, !dbg !2808, !tbaa !1015
  ret i32 %13, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2814, metadata !796), !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2815, metadata !796), !dbg !2818
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2814, metadata !796), !dbg !2817
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2814, metadata !796), !dbg !2817
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2822
  %6 = load i32, i32* %5, align 4, !dbg !2822, !tbaa !2823
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2816, metadata !796), !dbg !2824
  store i32 %1, i32* %5, align 4, !dbg !2825, !tbaa !2823
  ret i32 %6, !dbg !2826
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2827 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2831, metadata !796), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !796), !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !796), !dbg !2836
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2831, metadata !796), !dbg !2834
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2839
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2831, metadata !796), !dbg !2834
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2840
  store i32 10, i32* %6, align 8, !dbg !2841, !tbaa !2761
  %7 = icmp ne i8* %1, null, !dbg !2842
  %8 = icmp ne i8* %2, null, !dbg !2844
  %9 = and i1 %7, %8, !dbg !2846
  br i1 %9, label %11, label %10, !dbg !2846

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2847
  unreachable, !dbg !2847

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2848
  store i8* %1, i8** %12, align 8, !dbg !2849, !tbaa !2850
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2851
  store i8* %2, i8** %13, align 8, !dbg !2852, !tbaa !2853
  ret void, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2855 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !796), !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2860, metadata !796), !dbg !2868
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2861, metadata !796), !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2862, metadata !796), !dbg !2870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2863, metadata !796), !dbg !2871
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2872
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2864, metadata !796), !dbg !2873
  %8 = tail call i32* @__errno_location() #1, !dbg !2874
  %9 = load i32, i32* %8, align 4, !dbg !2874, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2865, metadata !796), !dbg !2875
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2876
  %11 = load i32, i32* %10, align 8, !dbg !2876, !tbaa !2761
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2877
  %13 = load i32, i32* %12, align 4, !dbg !2877, !tbaa !2823
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2878
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2879
  %16 = load i8*, i8** %15, align 8, !dbg !2879, !tbaa !2850
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2880
  %18 = load i8*, i8** %17, align 8, !dbg !2880, !tbaa !2853
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2866, metadata !796), !dbg !2882
  store i32 %9, i32* %8, align 4, !dbg !2883, !tbaa !1015
  ret i64 %19, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2885 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !796), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2892, metadata !796), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2893, metadata !796), !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2894, metadata !796), !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2895, metadata !796), !dbg !2958
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2896, metadata !796), !dbg !2959
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2897, metadata !796), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2898, metadata !796), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2899, metadata !796), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2901, metadata !796), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2902, metadata !796), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2903, metadata !796), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2904, metadata !796), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2905, metadata !796), !dbg !2967
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2968
  %14 = icmp eq i64 %13, 1, !dbg !2969
  %15 = lshr i32 %5, 1, !dbg !2970
  %16 = trunc i32 %15 to i8, !dbg !2970
  %17 = and i8 %16, 1, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2907, metadata !796), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2908, metadata !796), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2909, metadata !796), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2910, metadata !796), !dbg !2973
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2974

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2910, metadata !796), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2905, metadata !796), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2904, metadata !796), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2899, metadata !796), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2898, metadata !796), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2895, metadata !796), !dbg !2958
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
  ], !dbg !2975

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2895, metadata !796), !dbg !2958
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2895, metadata !796), !dbg !2958
  br label %95, !dbg !2976

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2895, metadata !796), !dbg !2958
  %43 = and i8 %36, 1, !dbg !2978
  %44 = icmp eq i8 %43, 0, !dbg !2978
  br i1 %44, label %45, label %95, !dbg !2976

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2980
  br i1 %46, label %95, label %47, !dbg !2984

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2986, !tbaa !1051
  br label %95, !dbg !2986

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 %28), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2898, metadata !796), !dbg !2961
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 %28), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2899, metadata !796), !dbg !2962
  br label %51, !dbg !2993

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2899, metadata !796), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2898, metadata !796), !dbg !2961
  %54 = and i8 %36, 1, !dbg !2994
  %55 = icmp eq i8 %54, 0, !dbg !2994
  br i1 %55, label %56, label %73, !dbg !2996

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2901, metadata !796), !dbg !2963
  %57 = load i8, i8* %52, align 1, !dbg !2997, !tbaa !1051
  %58 = icmp eq i8 %57, 0, !dbg !3001
  br i1 %58, label %73, label %59, !dbg !3001

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3003

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !3003
  br i1 %64, label %65, label %67, !dbg !3007

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3009
  store i8 %61, i8* %66, align 1, !dbg !3009, !tbaa !1051
  br label %67, !dbg !3009

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2901, metadata !796), !dbg !2963
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2901, metadata !796), !dbg !2963
  %70 = load i8, i8* %69, align 1, !dbg !2997, !tbaa !1051
  %71 = icmp eq i8 %70, 0, !dbg !3001
  br i1 %71, label %72, label %60, !dbg !3001, !llvm.loop !3015

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2963

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2905, metadata !796), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2903, metadata !796), !dbg !2965
  %75 = call i64 @strlen(i8* %53) #13, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2904, metadata !796), !dbg !2966
  br label %95, !dbg !3019

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2905, metadata !796), !dbg !2967
  br label %77, !dbg !3020

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2905, metadata !796), !dbg !2967
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2907, metadata !796), !dbg !2970
  br label %79, !dbg !3021

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2905, metadata !796), !dbg !2967
  %82 = and i8 %81, 1, !dbg !3022
  %83 = icmp eq i8 %82, 0, !dbg !3022
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2905, metadata !796), !dbg !2967
  %84 = select i1 %83, i8 1, i8 %80, !dbg !3024
  br label %85, !dbg !3024

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2905, metadata !796), !dbg !2967
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2895, metadata !796), !dbg !2958
  %88 = and i8 %87, 1, !dbg !3025
  %89 = icmp eq i8 %88, 0, !dbg !3025
  br i1 %89, label %90, label %95, !dbg !3027

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !3028
  br i1 %91, label %95, label %92, !dbg !3032

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !3034, !tbaa !1051
  br label %95, !dbg !3034

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2907, metadata !796), !dbg !2970
  br label %95, !dbg !3036

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !3037
  unreachable, !dbg !3037

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2907, metadata !796), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2905, metadata !796), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2904, metadata !796), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2899, metadata !796), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2898, metadata !796), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2895, metadata !796), !dbg !2958
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2900, metadata !796), !dbg !3038
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
  br label %123, !dbg !3039

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2910, metadata !796), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2900, metadata !796), !dbg !3038
  %132 = icmp eq i64 %127, -1, !dbg !3040
  br i1 %132, label %135, label %133, !dbg !3042

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !3043
  br i1 %134, label %597, label %139, !dbg !3045

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3047
  %137 = load i8, i8* %136, align 1, !dbg !3047, !tbaa !1051
  %138 = icmp eq i8 %137, 0, !dbg !3049
  br i1 %138, label %597, label %139, !dbg !3045

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2916, metadata !796), !dbg !3050
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2918, metadata !796), !dbg !3052
  br i1 %109, label %140, label %155, !dbg !3053

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !3055
  %142 = and i1 %110, %132, !dbg !3057
  br i1 %142, label %143, label %145, !dbg !3057

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2894, metadata !796), !dbg !2957
  br label %145, !dbg !3059

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2894, metadata !796), !dbg !2957
  %147 = icmp ugt i64 %141, %146, !dbg !3061
  br i1 %147, label %155, label %148, !dbg !3063

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3064
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3065
  %151 = icmp ne i32 %150, 0, !dbg !3066
  %152 = or i1 %151, %112, !dbg !3066
  %153 = xor i1 %151, true, !dbg !3066
  %154 = zext i1 %153 to i8, !dbg !3066
  br i1 %152, label %155, label %644, !dbg !3066

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2916, metadata !796), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2894, metadata !796), !dbg !2957
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3068
  %159 = load i8, i8* %158, align 1, !dbg !3068, !tbaa !1051
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2911, metadata !796), !dbg !3069
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
  ], !dbg !3070

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !3071

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !3072

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2917, metadata !796), !dbg !3051
  %163 = and i8 %128, 1, !dbg !3077
  %164 = icmp eq i8 %163, 0, !dbg !3077
  %165 = and i1 %114, %164, !dbg !3080
  br i1 %165, label %166, label %182, !dbg !3080

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !3082
  br i1 %167, label %168, label %170, !dbg !3087

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3089
  store i8 39, i8* %169, align 1, !dbg !3089, !tbaa !1051
  br label %170, !dbg !3089

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2901, metadata !796), !dbg !2963
  %172 = icmp ult i64 %171, %131, !dbg !3093
  br i1 %172, label %173, label %175, !dbg !3097

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3099
  store i8 36, i8* %174, align 1, !dbg !3099, !tbaa !1051
  br label %175, !dbg !3099

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2901, metadata !796), !dbg !2963
  %177 = icmp ult i64 %176, %131, !dbg !3103
  br i1 %177, label %178, label %180, !dbg !3107

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3109
  store i8 39, i8* %179, align 1, !dbg !3109, !tbaa !1051
  br label %180, !dbg !3109

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %182, !dbg !3113

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2901, metadata !796), !dbg !2963
  %185 = icmp ult i64 %183, %131, !dbg !3115
  br i1 %185, label %186, label %188, !dbg !3119

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3121
  store i8 92, i8* %187, align 1, !dbg !3121, !tbaa !1051
  br label %188, !dbg !3121

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2901, metadata !796), !dbg !2963
  br i1 %106, label %190, label %476, !dbg !3125

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !3127
  %192 = icmp ult i64 %191, %156, !dbg !3129
  br i1 %192, label %193, label %476, !dbg !3130

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3131
  %195 = load i8, i8* %194, align 1, !dbg !3131, !tbaa !1051
  %196 = add i8 %195, -48, !dbg !3133
  %197 = icmp ult i8 %196, 10, !dbg !3133
  br i1 %197, label %198, label %476, !dbg !3133

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !3134
  br i1 %199, label %200, label %202, !dbg !3139

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3141
  store i8 48, i8* %201, align 1, !dbg !3141, !tbaa !1051
  br label %202, !dbg !3141

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2901, metadata !796), !dbg !2963
  %204 = icmp ult i64 %203, %131, !dbg !3145
  br i1 %204, label %205, label %207, !dbg !3149

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3151
  store i8 48, i8* %206, align 1, !dbg !3151, !tbaa !1051
  br label %207, !dbg !3151

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2901, metadata !796), !dbg !2963
  br label %476, !dbg !3155

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !3156

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !3157

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !3158

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !3160

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !3162
  %215 = icmp ult i64 %214, %156, !dbg !3164
  br i1 %215, label %216, label %476, !dbg !3165

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3166
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3168
  %219 = load i8, i8* %218, align 1, !dbg !3168, !tbaa !1051
  %220 = icmp eq i8 %219, 63, !dbg !3169
  br i1 %220, label %221, label %476, !dbg !3170

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3172
  %223 = load i8, i8* %222, align 1, !dbg !3172, !tbaa !1051
  %224 = sext i8 %223 to i32, !dbg !3172
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
  ], !dbg !3173

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3174

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2900, metadata !796), !dbg !3038
  %227 = icmp ult i64 %125, %131, !dbg !3176
  br i1 %227, label %228, label %230, !dbg !3180

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3182
  store i8 63, i8* %229, align 1, !dbg !3182, !tbaa !1051
  br label %230, !dbg !3182

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2901, metadata !796), !dbg !2963
  %232 = icmp ult i64 %231, %131, !dbg !3186
  br i1 %232, label %233, label %235, !dbg !3190

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3192
  store i8 34, i8* %234, align 1, !dbg !3192, !tbaa !1051
  br label %235, !dbg !3192

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2901, metadata !796), !dbg !2963
  %237 = icmp ult i64 %236, %131, !dbg !3196
  br i1 %237, label %238, label %240, !dbg !3200

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3202
  store i8 34, i8* %239, align 1, !dbg !3202, !tbaa !1051
  br label %240, !dbg !3202

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2901, metadata !796), !dbg !2963
  %242 = icmp ult i64 %241, %131, !dbg !3206
  br i1 %242, label %243, label %245, !dbg !3210

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3212
  store i8 63, i8* %244, align 1, !dbg !3212, !tbaa !1051
  br label %245, !dbg !3212

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2901, metadata !796), !dbg !2963
  br label %476, !dbg !3216

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2915, metadata !796), !dbg !3217
  br label %257, !dbg !3218

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2915, metadata !796), !dbg !3217
  br label %257, !dbg !3219

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2915, metadata !796), !dbg !3217
  br label %255, !dbg !3220

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2915, metadata !796), !dbg !3217
  br label %255, !dbg !3221

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2915, metadata !796), !dbg !3217
  br label %257, !dbg !3222

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2915, metadata !796), !dbg !3217
  br i1 %114, label %253, label %254, !dbg !3223

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3224

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3227

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2915, metadata !796), !dbg !3217
  br i1 %118, label %257, label %644, !dbg !3229

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2915, metadata !796), !dbg !3217
  br i1 %105, label %503, label %476, !dbg !3231

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3232
  br i1 %260, label %261, label %266, !dbg !3234

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3235, !tbaa !1051
  %263 = icmp ne i8 %262, 0, !dbg !3237
  %264 = icmp ne i64 %124, 0, !dbg !3238
  %265 = or i1 %264, %263, !dbg !3240
  br i1 %265, label %476, label %272, !dbg !3240

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3241
  %268 = icmp ne i64 %124, 0, !dbg !3238
  %269 = or i1 %268, %267, !dbg !3243
  br i1 %269, label %476, label %272, !dbg !3243

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3238
  br i1 %271, label %272, label %476, !dbg !3245

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2918, metadata !796), !dbg !3052
  br label %273, !dbg !3246

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2918, metadata !796), !dbg !3052
  br i1 %118, label %476, label %644, !dbg !3247

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2918, metadata !796), !dbg !3052
  br i1 %114, label %276, label %476, !dbg !3249

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3250

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3253
  %279 = icmp ne i64 %126, 0, !dbg !3255
  %280 = or i1 %279, %278, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2892, metadata !796), !dbg !2955
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3257
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2902, metadata !796), !dbg !2964
  %283 = icmp ult i64 %125, %282, !dbg !3258
  br i1 %283, label %284, label %286, !dbg !3262

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3264
  store i8 39, i8* %285, align 1, !dbg !3264, !tbaa !1051
  br label %286, !dbg !3264

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2901, metadata !796), !dbg !2963
  %288 = icmp ult i64 %287, %282, !dbg !3268
  br i1 %288, label %289, label %291, !dbg !3272

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3274
  store i8 92, i8* %290, align 1, !dbg !3274, !tbaa !1051
  br label %291, !dbg !3274

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2901, metadata !796), !dbg !2963
  %293 = icmp ult i64 %292, %282, !dbg !3278
  br i1 %293, label %294, label %296, !dbg !3282

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3284
  store i8 39, i8* %295, align 1, !dbg !3284, !tbaa !1051
  br label %296, !dbg !3284

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %476, !dbg !3288

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3289

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2919, metadata !796), !dbg !3290
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3291
  %301 = load i16*, i16** %300, align 8, !dbg !3291, !tbaa !804
  %302 = zext i8 %159 to i64, !dbg !3291
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3291
  %304 = load i16, i16* %303, align 2, !dbg !3291, !tbaa !1366
  %305 = lshr i16 %304, 14, !dbg !3293
  %306 = trunc i16 %305 to i8, !dbg !3293
  %307 = and i8 %306, 1, !dbg !3293
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2922, metadata !796), !dbg !3294
  br label %368, !dbg !3295

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3296
  store i64 0, i64* %10, align 8, !dbg !3297
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2922, metadata !796), !dbg !3294
  %309 = icmp eq i64 %156, -1, !dbg !3298
  br i1 %309, label %310, label %312, !dbg !3300, !llvm.loop !3301

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2894, metadata !796), !dbg !2957
  br label %312, !dbg !3305, !llvm.loop !3301

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3294

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2922, metadata !796), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3306
  %317 = add i64 %315, %124, !dbg !3307
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3308
  %319 = sub i64 %313, %317, !dbg !3309
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2923, metadata !1101), !dbg !3310
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2940, metadata !1101), !dbg !3311
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2943, metadata !796), !dbg !3313
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3314

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2919, metadata !796), !dbg !3290
  %322 = icmp ugt i64 %313, %317, !dbg !3315
  br i1 %322, label %323, label %351, !dbg !3318

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3319

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3319
  %328 = load i8, i8* %327, align 1, !dbg !3319, !tbaa !1051
  %329 = icmp eq i8 %328, 0, !dbg !3321
  br i1 %329, label %348, label %330, !dbg !3322

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2919, metadata !796), !dbg !3290
  %332 = add i64 %331, %124, !dbg !3325
  %333 = icmp ult i64 %332, %313, !dbg !3315
  br i1 %333, label %324, label %348, !dbg !3318, !llvm.loop !3326

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3328
  %336 = and i1 %116, %335, !dbg !3332
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2944, metadata !796), !dbg !3333
  br i1 %336, label %337, label %355, !dbg !3332

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3334

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3334
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3335
  %342 = load i8, i8* %341, align 1, !dbg !3335, !tbaa !1051
  %343 = sext i8 %342 to i32, !dbg !3335
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3336

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2944, metadata !796), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2944, metadata !796), !dbg !3333
  %346 = icmp ult i64 %345, %320, !dbg !3328
  br i1 %346, label %338, label %354, !dbg !3339, !llvm.loop !3341

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3294

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3294

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3294

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2922, metadata !796), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3344
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3345

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3345, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2940, metadata !796), !dbg !3311
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !3347
  %358 = icmp eq i32 %357, 0, !dbg !3347
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2922, metadata !796), !dbg !3294
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3348
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2922, metadata !796), !dbg !3294
  %360 = add i64 %320, %315, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2922, metadata !796), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2923, metadata !1101), !dbg !3310
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3350
  %362 = icmp eq i32 %361, 0, !dbg !3351
  br i1 %362, label %314, label %363, !dbg !3352, !llvm.loop !3301

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3354

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3354
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2922, metadata !796), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3344
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3354
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2922, metadata !796), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2919, metadata !796), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2894, metadata !796), !dbg !2957
  %372 = and i8 %371, 1, !dbg !3355
  %373 = icmp ne i8 %372, 0, !dbg !3355
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2918, metadata !796), !dbg !3052
  %374 = icmp ult i64 %370, 2, !dbg !3356
  %375 = or i1 %373, %113, !dbg !3357
  %376 = and i1 %374, %375, !dbg !3359
  br i1 %376, label %476, label %377, !dbg !3359

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2951, metadata !796), !dbg !3361
  br label %379, !dbg !3362

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2916, metadata !796), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2900, metadata !796), !dbg !3038
  br i1 %375, label %432, label %386, !dbg !3363

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3368

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2917, metadata !796), !dbg !3051
  %388 = and i8 %382, 1, !dbg !3372
  %389 = icmp eq i8 %388, 0, !dbg !3372
  %390 = and i1 %114, %389, !dbg !3375
  br i1 %390, label %391, label %407, !dbg !3375

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3377
  br i1 %392, label %393, label %395, !dbg !3382

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3384
  store i8 39, i8* %394, align 1, !dbg !3384, !tbaa !1051
  br label %395, !dbg !3384

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2901, metadata !796), !dbg !2963
  %397 = icmp ult i64 %396, %131, !dbg !3388
  br i1 %397, label %398, label %400, !dbg !3392

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3394
  store i8 36, i8* %399, align 1, !dbg !3394, !tbaa !1051
  br label %400, !dbg !3394

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2901, metadata !796), !dbg !2963
  %402 = icmp ult i64 %401, %131, !dbg !3398
  br i1 %402, label %403, label %405, !dbg !3402

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3404
  store i8 39, i8* %404, align 1, !dbg !3404, !tbaa !1051
  br label %405, !dbg !3404

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %407, !dbg !3408

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2901, metadata !796), !dbg !2963
  %410 = icmp ult i64 %408, %131, !dbg !3410
  br i1 %410, label %411, label %413, !dbg !3414

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3416
  store i8 92, i8* %412, align 1, !dbg !3416, !tbaa !1051
  br label %413, !dbg !3416

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2901, metadata !796), !dbg !2963
  %415 = icmp ult i64 %414, %131, !dbg !3420
  br i1 %415, label %416, label %420, !dbg !3424

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3426
  %418 = or i8 %417, 48, !dbg !3426
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3426
  store i8 %418, i8* %419, align 1, !dbg !3426, !tbaa !1051
  br label %420, !dbg !3426

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2901, metadata !796), !dbg !2963
  %422 = icmp ult i64 %421, %131, !dbg !3430
  br i1 %422, label %423, label %428, !dbg !3434

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3436
  %425 = and i8 %424, 7, !dbg !3436
  %426 = or i8 %425, 48, !dbg !3436
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3436
  store i8 %426, i8* %427, align 1, !dbg !3436, !tbaa !1051
  br label %428, !dbg !3436

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2901, metadata !796), !dbg !2963
  %430 = and i8 %383, 7, !dbg !3440
  %431 = or i8 %430, 48, !dbg !3441
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2911, metadata !796), !dbg !3069
  br label %441, !dbg !3442

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3443
  %434 = icmp eq i8 %433, 0, !dbg !3443
  br i1 %434, label %441, label %435, !dbg !3445

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3446
  br i1 %436, label %437, label %439, !dbg !3451

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3453
  store i8 92, i8* %438, align 1, !dbg !3453, !tbaa !1051
  br label %439, !dbg !3453

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2916, metadata !796), !dbg !3050
  br label %441, !dbg !3457

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2916, metadata !796), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2901, metadata !796), !dbg !2963
  %447 = add i64 %380, 1, !dbg !3458
  %448 = icmp ugt i64 %378, %447, !dbg !3460
  br i1 %448, label %449, label %541, !dbg !3461

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3462
  %451 = icmp ne i8 %450, 0, !dbg !3462
  %452 = and i8 %446, 1, !dbg !3466
  %453 = icmp eq i8 %452, 0, !dbg !3466
  %454 = and i1 %451, %453, !dbg !3462
  br i1 %454, label %455, label %466, !dbg !3462

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3468
  br i1 %456, label %457, label %459, !dbg !3473

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3475
  store i8 39, i8* %458, align 1, !dbg !3475, !tbaa !1051
  br label %459, !dbg !3475

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2901, metadata !796), !dbg !2963
  %461 = icmp ult i64 %460, %131, !dbg !3479
  br i1 %461, label %462, label %464, !dbg !3483

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3485
  store i8 39, i8* %463, align 1, !dbg !3485, !tbaa !1051
  br label %464, !dbg !3485

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %466, !dbg !3489

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2901, metadata !796), !dbg !2963
  %469 = icmp ult i64 %467, %131, !dbg !3491
  br i1 %469, label %470, label %472, !dbg !3495

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3497
  store i8 %444, i8* %471, align 1, !dbg !3497, !tbaa !1051
  br label %472, !dbg !3497

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2900, metadata !796), !dbg !3038
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3501
  %475 = load i8, i8* %474, align 1, !dbg !3501, !tbaa !1051
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2911, metadata !796), !dbg !3069
  br label %379, !dbg !3502, !llvm.loop !3504

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2918, metadata !796), !dbg !3052
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2916, metadata !796), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2900, metadata !796), !dbg !3038
  br i1 %107, label %488, label %487, !dbg !3507

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3509

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3510

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3511
  %491 = zext i8 %490 to i64, !dbg !3511
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3513
  %493 = load i32, i32* %492, align 4, !dbg !3513, !tbaa !1015
  %494 = and i8 %483, 31, !dbg !3514
  %495 = zext i8 %494 to i32, !dbg !3515
  %496 = shl i32 1, %495, !dbg !3516
  %497 = and i32 %493, %496, !dbg !3516
  %498 = icmp eq i32 %497, 0, !dbg !3516
  %499 = icmp eq i8 %157, 0, !dbg !3517
  %500 = and i1 %499, %498, !dbg !3518
  br i1 %500, label %542, label %503, !dbg !3518

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3517
  br i1 %502, label %542, label %503, !dbg !3519

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2918, metadata !796), !dbg !3052
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2900, metadata !796), !dbg !3038
  br i1 %112, label %513, label %644, !dbg !3521

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2917, metadata !796), !dbg !3051
  %514 = and i8 %508, 1, !dbg !3524
  %515 = icmp eq i8 %514, 0, !dbg !3524
  %516 = and i1 %114, %515, !dbg !3527
  br i1 %516, label %517, label %533, !dbg !3527

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3529
  br i1 %518, label %519, label %521, !dbg !3534

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3536
  store i8 39, i8* %520, align 1, !dbg !3536, !tbaa !1051
  br label %521, !dbg !3536

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2901, metadata !796), !dbg !2963
  %523 = icmp ult i64 %522, %512, !dbg !3540
  br i1 %523, label %524, label %526, !dbg !3544

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3546
  store i8 36, i8* %525, align 1, !dbg !3546, !tbaa !1051
  br label %526, !dbg !3546

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2901, metadata !796), !dbg !2963
  %528 = icmp ult i64 %527, %512, !dbg !3550
  br i1 %528, label %529, label %531, !dbg !3554

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3556
  store i8 39, i8* %530, align 1, !dbg !3556, !tbaa !1051
  br label %531, !dbg !3556

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %533, !dbg !3560

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2901, metadata !796), !dbg !2963
  %536 = icmp ult i64 %534, %512, !dbg !3562
  br i1 %536, label %537, label %539, !dbg !3566

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3568
  store i8 92, i8* %538, align 1, !dbg !3568, !tbaa !1051
  br label %539, !dbg !3568

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2918, metadata !796), !dbg !3052
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2900, metadata !796), !dbg !3038
  br label %569, !dbg !3572

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2955

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2918, metadata !796), !dbg !3052
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2917, metadata !796), !dbg !3051
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2911, metadata !796), !dbg !3069
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2909, metadata !796), !dbg !2972
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2894, metadata !796), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2902, metadata !796), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2900, metadata !796), !dbg !3038
  %553 = and i8 %547, 1, !dbg !3572
  %554 = icmp ne i8 %553, 0, !dbg !3572
  %555 = and i8 %550, 1, !dbg !3576
  %556 = icmp eq i8 %555, 0, !dbg !3576
  %557 = and i1 %554, %556, !dbg !3572
  br i1 %557, label %558, label %569, !dbg !3572

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3578
  br i1 %559, label %560, label %562, !dbg !3583

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3585
  store i8 39, i8* %561, align 1, !dbg !3585, !tbaa !1051
  br label %562, !dbg !3585

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2901, metadata !796), !dbg !2963
  %564 = icmp ult i64 %563, %552, !dbg !3589
  br i1 %564, label %565, label %567, !dbg !3593

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3595
  store i8 39, i8* %566, align 1, !dbg !3595, !tbaa !1051
  br label %567, !dbg !3595

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2901, metadata !796), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2908, metadata !796), !dbg !2971
  br label %569, !dbg !3599

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2908, metadata !796), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2901, metadata !796), !dbg !2963
  %579 = icmp ult i64 %577, %570, !dbg !3601
  br i1 %579, label %580, label %582, !dbg !3605

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3607
  store i8 %572, i8* %581, align 1, !dbg !3607, !tbaa !1051
  br label %582, !dbg !3607

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2901, metadata !796), !dbg !2963
  %584 = and i8 %571, 1, !dbg !3611
  %585 = icmp eq i8 %584, 0, !dbg !3611
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2910, metadata !796), !dbg !2973
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3613
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2910, metadata !796), !dbg !2973
  br label %587, !dbg !3614

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2900, metadata !796), !dbg !3038
  br label %123, !dbg !3617, !llvm.loop !3618

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3621
  %600 = and i1 %114, %599, !dbg !3623
  %601 = xor i1 %600, true, !dbg !3623
  %602 = or i1 %112, %601, !dbg !3623
  br i1 %602, label %603, label %648, !dbg !3623

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3624
  %605 = xor i1 %604, true, !dbg !3624
  %606 = and i8 %129, 1, !dbg !3626
  %607 = icmp eq i8 %606, 0, !dbg !3626
  %608 = or i1 %607, %605, !dbg !3624
  br i1 %608, label %618, label %609, !dbg !3624

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3628
  %611 = icmp eq i8 %610, 0, !dbg !3628
  br i1 %611, label %614, label %612, !dbg !3631

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3632
  br label %659, !dbg !3633

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3634
  %616 = icmp ne i64 %126, 0, !dbg !3636
  %617 = and i1 %616, %615, !dbg !3638
  br i1 %617, label %27, label %618, !dbg !3638

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3639
  %620 = and i1 %619, %112, !dbg !3641
  br i1 %620, label %621, label %638, !dbg !3641

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2901, metadata !796), !dbg !2963
  %622 = load i8, i8* %100, align 1, !dbg !3642, !tbaa !1051
  %623 = icmp eq i8 %622, 0, !dbg !3646
  br i1 %623, label %638, label %624, !dbg !3646

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3648

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3648
  br i1 %629, label %630, label %632, !dbg !3652

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3654
  store i8 %626, i8* %631, align 1, !dbg !3654, !tbaa !1051
  br label %632, !dbg !3654

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2901, metadata !796), !dbg !2963
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2903, metadata !796), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2901, metadata !796), !dbg !2963
  %635 = load i8, i8* %634, align 1, !dbg !3642, !tbaa !1051
  %636 = icmp eq i8 %635, 0, !dbg !3646
  br i1 %636, label %637, label %625, !dbg !3646, !llvm.loop !3660

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2963

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2901, metadata !796), !dbg !2963
  %640 = icmp ult i64 %639, %131, !dbg !3663
  br i1 %640, label %641, label %659, !dbg !3665

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3666
  store i8 0, i8* %642, align 1, !dbg !3667, !tbaa !1051
  br label %659, !dbg !3666

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2955

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2955

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2955

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2892, metadata !796), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2894, metadata !796), !dbg !2957
  %653 = icmp ne i32 %650, 2, !dbg !3668
  %654 = icmp eq i8 %104, 0, !dbg !3670
  %655 = or i1 %653, %654, !dbg !3672
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2895, metadata !796), !dbg !2958
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2895, metadata !796), !dbg !2958
  %657 = and i32 %5, -3, !dbg !3673
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3674
  br label %659, !dbg !3675

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3676
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3681, metadata !796), !dbg !3685
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3682, metadata !796), !dbg !3686
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3683, metadata !796), !dbg !3688
  %4 = icmp eq i8* %3, %0, !dbg !3689
  br i1 %4, label %5, label %75, !dbg !3691

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3692
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3684, metadata !796), !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3694, metadata !796), !dbg !3710
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3708, metadata !796), !dbg !3713
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3709, metadata !796), !dbg !3714
  %7 = load i8, i8* %6, align 1, !tbaa !1051
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3715
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3715

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3718, metadata !796), !dbg !3732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3730, metadata !796), !dbg !3736
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3731, metadata !796), !dbg !3737
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1051
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3738
  %15 = icmp eq i32 %14, 84, !dbg !3738
  br i1 %15, label %16, label %72, !dbg !3738

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3741, metadata !796), !dbg !3754
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3752, metadata !796), !dbg !3758
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3753, metadata !796), !dbg !3759
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1051
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3760
  %21 = icmp eq i32 %20, 70, !dbg !3760
  br i1 %21, label %22, label %72, !dbg !3760

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3763, metadata !796), !dbg !3775
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3773, metadata !796), !dbg !3779
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3774, metadata !796), !dbg !3780
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1051
  %25 = icmp eq i8 %24, 45, !dbg !3781
  br i1 %25, label %26, label %72, !dbg !3784

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3786, metadata !796), !dbg !3797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3795, metadata !796), !dbg !3801
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3796, metadata !796), !dbg !3802
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1051
  %29 = icmp eq i8 %28, 56, !dbg !3803
  br i1 %29, label %30, label %72, !dbg !3806

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3808, metadata !796), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3816, metadata !796), !dbg !3822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3817, metadata !796), !dbg !3823
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1051
  %33 = icmp eq i8 %32, 0, !dbg !3824
  br i1 %33, label %34, label %72, !dbg !3827

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3829, !tbaa !1051
  %36 = icmp eq i8 %35, 96, !dbg !3830
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.97, i64 0, i64 0), !dbg !3829
  br label %75, !dbg !3831

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3718, metadata !796), !dbg !3832
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3730, metadata !796), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3731, metadata !796), !dbg !3837
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1051
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3838
  %43 = icmp eq i32 %42, 66, !dbg !3838
  br i1 %43, label %44, label %72, !dbg !3838

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3741, metadata !796), !dbg !3839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3752, metadata !796), !dbg !3841
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3753, metadata !796), !dbg !3842
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1051
  %47 = icmp eq i8 %46, 49, !dbg !3843
  br i1 %47, label %48, label %72, !dbg !3845

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3763, metadata !796), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3773, metadata !796), !dbg !3849
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3774, metadata !796), !dbg !3850
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1051
  %51 = icmp eq i8 %50, 56, !dbg !3851
  br i1 %51, label %52, label %72, !dbg !3852

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3786, metadata !796), !dbg !3853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3795, metadata !796), !dbg !3855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3796, metadata !796), !dbg !3856
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1051
  %55 = icmp eq i8 %54, 48, !dbg !3857
  br i1 %55, label %56, label %72, !dbg !3858

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3808, metadata !796), !dbg !3859
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3816, metadata !796), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3817, metadata !796), !dbg !3862
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1051
  %59 = icmp eq i8 %58, 51, !dbg !3863
  br i1 %59, label %60, label %72, !dbg !3864

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3865, metadata !796), !dbg !3874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3872, metadata !796), !dbg !3878
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3873, metadata !796), !dbg !3879
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1051
  %63 = icmp eq i8 %62, 48, !dbg !3880
  br i1 %63, label %64, label %72, !dbg !3883

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3885, metadata !796), !dbg !3893
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3891, metadata !796), !dbg !3897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3892, metadata !796), !dbg !3898
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1051
  %67 = icmp eq i8 %66, 0, !dbg !3899
  br i1 %67, label %68, label %72, !dbg !3902

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3903, !tbaa !1051
  %70 = icmp eq i8 %69, 96, !dbg !3904
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.99, i64 0, i64 0), !dbg !3903
  br label %75, !dbg !3905

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3906
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !3907
  br label %75, !dbg !3908

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3909
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3910 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3914, metadata !796), !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3915, metadata !796), !dbg !3918
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3916, metadata !796), !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3920, metadata !796) #10, !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3925, metadata !796) #10, !dbg !3935
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3926, metadata !796) #10, !dbg !3936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3927, metadata !796) #10, !dbg !3937
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3938
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3938
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3928, metadata !796) #10, !dbg !3939
  %6 = tail call i32* @__errno_location() #1, !dbg !3940
  %7 = load i32, i32* %6, align 4, !dbg !3940, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3929, metadata !796) #10, !dbg !3941
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3942
  %9 = load i32, i32* %8, align 4, !dbg !3942, !tbaa !2823
  %10 = or i32 %9, 1, !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3930, metadata !796) #10, !dbg !3944
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3945
  %12 = load i32, i32* %11, align 8, !dbg !3945, !tbaa !2761
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3946
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3947
  %15 = load i8*, i8** %14, align 8, !dbg !3947, !tbaa !2850
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3948
  %17 = load i8*, i8** %16, align 8, !dbg !3948, !tbaa !2853
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3949
  %19 = add i64 %18, 1, !dbg !3950
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3931, metadata !796) #10, !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3952, metadata !796) #10, !dbg !3957
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3932, metadata !796) #10, !dbg !3960
  %21 = load i32, i32* %11, align 8, !dbg !3961, !tbaa !2761
  %22 = load i8*, i8** %14, align 8, !dbg !3962, !tbaa !2850
  %23 = load i8*, i8** %16, align 8, !dbg !3963, !tbaa !2853
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3964
  store i32 %7, i32* %6, align 4, !dbg !3965, !tbaa !1015
  ret i8* %20, !dbg !3966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3921 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3920, metadata !796), !dbg !3967
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3925, metadata !796), !dbg !3968
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3926, metadata !796), !dbg !3969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3927, metadata !796), !dbg !3970
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3971
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3928, metadata !796), !dbg !3972
  %7 = tail call i32* @__errno_location() #1, !dbg !3973
  %8 = load i32, i32* %7, align 4, !dbg !3973, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3929, metadata !796), !dbg !3974
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3975
  %10 = load i32, i32* %9, align 4, !dbg !3975, !tbaa !2823
  %11 = icmp ne i64* %2, null, !dbg !3976
  %12 = xor i1 %11, true, !dbg !3976
  %13 = zext i1 %12 to i32, !dbg !3976
  %14 = or i32 %10, %13, !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3930, metadata !796), !dbg !3978
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3979
  %16 = load i32, i32* %15, align 8, !dbg !3979, !tbaa !2761
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3980
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3981
  %19 = load i8*, i8** %18, align 8, !dbg !3981, !tbaa !2850
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3982
  %21 = load i8*, i8** %20, align 8, !dbg !3982, !tbaa !2853
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3983
  %23 = add i64 %22, 1, !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3931, metadata !796), !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3952, metadata !796) #10, !dbg !3986
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3988
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3932, metadata !796), !dbg !3989
  %25 = load i32, i32* %15, align 8, !dbg !3990, !tbaa !2761
  %26 = load i8*, i8** %18, align 8, !dbg !3991, !tbaa !2850
  %27 = load i8*, i8** %20, align 8, !dbg !3992, !tbaa !2853
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3993
  store i32 %8, i32* %7, align 4, !dbg !3994, !tbaa !1015
  br i1 %11, label %29, label %30, !dbg !3995

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3996, !tbaa !1086
  br label %30, !dbg !3998

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !4000 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4004, !tbaa !804
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4002, metadata !796), !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4003, metadata !796), !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4003, metadata !796), !dbg !4006
  %2 = load i32, i32* @nslots, align 4, !dbg !4007, !tbaa !1015
  %3 = icmp sgt i32 %2, 1, !dbg !4011
  br i1 %3, label %4, label %14, !dbg !4012

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4014

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4014
  %8 = load i8*, i8** %7, align 8, !dbg !4014, !tbaa !4015
  tail call void @free(i8* %8) #10, !dbg !4017
  %9 = add nuw i64 %6, 1, !dbg !4018
  %10 = load i32, i32* @nslots, align 4, !dbg !4007, !tbaa !1015
  %11 = sext i32 %10 to i64, !dbg !4011
  %12 = icmp slt i64 %9, %11, !dbg !4011
  br i1 %12, label %5, label %13, !dbg !4012, !llvm.loop !4020

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !4023

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4023
  %16 = load i8*, i8** %15, align 8, !dbg !4023, !tbaa !4015
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4025
  br i1 %17, label %19, label %18, !dbg !4026

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !4027
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4029, !tbaa !4030
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4031, !tbaa !4015
  br label %19, !dbg !4032

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4033
  br i1 %20, label %23, label %21, !dbg !4035

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4036
  tail call void @free(i8* %22) #10, !dbg !4038
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4039, !tbaa !804
  br label %23, !dbg !4040

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !4041, !tbaa !1015
  ret void, !dbg !4042
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4043 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4047, metadata !796), !dbg !4049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4048, metadata !796), !dbg !4050
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4051
  ret i8* %3, !dbg !4052
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4053 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4057, metadata !796), !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4058, metadata !796), !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4059, metadata !796), !dbg !4073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4060, metadata !796), !dbg !4074
  %5 = tail call i32* @__errno_location() #1, !dbg !4075
  %6 = load i32, i32* %5, align 4, !dbg !4075, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4061, metadata !796), !dbg !4076
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4077, !tbaa !804
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4062, metadata !796), !dbg !4078
  %8 = icmp slt i32 %0, 0, !dbg !4079
  br i1 %8, label %9, label %10, !dbg !4081

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !4082
  unreachable, !dbg !4082

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4083, !tbaa !1015
  %12 = icmp sgt i32 %11, %0, !dbg !4084
  br i1 %12, label %34, label %13, !dbg !4085

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4086
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4087
  br i1 %15, label %16, label %17, !dbg !4089

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4090
  unreachable, !dbg !4090

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4091
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4091
  %20 = add nsw i32 %0, 1, !dbg !4093
  %21 = sext i32 %20 to i64, !dbg !4094
  %22 = shl nsw i64 %21, 4, !dbg !4095
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !4096
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4096
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4062, metadata !796), !dbg !4078
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4097, !tbaa !804
  br i1 %14, label %25, label %26, !dbg !4098

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4099, !tbaa.struct !4101
  br label %26, !dbg !4102

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4103, !tbaa !1015
  %28 = sext i32 %27 to i64, !dbg !4104
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4104
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4105
  %31 = sub nsw i32 %20, %27, !dbg !4106
  %32 = sext i32 %31 to i64, !dbg !4107
  %33 = shl nsw i64 %32, 4, !dbg !4108
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4105
  store i32 %20, i32* @nslots, align 4, !dbg !4109, !tbaa !1015
  br label %34, !dbg !4110

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4062, metadata !796), !dbg !4078
  %36 = sext i32 %0 to i64, !dbg !4111
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4112
  %38 = load i64, i64* %37, align 8, !dbg !4112, !tbaa !4030
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4066, metadata !796), !dbg !4113
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4114
  %40 = load i8*, i8** %39, align 8, !dbg !4114, !tbaa !4015
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4068, metadata !796), !dbg !4115
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4116
  %42 = load i32, i32* %41, align 4, !dbg !4116, !tbaa !2823
  %43 = or i32 %42, 1, !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4069, metadata !796), !dbg !4118
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4119
  %45 = load i32, i32* %44, align 8, !dbg !4119, !tbaa !2761
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4120
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4121
  %48 = load i8*, i8** %47, align 8, !dbg !4121, !tbaa !2850
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4122
  %50 = load i8*, i8** %49, align 8, !dbg !4122, !tbaa !2853
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4070, metadata !796), !dbg !4124
  %52 = icmp ugt i64 %38, %51, !dbg !4125
  br i1 %52, label %63, label %53, !dbg !4127

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4066, metadata !796), !dbg !4113
  store i64 %54, i64* %37, align 8, !dbg !4130, !tbaa !4030
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4131
  br i1 %55, label %57, label %56, !dbg !4133

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !4134
  br label %57, !dbg !4134

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3952, metadata !796) #10, !dbg !4135
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !4137
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4068, metadata !796), !dbg !4115
  store i8* %58, i8** %39, align 8, !dbg !4138, !tbaa !4015
  %59 = load i32, i32* %44, align 8, !dbg !4139, !tbaa !2761
  %60 = load i8*, i8** %47, align 8, !dbg !4140, !tbaa !2850
  %61 = load i8*, i8** %49, align 8, !dbg !4141, !tbaa !2853
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4142
  br label %63, !dbg !4143

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4068, metadata !796), !dbg !4115
  store i32 %6, i32* %5, align 4, !dbg !4144, !tbaa !1015
  ret i8* %64, !dbg !4145
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4146 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4150, metadata !796), !dbg !4153
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4151, metadata !796), !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4152, metadata !796), !dbg !4155
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4156
  ret i8* %4, !dbg !4157
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4158 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4162, metadata !796), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4047, metadata !796) #10, !dbg !4164
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4048, metadata !796) #10, !dbg !4166
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4167
  ret i8* %2, !dbg !4168
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4173, metadata !796), !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4174, metadata !796), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4150, metadata !796) #10, !dbg !4177
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4151, metadata !796) #10, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4152, metadata !796) #10, !dbg !4180
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4181
  ret i8* %3, !dbg !4182
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4183 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4191, metadata !4197), !dbg !4198
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4187, metadata !796), !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4188, metadata !796), !dbg !4201
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4189, metadata !796), !dbg !4202
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4203
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4190, metadata !1101), !dbg !4204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4196, metadata !796) #10, !dbg !4205
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4206
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4206
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4191, metadata !796) #10, !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4198
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4198
  %8 = icmp eq i32 %1, 10, !dbg !4208
  br i1 %8, label %9, label %10, !dbg !4210

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4211, !noalias !4212
  unreachable, !dbg !4211

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4191, metadata !4207) #10, !dbg !4198
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4215
  store i32 %1, i32* %11, align 8, !dbg !4215, !alias.scope !4212
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4215
  %13 = bitcast i32* %12 to i8*, !dbg !4215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4215
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4190, metadata !1101), !dbg !4204
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4217
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4218
  ret i8* %14, !dbg !4219
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4220 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4191, metadata !4197), !dbg !4229
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4224, metadata !796), !dbg !4231
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4225, metadata !796), !dbg !4232
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4226, metadata !796), !dbg !4233
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4227, metadata !796), !dbg !4234
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4235
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4235
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4228, metadata !1101), !dbg !4236
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4196, metadata !796) #10, !dbg !4237
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4238
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4238
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4191, metadata !796) #10, !dbg !4229
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4229
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4229
  %9 = icmp eq i32 %1, 10, !dbg !4239
  br i1 %9, label %10, label %11, !dbg !4240

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4241, !noalias !4242
  unreachable, !dbg !4241

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4191, metadata !4207) #10, !dbg !4229
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4245
  store i32 %1, i32* %12, align 8, !dbg !4245, !alias.scope !4242
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4245
  %14 = bitcast i32* %13 to i8*, !dbg !4245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4245
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4246
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4228, metadata !1101), !dbg !4236
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4247
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4248
  ret i8* %15, !dbg !4249
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4250 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4191, metadata !4197), !dbg !4256
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4254, metadata !796), !dbg !4259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4255, metadata !796), !dbg !4260
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4187, metadata !796) #10, !dbg !4261
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4188, metadata !796) #10, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4189, metadata !796) #10, !dbg !4263
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4264
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4190, metadata !1101) #10, !dbg !4265
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4196, metadata !796) #10, !dbg !4266
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4267
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4267
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4191, metadata !796) #10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4256
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4256
  %7 = icmp eq i32 %0, 10, !dbg !4268
  br i1 %7, label %8, label %9, !dbg !4269

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4270, !noalias !4271
  unreachable, !dbg !4270

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4256
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4274
  store i32 %0, i32* %10, align 8, !dbg !4274, !alias.scope !4271
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4274
  %12 = bitcast i32* %11 to i8*, !dbg !4274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4274
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4275
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4190, metadata !1101) #10, !dbg !4265
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4276
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4277
  ret i8* %13, !dbg !4278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4279 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4191, metadata !4197), !dbg !4286
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4283, metadata !796), !dbg !4289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4284, metadata !796), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4285, metadata !796), !dbg !4291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4224, metadata !796) #10, !dbg !4292
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4225, metadata !796) #10, !dbg !4293
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4226, metadata !796) #10, !dbg !4294
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4227, metadata !796) #10, !dbg !4295
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4296
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4228, metadata !1101) #10, !dbg !4297
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4196, metadata !796) #10, !dbg !4298
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4299
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4299
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4191, metadata !796) #10, !dbg !4286
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4286
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4286
  %8 = icmp eq i32 %0, 10, !dbg !4300
  br i1 %8, label %9, label %10, !dbg !4301

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4302, !noalias !4303
  unreachable, !dbg !4302

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4286
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4306
  store i32 %0, i32* %11, align 8, !dbg !4306, !alias.scope !4303
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4306
  %13 = bitcast i32* %12 to i8*, !dbg !4306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4306
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4228, metadata !1101) #10, !dbg !4297
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4308
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4309
  ret i8* %14, !dbg !4310
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4311 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4315, metadata !796), !dbg !4319
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4316, metadata !796), !dbg !4320
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4317, metadata !796), !dbg !4321
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4322
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4323, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4318, metadata !1101), !dbg !4325
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2781, metadata !796), !dbg !4326
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2782, metadata !796), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2783, metadata !796), !dbg !4329
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2784, metadata !796), !dbg !4330
  %6 = lshr i8 %2, 5, !dbg !4331
  %7 = zext i8 %6 to i64, !dbg !4331
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4332
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2785, metadata !796), !dbg !4333
  %9 = and i8 %2, 31, !dbg !4334
  %10 = zext i8 %9 to i32, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2787, metadata !796), !dbg !4336
  %11 = load i32, i32* %8, align 4, !dbg !4337, !tbaa !1015
  %12 = lshr i32 %11, %10, !dbg !4338
  %13 = and i32 %12, 1, !dbg !4339
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2788, metadata !796), !dbg !4340
  %14 = xor i32 %13, 1, !dbg !4341
  %15 = shl i32 %14, %10, !dbg !4342
  %16 = xor i32 %15, %11, !dbg !4343
  store i32 %16, i32* %8, align 4, !dbg !4343, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4318, metadata !1101), !dbg !4325
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4344
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4345
  ret i8* %17, !dbg !4346
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4347 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4351, metadata !796), !dbg !4353
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4352, metadata !796), !dbg !4354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4315, metadata !796) #10, !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4316, metadata !796) #10, !dbg !4357
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4317, metadata !796) #10, !dbg !4358
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4359
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4360, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4318, metadata !1101) #10, !dbg !4361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2781, metadata !796) #10, !dbg !4362
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2782, metadata !796) #10, !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2783, metadata !796) #10, !dbg !4365
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2784, metadata !796) #10, !dbg !4366
  %5 = lshr i8 %1, 5, !dbg !4367
  %6 = zext i8 %5 to i64, !dbg !4367
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4368
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2785, metadata !796) #10, !dbg !4369
  %8 = and i8 %1, 31, !dbg !4370
  %9 = zext i8 %8 to i32, !dbg !4371
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2787, metadata !796) #10, !dbg !4372
  %10 = load i32, i32* %7, align 4, !dbg !4373, !tbaa !1015
  %11 = lshr i32 %10, %9, !dbg !4374
  %12 = and i32 %11, 1, !dbg !4375
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2788, metadata !796) #10, !dbg !4376
  %13 = xor i32 %12, 1, !dbg !4377
  %14 = shl i32 %13, %9, !dbg !4378
  %15 = xor i32 %14, %10, !dbg !4379
  store i32 %15, i32* %7, align 4, !dbg !4379, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4318, metadata !1101) #10, !dbg !4361
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4380
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4381
  ret i8* %16, !dbg !4382
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4383 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4385, metadata !796), !dbg !4386
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4351, metadata !796) #10, !dbg !4387
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4352, metadata !796) #10, !dbg !4389
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4315, metadata !796) #10, !dbg !4390
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4316, metadata !796) #10, !dbg !4392
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4317, metadata !796) #10, !dbg !4393
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4394
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4395, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4318, metadata !1101) #10, !dbg !4396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2781, metadata !796) #10, !dbg !4397
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2782, metadata !796) #10, !dbg !4399
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2783, metadata !796) #10, !dbg !4400
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2784, metadata !796) #10, !dbg !4401
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4402
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2785, metadata !796) #10, !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2787, metadata !796) #10, !dbg !4404
  %5 = load i32, i32* %4, align 4, !dbg !4405, !tbaa !1015
  %6 = or i32 %5, 67108864, !dbg !4406
  store i32 %6, i32* %4, align 4, !dbg !4406, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4318, metadata !1101) #10, !dbg !4396
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4407
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4408
  ret i8* %7, !dbg !4409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4410 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4412, metadata !796), !dbg !4414
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4413, metadata !796), !dbg !4415
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4315, metadata !796) #10, !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4316, metadata !796) #10, !dbg !4418
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4317, metadata !796) #10, !dbg !4419
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4420
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4421, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4318, metadata !1101) #10, !dbg !4422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2781, metadata !796) #10, !dbg !4423
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2782, metadata !796) #10, !dbg !4425
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2783, metadata !796) #10, !dbg !4426
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2784, metadata !796) #10, !dbg !4427
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4428
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2785, metadata !796) #10, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2787, metadata !796) #10, !dbg !4430
  %6 = load i32, i32* %5, align 4, !dbg !4431, !tbaa !1015
  %7 = or i32 %6, 67108864, !dbg !4432
  store i32 %7, i32* %5, align 4, !dbg !4432, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4318, metadata !1101) #10, !dbg !4422
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4433
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4434
  ret i8* %8, !dbg !4435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4436 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4191, metadata !4197), !dbg !4442
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4438, metadata !796), !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4439, metadata !796), !dbg !4445
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4440, metadata !796), !dbg !4446
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4447
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4196, metadata !796) #10, !dbg !4448
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4449
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4449
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4191, metadata !796) #10, !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4191, metadata !4207) #10, !dbg !4442
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4442
  %9 = icmp eq i32 %1, 10, !dbg !4450
  br i1 %9, label %10, label %11, !dbg !4451

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4452, !noalias !4453
  unreachable, !dbg !4452

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4191, metadata !4207) #10, !dbg !4442
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4456
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4457
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4458
  store i32 %1, i32* %13, align 8, !dbg !4458
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4458
  %15 = bitcast i32* %14 to i8*, !dbg !4458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4458
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4441, metadata !1101), !dbg !4459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2781, metadata !796), !dbg !4460
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2782, metadata !796), !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2783, metadata !796), !dbg !4463
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2784, metadata !796), !dbg !4464
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4465
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2785, metadata !796), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2787, metadata !796), !dbg !4467
  %17 = load i32, i32* %16, align 4, !dbg !4468, !tbaa !1015
  %18 = or i32 %17, 67108864, !dbg !4469
  store i32 %18, i32* %16, align 4, !dbg !4469, !tbaa !1015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4441, metadata !1101), !dbg !4459
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4470
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4471
  ret i8* %19, !dbg !4472
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4473 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4477, metadata !796), !dbg !4481
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4478, metadata !796), !dbg !4482
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4479, metadata !796), !dbg !4483
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4480, metadata !796), !dbg !4484
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4485, metadata !796) #10, !dbg !4495
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4490, metadata !796) #10, !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4491, metadata !796) #10, !dbg !4498
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4492, metadata !796) #10, !dbg !4499
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4493, metadata !796) #10, !dbg !4500
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4501
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4502, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4494, metadata !1101) #10, !dbg !4503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2831, metadata !796) #10, !dbg !4504
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !796) #10, !dbg !4506
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !796) #10, !dbg !4507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2831, metadata !796) #10, !dbg !4504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2831, metadata !796) #10, !dbg !4504
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4508
  store i32 10, i32* %7, align 8, !dbg !4509, !tbaa !2761
  %8 = icmp ne i8* %1, null, !dbg !4510
  %9 = icmp ne i8* %2, null, !dbg !4511
  %10 = and i1 %8, %9, !dbg !4512
  br i1 %10, label %12, label %11, !dbg !4512

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4513
  unreachable, !dbg !4513

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4514
  store i8* %1, i8** %13, align 8, !dbg !4515, !tbaa !2850
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4516
  store i8* %2, i8** %14, align 8, !dbg !4517, !tbaa !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4494, metadata !1101) #10, !dbg !4503
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4518
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4519
  ret i8* %15, !dbg !4520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4486 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4485, metadata !796), !dbg !4521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4490, metadata !796), !dbg !4522
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4491, metadata !796), !dbg !4523
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4492, metadata !796), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4493, metadata !796), !dbg !4525
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4526
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4527, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4494, metadata !1101), !dbg !4528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2831, metadata !796) #10, !dbg !4529
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !796) #10, !dbg !4531
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !796) #10, !dbg !4532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2831, metadata !796) #10, !dbg !4529
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2831, metadata !796) #10, !dbg !4529
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4533
  store i32 10, i32* %8, align 8, !dbg !4534, !tbaa !2761
  %9 = icmp ne i8* %1, null, !dbg !4535
  %10 = icmp ne i8* %2, null, !dbg !4536
  %11 = and i1 %9, %10, !dbg !4537
  br i1 %11, label %13, label %12, !dbg !4537

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4538
  unreachable, !dbg !4538

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4539
  store i8* %1, i8** %14, align 8, !dbg !4540, !tbaa !2850
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4541
  store i8* %2, i8** %15, align 8, !dbg !4542, !tbaa !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4494, metadata !1101), !dbg !4528
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4543
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4544
  ret i8* %16, !dbg !4545
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4546 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4550, metadata !796), !dbg !4553
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4551, metadata !796), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4552, metadata !796), !dbg !4555
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4477, metadata !796) #10, !dbg !4556
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4478, metadata !796) #10, !dbg !4558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4479, metadata !796) #10, !dbg !4559
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4480, metadata !796) #10, !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4485, metadata !796) #10, !dbg !4561
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4490, metadata !796) #10, !dbg !4563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4491, metadata !796) #10, !dbg !4564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4492, metadata !796) #10, !dbg !4565
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4493, metadata !796) #10, !dbg !4566
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4567
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4568, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4494, metadata !1101) #10, !dbg !4569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2831, metadata !796) #10, !dbg !4570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !796) #10, !dbg !4572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2833, metadata !796) #10, !dbg !4573
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2831, metadata !796) #10, !dbg !4570
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2831, metadata !796) #10, !dbg !4570
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4574
  store i32 10, i32* %6, align 8, !dbg !4575, !tbaa !2761
  %7 = icmp ne i8* %0, null, !dbg !4576
  %8 = icmp ne i8* %1, null, !dbg !4577
  %9 = and i1 %7, %8, !dbg !4578
  br i1 %9, label %11, label %10, !dbg !4578

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4579
  unreachable, !dbg !4579

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4580
  store i8* %0, i8** %12, align 8, !dbg !4581, !tbaa !2850
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4582
  store i8* %1, i8** %13, align 8, !dbg !4583, !tbaa !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4494, metadata !1101) #10, !dbg !4569
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4584
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4585
  ret i8* %14, !dbg !4586
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4587 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4591, metadata !796), !dbg !4595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4592, metadata !796), !dbg !4596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4593, metadata !796), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4594, metadata !796), !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4485, metadata !796) #10, !dbg !4599
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4490, metadata !796) #10, !dbg !4601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4491, metadata !796) #10, !dbg !4602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4492, metadata !796) #10, !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4493, metadata !796) #10, !dbg !4604
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4605
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4606, !tbaa.struct !4324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4494, metadata !1101) #10, !dbg !4607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2831, metadata !796) #10, !dbg !4608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !796) #10, !dbg !4610
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2833, metadata !796) #10, !dbg !4611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2831, metadata !796) #10, !dbg !4608
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2831, metadata !796) #10, !dbg !4608
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4612
  store i32 10, i32* %7, align 8, !dbg !4613, !tbaa !2761
  %8 = icmp ne i8* %0, null, !dbg !4614
  %9 = icmp ne i8* %1, null, !dbg !4615
  %10 = and i1 %8, %9, !dbg !4616
  br i1 %10, label %12, label %11, !dbg !4616

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4617
  unreachable, !dbg !4617

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4618
  store i8* %0, i8** %13, align 8, !dbg !4619, !tbaa !2850
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4620
  store i8* %1, i8** %14, align 8, !dbg !4621, !tbaa !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4494, metadata !1101) #10, !dbg !4607
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4622
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4623
  ret i8* %15, !dbg !4624
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4625 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4629, metadata !796), !dbg !4632
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4630, metadata !796), !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4631, metadata !796), !dbg !4634
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4635
  ret i8* %4, !dbg !4636
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4637 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4641, metadata !796), !dbg !4643
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4642, metadata !796), !dbg !4644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4629, metadata !796) #10, !dbg !4645
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4630, metadata !796) #10, !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4631, metadata !796) #10, !dbg !4648
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4649
  ret i8* %3, !dbg !4650
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4651 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4655, metadata !796), !dbg !4657
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4656, metadata !796), !dbg !4658
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4629, metadata !796) #10, !dbg !4659
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4630, metadata !796) #10, !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4631, metadata !796) #10, !dbg !4662
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4663
  ret i8* %3, !dbg !4664
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4665 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4669, metadata !796), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4655, metadata !796) #10, !dbg !4671
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4656, metadata !796) #10, !dbg !4673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4629, metadata !796) #10, !dbg !4674
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4630, metadata !796) #10, !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4631, metadata !796) #10, !dbg !4677
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4678
  ret i8* %2, !dbg !4679
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4680 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4683, metadata !796), !dbg !4684
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4685
  ret i32 %2, !dbg !4686
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4687 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4732, metadata !796), !dbg !4738
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4733, metadata !796), !dbg !4739
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4734, metadata !796), !dbg !4740
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4735, metadata !796), !dbg !4741
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4736, metadata !796), !dbg !4742
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4737, metadata !796), !dbg !4743
  %7 = icmp eq i8* %1, null, !dbg !4744
  br i1 %7, label %10, label %8, !dbg !4746

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4747
  br label %12, !dbg !4747

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4748
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i32 5) #10, !dbg !4749
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4750
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.109, i64 0, i64 0), i32 5) #10, !dbg !4752
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4753
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
  ], !dbg !4754

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4755
  unreachable, !dbg !4755

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.110, i64 0, i64 0), i32 5) #10, !dbg !4757
  %20 = load i8*, i8** %4, align 8, !dbg !4757, !tbaa !804
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4758
  br label %146, !dbg !4760

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.111, i64 0, i64 0), i32 5) #10, !dbg !4761
  %24 = load i8*, i8** %4, align 8, !dbg !4761, !tbaa !804
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4761
  %26 = load i8*, i8** %25, align 8, !dbg !4761, !tbaa !804
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4762
  br label %146, !dbg !4763

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.112, i64 0, i64 0), i32 5) #10, !dbg !4764
  %30 = load i8*, i8** %4, align 8, !dbg !4764, !tbaa !804
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4764
  %32 = load i8*, i8** %31, align 8, !dbg !4764, !tbaa !804
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4764
  %34 = load i8*, i8** %33, align 8, !dbg !4764, !tbaa !804
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4765
  br label %146, !dbg !4766

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.113, i64 0, i64 0), i32 5) #10, !dbg !4767
  %38 = load i8*, i8** %4, align 8, !dbg !4767, !tbaa !804
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4767
  %40 = load i8*, i8** %39, align 8, !dbg !4767, !tbaa !804
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4767
  %42 = load i8*, i8** %41, align 8, !dbg !4767, !tbaa !804
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4767
  %44 = load i8*, i8** %43, align 8, !dbg !4767, !tbaa !804
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4768
  br label %146, !dbg !4769

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.114, i64 0, i64 0), i32 5) #10, !dbg !4770
  %48 = load i8*, i8** %4, align 8, !dbg !4770, !tbaa !804
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4770
  %50 = load i8*, i8** %49, align 8, !dbg !4770, !tbaa !804
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4770
  %52 = load i8*, i8** %51, align 8, !dbg !4770, !tbaa !804
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4770
  %54 = load i8*, i8** %53, align 8, !dbg !4770, !tbaa !804
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4770
  %56 = load i8*, i8** %55, align 8, !dbg !4770, !tbaa !804
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4771
  br label %146, !dbg !4772

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.115, i64 0, i64 0), i32 5) #10, !dbg !4773
  %60 = load i8*, i8** %4, align 8, !dbg !4773, !tbaa !804
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4773
  %62 = load i8*, i8** %61, align 8, !dbg !4773, !tbaa !804
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4773
  %64 = load i8*, i8** %63, align 8, !dbg !4773, !tbaa !804
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4773
  %66 = load i8*, i8** %65, align 8, !dbg !4773, !tbaa !804
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4773
  %68 = load i8*, i8** %67, align 8, !dbg !4773, !tbaa !804
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4773
  %70 = load i8*, i8** %69, align 8, !dbg !4773, !tbaa !804
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4774
  br label %146, !dbg !4775

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.116, i64 0, i64 0), i32 5) #10, !dbg !4776
  %74 = load i8*, i8** %4, align 8, !dbg !4776, !tbaa !804
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4776
  %76 = load i8*, i8** %75, align 8, !dbg !4776, !tbaa !804
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4776
  %78 = load i8*, i8** %77, align 8, !dbg !4776, !tbaa !804
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4776
  %80 = load i8*, i8** %79, align 8, !dbg !4776, !tbaa !804
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4776
  %82 = load i8*, i8** %81, align 8, !dbg !4776, !tbaa !804
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4776
  %84 = load i8*, i8** %83, align 8, !dbg !4776, !tbaa !804
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4776
  %86 = load i8*, i8** %85, align 8, !dbg !4776, !tbaa !804
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4777
  br label %146, !dbg !4778

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.117, i64 0, i64 0), i32 5) #10, !dbg !4779
  %90 = load i8*, i8** %4, align 8, !dbg !4779, !tbaa !804
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4779
  %92 = load i8*, i8** %91, align 8, !dbg !4779, !tbaa !804
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4779
  %94 = load i8*, i8** %93, align 8, !dbg !4779, !tbaa !804
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4779
  %96 = load i8*, i8** %95, align 8, !dbg !4779, !tbaa !804
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4779
  %98 = load i8*, i8** %97, align 8, !dbg !4779, !tbaa !804
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4779
  %100 = load i8*, i8** %99, align 8, !dbg !4779, !tbaa !804
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4779
  %102 = load i8*, i8** %101, align 8, !dbg !4779, !tbaa !804
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4779
  %104 = load i8*, i8** %103, align 8, !dbg !4779, !tbaa !804
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4780
  br label %146, !dbg !4781

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.118, i64 0, i64 0), i32 5) #10, !dbg !4782
  %108 = load i8*, i8** %4, align 8, !dbg !4782, !tbaa !804
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4782
  %110 = load i8*, i8** %109, align 8, !dbg !4782, !tbaa !804
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4782
  %112 = load i8*, i8** %111, align 8, !dbg !4782, !tbaa !804
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4782
  %114 = load i8*, i8** %113, align 8, !dbg !4782, !tbaa !804
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4782
  %116 = load i8*, i8** %115, align 8, !dbg !4782, !tbaa !804
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4782
  %118 = load i8*, i8** %117, align 8, !dbg !4782, !tbaa !804
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4782
  %120 = load i8*, i8** %119, align 8, !dbg !4782, !tbaa !804
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4782
  %122 = load i8*, i8** %121, align 8, !dbg !4782, !tbaa !804
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4782
  %124 = load i8*, i8** %123, align 8, !dbg !4782, !tbaa !804
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4783
  br label %146, !dbg !4784

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.119, i64 0, i64 0), i32 5) #10, !dbg !4785
  %128 = load i8*, i8** %4, align 8, !dbg !4785, !tbaa !804
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4785
  %130 = load i8*, i8** %129, align 8, !dbg !4785, !tbaa !804
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4785
  %132 = load i8*, i8** %131, align 8, !dbg !4785, !tbaa !804
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4785
  %134 = load i8*, i8** %133, align 8, !dbg !4785, !tbaa !804
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4785
  %136 = load i8*, i8** %135, align 8, !dbg !4785, !tbaa !804
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4785
  %138 = load i8*, i8** %137, align 8, !dbg !4785, !tbaa !804
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4785
  %140 = load i8*, i8** %139, align 8, !dbg !4785, !tbaa !804
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4785
  %142 = load i8*, i8** %141, align 8, !dbg !4785, !tbaa !804
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4785
  %144 = load i8*, i8** %143, align 8, !dbg !4785, !tbaa !804
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4786
  br label %146, !dbg !4787

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4788
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4789 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4793, metadata !796), !dbg !4799
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4794, metadata !796), !dbg !4800
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4795, metadata !796), !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4796, metadata !796), !dbg !4802
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4797, metadata !796), !dbg !4803
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4798, metadata !796), !dbg !4804
  br label %6, !dbg !4805

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4798, metadata !796), !dbg !4804
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4807
  %9 = load i8*, i8** %8, align 8, !dbg !4807, !tbaa !804
  %10 = icmp eq i8* %9, null, !dbg !4810
  %11 = add i64 %7, 1, !dbg !4812
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4798, metadata !796), !dbg !4804
  br i1 %10, label %12, label %6, !dbg !4810, !llvm.loop !4814

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4819 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4830, metadata !796), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4831, metadata !796), !dbg !4839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4832, metadata !796), !dbg !4840
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4833, metadata !796), !dbg !4841
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4834, metadata !796), !dbg !4842
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4843
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4843
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4836, metadata !796), !dbg !4844
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4835, metadata !796), !dbg !4845
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4846
  %12 = icmp ult i32 %11, 41, !dbg !4846
  br i1 %12, label %13, label %18, !dbg !4846

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4850
  %15 = sext i32 %11 to i64, !dbg !4850
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4850
  %17 = add i32 %11, 8, !dbg !4850
  store i32 %17, i32* %8, align 8, !dbg !4850
  br label %21, !dbg !4850

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4852
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4852
  store i8* %20, i8** %10, align 8, !dbg !4852
  br label %21, !dbg !4852

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4846
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4854
  %25 = load i8*, i8** %24, align 8, !dbg !4854
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4856
  store i8* %25, i8** %26, align 16, !dbg !4857, !tbaa !804
  %27 = icmp eq i8* %25, null, !dbg !4858
  br i1 %27, label %30, label %28, !dbg !4859

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %29 = icmp ult i32 %22, 41, !dbg !4846
  br i1 %29, label %35, label %32, !dbg !4846

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4861
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4862
  ret void, !dbg !4862

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4852
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4852
  store i8* %34, i8** %10, align 8, !dbg !4852
  br label %40, !dbg !4852

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4850
  %37 = sext i32 %22 to i64, !dbg !4850
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4850
  %39 = add i32 %22, 8, !dbg !4850
  store i32 %39, i32* %8, align 8, !dbg !4850
  br label %40, !dbg !4850

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4846
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4854
  %44 = load i8*, i8** %43, align 8, !dbg !4854
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4856
  store i8* %44, i8** %45, align 8, !dbg !4857, !tbaa !804
  %46 = icmp eq i8* %44, null, !dbg !4858
  br i1 %46, label %30, label %47, !dbg !4859

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %48 = icmp ult i32 %41, 41, !dbg !4846
  br i1 %48, label %52, label %49, !dbg !4846

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4852
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4852
  store i8* %51, i8** %10, align 8, !dbg !4852
  br label %57, !dbg !4852

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4850
  %54 = sext i32 %41 to i64, !dbg !4850
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4850
  %56 = add i32 %41, 8, !dbg !4850
  store i32 %56, i32* %8, align 8, !dbg !4850
  br label %57, !dbg !4850

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4846
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4854
  %61 = load i8*, i8** %60, align 8, !dbg !4854
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4856
  store i8* %61, i8** %62, align 16, !dbg !4857, !tbaa !804
  %63 = icmp eq i8* %61, null, !dbg !4858
  br i1 %63, label %30, label %64, !dbg !4859

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %65 = icmp ult i32 %58, 41, !dbg !4846
  br i1 %65, label %69, label %66, !dbg !4846

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4852
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4852
  store i8* %68, i8** %10, align 8, !dbg !4852
  br label %74, !dbg !4852

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4850
  %71 = sext i32 %58 to i64, !dbg !4850
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4850
  %73 = add i32 %58, 8, !dbg !4850
  store i32 %73, i32* %8, align 8, !dbg !4850
  br label %74, !dbg !4850

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4846
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4854
  %78 = load i8*, i8** %77, align 8, !dbg !4854
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4856
  store i8* %78, i8** %79, align 8, !dbg !4857, !tbaa !804
  %80 = icmp eq i8* %78, null, !dbg !4858
  br i1 %80, label %30, label %81, !dbg !4859

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %82 = icmp ult i32 %75, 41, !dbg !4846
  br i1 %82, label %86, label %83, !dbg !4846

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4852
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4852
  store i8* %85, i8** %10, align 8, !dbg !4852
  br label %91, !dbg !4852

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4850
  %88 = sext i32 %75 to i64, !dbg !4850
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4850
  %90 = add i32 %75, 8, !dbg !4850
  store i32 %90, i32* %8, align 8, !dbg !4850
  br label %91, !dbg !4850

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4846
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4854
  %95 = load i8*, i8** %94, align 8, !dbg !4854
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4856
  store i8* %95, i8** %96, align 16, !dbg !4857, !tbaa !804
  %97 = icmp eq i8* %95, null, !dbg !4858
  br i1 %97, label %30, label %98, !dbg !4859

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %99 = icmp ult i32 %92, 41, !dbg !4846
  br i1 %99, label %103, label %100, !dbg !4846

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4852
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4852
  store i8* %102, i8** %10, align 8, !dbg !4852
  br label %108, !dbg !4852

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4850
  %105 = sext i32 %92 to i64, !dbg !4850
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4850
  %107 = add i32 %92, 8, !dbg !4850
  store i32 %107, i32* %8, align 8, !dbg !4850
  br label %108, !dbg !4850

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4854
  %111 = load i8*, i8** %110, align 8, !dbg !4854
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4856
  store i8* %111, i8** %112, align 8, !dbg !4857, !tbaa !804
  %113 = icmp eq i8* %111, null, !dbg !4858
  br i1 %113, label %30, label %114, !dbg !4859

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %115 = load i8*, i8** %10, align 8, !dbg !4852
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4852
  store i8* %116, i8** %10, align 8, !dbg !4852
  %117 = bitcast i8* %115 to i8**, !dbg !4854
  %118 = load i8*, i8** %117, align 8, !dbg !4854
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4856
  store i8* %118, i8** %119, align 16, !dbg !4857, !tbaa !804
  %120 = icmp eq i8* %118, null, !dbg !4858
  br i1 %120, label %30, label %121, !dbg !4859

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %122 = load i8*, i8** %10, align 8, !dbg !4852
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4852
  store i8* %123, i8** %10, align 8, !dbg !4852
  %124 = bitcast i8* %122 to i8**, !dbg !4854
  %125 = load i8*, i8** %124, align 8, !dbg !4854
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4856
  store i8* %125, i8** %126, align 8, !dbg !4857, !tbaa !804
  %127 = icmp eq i8* %125, null, !dbg !4858
  br i1 %127, label %30, label %128, !dbg !4859

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %129 = load i8*, i8** %10, align 8, !dbg !4852
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4852
  store i8* %130, i8** %10, align 8, !dbg !4852
  %131 = bitcast i8* %129 to i8**, !dbg !4854
  %132 = load i8*, i8** %131, align 8, !dbg !4854
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4856
  store i8* %132, i8** %133, align 16, !dbg !4857, !tbaa !804
  %134 = icmp eq i8* %132, null, !dbg !4858
  br i1 %134, label %30, label %135, !dbg !4859

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %136 = load i8*, i8** %10, align 8, !dbg !4852
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4852
  store i8* %137, i8** %10, align 8, !dbg !4852
  %138 = bitcast i8* %136 to i8**, !dbg !4854
  %139 = load i8*, i8** %138, align 8, !dbg !4854
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4856
  store i8* %139, i8** %140, align 8, !dbg !4857, !tbaa !804
  %141 = icmp eq i8* %139, null, !dbg !4858
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4835, metadata !796), !dbg !4845
  %142 = select i1 %141, i64 9, i64 10, !dbg !4859
  br label %30, !dbg !4859
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4863 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4867, metadata !796), !dbg !4876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4868, metadata !796), !dbg !4877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4869, metadata !796), !dbg !4878
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4870, metadata !796), !dbg !4879
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4880
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4880
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4871, metadata !796), !dbg !4881
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4882
  call void @llvm.va_start(i8* nonnull %6), !dbg !4882
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4883
  call void @llvm.va_end(i8* nonnull %6), !dbg !4884
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4885
  ret void, !dbg !4885
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4886 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #10, !dbg !4887
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.123, i64 0, i64 0)) #10, !dbg !4888
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.124, i64 0, i64 0), i32 5) #10, !dbg !4890
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.126, i64 0, i64 0)) #10, !dbg !4891
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.127, i64 0, i64 0), i32 5) #10, !dbg !4892
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4892, !tbaa !804
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4893
  ret void, !dbg !4894
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4895 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4899, metadata !796), !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4900, metadata !796), !dbg !4902
  %3 = udiv i64 9223372036854775807, %1, !dbg !4903
  %4 = icmp ult i64 %3, %0, !dbg !4903
  br i1 %4, label %5, label %6, !dbg !4905

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4906
  unreachable, !dbg !4906

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4907
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4908, metadata !796) #10, !dbg !4915
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4917
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4914, metadata !796) #10, !dbg !4918
  %9 = icmp eq i8* %8, null, !dbg !4919
  %10 = icmp ne i64 %7, 0, !dbg !4921
  %11 = and i1 %10, %9, !dbg !4923
  br i1 %11, label %12, label %13, !dbg !4923

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4924
  unreachable, !dbg !4924

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4925
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4909 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4908, metadata !796), !dbg !4926
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4927
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4914, metadata !796), !dbg !4928
  %3 = icmp eq i8* %2, null, !dbg !4929
  %4 = icmp ne i64 %0, 0, !dbg !4930
  %5 = and i1 %4, %3, !dbg !4931
  br i1 %5, label %6, label %7, !dbg !4931

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4932
  unreachable, !dbg !4932

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4933
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4934 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4938, metadata !796), !dbg !4941
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4939, metadata !796), !dbg !4942
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4940, metadata !796), !dbg !4943
  %4 = udiv i64 9223372036854775807, %2, !dbg !4944
  %5 = icmp ult i64 %4, %1, !dbg !4944
  br i1 %5, label %6, label %7, !dbg !4946

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4947
  unreachable, !dbg !4947

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4948
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796) #10, !dbg !4955
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4954, metadata !796) #10, !dbg !4957
  %9 = icmp eq i64 %8, 0, !dbg !4958
  %10 = icmp ne i8* %0, null, !dbg !4960
  %11 = and i1 %10, %9, !dbg !4962
  br i1 %11, label %12, label %13, !dbg !4962

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4963
  br label %19, !dbg !4965

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4966
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4949, metadata !796) #10, !dbg !4955
  %15 = icmp eq i8* %14, null, !dbg !4967
  %16 = icmp ne i64 %8, 0, !dbg !4969
  %17 = and i1 %16, %15, !dbg !4971
  br i1 %17, label %18, label %19, !dbg !4971

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4972
  unreachable, !dbg !4972

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4973
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4950 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796), !dbg !4974
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4954, metadata !796), !dbg !4975
  %3 = icmp eq i64 %1, 0, !dbg !4976
  %4 = icmp ne i8* %0, null, !dbg !4977
  %5 = and i1 %4, %3, !dbg !4978
  br i1 %5, label %6, label %7, !dbg !4978

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4979
  br label %13, !dbg !4980

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4981
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4949, metadata !796), !dbg !4974
  %9 = icmp eq i8* %8, null, !dbg !4982
  %10 = icmp ne i64 %1, 0, !dbg !4983
  %11 = and i1 %10, %9, !dbg !4984
  br i1 %11, label %12, label %13, !dbg !4984

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4985
  unreachable, !dbg !4985

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4986
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !756 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !761, metadata !796), !dbg !4987
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !762, metadata !796), !dbg !4988
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !763, metadata !796), !dbg !4989
  %4 = load i64, i64* %1, align 8, !dbg !4990, !tbaa !1086
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !764, metadata !796), !dbg !4991
  %5 = icmp eq i8* %0, null, !dbg !4992
  br i1 %5, label %6, label %13, !dbg !4994

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4995
  br i1 %7, label %8, label %17, !dbg !4998

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4999
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !764, metadata !796), !dbg !4991
  %10 = icmp ugt i64 %2, 128, !dbg !5001
  %11 = zext i1 %10 to i64, !dbg !5001
  %12 = add nuw nsw i64 %9, %11, !dbg !5002
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !764, metadata !796), !dbg !4991
  br label %17, !dbg !5003

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5004
  %15 = icmp ugt i64 %14, %4, !dbg !5007
  br i1 %15, label %20, label %16, !dbg !5008

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5009
  unreachable, !dbg !5009

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !764, metadata !796), !dbg !4991
  store i64 %18, i64* %1, align 8, !dbg !5010, !tbaa !1086
  %19 = mul i64 %18, %2, !dbg !5011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796) #10, !dbg !5012
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4954, metadata !796) #10, !dbg !5014
  br label %27, !dbg !5015

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5016
  %22 = add i64 %4, 1, !dbg !5017
  %23 = add i64 %22, %21, !dbg !5018
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !764, metadata !796), !dbg !4991
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !764, metadata !796), !dbg !4991
  store i64 %23, i64* %1, align 8, !dbg !5010, !tbaa !1086
  %24 = mul i64 %23, %2, !dbg !5011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796) #10, !dbg !5012
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4954, metadata !796) #10, !dbg !5014
  %25 = icmp eq i64 %24, 0, !dbg !5019
  br i1 %25, label %26, label %27, !dbg !5015

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !5020
  br label %34, !dbg !5021

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5022
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4949, metadata !796) #10, !dbg !5012
  %30 = icmp eq i8* %29, null, !dbg !5023
  %31 = icmp ne i64 %28, 0, !dbg !5024
  %32 = and i1 %31, %30, !dbg !5025
  br i1 %32, label %33, label %34, !dbg !5025

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !5026
  unreachable, !dbg !5026

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5027
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5028 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5030, metadata !796), !dbg !5031
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4908, metadata !796) #10, !dbg !5032
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4914, metadata !796) #10, !dbg !5035
  %3 = icmp eq i8* %2, null, !dbg !5036
  %4 = icmp ne i64 %0, 0, !dbg !5037
  %5 = and i1 %4, %3, !dbg !5038
  br i1 %5, label %6, label %7, !dbg !5038

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5039
  unreachable, !dbg !5039

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5040
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5045, metadata !796), !dbg !5047
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5046, metadata !796), !dbg !5048
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !761, metadata !796) #10, !dbg !5049
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !762, metadata !796) #10, !dbg !5051
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !763, metadata !796) #10, !dbg !5052
  %3 = load i64, i64* %1, align 8, !dbg !5053, !tbaa !1086
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  %4 = icmp eq i8* %0, null, !dbg !5055
  br i1 %4, label %5, label %8, !dbg !5056

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5057
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5058
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  store i64 %7, i64* %1, align 8, !dbg !5059, !tbaa !1086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796) #10, !dbg !5060
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4954, metadata !796) #10, !dbg !5062
  br label %17, !dbg !5063

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5064
  br i1 %9, label %11, label %10, !dbg !5065

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !5066
  unreachable, !dbg !5066

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5067
  %13 = add i64 %3, 1, !dbg !5068
  %14 = add i64 %13, %12, !dbg !5069
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !764, metadata !796) #10, !dbg !5054
  store i64 %14, i64* %1, align 8, !dbg !5059, !tbaa !1086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4949, metadata !796) #10, !dbg !5060
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4954, metadata !796) #10, !dbg !5062
  %15 = icmp eq i64 %14, 0, !dbg !5070
  br i1 %15, label %16, label %17, !dbg !5063

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !5071
  br label %24, !dbg !5072

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5073
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4949, metadata !796) #10, !dbg !5060
  %20 = icmp eq i8* %19, null, !dbg !5074
  %21 = icmp ne i64 %18, 0, !dbg !5075
  %22 = and i1 %21, %20, !dbg !5076
  br i1 %22, label %23, label %24, !dbg !5076

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !5077
  unreachable, !dbg !5077

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5078
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5079 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5081, metadata !796), !dbg !5082
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4908, metadata !796) #10, !dbg !5083
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4914, metadata !796) #10, !dbg !5086
  %3 = icmp eq i8* %2, null, !dbg !5087
  %4 = icmp ne i64 %0, 0, !dbg !5088
  %5 = and i1 %4, %3, !dbg !5089
  br i1 %5, label %6, label %7, !dbg !5089

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5090
  unreachable, !dbg !5090

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5091
  ret i8* %2, !dbg !5092
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5093 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5095, metadata !796), !dbg !5098
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5096, metadata !796), !dbg !5099
  %3 = udiv i64 9223372036854775807, %1, !dbg !5100
  %4 = icmp ult i64 %3, %0, !dbg !5100
  br i1 %4, label %8, label %5, !dbg !5102

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5103
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5097, metadata !796), !dbg !5105
  %7 = icmp eq i8* %6, null, !dbg !5106
  br i1 %7, label %8, label %9, !dbg !5107

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !5109
  unreachable, !dbg !5109

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5110
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5111 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5113, metadata !796), !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5114, metadata !796), !dbg !5116
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4908, metadata !796) #10, !dbg !5117
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5119
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4914, metadata !796) #10, !dbg !5120
  %4 = icmp eq i8* %3, null, !dbg !5121
  %5 = icmp ne i64 %1, 0, !dbg !5122
  %6 = and i1 %5, %4, !dbg !5123
  br i1 %6, label %7, label %8, !dbg !5123

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5124
  unreachable, !dbg !5124

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5125
  ret i8* %3, !dbg !5126
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5127 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5129, metadata !796), !dbg !5130
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !5131
  %3 = add i64 %2, 1, !dbg !5132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5113, metadata !796) #10, !dbg !5133
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5114, metadata !796) #10, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4908, metadata !796) #10, !dbg !5137
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5139
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4914, metadata !796) #10, !dbg !5140
  %5 = icmp eq i8* %4, null, !dbg !5141
  %6 = icmp ne i64 %3, 0, !dbg !5142
  %7 = and i1 %6, %5, !dbg !5143
  br i1 %7, label %8, label %9, !dbg !5143

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5144
  unreachable, !dbg !5144

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5145
  ret i8* %4, !dbg !5146
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5147 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5149, !tbaa !1015
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #10, !dbg !5150
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #10, !dbg !5151
  tail call void @abort() #14, !dbg !5153
  unreachable, !dbg !5153
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5154 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5157, metadata !796), !dbg !5163
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5158, metadata !796), !dbg !5164
  %3 = icmp eq i64 %0, 0, !dbg !5165
  %4 = icmp eq i64 %1, 0, !dbg !5166
  %5 = or i1 %3, %4, !dbg !5168
  br i1 %5, label %12, label %6, !dbg !5168

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5169
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5160, metadata !796), !dbg !5170
  %8 = udiv i64 %7, %1, !dbg !5171
  %9 = icmp eq i64 %8, %0, !dbg !5173
  br i1 %9, label %12, label %10, !dbg !5174

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5175
  store i32 12, i32* %11, align 4, !dbg !5177, !tbaa !1015
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5157, metadata !796), !dbg !5163
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5158, metadata !796), !dbg !5164
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5178
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5159, metadata !796), !dbg !5179
  br label %16, !dbg !5180

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5181
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5182 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5227, metadata !796), !dbg !5231
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5228, metadata !796), !dbg !5232
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5230, metadata !796), !dbg !5233
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5234
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5229, metadata !796), !dbg !5235
  %3 = icmp slt i32 %2, 0, !dbg !5236
  br i1 %3, label %4, label %6, !dbg !5238

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5239
  br label %24, !dbg !5240

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5241
  %8 = icmp eq i32 %7, 0, !dbg !5241
  br i1 %8, label %13, label %9, !dbg !5243

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5244
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5246
  %12 = icmp eq i64 %11, -1, !dbg !5248
  br i1 %12, label %16, label %13, !dbg !5249

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5250
  %15 = icmp eq i32 %14, 0, !dbg !5250
  br i1 %15, label %16, label %18, !dbg !5251

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5228, metadata !796), !dbg !5232
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5253
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5230, metadata !796), !dbg !5233
  br label %24, !dbg !5254

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5255
  %20 = load i32, i32* %19, align 4, !dbg !5255, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5228, metadata !796), !dbg !5232
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5228, metadata !796), !dbg !5232
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5253
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5230, metadata !796), !dbg !5233
  %22 = icmp eq i32 %20, 0, !dbg !5256
  br i1 %22, label %24, label %23, !dbg !5254

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5258, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5230, metadata !796), !dbg !5233
  br label %24, !dbg !5260

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5261
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !356 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !364, metadata !796), !dbg !5262
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !365, metadata !796), !dbg !5263
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5264
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !5264
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !366, metadata !796), !dbg !5265
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !377, metadata !796), !dbg !5266
  call void @llvm.va_start(i8* nonnull %4), !dbg !5267
  %5 = icmp eq i32 %1, 1030, !dbg !5268
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5268

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5269

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5270
  %12 = load i8*, i8** %11, align 16, !dbg !5270
  %13 = sext i32 %7 to i64, !dbg !5270
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5270
  %15 = add i32 %7, 8, !dbg !5270
  store i32 %15, i32* %6, align 16, !dbg !5270
  br label %20, !dbg !5270

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5272
  %18 = load i8*, i8** %17, align 8, !dbg !5272
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5272
  store i8* %19, i8** %17, align 8, !dbg !5272
  br label %20, !dbg !5272

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5274
  %23 = load i32, i32* %22, align 4, !dbg !5274
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !378, metadata !796), !dbg !5276
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5277, !tbaa !1015
  %25 = icmp sgt i32 %24, -1, !dbg !5279
  br i1 %25, label %26, label %39, !dbg !5280

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !5281
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !377, metadata !796), !dbg !5266
  %28 = icmp sgt i32 %27, -1, !dbg !5283
  br i1 %28, label %36, label %29, !dbg !5285

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !5286
  %31 = load i32, i32* %30, align 4, !dbg !5286, !tbaa !1015
  %32 = icmp eq i32 %31, 22, !dbg !5288
  br i1 %32, label %33, label %36, !dbg !5289

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5291
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !377, metadata !796), !dbg !5266
  %35 = icmp slt i32 %34, 0, !dbg !5293
  br i1 %35, label %75, label %36, !dbg !5295

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !377, metadata !796), !dbg !5266
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !1015
  br label %42, !dbg !5296

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5297
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !377, metadata !796), !dbg !5266
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5298
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !377, metadata !796), !dbg !5266
  %45 = icmp sgt i32 %44, -1, !dbg !5300
  %46 = icmp eq i32 %43, -1, !dbg !5301
  %47 = and i1 %45, %46, !dbg !5302
  br i1 %47, label %48, label %75, !dbg !5302

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !5303
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !381, metadata !796), !dbg !5304
  %50 = icmp slt i32 %49, 0, !dbg !5305
  br i1 %50, label %55, label %51, !dbg !5306

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5307
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !5309
  %54 = icmp eq i32 %53, -1, !dbg !5310
  br i1 %54, label %55, label %75, !dbg !5311

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !5313
  %57 = load i32, i32* %56, align 4, !dbg !5313, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !384, metadata !796), !dbg !5314
  %58 = call i32 @close(i32 %44) #10, !dbg !5315
  store i32 %57, i32* %56, align 4, !dbg !5316, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !377, metadata !796), !dbg !5266
  br label %75, !dbg !5317

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5318

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5319
  %62 = load i8*, i8** %61, align 16, !dbg !5319
  %63 = sext i32 %7 to i64, !dbg !5319
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5319
  %65 = add i32 %7, 8, !dbg !5319
  store i32 %65, i32* %6, align 16, !dbg !5319
  br label %70, !dbg !5319

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5321
  %68 = load i8*, i8** %67, align 8, !dbg !5321
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5321
  store i8* %69, i8** %67, align 8, !dbg !5321
  br label %70, !dbg !5321

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5323
  %73 = load i8*, i8** %72, align 8, !dbg !5323
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !387, metadata !796), !dbg !5325
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !5326
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !377, metadata !796), !dbg !5266
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !377, metadata !796), !dbg !5266
  call void @llvm.va_end(i8* nonnull %4), !dbg !5327
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !5328
  ret i32 %76, !dbg !5329
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5330 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5375, metadata !796), !dbg !5376
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5377
  br i1 %2, label %6, label %3, !dbg !5379

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5380
  %5 = icmp eq i32 %4, 0, !dbg !5380
  br i1 %5, label %6, label %8, !dbg !5382

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5384
  br label %17, !dbg !5385

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5386, metadata !796) #10, !dbg !5391
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5393
  %10 = load i32, i32* %9, align 8, !dbg !5393, !tbaa !1493
  %11 = and i32 %10, 256, !dbg !5395
  %12 = icmp eq i32 %11, 0, !dbg !5395
  br i1 %12, label %15, label %13, !dbg !5396

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5397
  br label %15, !dbg !5397

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5398
  br label %17, !dbg !5399

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5400
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5401 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5446, metadata !796), !dbg !5452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5447, metadata !796), !dbg !5453
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5448, metadata !796), !dbg !5454
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5455
  %5 = load i8*, i8** %4, align 8, !dbg !5455, !tbaa !5456
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5457
  %7 = load i8*, i8** %6, align 8, !dbg !5457, !tbaa !5458
  %8 = icmp eq i8* %5, %7, !dbg !5459
  br i1 %8, label %9, label %28, !dbg !5460

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5461
  %11 = load i8*, i8** %10, align 8, !dbg !5461, !tbaa !1408
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5463
  %13 = load i8*, i8** %12, align 8, !dbg !5463, !tbaa !5464
  %14 = icmp eq i8* %11, %13, !dbg !5465
  br i1 %14, label %15, label %28, !dbg !5466

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5467
  %17 = load i8*, i8** %16, align 8, !dbg !5467, !tbaa !5468
  %18 = icmp eq i8* %17, null, !dbg !5469
  br i1 %18, label %19, label %28, !dbg !5470

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5472
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5473
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5449, metadata !796), !dbg !5475
  %22 = icmp eq i64 %21, -1, !dbg !5476
  br i1 %22, label %30, label %23, !dbg !5478

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5479
  %25 = load i32, i32* %24, align 8, !dbg !5480, !tbaa !1493
  %26 = and i32 %25, -17, !dbg !5480
  store i32 %26, i32* %24, align 8, !dbg !5480, !tbaa !1493
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5481
  store i64 %21, i64* %27, align 8, !dbg !5482, !tbaa !5483
  br label %30, !dbg !5484

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5485
  br label %30, !dbg !5486

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5487
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5488 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5505, metadata !796), !dbg !5514
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5506, metadata !796), !dbg !5515
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5507, metadata !796), !dbg !5516
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5508, metadata !796), !dbg !5517
  %6 = bitcast i32* %5 to i8*, !dbg !5518
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5518
  %7 = icmp eq i32* %0, null, !dbg !5519
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5505, metadata !796), !dbg !5514
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5521
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5505, metadata !796), !dbg !5514
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5522
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5509, metadata !796), !dbg !5523
  %10 = icmp ugt i64 %9, -3, !dbg !5524
  %11 = icmp ne i64 %2, 0, !dbg !5525
  %12 = and i1 %11, %10, !dbg !5527
  br i1 %12, label %13, label %18, !dbg !5527

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5528
  br i1 %14, label %18, label %15, !dbg !5530

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5532, !tbaa !1051
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5511, metadata !796), !dbg !5533
  %17 = zext i8 %16 to i32, !dbg !5534
  store i32 %17, i32* %8, align 4, !dbg !5535, !tbaa !1015
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5536
  ret i64 %19, !dbg !5536
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5537 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5582, metadata !796), !dbg !5587
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5588
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5589, metadata !796), !dbg !5592
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5594
  %4 = load i32, i32* %3, align 8, !dbg !5594, !tbaa !1493
  %5 = and i32 %4, 32, !dbg !5594
  %6 = icmp eq i32 %5, 0, !dbg !5595
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5596
  %8 = icmp ne i32 %7, 0, !dbg !5597
  br i1 %6, label %9, label %19, !dbg !5598

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5600
  %11 = icmp ne i64 %2, 0, !dbg !5600
  %12 = or i1 %11, %10, !dbg !5600
  %13 = sext i1 %8 to i32, !dbg !5600
  br i1 %12, label %22, label %14, !dbg !5600

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5602
  %16 = load i32, i32* %15, align 4, !dbg !5602, !tbaa !1015
  %17 = icmp ne i32 %16, 9, !dbg !5604
  %18 = sext i1 %17 to i32, !dbg !5604
  br label %22, !dbg !5604

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5606

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5608
  store i32 0, i32* %21, align 4, !dbg !5610, !tbaa !1015
  br label %22, !dbg !5608

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5611
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5612 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5617, metadata !796), !dbg !5637
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5618, metadata !796), !dbg !5638
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5639
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5619, metadata !796), !dbg !5640
  %3 = icmp eq i8* %2, null, !dbg !5641
  br i1 %3, label %15, label %4, !dbg !5642

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5627, metadata !796), !dbg !5643
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5628, metadata !796), !dbg !5644
  %5 = load i8, i8* %2, align 1, !dbg !5645, !tbaa !1051
  %6 = icmp eq i8 %5, 67, !dbg !5647
  br i1 %6, label %7, label %11, !dbg !5650

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5652
  %9 = load i8, i8* %8, align 1, !dbg !5652, !tbaa !1051
  %10 = icmp eq i8 %9, 0, !dbg !5655
  br i1 %10, label %14, label %11, !dbg !5657

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5633, metadata !796), !dbg !5659
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #10, !dbg !5660
  %13 = icmp eq i32 %12, 0, !dbg !5662
  br i1 %13, label %14, label %15, !dbg !5664

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5618, metadata !796), !dbg !5638
  br label %15, !dbg !5666

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5667
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5668 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5680, metadata !796), !dbg !5754
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5747, metadata !796), !dbg !5756
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5757
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5672, metadata !796), !dbg !5758
  %4 = icmp eq i8* %3, null, !dbg !5759
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %3, !dbg !5761
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5672, metadata !796), !dbg !5758
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5762, !tbaa !804
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5694, metadata !796) #10, !dbg !5763
  %7 = icmp eq i8* %6, null, !dbg !5764
  br i1 %7, label %8, label %127, !dbg !5765

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.160, i64 0, i64 0)) #10, !dbg !5766
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5695, metadata !796) #10, !dbg !5767
  %10 = icmp eq i8* %9, null, !dbg !5768
  br i1 %10, label %14, label %11, !dbg !5770

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5771, !tbaa !1051
  %13 = icmp eq i8 %12, 0, !dbg !5773
  br i1 %13, label %14, label %15, !dbg !5774

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5776

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.161, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5695, metadata !796) #10, !dbg !5767
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5777
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5698, metadata !796) #10, !dbg !5778
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5700, metadata !796) #10, !dbg !5779
  %18 = icmp eq i64 %17, 0, !dbg !5780
  br i1 %18, label %24, label %19, !dbg !5781

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5782
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5782
  %22 = load i8, i8* %21, align 1, !dbg !5782, !tbaa !1051
  %23 = icmp ne i8 %22, 47, !dbg !5784
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5785
  %27 = add i64 %17, 14, !dbg !5786
  %28 = add i64 %27, %26, !dbg !5787
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5788
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5697, metadata !796) #10, !dbg !5789
  %30 = icmp eq i8* %29, null, !dbg !5790
  br i1 %30, label %125, label %31, !dbg !5790

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5791
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5794

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5795, !tbaa !1051
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5797
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5798
  br label %37, !dbg !5799

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5797
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5798
  br label %37, !dbg !5799

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5800
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5702, metadata !796) #10, !dbg !5801
  %39 = icmp slt i32 %38, 0, !dbg !5802
  br i1 %39, label %123, label %40, !dbg !5803

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.163, i64 0, i64 0)) #10, !dbg !5804
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5703, metadata !796) #10, !dbg !5805
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5806
  br i1 %42, label %48, label %43, !dbg !5807

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5808

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5809
  br label %123, !dbg !5811

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5813
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5814
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5815, metadata !796) #10, !dbg !5820
  %53 = load i8*, i8** %46, align 8, !dbg !5822, !tbaa !5458
  %54 = load i8*, i8** %47, align 8, !dbg !5822, !tbaa !5456
  %55 = icmp ult i8* %53, %54, !dbg !5822
  br i1 %55, label %58, label %56, !dbg !5822, !prof !1411

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5823
  br label %62, !dbg !5823

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5825
  store i8* %59, i8** %46, align 8, !dbg !5825, !tbaa !5458
  %60 = load i8, i8* %53, align 1, !dbg !5825, !tbaa !1051
  %61 = zext i8 %60 to i32, !dbg !5825
  br label %62, !dbg !5825

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5827
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5746, metadata !796) #10, !dbg !5829
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5830

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5831

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5815, metadata !796) #10, !dbg !5831
  %66 = load i8*, i8** %46, align 8, !dbg !5835, !tbaa !5458
  %67 = load i8*, i8** %47, align 8, !dbg !5835, !tbaa !5456
  %68 = icmp ult i8* %66, %67, !dbg !5835
  br i1 %68, label %71, label %69, !dbg !5835, !prof !1411

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5836
  br label %75, !dbg !5836

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5837
  store i8* %72, i8** %46, align 8, !dbg !5837, !tbaa !5458
  %73 = load i8, i8* %66, align 1, !dbg !5837, !tbaa !1051
  %74 = zext i8 %73 to i32, !dbg !5837
  br label %75, !dbg !5837

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5838
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5746, metadata !796) #10, !dbg !5829
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5839, !llvm.loop !5841

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5844
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.164, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5845
  %80 = icmp slt i32 %79, 2, !dbg !5847
  br i1 %80, label %115, label %81, !dbg !5848

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5849
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5751, metadata !796) #10, !dbg !5850
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5851
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5752, metadata !796) #10, !dbg !5852
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5753, metadata !796) #10, !dbg !5853
  %84 = icmp eq i64 %51, 0, !dbg !5854
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5856

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  %89 = add i64 %86, 2, !dbg !5857
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5859
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  br label %95, !dbg !5860

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5861
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  %93 = add i64 %92, 1, !dbg !5863
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5864
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  %98 = icmp eq i8* %97, null, !dbg !5865
  br i1 %98, label %99, label %100, !dbg !5867

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  call void @free(i8* %52) #10, !dbg !5868
  br label %116, !dbg !5870

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5871
  %102 = xor i64 %83, -1, !dbg !5872
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5872
  %104 = xor i64 %82, -1, !dbg !5873
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5873
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5874, metadata !796) #10, !dbg !5883
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5882, metadata !796) #10, !dbg !5883
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5885
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5886
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5874, metadata !796) #10, !dbg !5887
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5882, metadata !796) #10, !dbg !5887
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5889
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5890
  br label %111, !dbg !5891

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5808

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5891
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5891
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5808

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5808

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5744, metadata !796) #10, !dbg !5808
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5745, metadata !796) #10, !dbg !5812
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5891
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5891
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5892
  %120 = icmp eq i64 %117, 0, !dbg !5893
  br i1 %120, label %123, label %121, !dbg !5895

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5896
  store i8 0, i8* %122, align 1, !dbg !5898, !tbaa !1051
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5694, metadata !796) #10, !dbg !5763
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5694, metadata !796) #10, !dbg !5763
  call void @free(i8* %29) #10, !dbg !5899
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5694, metadata !796) #10, !dbg !5763
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5900, !tbaa !804
  br label %127, !dbg !5901

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5673, metadata !796), !dbg !5902
  %129 = load i8, i8* %128, align 1, !dbg !5903, !tbaa !1051
  %130 = icmp eq i8 %129, 0, !dbg !5904
  br i1 %130, label %157, label %131, !dbg !5905

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5907

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5907
  %136 = icmp eq i32 %135, 0, !dbg !5908
  br i1 %136, label %143, label %137, !dbg !5909

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5910
  br i1 %138, label %139, label %147, !dbg !5912

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5913
  %141 = load i8, i8* %140, align 1, !dbg !5913, !tbaa !1051
  %142 = icmp eq i8 %141, 0, !dbg !5915
  br i1 %142, label %143, label %147, !dbg !5916

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5918
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5920
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5921
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5672, metadata !796), !dbg !5758
  br label %157, !dbg !5922

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5923
  %149 = add i64 %148, 1, !dbg !5924
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5925
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5673, metadata !796), !dbg !5902
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5926
  %152 = add i64 %151, 1, !dbg !5927
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5928
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5673, metadata !796), !dbg !5902
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5673, metadata !796), !dbg !5902
  %154 = load i8, i8* %153, align 1, !dbg !5903, !tbaa !1051
  %155 = icmp eq i8 %154, 0, !dbg !5904
  br i1 %155, label %156, label %132, !dbg !5905, !llvm.loop !5929

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5758

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5672, metadata !796), !dbg !5758
  %159 = load i8, i8* %158, align 1, !dbg !5932, !tbaa !1051
  %160 = icmp eq i8 %159, 0, !dbg !5934
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %158, !dbg !5935
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5672, metadata !796), !dbg !5758
  ret i8* %161, !dbg !5936
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

!llvm.dbg.cu = !{!2, !254, !260, !268, !280, !736, !739, !287, !294, !741, !743, !347, !751, !768, !770, !772, !360, !774, !776, !778, !781, !783, !391}
!llvm.ident = !{!786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786, !786}
!llvm.module.flags = !{!787, !788, !789, !790}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 203, type: !240, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !73)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !34, !48}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 187, size: 32, elements: !46)
!35 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = distinct !DISubprogram(name: "select_plural", scope: !35, file: !35, line: 183, type: !37, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !44)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40}
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !41, line: 136, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !43, line: 62, baseType: !39)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!44 = !{!45}
!45 = !DILocalVariable(name: "n", arg: 1, scope: !36, file: !35, line: 183, type: !40)
!46 = !{!47}
!47 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 45, size: 32, elements: !50)
!49 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!52 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!53 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!54 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!55 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!56 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!57 = !{!58, !60, !61, !63, !65, !68, !70, !71, !72, !67}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 62, baseType: !39)
!62 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !{!74, !77, !79, !81, !0, !110, !112, !114, !116, !118, !120, !238}
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 131, type: !76, isLocal: true, isDefinition: true)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "min_digest_line_length", scope: !2, file: !3, line: 134, type: !61, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "digest_hex_bytes", scope: !2, file: !3, line: 137, type: !61, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "infomap", scope: !83, file: !35, line: 632, type: !107, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !35, file: !35, line: 630, type: !84, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !68}
!86 = !{!87, !88, !89, !96, !98, !99, !100, !103, !104, !106}
!87 = !DILocalVariable(name: "program", arg: 1, scope: !83, file: !35, line: 630, type: !68)
!88 = !DILocalVariable(name: "node", scope: !83, file: !35, line: 642, type: !68)
!89 = !DILocalVariable(name: "map_prog", scope: !83, file: !35, line: 643, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !83, file: !35, line: 632, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !92, file: !35, line: 632, baseType: !68, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !92, file: !35, line: 632, baseType: !68, size: 64, offset: 64)
!96 = !DILocalVariable(name: "__s1_len", scope: !97, file: !35, line: 645, type: !61)
!97 = distinct !DILexicalBlock(scope: !83, file: !35, line: 645, column: 33)
!98 = !DILocalVariable(name: "__s2_len", scope: !97, file: !35, line: 645, type: !61)
!99 = !DILocalVariable(name: "lc_messages", scope: !83, file: !35, line: 655, type: !68)
!100 = !DILocalVariable(name: "__s1_len", scope: !101, file: !35, line: 656, type: !61)
!101 = distinct !DILexicalBlock(scope: !102, file: !35, line: 656, column: 22)
!102 = distinct !DILexicalBlock(scope: !83, file: !35, line: 656, column: 7)
!103 = !DILocalVariable(name: "__s2_len", scope: !101, file: !35, line: 656, type: !61)
!104 = !DILocalVariable(name: "__s2", scope: !105, file: !35, line: 656, type: !65)
!105 = distinct !DILexicalBlock(scope: !101, file: !35, line: 656, column: 22)
!106 = !DILocalVariable(name: "__result", scope: !105, file: !35, line: 656, type: !70)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 896, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 7)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "status_only", scope: !2, file: !3, line: 141, type: !76, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "warn", scope: !2, file: !3, line: 145, type: !76, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !3, line: 151, type: !76, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "ignore_missing", scope: !2, file: !3, line: 148, type: !76, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "strict", scope: !2, file: !3, line: 155, type: !76, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "bin2hex", scope: !122, file: !3, line: 723, type: !235, isLocal: true, isDefinition: true)
!122 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 644, type: !123, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!76, !68}
!125 = !{!126, !127, !182, !183, !184, !185, !186, !187, !188, !192, !193, !194, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !211, !214, !215, !217, !218, !220, !221, !222, !226, !227, !233}
!126 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !122, file: !3, line: 644, type: !68)
!127 = !DILocalVariable(name: "checkfile_stream", scope: !122, file: !3, line: 646, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !131)
!130 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !133)
!132 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !154, !155, !156, !157, !160, !161, !163, !167, !170, !172, !173, !174, !175, !176, !177, !178}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !132, line: 242, baseType: !70, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !131, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !131, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !131, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !131, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !131, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !131, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !131, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !131, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !131, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !131, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !131, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !131, file: !132, line: 260, baseType: !147, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !149)
!149 = !{!150, !151, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !148, file: !132, line: 157, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !148, file: !132, line: 158, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !148, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !131, file: !132, line: 262, baseType: !152, size: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !131, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !131, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !131, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 140, baseType: !159)
!159 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !131, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !131, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !131, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 1)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !131, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !132, line: 150, baseType: null)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 141, baseType: !159)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !131, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !131, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !131, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !131, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !131, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !131, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !131, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 20)
!182 = !DILocalVariable(name: "n_misformatted_lines", scope: !122, file: !3, line: 647, type: !40)
!183 = !DILocalVariable(name: "n_improperly_formatted_lines", scope: !122, file: !3, line: 648, type: !40)
!184 = !DILocalVariable(name: "n_mismatched_checksums", scope: !122, file: !3, line: 649, type: !40)
!185 = !DILocalVariable(name: "n_open_or_read_failures", scope: !122, file: !3, line: 650, type: !40)
!186 = !DILocalVariable(name: "properly_formatted_lines", scope: !122, file: !3, line: 651, type: !76)
!187 = !DILocalVariable(name: "matched_checksums", scope: !122, file: !3, line: 652, type: !76)
!188 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !122, file: !3, line: 653, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 24)
!192 = !DILocalVariable(name: "bin_buffer", scope: !122, file: !3, line: 655, type: !71)
!193 = !DILocalVariable(name: "line_number", scope: !122, file: !3, line: 656, type: !40)
!194 = !DILocalVariable(name: "line", scope: !122, file: !3, line: 657, type: !58)
!195 = !DILocalVariable(name: "line_chars_allocated", scope: !122, file: !3, line: 658, type: !61)
!196 = !DILocalVariable(name: "is_stdin", scope: !122, file: !3, line: 659, type: !76)
!197 = !DILocalVariable(name: "__s1_len", scope: !198, file: !3, line: 659, type: !61)
!198 = distinct !DILexicalBlock(scope: !122, file: !3, line: 659, column: 19)
!199 = !DILocalVariable(name: "__s2_len", scope: !198, file: !3, line: 659, type: !61)
!200 = !DILocalVariable(name: "__s2", scope: !201, file: !3, line: 659, type: !65)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 659, column: 19)
!202 = !DILocalVariable(name: "__result", scope: !201, file: !3, line: 659, type: !70)
!203 = !DILocalVariable(name: "filename", scope: !204, file: !3, line: 682, type: !58)
!204 = distinct !DILexicalBlock(scope: !122, file: !3, line: 681, column: 5)
!205 = !DILocalVariable(name: "binary", scope: !204, file: !3, line: 683, type: !70)
!206 = !DILocalVariable(name: "hex_digest", scope: !204, file: !3, line: 684, type: !71)
!207 = !DILocalVariable(name: "line_length", scope: !204, file: !3, line: 685, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !209, line: 109, baseType: !210)
!209 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !159)
!211 = !DILocalVariable(name: "__s1_len", scope: !212, file: !3, line: 705, type: !61)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 705, column: 32)
!213 = distinct !DILexicalBlock(scope: !204, file: !3, line: 704, column: 11)
!214 = !DILocalVariable(name: "__s2_len", scope: !212, file: !3, line: 705, type: !61)
!215 = !DILocalVariable(name: "__s2", scope: !216, file: !3, line: 705, type: !65)
!216 = distinct !DILexicalBlock(scope: !212, file: !3, line: 705, column: 32)
!217 = !DILocalVariable(name: "__result", scope: !216, file: !3, line: 705, type: !70)
!218 = !DILocalVariable(name: "ok", scope: !219, file: !3, line: 727, type: !76)
!219 = distinct !DILexicalBlock(scope: !213, file: !3, line: 722, column: 9)
!220 = !DILocalVariable(name: "missing", scope: !219, file: !3, line: 728, type: !76)
!221 = !DILocalVariable(name: "needs_escape", scope: !219, file: !3, line: 731, type: !76)
!222 = !DILocalVariable(name: "digest_bin_bytes", scope: !223, file: !3, line: 755, type: !61)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 754, column: 13)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 748, column: 20)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 737, column: 15)
!226 = !DILocalVariable(name: "cnt", scope: !223, file: !3, line: 756, type: !61)
!227 = !DILocalVariable(name: "__res", scope: !228, file: !3, line: 762, type: !70)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 762, column: 23)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 762, column: 23)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 761, column: 17)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 760, column: 15)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 760, column: 15)
!233 = !DILocalVariable(name: "__res", scope: !234, file: !3, line: 764, type: !70)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 764, column: 27)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 16)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !70, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 3072, elements: !250)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !243, line: 104, size: 256, elements: !244)
!243 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !{!245, !246, !247, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !243, line: 106, baseType: !68, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !242, file: !243, line: 109, baseType: !70, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !242, file: !243, line: 110, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !242, file: !243, line: 111, baseType: !70, size: 32, offset: 192)
!250 = !{!251}
!251 = !DISubrange(count: 12)
!252 = !DIGlobalVariableExpression(var: !253)
!253 = distinct !DIGlobalVariable(name: "Version", scope: !254, file: !255, line: 2, type: !68, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, globals: !257)
!255 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !{}
!257 = !{!252}
!258 = !DIGlobalVariableExpression(var: !259)
!259 = distinct !DIGlobalVariable(name: "file_name", scope: !260, file: !265, line: 36, type: !68, isLocal: true, isDefinition: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, globals: !262)
!261 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!262 = !{!258, !263}
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !260, file: !265, line: 46, type: !76, isLocal: true, isDefinition: true)
!265 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "fillbuf", scope: !268, file: !274, line: 55, type: !275, isLocal: true, isDefinition: true)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !270, globals: !273)
!269 = !DIFile(filename: "./lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!270 = !{!58, !68, !271}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 53, baseType: !272)
!272 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!273 = !{!266}
!274 = !DIFile(filename: "lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 512, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 64)
!278 = !DIGlobalVariableExpression(var: !279)
!279 = distinct !DIGlobalVariable(name: "exit_failure", scope: !280, file: !283, line: 24, type: !284, isLocal: false, isDefinition: true)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, globals: !282)
!281 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!282 = !{!278}
!283 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!285 = !DIGlobalVariableExpression(var: !286)
!286 = distinct !DIGlobalVariable(name: "program_name", scope: !287, file: !291, line: 33, type: !68, isLocal: false, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !289, globals: !290)
!288 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!289 = !{!60, !58}
!290 = !{!285}
!291 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !294, file: !306, line: 77, type: !341, isLocal: false, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !302, globals: !303)
!295 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!296 = !{!5, !297, !19}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !298)
!298 = !{!299, !300, !301}
!299 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!300 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!301 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!302 = !{!70, !72, !61, !58}
!303 = !{!292, !304, !311, !323, !325, !330, !337, !339}
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !294, file: !306, line: 93, type: !307, isLocal: false, isDefinition: true)
!306 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 320, elements: !309)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!309 = !{!310}
!310 = !DISubrange(count: 10)
!311 = !DIGlobalVariableExpression(var: !312)
!312 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !294, file: !306, line: 1043, type: !313, isLocal: false, isDefinition: true)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !306, line: 57, size: 448, elements: !314)
!314 = !{!315, !316, !317, !321, !322}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !313, file: !306, line: 60, baseType: !5, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !306, line: 63, baseType: !70, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !313, file: !306, line: 67, baseType: !318, size: 256, offset: 64)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 8)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !313, file: !306, line: 70, baseType: !68, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !313, file: !306, line: 73, baseType: !68, size: 64, offset: 384)
!323 = !DIGlobalVariableExpression(var: !324)
!324 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !294, file: !306, line: 108, type: !313, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326)
!326 = distinct !DIGlobalVariable(name: "slot0", scope: !294, file: !306, line: 834, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 256)
!330 = !DIGlobalVariableExpression(var: !331)
!331 = distinct !DIGlobalVariable(name: "slotvec", scope: !294, file: !306, line: 837, type: !332, isLocal: true, isDefinition: true)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !306, line: 826, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !333, file: !306, line: 828, baseType: !61, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !306, line: 829, baseType: !58, size: 64, offset: 64)
!337 = !DIGlobalVariableExpression(var: !338)
!338 = distinct !DIGlobalVariable(name: "nslots", scope: !294, file: !306, line: 835, type: !70, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340)
!340 = distinct !DIGlobalVariable(name: "slotvec0", scope: !294, file: !306, line: 836, type: !333, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 704, elements: !343)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!343 = !{!344}
!344 = !DISubrange(count: 11)
!345 = !DIGlobalVariableExpression(var: !346)
!346 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !347, file: !350, line: 26, type: !351, isLocal: false, isDefinition: true)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, globals: !349)
!348 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!349 = !{!345}
!350 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 47)
!354 = !DIGlobalVariableExpression(var: !355)
!355 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !356, file: !357, line: 335, type: !70, isLocal: true, isDefinition: true)
!356 = distinct !DISubprogram(name: "rpl_fcntl", scope: !357, file: !357, line: 272, type: !358, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !360, variables: !363)
!357 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!358 = !DISubroutineType(types: !359)
!359 = !{!70, !70, !70, null}
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, globals: !362)
!361 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!362 = !{!354}
!363 = !{!364, !365, !366, !377, !378, !381, !384, !387}
!364 = !DILocalVariable(name: "fd", arg: 1, scope: !356, file: !357, line: 272, type: !70)
!365 = !DILocalVariable(name: "action", arg: 2, scope: !356, file: !357, line: 272, type: !70)
!366 = !DILocalVariable(name: "arg", scope: !356, file: !357, line: 274, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !368, line: 30, baseType: !369)
!368 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !361, line: 274, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 192, elements: !165)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !361, line: 274, size: 192, elements: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !371, file: !361, line: 274, baseType: !272, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !371, file: !361, line: 274, baseType: !272, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !371, file: !361, line: 274, baseType: !60, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !371, file: !361, line: 274, baseType: !60, size: 64, offset: 128)
!377 = !DILocalVariable(name: "result", scope: !356, file: !357, line: 275, type: !70)
!378 = !DILocalVariable(name: "target", scope: !379, file: !357, line: 322, type: !70)
!379 = distinct !DILexicalBlock(scope: !380, file: !357, line: 321, column: 7)
!380 = distinct !DILexicalBlock(scope: !356, file: !357, line: 278, column: 5)
!381 = !DILocalVariable(name: "flags", scope: !382, file: !357, line: 359, type: !70)
!382 = distinct !DILexicalBlock(scope: !383, file: !357, line: 358, column: 11)
!383 = distinct !DILexicalBlock(scope: !379, file: !357, line: 357, column: 13)
!384 = !DILocalVariable(name: "saved_errno", scope: !385, file: !357, line: 362, type: !70)
!385 = distinct !DILexicalBlock(scope: !386, file: !357, line: 361, column: 15)
!386 = distinct !DILexicalBlock(scope: !382, file: !357, line: 360, column: 17)
!387 = !DILocalVariable(name: "p", scope: !388, file: !357, line: 404, type: !60)
!388 = distinct !DILexicalBlock(scope: !380, file: !357, line: 402, column: 7)
!389 = !DIGlobalVariableExpression(var: !390)
!390 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !391, file: !734, line: 120, type: !735, isLocal: true, isDefinition: true)
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !393, retainedTypes: !732, globals: !733)
!392 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!393 = !{!394}
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !395, line: 41, size: 32, elements: !396)
!395 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!397 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!398 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!399 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!400 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!401 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!402 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!403 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!404 = !DIEnumerator(name: "DAY_1", value: 131079)
!405 = !DIEnumerator(name: "DAY_2", value: 131080)
!406 = !DIEnumerator(name: "DAY_3", value: 131081)
!407 = !DIEnumerator(name: "DAY_4", value: 131082)
!408 = !DIEnumerator(name: "DAY_5", value: 131083)
!409 = !DIEnumerator(name: "DAY_6", value: 131084)
!410 = !DIEnumerator(name: "DAY_7", value: 131085)
!411 = !DIEnumerator(name: "ABMON_1", value: 131086)
!412 = !DIEnumerator(name: "ABMON_2", value: 131087)
!413 = !DIEnumerator(name: "ABMON_3", value: 131088)
!414 = !DIEnumerator(name: "ABMON_4", value: 131089)
!415 = !DIEnumerator(name: "ABMON_5", value: 131090)
!416 = !DIEnumerator(name: "ABMON_6", value: 131091)
!417 = !DIEnumerator(name: "ABMON_7", value: 131092)
!418 = !DIEnumerator(name: "ABMON_8", value: 131093)
!419 = !DIEnumerator(name: "ABMON_9", value: 131094)
!420 = !DIEnumerator(name: "ABMON_10", value: 131095)
!421 = !DIEnumerator(name: "ABMON_11", value: 131096)
!422 = !DIEnumerator(name: "ABMON_12", value: 131097)
!423 = !DIEnumerator(name: "MON_1", value: 131098)
!424 = !DIEnumerator(name: "MON_2", value: 131099)
!425 = !DIEnumerator(name: "MON_3", value: 131100)
!426 = !DIEnumerator(name: "MON_4", value: 131101)
!427 = !DIEnumerator(name: "MON_5", value: 131102)
!428 = !DIEnumerator(name: "MON_6", value: 131103)
!429 = !DIEnumerator(name: "MON_7", value: 131104)
!430 = !DIEnumerator(name: "MON_8", value: 131105)
!431 = !DIEnumerator(name: "MON_9", value: 131106)
!432 = !DIEnumerator(name: "MON_10", value: 131107)
!433 = !DIEnumerator(name: "MON_11", value: 131108)
!434 = !DIEnumerator(name: "MON_12", value: 131109)
!435 = !DIEnumerator(name: "AM_STR", value: 131110)
!436 = !DIEnumerator(name: "PM_STR", value: 131111)
!437 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!438 = !DIEnumerator(name: "D_FMT", value: 131113)
!439 = !DIEnumerator(name: "T_FMT", value: 131114)
!440 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!441 = !DIEnumerator(name: "ERA", value: 131116)
!442 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!443 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!444 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!445 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!446 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!447 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!448 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!449 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!450 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!451 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!452 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!453 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!454 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!455 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!456 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!457 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!458 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!459 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!460 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!461 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!462 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!463 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!464 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!465 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!466 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!467 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!468 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!469 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!470 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!471 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!472 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!473 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!474 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!475 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!476 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!477 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!478 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!479 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!480 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!481 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!482 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!483 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!484 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!485 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!486 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!487 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!488 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!489 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!490 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!491 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!492 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!493 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!494 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!495 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!496 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!497 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!498 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!499 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!500 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!501 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!502 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!503 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!504 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!505 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!506 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!507 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!508 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!509 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!510 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!511 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!512 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!513 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!514 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!515 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!516 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!517 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!518 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!519 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!520 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!521 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!522 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!523 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!524 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!525 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!526 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!527 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!528 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!529 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!530 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!531 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!532 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!533 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!534 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!535 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!536 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!537 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!538 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!539 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!540 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!541 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!542 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!543 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!544 = !DIEnumerator(name: "CODESET", value: 14)
!545 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!546 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!547 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!548 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!568 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!569 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!570 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!588 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!589 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!590 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!596 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!597 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!598 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!599 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!600 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!601 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!612 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!613 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!614 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!615 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!616 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!617 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!618 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!619 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!620 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!621 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!622 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!623 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!624 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!625 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!626 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!627 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!628 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!629 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!630 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!631 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!632 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!633 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!634 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!635 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!636 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!637 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!638 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!651 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!652 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!653 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!654 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!655 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!656 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!657 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!658 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!659 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!660 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!661 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!662 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!663 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!664 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!665 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!666 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!667 = !DIEnumerator(name: "THOUSEP", value: 65537)
!668 = !DIEnumerator(name: "__GROUPING", value: 65538)
!669 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!670 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!671 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!672 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!673 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!674 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!675 = !DIEnumerator(name: "__YESSTR", value: 327682)
!676 = !DIEnumerator(name: "__NOSTR", value: 327683)
!677 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!678 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!679 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!680 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!681 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!682 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!685 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!686 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!687 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!688 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!689 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!690 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!691 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!695 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!696 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!697 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!698 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!699 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!700 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!701 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!702 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!703 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!704 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!706 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!707 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!708 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!709 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!710 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!711 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!712 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!713 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!726 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!727 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!728 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!729 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!730 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!731 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!732 = !{!60, !58, !71}
!733 = !{!389}
!734 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!735 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!736 = distinct !DICompileUnit(language: DW_LANG_C99, file: !737, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !738)
!737 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!738 = !{!48}
!739 = distinct !DICompileUnit(language: DW_LANG_C99, file: !740, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256)
!740 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!741 = distinct !DICompileUnit(language: DW_LANG_C99, file: !742, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256)
!742 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!743 = distinct !DICompileUnit(language: DW_LANG_C99, file: !744, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !745, retainedTypes: !750)
!744 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!745 = !{!746}
!746 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !747, line: 41, size: 32, elements: !748)
!747 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = !{!749}
!749 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!750 = !{!60}
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !753, retainedTypes: !767)
!752 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = !{!754}
!754 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !756, file: !755, line: 192, size: 32, elements: !765)
!755 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = distinct !DISubprogram(name: "x2nrealloc", scope: !755, file: !755, line: 180, type: !757, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !760)
!757 = !DISubroutineType(types: !758)
!758 = !{!60, !60, !759, !61}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!760 = !{!761, !762, !763, !764}
!761 = !DILocalVariable(name: "p", arg: 1, scope: !756, file: !755, line: 180, type: !60)
!762 = !DILocalVariable(name: "pn", arg: 2, scope: !756, file: !755, line: 180, type: !759)
!763 = !DILocalVariable(name: "s", arg: 3, scope: !756, file: !755, line: 180, type: !61)
!764 = !DILocalVariable(name: "n", scope: !756, file: !755, line: 182, type: !61)
!765 = !{!766}
!766 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!767 = !{!61, !58, !60}
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256)
!769 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!770 = distinct !DICompileUnit(language: DW_LANG_C99, file: !771, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !750)
!771 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!772 = distinct !DICompileUnit(language: DW_LANG_C99, file: !773, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256)
!773 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!774 = distinct !DICompileUnit(language: DW_LANG_C99, file: !775, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !750)
!775 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!776 = distinct !DICompileUnit(language: DW_LANG_C99, file: !777, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !750)
!777 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!778 = distinct !DICompileUnit(language: DW_LANG_C99, file: !779, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !780)
!779 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!780 = !{!61}
!781 = distinct !DICompileUnit(language: DW_LANG_C99, file: !782, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256)
!782 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = distinct !DICompileUnit(language: DW_LANG_C99, file: !784, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !785)
!784 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!785 = !{!61, !63, !65, !68}
!786 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!787 = !{i32 2, !"Dwarf Version", i32 4}
!788 = !{i32 2, !"Debug Info Version", i32 3}
!789 = !{i32 1, !"PIC Level", i32 2}
!790 = !{i32 1, !"PIE Level", i32 2}
!791 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !792, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !70}
!794 = !{!795}
!795 = !DILocalVariable(name: "status", arg: 1, scope: !791, file: !3, line: 223, type: !70)
!796 = !DIExpression()
!797 = !DILocation(line: 223, column: 12, scope: !791)
!798 = !DILocation(line: 225, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !791, file: !3, line: 225, column: 7)
!800 = !DILocation(line: 225, column: 7, scope: !791)
!801 = !DILocation(line: 226, column: 5, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 226, column: 5)
!804 = !{!805, !805, i64 0}
!805 = !{!"any pointer", !806, i64 0}
!806 = !{!"omnipotent char", !807, i64 0}
!807 = !{!"Simple C/C++ TBAA"}
!808 = !DILocation(line: 226, column: 5, scope: !809)
!809 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 3)
!810 = !DILocation(line: 226, column: 5, scope: !811)
!811 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 2)
!812 = !DILocation(line: 229, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !799, file: !3, line: 228, column: 5)
!814 = !DILocation(line: 229, column: 7, scope: !815)
!815 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 1)
!816 = !DILocation(line: 580, column: 3, scope: !817, inlinedAt: !820)
!817 = distinct !DISubprogram(name: "emit_stdin_note", scope: !35, file: !35, line: 578, type: !818, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!818 = !DISubroutineType(types: !819)
!819 = !{null}
!820 = distinct !DILocation(line: 237, column: 7, scope: !813)
!821 = !DILocation(line: 580, column: 3, scope: !822, inlinedAt: !820)
!822 = !DILexicalBlockFile(scope: !817, file: !35, discriminator: 1)
!823 = !DILocation(line: 244, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !813, file: !3, line: 238, column: 11)
!825 = !DILocation(line: 244, column: 9, scope: !826)
!826 = !DILexicalBlockFile(scope: !824, file: !3, discriminator: 1)
!827 = !DILocation(line: 249, column: 7, scope: !813)
!828 = !DILocation(line: 249, column: 7, scope: !815)
!829 = !DILocation(line: 258, column: 7, scope: !813)
!830 = !DILocation(line: 258, column: 7, scope: !815)
!831 = !DILocation(line: 266, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !813, file: !3, line: 261, column: 11)
!833 = !DILocation(line: 266, column: 9, scope: !834)
!834 = !DILexicalBlockFile(scope: !832, file: !3, discriminator: 1)
!835 = !DILocation(line: 269, column: 7, scope: !813)
!836 = !DILocation(line: 269, column: 7, scope: !815)
!837 = !DILocation(line: 279, column: 7, scope: !813)
!838 = !DILocation(line: 279, column: 7, scope: !815)
!839 = !DILocation(line: 280, column: 7, scope: !813)
!840 = !DILocation(line: 280, column: 7, scope: !815)
!841 = !DILocation(line: 281, column: 7, scope: !813)
!842 = !DILocation(line: 281, column: 7, scope: !815)
!843 = !DILocation(line: 642, column: 15, scope: !83, inlinedAt: !844)
!844 = distinct !DILocation(line: 288, column: 7, scope: !813)
!845 = !DILocation(line: 651, column: 3, scope: !83, inlinedAt: !844)
!846 = !DILocation(line: 651, column: 3, scope: !847, inlinedAt: !844)
!847 = !DILexicalBlockFile(scope: !83, file: !35, discriminator: 1)
!848 = !DILocation(line: 655, column: 29, scope: !83, inlinedAt: !844)
!849 = !DILocation(line: 655, column: 15, scope: !83, inlinedAt: !844)
!850 = !DILocation(line: 656, column: 7, scope: !102, inlinedAt: !844)
!851 = !DILocation(line: 656, column: 19, scope: !102, inlinedAt: !844)
!852 = !DILocation(line: 656, column: 22, scope: !853, inlinedAt: !844)
!853 = !DILexicalBlockFile(scope: !102, file: !35, discriminator: 16)
!854 = !DILocation(line: 656, column: 7, scope: !855, inlinedAt: !844)
!855 = !DILexicalBlockFile(scope: !83, file: !35, discriminator: 16)
!856 = !DILocation(line: 662, column: 7, scope: !857, inlinedAt: !844)
!857 = distinct !DILexicalBlock(scope: !102, file: !35, line: 657, column: 5)
!858 = !DILocation(line: 662, column: 7, scope: !859, inlinedAt: !844)
!859 = !DILexicalBlockFile(scope: !857, file: !35, discriminator: 1)
!860 = !DILocation(line: 664, column: 5, scope: !857, inlinedAt: !844)
!861 = !DILocation(line: 665, column: 3, scope: !83, inlinedAt: !844)
!862 = !DILocation(line: 665, column: 3, scope: !847, inlinedAt: !844)
!863 = !DILocation(line: 667, column: 3, scope: !83, inlinedAt: !844)
!864 = !DILocation(line: 667, column: 3, scope: !847, inlinedAt: !844)
!865 = !DILocation(line: 291, column: 3, scope: !791)
!866 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 854, type: !867, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !870)
!867 = !DISubroutineType(types: !868)
!868 = !{!70, !70, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !884, !887, !890, !891, !894}
!871 = !DILocalVariable(name: "argc", arg: 1, scope: !866, file: !3, line: 854, type: !70)
!872 = !DILocalVariable(name: "argv", arg: 2, scope: !866, file: !3, line: 854, type: !869)
!873 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !866, file: !3, line: 856, type: !189)
!874 = !DILocalVariable(name: "bin_buffer", scope: !866, file: !3, line: 858, type: !71)
!875 = !DILocalVariable(name: "do_check", scope: !866, file: !3, line: 859, type: !76)
!876 = !DILocalVariable(name: "opt", scope: !866, file: !3, line: 860, type: !70)
!877 = !DILocalVariable(name: "ok", scope: !866, file: !3, line: 861, type: !76)
!878 = !DILocalVariable(name: "binary", scope: !866, file: !3, line: 862, type: !70)
!879 = !DILocalVariable(name: "prefix_tag", scope: !866, file: !3, line: 863, type: !76)
!880 = !DILocalVariable(name: "short_opts", scope: !866, file: !3, line: 882, type: !68)
!881 = !DILocalVariable(name: "operand_lim", scope: !866, file: !3, line: 1021, type: !869)
!882 = !DILocalVariable(name: "operandp", scope: !883, file: !3, line: 1025, type: !869)
!883 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1025, column: 3)
!884 = !DILocalVariable(name: "file", scope: !885, file: !3, line: 1027, type: !58)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1026, column: 5)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1025, column: 3)
!887 = !DILocalVariable(name: "file_is_binary", scope: !888, file: !3, line: 1033, type: !70)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1032, column: 9)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1029, column: 11)
!890 = !DILocalVariable(name: "missing", scope: !888, file: !3, line: 1034, type: !76)
!891 = !DILocalVariable(name: "needs_escape", scope: !892, file: !3, line: 1047, type: !76)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1039, column: 13)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 1036, column: 15)
!894 = !DILocalVariable(name: "i", scope: !892, file: !3, line: 1066, type: !61)
!895 = !DILocation(line: 653, column: 17, scope: !122, inlinedAt: !896)
!896 = distinct !DILocation(line: 1030, column: 15, scope: !889)
!897 = !DILocation(line: 854, column: 11, scope: !866)
!898 = !DILocation(line: 854, column: 24, scope: !866)
!899 = !DILocation(line: 856, column: 3, scope: !866)
!900 = !DILocation(line: 856, column: 17, scope: !866)
!901 = !DILocalVariable(name: "alignment", arg: 2, scope: !902, file: !35, line: 498, type: !61)
!902 = distinct !DISubprogram(name: "ptr_align", scope: !35, file: !35, line: 498, type: !903, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!60, !63, !61}
!905 = !{!906, !901, !907, !908}
!906 = !DILocalVariable(name: "ptr", arg: 1, scope: !902, file: !35, line: 498, type: !63)
!907 = !DILocalVariable(name: "p0", scope: !902, file: !35, line: 500, type: !68)
!908 = !DILocalVariable(name: "p1", scope: !902, file: !35, line: 501, type: !68)
!909 = !DILocation(line: 498, column: 36, scope: !902, inlinedAt: !910)
!910 = distinct !DILocation(line: 858, column: 31, scope: !866)
!911 = !DILocation(line: 501, column: 35, scope: !902, inlinedAt: !910)
!912 = !DILocation(line: 501, column: 15, scope: !902, inlinedAt: !910)
!913 = !DILocation(line: 502, column: 25, scope: !902, inlinedAt: !910)
!914 = !DILocation(line: 502, column: 37, scope: !902, inlinedAt: !910)
!915 = !DILocation(line: 502, column: 23, scope: !902, inlinedAt: !910)
!916 = !DILocation(line: 858, column: 18, scope: !866)
!917 = !DILocation(line: 859, column: 8, scope: !866)
!918 = !DILocation(line: 861, column: 8, scope: !866)
!919 = !DILocation(line: 862, column: 7, scope: !866)
!920 = !DILocation(line: 863, column: 8, scope: !866)
!921 = !DILocation(line: 867, column: 21, scope: !866)
!922 = !DILocation(line: 867, column: 3, scope: !866)
!923 = !DILocation(line: 868, column: 3, scope: !866)
!924 = !DILocation(line: 869, column: 3, scope: !866)
!925 = !DILocation(line: 870, column: 3, scope: !866)
!926 = !DILocation(line: 872, column: 3, scope: !866)
!927 = !DILocation(line: 876, column: 12, scope: !866)
!928 = !DILocation(line: 876, column: 3, scope: !866)
!929 = !DILocation(line: 885, column: 3, scope: !866)
!930 = !DILocation(line: 885, column: 17, scope: !931)
!931 = !DILexicalBlockFile(scope: !866, file: !3, discriminator: 1)
!932 = !DILocation(line: 860, column: 7, scope: !866)
!933 = !DILocation(line: 885, column: 3, scope: !931)
!934 = !DILocation(line: 905, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !866, file: !3, line: 887, column: 7)
!936 = !DILocation(line: 910, column: 9, scope: !935)
!937 = !DILocation(line: 913, column: 9, scope: !935)
!938 = !DILocation(line: 918, column: 9, scope: !935)
!939 = !DILocation(line: 921, column: 9, scope: !935)
!940 = !DILocation(line: 926, column: 9, scope: !935)
!941 = !DILocation(line: 929, column: 9, scope: !935)
!942 = !DILocation(line: 933, column: 9, scope: !935)
!943 = distinct !{!943, !929, !944}
!944 = !DILocation(line: 938, column: 7, scope: !866)
!945 = !DILocation(line: 934, column: 7, scope: !935)
!946 = !DILocation(line: 935, column: 7, scope: !935)
!947 = !DILocation(line: 935, column: 7, scope: !948)
!948 = !DILexicalBlockFile(scope: !935, file: !3, discriminator: 1)
!949 = !DILocation(line: 937, column: 9, scope: !935)
!950 = !DILocation(line: 957, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !866, file: !3, line: 957, column: 7)
!952 = !DILocation(line: 957, column: 18, scope: !951)
!953 = !DILocation(line: 957, column: 22, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !3, discriminator: 1)
!955 = !DILocation(line: 964, column: 19, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !3, line: 958, column: 4)
!957 = !DILocation(line: 964, column: 6, scope: !958)
!958 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 1)
!959 = !DILocation(line: 965, column: 6, scope: !956)
!960 = !DILocation(line: 968, column: 21, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 1)
!962 = distinct !DILexicalBlock(scope: !866, file: !3, line: 968, column: 7)
!963 = !DILocation(line: 968, column: 18, scope: !962)
!964 = !DILocation(line: 970, column: 20, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 969, column: 5)
!966 = !DILocation(line: 970, column: 7, scope: !967)
!967 = !DILexicalBlockFile(scope: !965, file: !3, discriminator: 1)
!968 = !DILocation(line: 972, column: 7, scope: !965)
!969 = !DILocation(line: 975, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !866, file: !3, line: 975, column: 7)
!971 = !DILocation(line: 975, column: 19, scope: !970)
!972 = !DILocation(line: 977, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 976, column: 5)
!974 = !DILocation(line: 977, column: 7, scope: !975)
!975 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 1)
!976 = !DILocation(line: 979, column: 7, scope: !973)
!977 = !DILocation(line: 982, column: 22, scope: !978)
!978 = distinct !DILexicalBlock(scope: !866, file: !3, line: 982, column: 7)
!979 = !DILocation(line: 985, column: 14, scope: !980)
!980 = distinct !DILexicalBlock(scope: !978, file: !3, line: 983, column: 5)
!981 = !DILocation(line: 984, column: 7, scope: !980)
!982 = !DILocation(line: 987, column: 7, scope: !980)
!983 = !DILocation(line: 990, column: 19, scope: !984)
!984 = distinct !DILexicalBlock(scope: !866, file: !3, line: 990, column: 7)
!985 = !DILocation(line: 993, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !984, file: !3, line: 991, column: 5)
!987 = !DILocation(line: 992, column: 7, scope: !986)
!988 = !DILocation(line: 994, column: 7, scope: !986)
!989 = !DILocation(line: 997, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !866, file: !3, line: 997, column: 7)
!991 = !DILocation(line: 1000, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !990, file: !3, line: 998, column: 5)
!993 = !DILocation(line: 999, column: 7, scope: !992)
!994 = !DILocation(line: 1001, column: 7, scope: !992)
!995 = !DILocation(line: 1004, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1004, column: 7)
!997 = !DILocation(line: 1007, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1005, column: 5)
!999 = !DILocation(line: 1006, column: 7, scope: !998)
!1000 = !DILocation(line: 1008, column: 7, scope: !998)
!1001 = !DILocation(line: 1011, column: 17, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1011, column: 7)
!1003 = !DILocation(line: 1011, column: 16, scope: !1002)
!1004 = !DILocation(line: 1011, column: 14, scope: !1002)
!1005 = !DILocation(line: 1011, column: 7, scope: !866)
!1006 = !DILocation(line: 1014, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1012, column: 4)
!1008 = !DILocation(line: 1013, column: 6, scope: !1007)
!1009 = !DILocation(line: 1015, column: 6, scope: !1007)
!1010 = !DILocation(line: 1018, column: 7, scope: !866)
!1011 = !DILocation(line: 1021, column: 29, scope: !866)
!1012 = !DILocation(line: 1021, column: 10, scope: !866)
!1013 = !DILocation(line: 1022, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1022, column: 7)
!1015 = !{!1016, !1016, i64 0}
!1016 = !{!"int", !806, i64 0}
!1017 = !DILocation(line: 1022, column: 14, scope: !1014)
!1018 = !DILocation(line: 1022, column: 7, scope: !866)
!1019 = !DILocation(line: 1023, column: 17, scope: !1014)
!1020 = !DILocation(line: 1023, column: 20, scope: !1014)
!1021 = !DILocation(line: 1023, column: 5, scope: !1014)
!1022 = !DILocation(line: 1025, column: 31, scope: !883)
!1023 = !DILocation(line: 1025, column: 15, scope: !883)
!1024 = !DILocation(line: 1025, column: 50, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 1)
!1026 = !DILocation(line: 1025, column: 3, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !883, file: !3, discriminator: 1)
!1028 = !DILocation(line: 1090, column: 23, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1090, column: 7)
!1030 = !DILocation(line: 1027, column: 20, scope: !885)
!1031 = !DILocation(line: 1027, column: 13, scope: !885)
!1032 = !DILocation(line: 1029, column: 11, scope: !885)
!1033 = !DILocation(line: 644, column: 27, scope: !122, inlinedAt: !896)
!1034 = !DILocation(line: 647, column: 13, scope: !122, inlinedAt: !896)
!1035 = !DILocation(line: 648, column: 13, scope: !122, inlinedAt: !896)
!1036 = !DILocation(line: 649, column: 13, scope: !122, inlinedAt: !896)
!1037 = !DILocation(line: 650, column: 13, scope: !122, inlinedAt: !896)
!1038 = !DILocation(line: 651, column: 8, scope: !122, inlinedAt: !896)
!1039 = !DILocation(line: 652, column: 8, scope: !122, inlinedAt: !896)
!1040 = !DILocation(line: 653, column: 3, scope: !122, inlinedAt: !896)
!1041 = !DILocation(line: 498, column: 36, scope: !902, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 655, column: 31, scope: !122, inlinedAt: !896)
!1043 = !DILocation(line: 501, column: 15, scope: !902, inlinedAt: !1042)
!1044 = !DILocation(line: 655, column: 18, scope: !122, inlinedAt: !896)
!1045 = !DILocation(line: 657, column: 3, scope: !122, inlinedAt: !896)
!1046 = !DILocation(line: 658, column: 3, scope: !122, inlinedAt: !896)
!1047 = !DILocation(line: 659, column: 19, scope: !198, inlinedAt: !896)
!1048 = !DILocation(line: 659, column: 19, scope: !201, inlinedAt: !896)
!1049 = !DILocation(line: 659, column: 19, scope: !1050, inlinedAt: !896)
!1050 = !DILexicalBlockFile(scope: !201, file: !3, discriminator: 2)
!1051 = !{!806, !806, i64 0}
!1052 = !DILocation(line: 659, column: 19, scope: !1053, inlinedAt: !896)
!1053 = !DILexicalBlockFile(scope: !1054, file: !3, discriminator: 3)
!1054 = distinct !DILexicalBlock(scope: !201, file: !3, line: 659, column: 19)
!1055 = !DILocation(line: 659, column: 19, scope: !1056, inlinedAt: !896)
!1056 = !DILexicalBlockFile(scope: !1054, file: !3, discriminator: 2)
!1057 = !DILocation(line: 659, column: 19, scope: !1058, inlinedAt: !896)
!1058 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 4)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 659, column: 19)
!1060 = !DILocation(line: 659, column: 19, scope: !1061, inlinedAt: !896)
!1061 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 13)
!1062 = !DILocation(line: 661, column: 7, scope: !122, inlinedAt: !896)
!1063 = !DILocation(line: 664, column: 24, scope: !1064, inlinedAt: !896)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 662, column: 5)
!1065 = distinct !DILexicalBlock(scope: !122, file: !3, line: 661, column: 7)
!1066 = !DILocation(line: 665, column: 26, scope: !1064, inlinedAt: !896)
!1067 = !DILocation(line: 646, column: 9, scope: !122, inlinedAt: !896)
!1068 = !DILocation(line: 666, column: 5, scope: !1064, inlinedAt: !896)
!1069 = !DILocation(line: 669, column: 26, scope: !1070, inlinedAt: !896)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 668, column: 5)
!1071 = !DILocation(line: 670, column: 28, scope: !1072, inlinedAt: !896)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 670, column: 11)
!1073 = !DILocation(line: 670, column: 11, scope: !1070, inlinedAt: !896)
!1074 = !DILocation(line: 672, column: 21, scope: !1075, inlinedAt: !896)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 671, column: 9)
!1076 = !DILocation(line: 672, column: 34, scope: !1077, inlinedAt: !896)
!1077 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 1)
!1078 = !DILocation(line: 672, column: 11, scope: !1079, inlinedAt: !896)
!1079 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 2)
!1080 = !DILocation(line: 673, column: 11, scope: !1075, inlinedAt: !896)
!1081 = !DILocation(line: 656, column: 13, scope: !122, inlinedAt: !896)
!1082 = !DILocation(line: 657, column: 9, scope: !122, inlinedAt: !896)
!1083 = !DILocation(line: 678, column: 8, scope: !122, inlinedAt: !896)
!1084 = !DILocation(line: 658, column: 10, scope: !122, inlinedAt: !896)
!1085 = !DILocation(line: 679, column: 24, scope: !122, inlinedAt: !896)
!1086 = !{!1087, !1087, i64 0}
!1087 = !{!"long", !806, i64 0}
!1088 = !DILocation(line: 680, column: 3, scope: !122, inlinedAt: !896)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 680, column: 3, scope: !122)
!1091 = !DILocation(line: 790, column: 64, scope: !122)
!1092 = !DILocation(line: 687, column: 7, scope: !204, inlinedAt: !896)
!1093 = !DILocation(line: 688, column: 23, scope: !1094, inlinedAt: !896)
!1094 = distinct !DILexicalBlock(scope: !204, file: !3, line: 688, column: 11)
!1095 = !DILocation(line: 688, column: 11, scope: !204, inlinedAt: !896)
!1096 = !DILocation(line: 689, column: 9, scope: !1094, inlinedAt: !896)
!1097 = !DILocation(line: 689, column: 9, scope: !1098, inlinedAt: !896)
!1098 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 1)
!1099 = !DILocation(line: 689, column: 9, scope: !1100, inlinedAt: !896)
!1100 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 2)
!1101 = !DIExpression(DW_OP_deref)
!1102 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1103, file: !1104, line: 115, type: !869)
!1103 = distinct !DISubprogram(name: "getline", scope: !1104, file: !1104, line: 115, type: !1105, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1107)
!1104 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!210, !869, !759, !128}
!1107 = !{!1102, !1108, !1109}
!1108 = !DILocalVariable(name: "__n", arg: 2, scope: !1103, file: !1104, line: 115, type: !759)
!1109 = !DILocalVariable(name: "__stream", arg: 3, scope: !1103, file: !1104, line: 115, type: !128)
!1110 = !DILocation(line: 115, column: 17, scope: !1103, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 692, column: 21, scope: !204, inlinedAt: !896)
!1112 = !DILocation(line: 115, column: 36, scope: !1103, inlinedAt: !1111)
!1113 = !DILocation(line: 115, column: 47, scope: !1103, inlinedAt: !1111)
!1114 = !DILocation(line: 117, column: 10, scope: !1103, inlinedAt: !1111)
!1115 = !DILocation(line: 685, column: 15, scope: !204, inlinedAt: !896)
!1116 = !DILocation(line: 693, column: 23, scope: !1117, inlinedAt: !896)
!1117 = distinct !DILexicalBlock(scope: !204, file: !3, line: 693, column: 11)
!1118 = !DILocation(line: 693, column: 11, scope: !204, inlinedAt: !896)
!1119 = !DILocation(line: 697, column: 11, scope: !1120, inlinedAt: !896)
!1120 = distinct !DILexicalBlock(scope: !204, file: !3, line: 697, column: 11)
!1121 = !DILocation(line: 697, column: 19, scope: !1120, inlinedAt: !896)
!1122 = !DILocation(line: 697, column: 11, scope: !204, inlinedAt: !896)
!1123 = !DILocation(line: 701, column: 28, scope: !1124, inlinedAt: !896)
!1124 = distinct !DILexicalBlock(scope: !204, file: !3, line: 701, column: 11)
!1125 = !DILocation(line: 701, column: 11, scope: !1124, inlinedAt: !896)
!1126 = !DILocation(line: 701, column: 33, scope: !1124, inlinedAt: !896)
!1127 = !DILocation(line: 701, column: 11, scope: !204, inlinedAt: !896)
!1128 = !DILocation(line: 702, column: 29, scope: !1124, inlinedAt: !896)
!1129 = !DILocation(line: 702, column: 9, scope: !1124, inlinedAt: !896)
!1130 = !DILocation(line: 704, column: 23, scope: !213, inlinedAt: !896)
!1131 = !DILocalVariable(name: "s", arg: 1, scope: !1132, file: !3, line: 397, type: !58)
!1132 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 397, type: !1133, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1136)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!76, !58, !61, !1135, !248, !869}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1136 = !{!1131, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1137 = !DILocalVariable(name: "s_len", arg: 2, scope: !1132, file: !3, line: 397, type: !61)
!1138 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1132, file: !3, line: 398, type: !1135)
!1139 = !DILocalVariable(name: "binary", arg: 4, scope: !1132, file: !3, line: 398, type: !248)
!1140 = !DILocalVariable(name: "file_name", arg: 5, scope: !1132, file: !3, line: 398, type: !869)
!1141 = !DILocalVariable(name: "escaped_filename", scope: !1132, file: !3, line: 400, type: !76)
!1142 = !DILocalVariable(name: "algo_name_len", scope: !1132, file: !3, line: 401, type: !61)
!1143 = !DILocalVariable(name: "i", scope: !1132, file: !3, line: 403, type: !61)
!1144 = !DILocation(line: 397, column: 16, scope: !1132, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 704, column: 14, scope: !213, inlinedAt: !896)
!1146 = !DILocation(line: 397, column: 26, scope: !1132, inlinedAt: !1145)
!1147 = !DILocation(line: 400, column: 8, scope: !1132, inlinedAt: !1145)
!1148 = !DILocation(line: 403, column: 10, scope: !1132, inlinedAt: !1145)
!1149 = !DILocation(line: 404, column: 3, scope: !1132, inlinedAt: !1145)
!1150 = !DILocation(line: 404, column: 10, scope: !1151, inlinedAt: !1145)
!1151 = !DILexicalBlockFile(scope: !1132, file: !3, discriminator: 1)
!1152 = !DILocation(line: 405, column: 5, scope: !1132, inlinedAt: !1145)
!1153 = !DILocation(line: 404, column: 3, scope: !1154, inlinedAt: !1145)
!1154 = !DILexicalBlockFile(scope: !1132, file: !3, discriminator: 4)
!1155 = distinct !{!1155, !1156, !1157}
!1156 = !DILocation(line: 404, column: 3, scope: !1132)
!1157 = !DILocation(line: 405, column: 7, scope: !1132)
!1158 = !DILocation(line: 409, column: 7, scope: !1159, inlinedAt: !1145)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 408, column: 5)
!1160 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 407, column: 7)
!1161 = !DILocation(line: 411, column: 5, scope: !1159, inlinedAt: !1145)
!1162 = !DILocation(line: 401, column: 10, scope: !1132, inlinedAt: !1145)
!1163 = !DILocation(line: 416, column: 7, scope: !1164, inlinedAt: !1145)
!1164 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 416, column: 7)
!1165 = !DILocation(line: 416, column: 7, scope: !1132, inlinedAt: !1145)
!1166 = !DILocation(line: 418, column: 9, scope: !1167, inlinedAt: !1145)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 417, column: 5)
!1168 = !DILocation(line: 453, column: 11, scope: !1169, inlinedAt: !1145)
!1169 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 453, column: 11)
!1170 = !DILocation(line: 453, column: 16, scope: !1169, inlinedAt: !1145)
!1171 = !DILocation(line: 454, column: 9, scope: !1169, inlinedAt: !1145)
!1172 = !DILocation(line: 453, column: 11, scope: !1167, inlinedAt: !1145)
!1173 = !DILocation(line: 455, column: 11, scope: !1174, inlinedAt: !1145)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 455, column: 11)
!1175 = !DILocation(line: 455, column: 16, scope: !1174, inlinedAt: !1145)
!1176 = !DILocation(line: 455, column: 11, scope: !1167, inlinedAt: !1145)
!1177 = !DILocation(line: 457, column: 11, scope: !1178, inlinedAt: !1145)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 456, column: 9)
!1179 = !DILocation(line: 459, column: 33, scope: !1178, inlinedAt: !1145)
!1180 = !DILocation(line: 459, column: 44, scope: !1178, inlinedAt: !1145)
!1181 = !DILocalVariable(name: "s", arg: 1, scope: !1182, file: !3, line: 354, type: !58)
!1182 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 354, type: !1183, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!76, !58, !61, !1135, !869, !76}
!1185 = !{!1181, !1186, !1187, !1188, !1189, !1190}
!1186 = !DILocalVariable(name: "s_len", arg: 2, scope: !1182, file: !3, line: 354, type: !61)
!1187 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1182, file: !3, line: 354, type: !1135)
!1188 = !DILocalVariable(name: "file_name", arg: 4, scope: !1182, file: !3, line: 355, type: !869)
!1189 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1182, file: !3, line: 355, type: !76)
!1190 = !DILocalVariable(name: "i", scope: !1182, file: !3, line: 357, type: !61)
!1191 = !DILocation(line: 354, column: 20, scope: !1182, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 459, column: 18, scope: !1178, inlinedAt: !1145)
!1193 = !DILocation(line: 354, column: 30, scope: !1182, inlinedAt: !1192)
!1194 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1195 = !DILocation(line: 355, column: 37, scope: !1182, inlinedAt: !1192)
!1196 = !DILocation(line: 359, column: 13, scope: !1197, inlinedAt: !1192)
!1197 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 359, column: 7)
!1198 = !DILocation(line: 359, column: 7, scope: !1182, inlinedAt: !1192)
!1199 = !DILocation(line: 357, column: 10, scope: !1182, inlinedAt: !1192)
!1200 = !DILocation(line: 364, column: 10, scope: !1201, inlinedAt: !1192)
!1201 = !DILexicalBlockFile(scope: !1182, file: !3, discriminator: 1)
!1202 = !DILocation(line: 364, column: 12, scope: !1201, inlinedAt: !1192)
!1203 = !DILocation(line: 364, column: 15, scope: !1204, inlinedAt: !1192)
!1204 = !DILexicalBlockFile(scope: !1182, file: !3, discriminator: 2)
!1205 = !DILocation(line: 364, column: 20, scope: !1204, inlinedAt: !1192)
!1206 = !DILocation(line: 364, column: 3, scope: !1207, inlinedAt: !1192)
!1207 = !DILexicalBlockFile(scope: !1182, file: !3, discriminator: 3)
!1208 = distinct !{!1208, !1209, !1210}
!1209 = !DILocation(line: 364, column: 3, scope: !1182)
!1210 = !DILocation(line: 365, column: 6, scope: !1182)
!1211 = !DILocation(line: 367, column: 7, scope: !1182, inlinedAt: !1192)
!1212 = !DILocation(line: 372, column: 24, scope: !1213, inlinedAt: !1192)
!1213 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 372, column: 7)
!1214 = !DILocalVariable(name: "s", arg: 1, scope: !1215, file: !3, line: 305, type: !58)
!1215 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 305, type: !1216, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!58, !58, !61}
!1218 = !{!1214, !1219, !1220, !1221}
!1219 = !DILocalVariable(name: "s_len", arg: 2, scope: !1215, file: !3, line: 305, type: !61)
!1220 = !DILocalVariable(name: "dst", scope: !1215, file: !3, line: 307, type: !58)
!1221 = !DILocalVariable(name: "i", scope: !1222, file: !3, line: 309, type: !61)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 309, column: 3)
!1223 = !DILocation(line: 305, column: 26, scope: !1215, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 372, column: 27, scope: !1225, inlinedAt: !1192)
!1225 = !DILexicalBlockFile(scope: !1213, file: !3, discriminator: 1)
!1226 = !DILocation(line: 305, column: 36, scope: !1215, inlinedAt: !1224)
!1227 = !DILocation(line: 307, column: 9, scope: !1215, inlinedAt: !1224)
!1228 = !DILocation(line: 309, column: 15, scope: !1222, inlinedAt: !1224)
!1229 = !DILocation(line: 309, column: 3, scope: !1230, inlinedAt: !1224)
!1230 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 1)
!1231 = !DILocation(line: 311, column: 15, scope: !1232, inlinedAt: !1224)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 310, column: 5)
!1233 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 309, column: 3)
!1234 = !DILocation(line: 311, column: 7, scope: !1232, inlinedAt: !1224)
!1235 = !DILocation(line: 314, column: 17, scope: !1236, inlinedAt: !1224)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 314, column: 15)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 312, column: 9)
!1238 = !DILocation(line: 314, column: 15, scope: !1237, inlinedAt: !1224)
!1239 = !DILocation(line: 319, column: 11, scope: !1237, inlinedAt: !1224)
!1240 = !DILocation(line: 320, column: 19, scope: !1237, inlinedAt: !1224)
!1241 = !DILocation(line: 320, column: 11, scope: !1237, inlinedAt: !1224)
!1242 = !DILocation(line: 324, column: 15, scope: !1243, inlinedAt: !1224)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 321, column: 13)
!1244 = !DILocation(line: 309, column: 34, scope: !1245, inlinedAt: !1224)
!1245 = !DILexicalBlockFile(scope: !1233, file: !3, discriminator: 3)
!1246 = !DILocation(line: 309, column: 24, scope: !1247, inlinedAt: !1224)
!1247 = !DILexicalBlockFile(scope: !1233, file: !3, discriminator: 1)
!1248 = distinct !{!1248, !1249, !1250}
!1249 = !DILocation(line: 309, column: 3, scope: !1222)
!1250 = !DILocation(line: 342, column: 5, scope: !1222)
!1251 = !DILocation(line: 343, column: 11, scope: !1252, inlinedAt: !1224)
!1252 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 343, column: 7)
!1253 = !DILocation(line: 343, column: 7, scope: !1215, inlinedAt: !1224)
!1254 = !DILocation(line: 344, column: 10, scope: !1252, inlinedAt: !1224)
!1255 = !DILocation(line: 344, column: 5, scope: !1252, inlinedAt: !1224)
!1256 = !DILocation(line: 375, column: 10, scope: !1182, inlinedAt: !1192)
!1257 = !DILocation(line: 377, column: 3, scope: !1182, inlinedAt: !1192)
!1258 = !DILocation(line: 377, column: 10, scope: !1201, inlinedAt: !1192)
!1259 = !DILocation(line: 378, column: 6, scope: !1182, inlinedAt: !1192)
!1260 = !DILocation(line: 377, column: 3, scope: !1261, inlinedAt: !1192)
!1261 = !DILexicalBlockFile(scope: !1182, file: !3, discriminator: 4)
!1262 = distinct !{!1262, !1263, !1264}
!1263 = !DILocation(line: 377, column: 3, scope: !1182)
!1264 = !DILocation(line: 378, column: 6, scope: !1182)
!1265 = !DILocation(line: 385, column: 10, scope: !1201, inlinedAt: !1192)
!1266 = distinct !{!1266, !1267, !1268}
!1267 = !DILocation(line: 385, column: 3, scope: !1182)
!1268 = !DILocation(line: 386, column: 6, scope: !1182)
!1269 = !DILocation(line: 469, column: 13, scope: !1270, inlinedAt: !1145)
!1270 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 469, column: 7)
!1271 = !DILocation(line: 469, column: 45, scope: !1270, inlinedAt: !1145)
!1272 = !DILocation(line: 469, column: 50, scope: !1270, inlinedAt: !1145)
!1273 = !DILocation(line: 469, column: 44, scope: !1270, inlinedAt: !1145)
!1274 = !DILocation(line: 469, column: 42, scope: !1270, inlinedAt: !1145)
!1275 = !DILocation(line: 469, column: 17, scope: !1270, inlinedAt: !1145)
!1276 = !DILocation(line: 469, column: 7, scope: !1132, inlinedAt: !1145)
!1277 = !DILocation(line: 489, column: 5, scope: !1132, inlinedAt: !1145)
!1278 = !DILocation(line: 490, column: 8, scope: !1279, inlinedAt: !1145)
!1279 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 490, column: 7)
!1280 = !DILocation(line: 493, column: 6, scope: !1132, inlinedAt: !1145)
!1281 = !DILocation(line: 493, column: 10, scope: !1132, inlinedAt: !1145)
!1282 = !DILocation(line: 496, column: 14, scope: !1283, inlinedAt: !1145)
!1283 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 496, column: 7)
!1284 = !DILocation(line: 496, column: 18, scope: !1283, inlinedAt: !1145)
!1285 = !DILocation(line: 496, column: 24, scope: !1283, inlinedAt: !1145)
!1286 = !DILocation(line: 496, column: 28, scope: !1287, inlinedAt: !1145)
!1287 = !DILexicalBlockFile(scope: !1283, file: !3, discriminator: 1)
!1288 = !DILocation(line: 496, column: 40, scope: !1287, inlinedAt: !1145)
!1289 = !DILocation(line: 504, column: 11, scope: !1290, inlinedAt: !1145)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 504, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 497, column: 5)
!1292 = !DILocation(line: 504, column: 24, scope: !1290, inlinedAt: !1145)
!1293 = !DILocation(line: 504, column: 11, scope: !1291, inlinedAt: !1145)
!1294 = !DILocation(line: 506, column: 20, scope: !1291, inlinedAt: !1145)
!1295 = !DILocation(line: 507, column: 5, scope: !1291, inlinedAt: !1145)
!1296 = !DILocation(line: 508, column: 12, scope: !1297, inlinedAt: !1145)
!1297 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 508, column: 12)
!1298 = !DILocation(line: 508, column: 25, scope: !1297, inlinedAt: !1145)
!1299 = !DILocation(line: 508, column: 12, scope: !1283, inlinedAt: !1145)
!1300 = !DILocation(line: 510, column: 20, scope: !1301, inlinedAt: !1145)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 509, column: 5)
!1302 = !DILocation(line: 511, column: 21, scope: !1301, inlinedAt: !1145)
!1303 = !DILocation(line: 512, column: 5, scope: !1301, inlinedAt: !1145)
!1304 = !DILocation(line: 516, column: 17, scope: !1132, inlinedAt: !1145)
!1305 = !DILocation(line: 518, column: 7, scope: !1132, inlinedAt: !1145)
!1306 = !DILocation(line: 519, column: 44, scope: !1307, inlinedAt: !1145)
!1307 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 518, column: 7)
!1308 = !DILocation(line: 305, column: 26, scope: !1215, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 519, column: 12, scope: !1307, inlinedAt: !1145)
!1310 = !DILocation(line: 305, column: 36, scope: !1215, inlinedAt: !1309)
!1311 = !DILocation(line: 307, column: 9, scope: !1215, inlinedAt: !1309)
!1312 = !DILocation(line: 309, column: 15, scope: !1222, inlinedAt: !1309)
!1313 = !DILocation(line: 309, column: 24, scope: !1247, inlinedAt: !1309)
!1314 = !DILocation(line: 309, column: 3, scope: !1230, inlinedAt: !1309)
!1315 = !DILocation(line: 311, column: 15, scope: !1232, inlinedAt: !1309)
!1316 = !DILocation(line: 311, column: 7, scope: !1232, inlinedAt: !1309)
!1317 = !DILocation(line: 314, column: 17, scope: !1236, inlinedAt: !1309)
!1318 = !DILocation(line: 314, column: 15, scope: !1237, inlinedAt: !1309)
!1319 = !DILocation(line: 319, column: 11, scope: !1237, inlinedAt: !1309)
!1320 = !DILocation(line: 320, column: 19, scope: !1237, inlinedAt: !1309)
!1321 = !DILocation(line: 320, column: 11, scope: !1237, inlinedAt: !1309)
!1322 = !DILocation(line: 324, column: 15, scope: !1243, inlinedAt: !1309)
!1323 = !DILocation(line: 309, column: 34, scope: !1245, inlinedAt: !1309)
!1324 = !DILocation(line: 343, column: 15, scope: !1252, inlinedAt: !1309)
!1325 = !DILocation(line: 343, column: 11, scope: !1252, inlinedAt: !1309)
!1326 = !DILocation(line: 343, column: 7, scope: !1215, inlinedAt: !1309)
!1327 = !DILocation(line: 344, column: 10, scope: !1252, inlinedAt: !1309)
!1328 = !DILocation(line: 344, column: 5, scope: !1252, inlinedAt: !1309)
!1329 = !DILocation(line: 519, column: 49, scope: !1307, inlinedAt: !1145)
!1330 = !DILocation(line: 705, column: 14, scope: !213, inlinedAt: !896)
!1331 = !DILocation(line: 705, column: 29, scope: !1332, inlinedAt: !896)
!1332 = !DILexicalBlockFile(scope: !213, file: !3, discriminator: 1)
!1333 = !DILocation(line: 705, column: 32, scope: !212, inlinedAt: !896)
!1334 = !DILocation(line: 682, column: 13, scope: !204, inlinedAt: !896)
!1335 = !DILocation(line: 705, column: 32, scope: !216, inlinedAt: !896)
!1336 = !DILocation(line: 705, column: 32, scope: !1337, inlinedAt: !896)
!1337 = !DILexicalBlockFile(scope: !216, file: !3, discriminator: 4)
!1338 = !DILocation(line: 705, column: 32, scope: !1339, inlinedAt: !896)
!1339 = !DILexicalBlockFile(scope: !1340, file: !3, discriminator: 5)
!1340 = distinct !DILexicalBlock(scope: !216, file: !3, line: 705, column: 32)
!1341 = !DILocation(line: 705, column: 32, scope: !1342, inlinedAt: !896)
!1342 = !DILexicalBlockFile(scope: !1340, file: !3, discriminator: 4)
!1343 = !DILocation(line: 705, column: 32, scope: !1344, inlinedAt: !896)
!1344 = !DILexicalBlockFile(scope: !1345, file: !3, discriminator: 6)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 705, column: 32)
!1346 = !DILocation(line: 705, column: 32, scope: !1347, inlinedAt: !896)
!1347 = !DILexicalBlockFile(scope: !213, file: !3, discriminator: 15)
!1348 = !DILocation(line: 706, column: 14, scope: !213, inlinedAt: !896)
!1349 = !DILocation(line: 684, column: 22, scope: !204, inlinedAt: !896)
!1350 = !DILocalVariable(name: "s", arg: 1, scope: !1351, file: !3, line: 527, type: !65)
!1351 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 527, type: !1352, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!76, !65}
!1354 = !{!1350, !1355}
!1355 = !DILocalVariable(name: "i", scope: !1351, file: !3, line: 529, type: !272)
!1356 = !DILocation(line: 527, column: 34, scope: !1351, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 706, column: 17, scope: !1332, inlinedAt: !896)
!1358 = !DILocation(line: 529, column: 16, scope: !1351, inlinedAt: !1357)
!1359 = !DILocation(line: 530, column: 3, scope: !1360, inlinedAt: !1357)
!1360 = !DILexicalBlockFile(scope: !1361, file: !3, discriminator: 1)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 530, column: 3)
!1362 = !DILocation(line: 532, column: 12, scope: !1363, inlinedAt: !1357)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 532, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 531, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 530, column: 3)
!1366 = !{!1367, !1367, i64 0}
!1367 = !{!"short", !806, i64 0}
!1368 = !DILocation(line: 532, column: 11, scope: !1364, inlinedAt: !1357)
!1369 = !DILocation(line: 534, column: 7, scope: !1364, inlinedAt: !1357)
!1370 = !DILocation(line: 536, column: 10, scope: !1351, inlinedAt: !1357)
!1371 = !DILocation(line: 536, column: 13, scope: !1351, inlinedAt: !1357)
!1372 = !DILocation(line: 704, column: 11, scope: !1373, inlinedAt: !896)
!1373 = !DILexicalBlockFile(scope: !204, file: !3, discriminator: 1)
!1374 = !DILocation(line: 708, column: 11, scope: !1375, inlinedAt: !896)
!1375 = distinct !DILexicalBlock(scope: !213, file: !3, line: 707, column: 9)
!1376 = !DILocation(line: 710, column: 15, scope: !1375, inlinedAt: !896)
!1377 = !DILocation(line: 713, column: 22, scope: !1378, inlinedAt: !896)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 711, column: 13)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 710, column: 15)
!1380 = !DILocation(line: 715, column: 22, scope: !1378, inlinedAt: !896)
!1381 = !DILocation(line: 712, column: 15, scope: !1378, inlinedAt: !896)
!1382 = !DILocation(line: 717, column: 13, scope: !1378, inlinedAt: !896)
!1383 = !DILocation(line: 719, column: 11, scope: !1375, inlinedAt: !896)
!1384 = !DILocation(line: 720, column: 9, scope: !1375, inlinedAt: !896)
!1385 = !DILocation(line: 728, column: 16, scope: !219, inlinedAt: !896)
!1386 = !DILocation(line: 728, column: 11, scope: !219, inlinedAt: !896)
!1387 = !DILocation(line: 731, column: 45, scope: !219, inlinedAt: !896)
!1388 = !DILocation(line: 731, column: 48, scope: !1389, inlinedAt: !896)
!1389 = !DILexicalBlockFile(scope: !219, file: !3, discriminator: 1)
!1390 = !DILocation(line: 731, column: 45, scope: !1389, inlinedAt: !896)
!1391 = !DILocation(line: 735, column: 16, scope: !219, inlinedAt: !896)
!1392 = !DILocation(line: 737, column: 15, scope: !219, inlinedAt: !896)
!1393 = !DILocation(line: 739, column: 15, scope: !1394, inlinedAt: !896)
!1394 = distinct !DILexicalBlock(scope: !225, file: !3, line: 738, column: 13)
!1395 = !DILocation(line: 740, column: 19, scope: !1394, inlinedAt: !896)
!1396 = !DILocation(line: 742, column: 23, scope: !1397, inlinedAt: !896)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 741, column: 17)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 740, column: 19)
!1399 = !DILocalVariable(name: "__c", arg: 1, scope: !1400, file: !1104, line: 105, type: !70)
!1400 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1104, file: !1104, line: 105, type: !1401, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!70, !70}
!1403 = !{!1399}
!1404 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 743, column: 21, scope: !1406, inlinedAt: !896)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 742, column: 23)
!1407 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1405)
!1408 = !{!1409, !805, i64 40}
!1409 = !{!"_IO_FILE", !1016, i64 0, !805, i64 8, !805, i64 16, !805, i64 24, !805, i64 32, !805, i64 40, !805, i64 48, !805, i64 56, !805, i64 64, !805, i64 72, !805, i64 80, !805, i64 88, !805, i64 96, !805, i64 104, !1016, i64 112, !1016, i64 116, !1087, i64 120, !1367, i64 128, !806, i64 130, !806, i64 131, !805, i64 136, !1087, i64 144, !805, i64 152, !805, i64 160, !805, i64 168, !805, i64 176, !1087, i64 184, !1016, i64 192, !806, i64 196}
!1410 = !{!1409, !805, i64 48}
!1411 = !{!"branch_weights", i32 2000, i32 1}
!1412 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1405)
!1413 = !DILexicalBlockFile(scope: !1400, file: !1104, discriminator: 1)
!1414 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1405)
!1415 = !DILexicalBlockFile(scope: !1400, file: !1104, discriminator: 2)
!1416 = !DILocation(line: 744, column: 19, scope: !1397, inlinedAt: !896)
!1417 = !DILocation(line: 745, column: 19, scope: !1397, inlinedAt: !896)
!1418 = !DILocation(line: 745, column: 19, scope: !1419, inlinedAt: !896)
!1419 = !DILexicalBlockFile(scope: !1397, file: !3, discriminator: 1)
!1420 = !DILocation(line: 746, column: 17, scope: !1397, inlinedAt: !896)
!1421 = !DILocation(line: 748, column: 35, scope: !224, inlinedAt: !896)
!1422 = !DILocation(line: 748, column: 38, scope: !1423, inlinedAt: !896)
!1423 = !DILexicalBlockFile(scope: !224, file: !3, discriminator: 1)
!1424 = !DILocation(line: 755, column: 58, scope: !223, inlinedAt: !896)
!1425 = !DILocation(line: 755, column: 22, scope: !223, inlinedAt: !896)
!1426 = !DILocation(line: 756, column: 22, scope: !223, inlinedAt: !896)
!1427 = !DILocation(line: 760, column: 15, scope: !1428, inlinedAt: !896)
!1428 = !DILexicalBlockFile(scope: !232, file: !3, discriminator: 1)
!1429 = !DILocation(line: 762, column: 23, scope: !1430, inlinedAt: !896)
!1430 = distinct !DILexicalBlock(scope: !228, file: !3, line: 762, column: 23)
!1431 = !DILocation(line: 762, column: 23, scope: !228, inlinedAt: !896)
!1432 = !DILocation(line: 763, column: 34, scope: !229, inlinedAt: !896)
!1433 = !DILocation(line: 763, column: 50, scope: !229, inlinedAt: !896)
!1434 = !DILocation(line: 763, column: 26, scope: !229, inlinedAt: !896)
!1435 = !DILocation(line: 763, column: 23, scope: !229, inlinedAt: !896)
!1436 = !DILocation(line: 764, column: 23, scope: !229, inlinedAt: !896)
!1437 = !DILocation(line: 764, column: 27, scope: !1438, inlinedAt: !896)
!1438 = !DILexicalBlockFile(scope: !1439, file: !3, discriminator: 1)
!1439 = distinct !DILexicalBlock(scope: !234, file: !3, line: 764, column: 27)
!1440 = !DILocation(line: 764, column: 27, scope: !234, inlinedAt: !896)
!1441 = !DILocation(line: 765, column: 55, scope: !229, inlinedAt: !896)
!1442 = !DILocation(line: 765, column: 31, scope: !229, inlinedAt: !896)
!1443 = !DILocation(line: 765, column: 30, scope: !229, inlinedAt: !896)
!1444 = !DILocation(line: 765, column: 27, scope: !229, inlinedAt: !896)
!1445 = !DILocation(line: 762, column: 23, scope: !1446, inlinedAt: !896)
!1446 = !DILexicalBlockFile(scope: !230, file: !3, discriminator: 1)
!1447 = !DILocation(line: 760, column: 53, scope: !1448, inlinedAt: !896)
!1448 = !DILexicalBlockFile(scope: !231, file: !3, discriminator: 2)
!1449 = !DILocation(line: 760, column: 33, scope: !1450, inlinedAt: !896)
!1450 = !DILexicalBlockFile(scope: !231, file: !3, discriminator: 1)
!1451 = distinct !{!1451, !1452, !1453}
!1452 = !DILocation(line: 760, column: 15, scope: !232)
!1453 = !DILocation(line: 767, column: 17, scope: !232)
!1454 = !DILocation(line: 768, column: 23, scope: !1455, inlinedAt: !896)
!1455 = distinct !DILexicalBlock(scope: !223, file: !3, line: 768, column: 19)
!1456 = !DILocation(line: 769, column: 17, scope: !1455, inlinedAt: !896)
!1457 = !DILocation(line: 768, column: 19, scope: !223, inlinedAt: !896)
!1458 = !DILocation(line: 773, column: 19, scope: !223, inlinedAt: !896)
!1459 = !DILocation(line: 775, column: 47, scope: !1460, inlinedAt: !896)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 775, column: 23)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 774, column: 17)
!1462 = distinct !DILexicalBlock(scope: !223, file: !3, line: 773, column: 19)
!1463 = !DILocation(line: 775, column: 23, scope: !1464, inlinedAt: !896)
!1464 = !DILexicalBlockFile(scope: !1461, file: !3, discriminator: 1)
!1465 = !DILocation(line: 777, column: 27, scope: !1466, inlinedAt: !896)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 776, column: 21)
!1467 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 778, column: 25, scope: !1469, inlinedAt: !896)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 777, column: 27)
!1470 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1468)
!1471 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1468)
!1472 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1468)
!1473 = !DILocation(line: 779, column: 23, scope: !1466, inlinedAt: !896)
!1474 = !DILocation(line: 782, column: 23, scope: !1461, inlinedAt: !896)
!1475 = !DILocation(line: 783, column: 21, scope: !1476, inlinedAt: !896)
!1476 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 782, column: 23)
!1477 = !DILocation(line: 783, column: 21, scope: !1478, inlinedAt: !896)
!1478 = !DILexicalBlockFile(scope: !1476, file: !3, discriminator: 1)
!1479 = !DILocation(line: 784, column: 28, scope: !1476, inlinedAt: !896)
!1480 = !DILocation(line: 785, column: 21, scope: !1481, inlinedAt: !896)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 784, column: 28)
!1482 = !DILocation(line: 785, column: 21, scope: !1483, inlinedAt: !896)
!1483 = !DILexicalBlockFile(scope: !1481, file: !3, discriminator: 1)
!1484 = !DILocation(line: 788, column: 9, scope: !213, inlinedAt: !896)
!1485 = !DILocalVariable(name: "__stream", arg: 1, scope: !1486, file: !1104, line: 125, type: !128)
!1486 = distinct !DISubprogram(name: "feof_unlocked", scope: !1104, file: !1104, line: 125, type: !1487, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!70, !128}
!1489 = !{!1485}
!1490 = !DILocation(line: 125, column: 1, scope: !1486, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 790, column: 11, scope: !122, inlinedAt: !896)
!1492 = !DILocation(line: 127, column: 10, scope: !1486, inlinedAt: !1491)
!1493 = !{!1409, !1016, i64 0}
!1494 = !DILocation(line: 790, column: 35, scope: !122, inlinedAt: !896)
!1495 = !DILocalVariable(name: "__stream", arg: 1, scope: !1496, file: !1104, line: 132, type: !128)
!1496 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1104, file: !1104, line: 132, type: !1487, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1497)
!1497 = !{!1495}
!1498 = !DILocation(line: 132, column: 1, scope: !1496, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 790, column: 39, scope: !1500, inlinedAt: !896)
!1500 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 1)
!1501 = !DILocation(line: 792, column: 9, scope: !122, inlinedAt: !896)
!1502 = !DILocation(line: 792, column: 3, scope: !122, inlinedAt: !896)
!1503 = !DILocation(line: 132, column: 1, scope: !1496, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 794, column: 7, scope: !1505, inlinedAt: !896)
!1505 = distinct !DILexicalBlock(scope: !122, file: !3, line: 794, column: 7)
!1506 = !DILocation(line: 134, column: 10, scope: !1496, inlinedAt: !1504)
!1507 = !DILocation(line: 794, column: 7, scope: !1505, inlinedAt: !896)
!1508 = !DILocation(line: 794, column: 7, scope: !122, inlinedAt: !896)
!1509 = !DILocation(line: 796, column: 20, scope: !1510, inlinedAt: !896)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 795, column: 5)
!1511 = !DILocation(line: 796, column: 41, scope: !1512, inlinedAt: !896)
!1512 = !DILexicalBlockFile(scope: !1510, file: !3, discriminator: 1)
!1513 = !DILocation(line: 796, column: 7, scope: !1514, inlinedAt: !896)
!1514 = !DILexicalBlockFile(scope: !1510, file: !3, discriminator: 2)
!1515 = !DILocation(line: 797, column: 7, scope: !1510, inlinedAt: !896)
!1516 = !DILocation(line: 800, column: 17, scope: !1517, inlinedAt: !896)
!1517 = distinct !DILexicalBlock(scope: !122, file: !3, line: 800, column: 7)
!1518 = !DILocation(line: 800, column: 20, scope: !1519, inlinedAt: !896)
!1519 = !DILexicalBlockFile(scope: !1517, file: !3, discriminator: 1)
!1520 = !DILocation(line: 800, column: 46, scope: !1519, inlinedAt: !896)
!1521 = !DILocation(line: 800, column: 7, scope: !1500, inlinedAt: !896)
!1522 = !DILocation(line: 802, column: 17, scope: !1523, inlinedAt: !896)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 801, column: 5)
!1524 = !DILocation(line: 802, column: 30, scope: !1525, inlinedAt: !896)
!1525 = !DILexicalBlockFile(scope: !1523, file: !3, discriminator: 1)
!1526 = !DILocation(line: 802, column: 7, scope: !1527, inlinedAt: !896)
!1527 = !DILexicalBlockFile(scope: !1523, file: !3, discriminator: 2)
!1528 = !DILocation(line: 803, column: 7, scope: !1523, inlinedAt: !896)
!1529 = !DILocation(line: 806, column: 9, scope: !1530, inlinedAt: !896)
!1530 = distinct !DILexicalBlock(scope: !122, file: !3, line: 806, column: 7)
!1531 = !DILocation(line: 806, column: 7, scope: !122, inlinedAt: !896)
!1532 = !DILocation(line: 809, column: 20, scope: !1533, inlinedAt: !896)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 807, column: 5)
!1534 = !DILocation(line: 810, column: 14, scope: !1533, inlinedAt: !896)
!1535 = !DILocation(line: 809, column: 7, scope: !1536, inlinedAt: !896)
!1536 = !DILexicalBlockFile(scope: !1533, file: !3, discriminator: 1)
!1537 = !DILocation(line: 847, column: 11, scope: !122, inlinedAt: !896)
!1538 = !DILocation(line: 814, column: 11, scope: !1539, inlinedAt: !896)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 813, column: 5)
!1540 = !DILocation(line: 847, column: 14, scope: !1500, inlinedAt: !896)
!1541 = !DILocation(line: 816, column: 36, scope: !1542, inlinedAt: !896)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 816, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 815, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 814, column: 11)
!1545 = !DILocation(line: 816, column: 15, scope: !1543, inlinedAt: !896)
!1546 = !DILocation(line: 818, column: 21, scope: !1547, inlinedAt: !896)
!1547 = !DILexicalBlockFile(scope: !1542, file: !3, discriminator: 1)
!1548 = !DILocation(line: 817, column: 13, scope: !1542, inlinedAt: !896)
!1549 = !DILocation(line: 824, column: 39, scope: !1550, inlinedAt: !896)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 824, column: 15)
!1551 = !DILocation(line: 824, column: 15, scope: !1543, inlinedAt: !896)
!1552 = !DILocation(line: 826, column: 21, scope: !1553, inlinedAt: !896)
!1553 = !DILexicalBlockFile(scope: !1550, file: !3, discriminator: 1)
!1554 = !DILocation(line: 825, column: 13, scope: !1550, inlinedAt: !896)
!1555 = !DILocation(line: 832, column: 38, scope: !1556, inlinedAt: !896)
!1556 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 832, column: 15)
!1557 = !DILocation(line: 832, column: 15, scope: !1543, inlinedAt: !896)
!1558 = !DILocation(line: 834, column: 21, scope: !1559, inlinedAt: !896)
!1559 = !DILexicalBlockFile(scope: !1556, file: !3, discriminator: 1)
!1560 = !DILocation(line: 833, column: 13, scope: !1556, inlinedAt: !896)
!1561 = !DILocation(line: 840, column: 35, scope: !1562, inlinedAt: !896)
!1562 = !DILexicalBlockFile(scope: !1563, file: !3, discriminator: 1)
!1563 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 840, column: 15)
!1564 = !DILocation(line: 840, column: 30, scope: !1563, inlinedAt: !896)
!1565 = !DILocation(line: 841, column: 26, scope: !1563, inlinedAt: !896)
!1566 = !DILocation(line: 842, column: 20, scope: !1563, inlinedAt: !896)
!1567 = !DILocation(line: 841, column: 13, scope: !1562, inlinedAt: !896)
!1568 = !DILocation(line: 848, column: 11, scope: !122, inlinedAt: !896)
!1569 = !DILocation(line: 850, column: 55, scope: !1570, inlinedAt: !896)
!1570 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 2)
!1571 = !DILocation(line: 850, column: 23, scope: !1500, inlinedAt: !896)
!1572 = !DILocation(line: 851, column: 1, scope: !122, inlinedAt: !896)
!1573 = !DILocation(line: 1030, column: 15, scope: !889)
!1574 = !DILocation(line: 1030, column: 12, scope: !889)
!1575 = !DILocation(line: 1030, column: 9, scope: !889)
!1576 = !DILocation(line: 1034, column: 16, scope: !888)
!1577 = !DILocation(line: 1034, column: 11, scope: !888)
!1578 = !DILocation(line: 1036, column: 17, scope: !893)
!1579 = !DILocation(line: 1036, column: 15, scope: !888)
!1580 = !DILocation(line: 1047, column: 35, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 2)
!1582 = !DILocation(line: 1047, column: 55, scope: !1581)
!1583 = !DILocation(line: 1047, column: 58, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 3)
!1585 = !DILocation(line: 1047, column: 55, scope: !1584)
!1586 = !DILocation(line: 1049, column: 19, scope: !892)
!1587 = !DILocation(line: 1051, column: 23, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1050, column: 17)
!1589 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1049, column: 19)
!1590 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 1052, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1051, column: 23)
!1593 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1591)
!1594 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1591)
!1595 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1591)
!1596 = !DILocation(line: 1059, column: 19, scope: !1588)
!1597 = !DILocation(line: 1061, column: 19, scope: !1588)
!1598 = !DILocation(line: 1062, column: 19, scope: !1588)
!1599 = !DILocation(line: 1063, column: 19, scope: !1588)
!1600 = !DILocation(line: 1070, column: 31, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1070, column: 19)
!1602 = !DILocation(line: 1070, column: 19, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 1)
!1604 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 1071, column: 17, scope: !1601)
!1606 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1605)
!1607 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1605)
!1608 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1605)
!1609 = !DILocation(line: 1066, column: 22, scope: !892)
!1610 = !DILocation(line: 1073, column: 15, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !3, discriminator: 1)
!1612 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1073, column: 15)
!1613 = !DILocation(line: 1074, column: 17, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1073, column: 15)
!1615 = !DILocation(line: 1073, column: 55, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1614, file: !3, discriminator: 2)
!1617 = !DILocation(line: 1073, column: 49, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1614, file: !3, discriminator: 1)
!1619 = !DILocation(line: 1073, column: 29, scope: !1618)
!1620 = distinct !{!1620, !1621, !1622}
!1621 = !DILocation(line: 1073, column: 15, scope: !1612)
!1622 = !DILocation(line: 1074, column: 17, scope: !1612)
!1623 = !DILocation(line: 1076, column: 19, scope: !892)
!1624 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 1078, column: 19, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1077, column: 17)
!1627 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1076, column: 19)
!1628 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1625)
!1629 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1625)
!1630 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1625)
!1631 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 1080, column: 19, scope: !1626)
!1633 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1632)
!1634 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1632)
!1635 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1632)
!1636 = !DILocation(line: 1082, column: 19, scope: !1626)
!1637 = !DILocation(line: 1083, column: 17, scope: !1626)
!1638 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 1085, column: 15, scope: !892)
!1640 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1639)
!1641 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1639)
!1642 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1639)
!1643 = !DILocation(line: 1087, column: 9, scope: !889)
!1644 = !DILocation(line: 1025, column: 73, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 3)
!1646 = distinct !{!1646, !1647, !1648}
!1647 = !DILocation(line: 1025, column: 3, scope: !883)
!1648 = !DILocation(line: 1088, column: 5, scope: !883)
!1649 = !DILocation(line: 1090, column: 34, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 1)
!1651 = !DILocation(line: 1090, column: 26, scope: !1650)
!1652 = !DILocation(line: 1090, column: 41, scope: !1650)
!1653 = !DILocation(line: 1090, column: 7, scope: !931)
!1654 = !DILocation(line: 1091, column: 5, scope: !1029)
!1655 = !DILocation(line: 1091, column: 5, scope: !1650)
!1656 = !DILocation(line: 1091, column: 5, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 2)
!1658 = !DILocation(line: 1093, column: 10, scope: !866)
!1659 = !DILocation(line: 1094, column: 1, scope: !866)
!1660 = !DILocation(line: 530, column: 38, scope: !1661, inlinedAt: !1357)
!1661 = !DILexicalBlockFile(scope: !1365, file: !3, discriminator: 2)
!1662 = !DILocation(line: 530, column: 17, scope: !1663, inlinedAt: !1357)
!1663 = !DILexicalBlockFile(scope: !1365, file: !3, discriminator: 1)
!1664 = distinct !{!1664, !1665, !1666}
!1665 = !DILocation(line: 530, column: 3, scope: !1361)
!1666 = !DILocation(line: 535, column: 5, scope: !1361)
!1667 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 583, type: !1668, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1671)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!76, !68, !248, !71, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1681, !1682, !1684}
!1672 = !DILocalVariable(name: "filename", arg: 1, scope: !1667, file: !3, line: 583, type: !68)
!1673 = !DILocalVariable(name: "binary", arg: 2, scope: !1667, file: !3, line: 583, type: !248)
!1674 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1667, file: !3, line: 583, type: !71)
!1675 = !DILocalVariable(name: "missing", arg: 4, scope: !1667, file: !3, line: 584, type: !1670)
!1676 = !DILocalVariable(name: "fp", scope: !1667, file: !3, line: 586, type: !128)
!1677 = !DILocalVariable(name: "err", scope: !1667, file: !3, line: 587, type: !70)
!1678 = !DILocalVariable(name: "is_stdin", scope: !1667, file: !3, line: 588, type: !76)
!1679 = !DILocalVariable(name: "__s1_len", scope: !1680, file: !3, line: 588, type: !61)
!1680 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 588, column: 19)
!1681 = !DILocalVariable(name: "__s2_len", scope: !1680, file: !3, line: 588, type: !61)
!1682 = !DILocalVariable(name: "__s2", scope: !1683, file: !3, line: 588, type: !65)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 588, column: 19)
!1684 = !DILocalVariable(name: "__result", scope: !1683, file: !3, line: 588, type: !70)
!1685 = !DILocation(line: 583, column: 41, scope: !1667)
!1686 = !DILocation(line: 588, column: 19, scope: !1680)
!1687 = !DILocation(line: 588, column: 19, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1683, file: !3, discriminator: 2)
!1689 = !DILocation(line: 588, column: 19, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 3)
!1691 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 588, column: 19)
!1692 = !DILocation(line: 588, column: 19, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 2)
!1694 = !DILocation(line: 590, column: 12, scope: !1667)
!1695 = !{!1696, !1696, i64 0}
!1696 = !{!"_Bool", !806, i64 0}
!1697 = !DILocation(line: 592, column: 7, scope: !1667)
!1698 = !DILocation(line: 588, column: 19, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !3, discriminator: 4)
!1700 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 588, column: 19)
!1701 = !DILocation(line: 588, column: 19, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1680, file: !3, discriminator: 11)
!1703 = !DILocation(line: 595, column: 12, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 593, column: 5)
!1705 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 592, column: 7)
!1706 = !DILocation(line: 586, column: 9, scope: !1667)
!1707 = !DILocation(line: 603, column: 5, scope: !1704)
!1708 = !DILocation(line: 606, column: 12, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 605, column: 5)
!1710 = !DILocation(line: 607, column: 14, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 607, column: 11)
!1712 = !DILocation(line: 607, column: 11, scope: !1709)
!1713 = !DILocation(line: 609, column: 33, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !3, discriminator: 1)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 609, column: 15)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 608, column: 9)
!1717 = !DILocation(line: 609, column: 30, scope: !1715)
!1718 = !DILocation(line: 609, column: 39, scope: !1714)
!1719 = !DILocation(line: 609, column: 15, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1716, file: !3, discriminator: 1)
!1721 = !DILocation(line: 611, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 610, column: 13)
!1723 = !DILocation(line: 612, column: 15, scope: !1722)
!1724 = !DILocation(line: 614, column: 21, scope: !1716)
!1725 = !DILocation(line: 614, column: 34, scope: !1720)
!1726 = !DILocation(line: 614, column: 11, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1716, file: !3, discriminator: 2)
!1728 = !DILocation(line: 615, column: 11, scope: !1716)
!1729 = !DILocation(line: 619, column: 3, scope: !1667)
!1730 = !DILocation(line: 624, column: 9, scope: !1667)
!1731 = !DILocation(line: 587, column: 7, scope: !1667)
!1732 = !DILocation(line: 626, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 626, column: 7)
!1734 = !DILocation(line: 626, column: 7, scope: !1667)
!1735 = !DILocation(line: 628, column: 17, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 627, column: 5)
!1737 = !DILocation(line: 628, column: 30, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1736, file: !3, discriminator: 1)
!1739 = !DILocation(line: 628, column: 7, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1736, file: !3, discriminator: 2)
!1741 = !DILocation(line: 629, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 629, column: 11)
!1743 = !DILocation(line: 629, column: 14, scope: !1742)
!1744 = !DILocation(line: 629, column: 11, scope: !1736)
!1745 = !DILocation(line: 630, column: 9, scope: !1742)
!1746 = !DILocation(line: 634, column: 17, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 634, column: 7)
!1748 = !DILocation(line: 634, column: 20, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1747, file: !3, discriminator: 1)
!1750 = !DILocation(line: 634, column: 32, scope: !1749)
!1751 = !DILocation(line: 634, column: 7, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1667, file: !3, discriminator: 1)
!1753 = !DILocation(line: 636, column: 17, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 635, column: 5)
!1755 = !DILocation(line: 636, column: 30, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1754, file: !3, discriminator: 1)
!1757 = !DILocation(line: 636, column: 7, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1754, file: !3, discriminator: 2)
!1759 = !DILocation(line: 637, column: 7, scope: !1754)
!1760 = !DILocation(line: 641, column: 1, scope: !1667)
!1761 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 542, type: !1762, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !68, !76}
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "file", arg: 1, scope: !1761, file: !3, line: 542, type: !68)
!1766 = !DILocalVariable(name: "escape", arg: 2, scope: !1761, file: !3, line: 542, type: !76)
!1767 = !DILocation(line: 542, column: 29, scope: !1761)
!1768 = !DILocation(line: 542, column: 40, scope: !1761)
!1769 = !DILocation(line: 544, column: 7, scope: !1761)
!1770 = !DILocation(line: 550, column: 10, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1761, file: !3, discriminator: 1)
!1772 = !DILocation(line: 550, column: 3, scope: !1771)
!1773 = !DILocation(line: 552, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 551, column: 5)
!1775 = !DILocation(line: 546, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 545, column: 5)
!1777 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 544, column: 7)
!1778 = !DILocation(line: 547, column: 7, scope: !1776)
!1779 = !DILocation(line: 552, column: 7, scope: !1774)
!1780 = !DILocation(line: 555, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 553, column: 9)
!1782 = !DILocation(line: 556, column: 11, scope: !1781)
!1783 = !DILocation(line: 559, column: 11, scope: !1781)
!1784 = !DILocation(line: 560, column: 11, scope: !1781)
!1785 = !DILocation(line: 105, column: 23, scope: !1400, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 563, column: 11, scope: !1781)
!1787 = !DILocation(line: 107, column: 10, scope: !1400, inlinedAt: !1786)
!1788 = !DILocation(line: 107, column: 10, scope: !1413, inlinedAt: !1786)
!1789 = !DILocation(line: 107, column: 10, scope: !1415, inlinedAt: !1786)
!1790 = !DILocation(line: 566, column: 11, scope: !1774)
!1791 = distinct !{!1791, !1792, !1793}
!1792 = !DILocation(line: 550, column: 3, scope: !1761)
!1793 = !DILocation(line: 567, column: 5, scope: !1761)
!1794 = !DILocation(line: 568, column: 1, scope: !1761)
!1795 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !265, file: !265, line: 41, type: !84, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !260, variables: !1796)
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "file", arg: 1, scope: !1795, file: !265, line: 41, type: !68)
!1798 = !DILocation(line: 41, column: 41, scope: !1795)
!1799 = !DILocation(line: 43, column: 13, scope: !1795)
!1800 = !DILocation(line: 44, column: 1, scope: !1795)
!1801 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !265, file: !265, line: 78, type: !1802, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !260, variables: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !76}
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "ignore", arg: 1, scope: !1801, file: !265, line: 78, type: !76)
!1806 = !DILocation(line: 78, column: 37, scope: !1801)
!1807 = !DILocation(line: 80, column: 16, scope: !1801)
!1808 = !DILocation(line: 81, column: 1, scope: !1801)
!1809 = distinct !DISubprogram(name: "close_stdout", scope: !265, file: !265, line: 107, type: !818, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !260, variables: !1810)
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "write_error", scope: !1812, file: !265, line: 112, type: !68)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !265, line: 111, column: 5)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !265, line: 109, column: 7)
!1814 = !DILocation(line: 109, column: 21, scope: !1813)
!1815 = !DILocation(line: 109, column: 7, scope: !1813)
!1816 = !DILocation(line: 109, column: 29, scope: !1813)
!1817 = !DILocation(line: 110, column: 7, scope: !1813)
!1818 = !DILocation(line: 110, column: 12, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1813, file: !265, discriminator: 1)
!1820 = !{i8 0, i8 2}
!1821 = !DILocation(line: 114, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1812, file: !265, line: 113, column: 11)
!1823 = !DILocation(line: 110, column: 25, scope: !1819)
!1824 = !DILocation(line: 110, column: 28, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1813, file: !265, discriminator: 2)
!1826 = !DILocation(line: 110, column: 34, scope: !1825)
!1827 = !DILocation(line: 109, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1809, file: !265, discriminator: 1)
!1829 = !DILocation(line: 112, column: 33, scope: !1812)
!1830 = !DILocation(line: 112, column: 19, scope: !1812)
!1831 = !DILocation(line: 113, column: 11, scope: !1822)
!1832 = !DILocation(line: 113, column: 11, scope: !1812)
!1833 = !DILocation(line: 114, column: 36, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1822, file: !265, discriminator: 1)
!1835 = !DILocation(line: 114, column: 9, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1822, file: !265, discriminator: 2)
!1837 = !DILocation(line: 114, column: 9, scope: !1822)
!1838 = !DILocation(line: 117, column: 9, scope: !1834)
!1839 = !DILocation(line: 119, column: 14, scope: !1812)
!1840 = !DILocation(line: 119, column: 7, scope: !1812)
!1841 = !DILocation(line: 122, column: 22, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1809, file: !265, line: 122, column: 8)
!1843 = !DILocation(line: 122, column: 8, scope: !1842)
!1844 = !DILocation(line: 122, column: 30, scope: !1842)
!1845 = !DILocation(line: 122, column: 8, scope: !1809)
!1846 = !DILocation(line: 123, column: 13, scope: !1842)
!1847 = !DILocation(line: 123, column: 6, scope: !1842)
!1848 = !DILocation(line: 124, column: 1, scope: !1809)
!1849 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !274, file: !274, line: 62, type: !1850, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1870)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !1854, line: 40, size: 1280, elements: !1855)
!1854 = !DIFile(filename: "./lib/sha1.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1865, !1866}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1853, file: !1854, line: 42, baseType: !271, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1853, file: !1854, line: 43, baseType: !271, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1853, file: !1854, line: 44, baseType: !271, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1853, file: !1854, line: 45, baseType: !271, size: 32, offset: 96)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !1853, file: !1854, line: 46, baseType: !271, size: 32, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1853, file: !1854, line: 48, baseType: !1862, size: 64, offset: 160)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 64, elements: !1863)
!1863 = !{!1864}
!1864 = !DISubrange(count: 2)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1853, file: !1854, line: 49, baseType: !271, size: 32, offset: 224)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1853, file: !1854, line: 50, baseType: !1867, size: 1024, offset: 256)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 1024, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 32)
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "ctx", arg: 1, scope: !1849, file: !274, line: 62, type: !1852)
!1872 = !DILocation(line: 62, column: 33, scope: !1849)
!1873 = !DILocation(line: 64, column: 10, scope: !1849)
!1874 = !DILocation(line: 68, column: 8, scope: !1849)
!1875 = !DILocation(line: 68, column: 10, scope: !1849)
!1876 = !DILocation(line: 72, column: 1, scope: !1849)
!1877 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !274, file: !274, line: 86, type: !1878, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1882)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!60, !1880, !60}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1882 = !{!1883, !1884, !1885}
!1883 = !DILocalVariable(name: "ctx", arg: 1, scope: !1877, file: !274, line: 86, type: !1880)
!1884 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1877, file: !274, line: 86, type: !60)
!1885 = !DILocalVariable(name: "r", scope: !1877, file: !274, line: 88, type: !58)
!1886 = !DILocation(line: 86, column: 39, scope: !1877)
!1887 = !DILocation(line: 86, column: 50, scope: !1877)
!1888 = !DILocation(line: 88, column: 9, scope: !1877)
!1889 = !DILocation(line: 89, column: 38, scope: !1877)
!1890 = !{!1891, !1016, i64 0}
!1891 = !{!"sha1_ctx", !1016, i64 0, !1016, i64 4, !1016, i64 8, !1016, i64 12, !1016, i64 16, !806, i64 20, !1016, i64 28, !806, i64 32}
!1892 = !DILocalVariable(name: "cp", arg: 1, scope: !1893, file: !274, line: 78, type: !58)
!1893 = distinct !DISubprogram(name: "set_uint32", scope: !274, file: !274, line: 78, type: !1894, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !58, !271}
!1896 = !{!1892, !1897}
!1897 = !DILocalVariable(name: "v", arg: 2, scope: !1893, file: !274, line: 78, type: !271)
!1898 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 89, column: 3, scope: !1877)
!1900 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1899)
!1901 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1899)
!1902 = !DILocation(line: 90, column: 17, scope: !1877)
!1903 = !DILocation(line: 90, column: 38, scope: !1877)
!1904 = !{!1891, !1016, i64 4}
!1905 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 90, column: 3, scope: !1877)
!1907 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1906)
!1908 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1906)
!1909 = !DILocation(line: 91, column: 17, scope: !1877)
!1910 = !DILocation(line: 91, column: 38, scope: !1877)
!1911 = !{!1891, !1016, i64 8}
!1912 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 91, column: 3, scope: !1877)
!1914 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1913)
!1915 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1913)
!1916 = !DILocation(line: 92, column: 17, scope: !1877)
!1917 = !DILocation(line: 92, column: 38, scope: !1877)
!1918 = !{!1891, !1016, i64 12}
!1919 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 92, column: 3, scope: !1877)
!1921 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1920)
!1922 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1920)
!1923 = !DILocation(line: 93, column: 17, scope: !1877)
!1924 = !DILocation(line: 93, column: 38, scope: !1877)
!1925 = !{!1891, !1016, i64 16}
!1926 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 93, column: 3, scope: !1877)
!1928 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1927)
!1929 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1927)
!1930 = !DILocation(line: 95, column: 3, scope: !1877)
!1931 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !274, file: !274, line: 101, type: !1932, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!60, !1852, !60}
!1934 = !{!1935, !1936, !1937, !1938}
!1935 = !DILocalVariable(name: "ctx", arg: 1, scope: !1931, file: !274, line: 101, type: !1852)
!1936 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1931, file: !274, line: 101, type: !60)
!1937 = !DILocalVariable(name: "bytes", scope: !1931, file: !274, line: 104, type: !271)
!1938 = !DILocalVariable(name: "size", scope: !1931, file: !274, line: 105, type: !61)
!1939 = !DILocation(line: 101, column: 35, scope: !1931)
!1940 = !DILocation(line: 101, column: 46, scope: !1931)
!1941 = !DILocation(line: 104, column: 25, scope: !1931)
!1942 = !{!1891, !1016, i64 28}
!1943 = !DILocation(line: 104, column: 12, scope: !1931)
!1944 = !DILocation(line: 105, column: 24, scope: !1931)
!1945 = !DILocation(line: 105, column: 17, scope: !1931)
!1946 = !DILocation(line: 105, column: 10, scope: !1931)
!1947 = !DILocation(line: 108, column: 3, scope: !1931)
!1948 = !DILocation(line: 108, column: 17, scope: !1931)
!1949 = !DILocation(line: 109, column: 21, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1931, file: !274, line: 109, column: 7)
!1951 = !DILocation(line: 109, column: 7, scope: !1931)
!1952 = !DILocation(line: 110, column: 5, scope: !1950)
!1953 = !DILocation(line: 113, column: 27, scope: !1931)
!1954 = !DILocation(line: 113, column: 20, scope: !1931)
!1955 = !DILocation(line: 113, column: 3, scope: !1931)
!1956 = !DILocation(line: 113, column: 25, scope: !1931)
!1957 = !DILocation(line: 114, column: 27, scope: !1931)
!1958 = !DILocation(line: 114, column: 20, scope: !1931)
!1959 = !DILocation(line: 114, column: 3, scope: !1931)
!1960 = !DILocation(line: 114, column: 25, scope: !1931)
!1961 = !DILocation(line: 116, column: 12, scope: !1931)
!1962 = !DILocation(line: 116, column: 63, scope: !1931)
!1963 = !DILocation(line: 116, column: 67, scope: !1931)
!1964 = !DILocation(line: 116, column: 3, scope: !1931)
!1965 = !DILocation(line: 119, column: 41, scope: !1931)
!1966 = !DILocation(line: 119, column: 3, scope: !1931)
!1967 = !DILocation(line: 86, column: 39, scope: !1877, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 121, column: 10, scope: !1931)
!1969 = !DILocation(line: 86, column: 50, scope: !1877, inlinedAt: !1968)
!1970 = !DILocation(line: 88, column: 9, scope: !1877, inlinedAt: !1968)
!1971 = !DILocation(line: 89, column: 38, scope: !1877, inlinedAt: !1968)
!1972 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 89, column: 3, scope: !1877, inlinedAt: !1968)
!1974 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1973)
!1975 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1973)
!1976 = !DILocation(line: 90, column: 17, scope: !1877, inlinedAt: !1968)
!1977 = !DILocation(line: 90, column: 38, scope: !1877, inlinedAt: !1968)
!1978 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 90, column: 3, scope: !1877, inlinedAt: !1968)
!1980 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1979)
!1981 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1979)
!1982 = !DILocation(line: 91, column: 17, scope: !1877, inlinedAt: !1968)
!1983 = !DILocation(line: 91, column: 38, scope: !1877, inlinedAt: !1968)
!1984 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 91, column: 3, scope: !1877, inlinedAt: !1968)
!1986 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1985)
!1987 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1985)
!1988 = !DILocation(line: 92, column: 17, scope: !1877, inlinedAt: !1968)
!1989 = !DILocation(line: 92, column: 38, scope: !1877, inlinedAt: !1968)
!1990 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 92, column: 3, scope: !1877, inlinedAt: !1968)
!1992 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1991)
!1993 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1991)
!1994 = !DILocation(line: 93, column: 17, scope: !1877, inlinedAt: !1968)
!1995 = !DILocation(line: 93, column: 38, scope: !1877, inlinedAt: !1968)
!1996 = !DILocation(line: 78, column: 19, scope: !1893, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 93, column: 3, scope: !1877, inlinedAt: !1968)
!1998 = !DILocation(line: 78, column: 32, scope: !1893, inlinedAt: !1997)
!1999 = !DILocation(line: 80, column: 3, scope: !1893, inlinedAt: !1997)
!2000 = !DILocation(line: 121, column: 3, scope: !1931)
!2001 = distinct !DISubprogram(name: "sha1_process_block", scope: !274, file: !274, line: 303, type: !2002, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !63, !61, !1852}
!2004 = !{!2005, !2006, !2007, !2008, !2011, !2012, !2013, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2023}
!2005 = !DILocalVariable(name: "buffer", arg: 1, scope: !2001, file: !274, line: 303, type: !63)
!2006 = !DILocalVariable(name: "len", arg: 2, scope: !2001, file: !274, line: 303, type: !61)
!2007 = !DILocalVariable(name: "ctx", arg: 3, scope: !2001, file: !274, line: 303, type: !1852)
!2008 = !DILocalVariable(name: "words", scope: !2001, file: !274, line: 305, type: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!2011 = !DILocalVariable(name: "nwords", scope: !2001, file: !274, line: 306, type: !61)
!2012 = !DILocalVariable(name: "endp", scope: !2001, file: !274, line: 307, type: !2009)
!2013 = !DILocalVariable(name: "x", scope: !2001, file: !274, line: 308, type: !2014)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 512, elements: !236)
!2015 = !DILocalVariable(name: "a", scope: !2001, file: !274, line: 309, type: !271)
!2016 = !DILocalVariable(name: "b", scope: !2001, file: !274, line: 310, type: !271)
!2017 = !DILocalVariable(name: "c", scope: !2001, file: !274, line: 311, type: !271)
!2018 = !DILocalVariable(name: "d", scope: !2001, file: !274, line: 312, type: !271)
!2019 = !DILocalVariable(name: "e", scope: !2001, file: !274, line: 313, type: !271)
!2020 = !DILocalVariable(name: "lolen", scope: !2001, file: !274, line: 314, type: !271)
!2021 = !DILocalVariable(name: "tm", scope: !2022, file: !274, line: 337, type: !271)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !274, line: 336, column: 5)
!2023 = !DILocalVariable(name: "t", scope: !2022, file: !274, line: 338, type: !70)
!2024 = !DILocation(line: 303, column: 33, scope: !2001)
!2025 = !DILocation(line: 303, column: 48, scope: !2001)
!2026 = !DILocation(line: 303, column: 70, scope: !2001)
!2027 = !DILocation(line: 305, column: 27, scope: !2001)
!2028 = !DILocation(line: 305, column: 19, scope: !2001)
!2029 = !DILocation(line: 306, column: 23, scope: !2001)
!2030 = !DILocation(line: 306, column: 10, scope: !2001)
!2031 = !DILocation(line: 307, column: 32, scope: !2001)
!2032 = !DILocation(line: 307, column: 19, scope: !2001)
!2033 = !DILocation(line: 308, column: 3, scope: !2001)
!2034 = !DILocation(line: 308, column: 12, scope: !2001)
!2035 = !DILocation(line: 309, column: 21, scope: !2001)
!2036 = !DILocation(line: 309, column: 12, scope: !2001)
!2037 = !DILocation(line: 310, column: 21, scope: !2001)
!2038 = !DILocation(line: 310, column: 12, scope: !2001)
!2039 = !DILocation(line: 311, column: 21, scope: !2001)
!2040 = !DILocation(line: 311, column: 12, scope: !2001)
!2041 = !DILocation(line: 312, column: 21, scope: !2001)
!2042 = !DILocation(line: 312, column: 12, scope: !2001)
!2043 = !DILocation(line: 313, column: 21, scope: !2001)
!2044 = !DILocation(line: 313, column: 12, scope: !2001)
!2045 = !DILocation(line: 314, column: 20, scope: !2001)
!2046 = !DILocation(line: 314, column: 12, scope: !2001)
!2047 = !DILocation(line: 319, column: 3, scope: !2001)
!2048 = !DILocation(line: 319, column: 17, scope: !2001)
!2049 = !DILocation(line: 320, column: 25, scope: !2001)
!2050 = !DILocation(line: 320, column: 54, scope: !2001)
!2051 = !DILocation(line: 320, column: 39, scope: !2001)
!2052 = !DILocation(line: 320, column: 37, scope: !2001)
!2053 = !DILocation(line: 320, column: 3, scope: !2001)
!2054 = !DILocation(line: 320, column: 17, scope: !2001)
!2055 = !DILocation(line: 335, column: 16, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2001, file: !274, discriminator: 1)
!2057 = !DILocation(line: 335, column: 3, scope: !2056)
!2058 = !DILocation(line: 338, column: 11, scope: !2022)
!2059 = !DILocation(line: 341, column: 18, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !274, line: 340, column: 9)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !274, line: 339, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 339, column: 7)
!2063 = !DILocation(line: 341, column: 16, scope: !2060)
!2064 = !DILocation(line: 342, column: 16, scope: !2060)
!2065 = !DILocation(line: 339, column: 7, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2062, file: !274, discriminator: 1)
!2067 = !DILocation(line: 345, column: 7, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2069, file: !274, discriminator: 1)
!2069 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 345, column: 7)
!2070 = !DILocation(line: 346, column: 7, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2072, file: !274, discriminator: 1)
!2072 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 346, column: 7)
!2073 = !DILocation(line: 347, column: 7, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !274, discriminator: 1)
!2075 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 347, column: 7)
!2076 = !DILocation(line: 348, column: 7, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !274, discriminator: 1)
!2078 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 348, column: 7)
!2079 = !DILocation(line: 349, column: 7, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2081, file: !274, discriminator: 1)
!2081 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 349, column: 7)
!2082 = !DILocation(line: 350, column: 7, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2084, file: !274, discriminator: 1)
!2084 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 350, column: 7)
!2085 = !DILocation(line: 351, column: 7, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !274, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 351, column: 7)
!2088 = !DILocation(line: 352, column: 7, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2090, file: !274, discriminator: 1)
!2090 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 352, column: 7)
!2091 = !DILocation(line: 353, column: 7, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2093, file: !274, discriminator: 1)
!2093 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 353, column: 7)
!2094 = !DILocation(line: 354, column: 7, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2096, file: !274, discriminator: 1)
!2096 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 354, column: 7)
!2097 = !DILocation(line: 355, column: 7, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !274, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 355, column: 7)
!2100 = !DILocation(line: 356, column: 7, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !274, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 356, column: 7)
!2103 = !DILocation(line: 357, column: 7, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2105, file: !274, discriminator: 1)
!2105 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 357, column: 7)
!2106 = !DILocation(line: 358, column: 7, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2108, file: !274, discriminator: 1)
!2108 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 358, column: 7)
!2109 = !DILocation(line: 359, column: 7, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !274, discriminator: 1)
!2111 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 359, column: 7)
!2112 = !DILocation(line: 360, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !274, discriminator: 1)
!2114 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 360, column: 7)
!2115 = !DILocation(line: 361, column: 7, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !274, discriminator: 1)
!2117 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 361, column: 7)
!2118 = !DILocation(line: 337, column: 16, scope: !2022)
!2119 = !DILocation(line: 362, column: 7, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !274, discriminator: 1)
!2121 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 362, column: 7)
!2122 = !DILocation(line: 363, column: 7, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2124, file: !274, discriminator: 1)
!2124 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 363, column: 7)
!2125 = !DILocation(line: 364, column: 7, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2127, file: !274, discriminator: 1)
!2127 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 364, column: 7)
!2128 = !DILocation(line: 365, column: 7, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2130, file: !274, discriminator: 1)
!2130 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 365, column: 7)
!2131 = !DILocation(line: 366, column: 7, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2133, file: !274, discriminator: 1)
!2133 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 366, column: 7)
!2134 = !DILocation(line: 367, column: 7, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !274, discriminator: 1)
!2136 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 367, column: 7)
!2137 = !DILocation(line: 368, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !274, discriminator: 1)
!2139 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 368, column: 7)
!2140 = !DILocation(line: 369, column: 7, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2142, file: !274, discriminator: 1)
!2142 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 369, column: 7)
!2143 = !DILocation(line: 370, column: 7, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2145, file: !274, discriminator: 1)
!2145 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 370, column: 7)
!2146 = !DILocation(line: 371, column: 7, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !274, discriminator: 1)
!2148 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 371, column: 7)
!2149 = !DILocation(line: 372, column: 7, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2151, file: !274, discriminator: 1)
!2151 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 372, column: 7)
!2152 = !DILocation(line: 373, column: 7, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !274, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 373, column: 7)
!2155 = !DILocation(line: 374, column: 7, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !274, discriminator: 1)
!2157 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 374, column: 7)
!2158 = !DILocation(line: 375, column: 7, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !274, discriminator: 1)
!2160 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 375, column: 7)
!2161 = !DILocation(line: 376, column: 7, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !274, discriminator: 1)
!2163 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 376, column: 7)
!2164 = !DILocation(line: 377, column: 7, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2166, file: !274, discriminator: 1)
!2166 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 377, column: 7)
!2167 = !DILocation(line: 378, column: 7, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !274, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 378, column: 7)
!2170 = !DILocation(line: 379, column: 7, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2172, file: !274, discriminator: 1)
!2172 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 379, column: 7)
!2173 = !DILocation(line: 380, column: 7, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2175, file: !274, discriminator: 1)
!2175 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 380, column: 7)
!2176 = !DILocation(line: 381, column: 7, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !274, discriminator: 1)
!2178 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 381, column: 7)
!2179 = !DILocation(line: 382, column: 7, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !274, discriminator: 1)
!2181 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 382, column: 7)
!2182 = !DILocation(line: 383, column: 7, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !274, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 383, column: 7)
!2185 = !DILocation(line: 384, column: 7, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2187, file: !274, discriminator: 1)
!2187 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 384, column: 7)
!2188 = !DILocation(line: 385, column: 7, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !274, discriminator: 1)
!2190 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 385, column: 7)
!2191 = !DILocation(line: 386, column: 7, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !274, discriminator: 1)
!2193 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 386, column: 7)
!2194 = !DILocation(line: 387, column: 7, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2196, file: !274, discriminator: 1)
!2196 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 387, column: 7)
!2197 = !DILocation(line: 388, column: 7, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !274, discriminator: 1)
!2199 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 388, column: 7)
!2200 = !DILocation(line: 389, column: 7, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2202, file: !274, discriminator: 1)
!2202 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 389, column: 7)
!2203 = !DILocation(line: 390, column: 7, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !274, discriminator: 1)
!2205 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 390, column: 7)
!2206 = !DILocation(line: 391, column: 7, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !274, discriminator: 1)
!2208 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 391, column: 7)
!2209 = !DILocation(line: 392, column: 7, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2211, file: !274, discriminator: 1)
!2211 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 392, column: 7)
!2212 = !DILocation(line: 393, column: 7, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !274, discriminator: 1)
!2214 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 393, column: 7)
!2215 = !DILocation(line: 394, column: 7, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !274, discriminator: 1)
!2217 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 394, column: 7)
!2218 = !DILocation(line: 395, column: 7, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !274, discriminator: 1)
!2220 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 395, column: 7)
!2221 = !DILocation(line: 396, column: 7, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2223, file: !274, discriminator: 1)
!2223 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 396, column: 7)
!2224 = !DILocation(line: 397, column: 7, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2226, file: !274, discriminator: 1)
!2226 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 397, column: 7)
!2227 = !DILocation(line: 398, column: 7, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !274, discriminator: 1)
!2229 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 398, column: 7)
!2230 = !DILocation(line: 399, column: 7, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2232, file: !274, discriminator: 1)
!2232 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 399, column: 7)
!2233 = !DILocation(line: 400, column: 7, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2235, file: !274, discriminator: 1)
!2235 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 400, column: 7)
!2236 = !DILocation(line: 401, column: 7, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2238, file: !274, discriminator: 1)
!2238 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 401, column: 7)
!2239 = !DILocation(line: 402, column: 7, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2241, file: !274, discriminator: 1)
!2241 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 402, column: 7)
!2242 = !DILocation(line: 403, column: 7, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !274, discriminator: 1)
!2244 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 403, column: 7)
!2245 = !DILocation(line: 404, column: 7, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !274, discriminator: 1)
!2247 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 404, column: 7)
!2248 = !DILocation(line: 405, column: 7, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !274, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 405, column: 7)
!2251 = !DILocation(line: 406, column: 7, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2253, file: !274, discriminator: 1)
!2253 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 406, column: 7)
!2254 = !DILocation(line: 407, column: 7, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2256, file: !274, discriminator: 1)
!2256 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 407, column: 7)
!2257 = !DILocation(line: 408, column: 7, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2259, file: !274, discriminator: 1)
!2259 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 408, column: 7)
!2260 = !DILocation(line: 409, column: 7, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2262, file: !274, discriminator: 1)
!2262 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 409, column: 7)
!2263 = !DILocation(line: 410, column: 7, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2265, file: !274, discriminator: 1)
!2265 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 410, column: 7)
!2266 = !DILocation(line: 411, column: 7, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2268, file: !274, discriminator: 1)
!2268 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 411, column: 7)
!2269 = !DILocation(line: 412, column: 7, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !274, discriminator: 1)
!2271 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 412, column: 7)
!2272 = !DILocation(line: 413, column: 7, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !274, discriminator: 1)
!2274 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 413, column: 7)
!2275 = !DILocation(line: 414, column: 7, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2277, file: !274, discriminator: 1)
!2277 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 414, column: 7)
!2278 = !DILocation(line: 415, column: 7, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !274, discriminator: 1)
!2280 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 415, column: 7)
!2281 = !DILocation(line: 416, column: 7, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2283, file: !274, discriminator: 1)
!2283 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 416, column: 7)
!2284 = !DILocation(line: 417, column: 7, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2286, file: !274, discriminator: 1)
!2286 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 417, column: 7)
!2287 = !DILocation(line: 418, column: 7, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !274, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 418, column: 7)
!2290 = !DILocation(line: 419, column: 7, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !274, discriminator: 1)
!2292 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 419, column: 7)
!2293 = !DILocation(line: 420, column: 7, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !274, discriminator: 1)
!2295 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 420, column: 7)
!2296 = !DILocation(line: 421, column: 7, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2298, file: !274, discriminator: 1)
!2298 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 421, column: 7)
!2299 = !DILocation(line: 422, column: 7, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2301, file: !274, discriminator: 1)
!2301 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 422, column: 7)
!2302 = !DILocation(line: 423, column: 7, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !274, discriminator: 1)
!2304 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 423, column: 7)
!2305 = !DILocation(line: 424, column: 7, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2307, file: !274, discriminator: 1)
!2307 = distinct !DILexicalBlock(scope: !2022, file: !274, line: 424, column: 7)
!2308 = !DILocation(line: 426, column: 18, scope: !2022)
!2309 = !DILocation(line: 427, column: 18, scope: !2022)
!2310 = distinct !{!2310, !2311, !2312}
!2311 = !DILocation(line: 335, column: 3, scope: !2001)
!2312 = !DILocation(line: 431, column: 5, scope: !2001)
!2313 = !DILocation(line: 432, column: 1, scope: !2001)
!2314 = distinct !DISubprogram(name: "sha1_stream", scope: !274, file: !274, line: 129, type: !2315, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2357)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!70, !2317, !60}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2319, file: !132, line: 242, baseType: !70, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2319, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2319, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2319, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2319, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2319, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2319, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2319, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2319, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2319, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2319, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2319, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2319, file: !132, line: 260, baseType: !2334, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2336)
!2336 = !{!2337, !2338, !2340}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2335, file: !132, line: 157, baseType: !2334, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2335, file: !132, line: 158, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2335, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2319, file: !132, line: 262, baseType: !2339, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2319, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2319, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2319, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2319, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2319, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2319, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2319, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2319, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2319, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2319, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2319, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2319, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2319, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2319, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2319, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363}
!2358 = !DILocalVariable(name: "stream", arg: 1, scope: !2314, file: !274, line: 129, type: !2317)
!2359 = !DILocalVariable(name: "resblock", arg: 2, scope: !2314, file: !274, line: 129, type: !60)
!2360 = !DILocalVariable(name: "ctx", scope: !2314, file: !274, line: 131, type: !1853)
!2361 = !DILocalVariable(name: "sum", scope: !2314, file: !274, line: 132, type: !61)
!2362 = !DILocalVariable(name: "buffer", scope: !2314, file: !274, line: 134, type: !58)
!2363 = !DILocalVariable(name: "n", scope: !2364, file: !274, line: 147, type: !61)
!2364 = distinct !DILexicalBlock(scope: !2314, file: !274, line: 143, column: 5)
!2365 = !DILocation(line: 129, column: 20, scope: !2314)
!2366 = !DILocation(line: 129, column: 34, scope: !2314)
!2367 = !DILocation(line: 131, column: 3, scope: !2314)
!2368 = !DILocation(line: 134, column: 18, scope: !2314)
!2369 = !DILocation(line: 134, column: 9, scope: !2314)
!2370 = !DILocation(line: 135, column: 8, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2314, file: !274, line: 135, column: 7)
!2372 = !DILocation(line: 135, column: 7, scope: !2314)
!2373 = !DILocation(line: 131, column: 19, scope: !2314)
!2374 = !DILocation(line: 62, column: 33, scope: !1849, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 139, column: 3, scope: !2314)
!2376 = !DILocation(line: 64, column: 10, scope: !1849, inlinedAt: !2375)
!2377 = !DILocation(line: 68, column: 8, scope: !1849, inlinedAt: !2375)
!2378 = !DILocation(line: 68, column: 10, scope: !1849, inlinedAt: !2375)
!2379 = !DILocation(line: 142, column: 3, scope: !2314)
!2380 = !DILocation(line: 132, column: 10, scope: !2314)
!2381 = !DILocation(line: 151, column: 7, scope: !2364)
!2382 = !DILocation(line: 153, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2364, file: !274, line: 152, column: 9)
!2384 = !DILocation(line: 147, column: 14, scope: !2364)
!2385 = !DILocation(line: 155, column: 15, scope: !2383)
!2386 = !DILocation(line: 157, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !274, line: 157, column: 15)
!2388 = !DILocation(line: 157, column: 15, scope: !2383)
!2389 = !DILocation(line: 160, column: 17, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2383, file: !274, line: 160, column: 15)
!2391 = !DILocation(line: 160, column: 15, scope: !2383)
!2392 = !DILocalVariable(name: "__stream", arg: 1, scope: !2393, file: !1104, line: 132, type: !2317)
!2393 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1104, file: !1104, line: 132, type: !2394, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!70, !2317}
!2396 = !{!2392}
!2397 = !DILocation(line: 132, column: 1, scope: !2393, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 165, column: 19, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !274, line: 165, column: 19)
!2400 = distinct !DILexicalBlock(scope: !2390, file: !274, line: 161, column: 13)
!2401 = !DILocation(line: 134, column: 10, scope: !2393, inlinedAt: !2398)
!2402 = !DILocation(line: 165, column: 19, scope: !2399)
!2403 = !DILocation(line: 165, column: 19, scope: !2400)
!2404 = !DILocation(line: 167, column: 19, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !274, line: 166, column: 17)
!2406 = !DILocalVariable(name: "__stream", arg: 1, scope: !2407, file: !1104, line: 125, type: !2317)
!2407 = distinct !DISubprogram(name: "feof_unlocked", scope: !1104, file: !1104, line: 125, type: !2394, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2408)
!2408 = !{!2406}
!2409 = !DILocation(line: 125, column: 1, scope: !2407, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 176, column: 15, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2383, file: !274, line: 176, column: 15)
!2412 = !DILocation(line: 127, column: 10, scope: !2407, inlinedAt: !2410)
!2413 = !DILocation(line: 176, column: 15, scope: !2411)
!2414 = !DILocation(line: 176, column: 15, scope: !2383)
!2415 = distinct !{!2415, !2381, !2416}
!2416 = !DILocation(line: 178, column: 9, scope: !2364)
!2417 = !DILocation(line: 183, column: 7, scope: !2364)
!2418 = !DILocation(line: 189, column: 11, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2314, file: !274, line: 189, column: 7)
!2420 = !DILocation(line: 189, column: 7, scope: !2314)
!2421 = !DILocation(line: 190, column: 5, scope: !2419)
!2422 = !DILocation(line: 193, column: 3, scope: !2314)
!2423 = !DILocation(line: 194, column: 3, scope: !2314)
!2424 = !DILocation(line: 195, column: 3, scope: !2314)
!2425 = !DILocation(line: 196, column: 1, scope: !2314)
!2426 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !274, file: !274, line: 219, type: !2002, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2434, !2435}
!2428 = !DILocalVariable(name: "buffer", arg: 1, scope: !2426, file: !274, line: 219, type: !63)
!2429 = !DILocalVariable(name: "len", arg: 2, scope: !2426, file: !274, line: 219, type: !61)
!2430 = !DILocalVariable(name: "ctx", arg: 3, scope: !2426, file: !274, line: 219, type: !1852)
!2431 = !DILocalVariable(name: "left_over", scope: !2432, file: !274, line: 225, type: !61)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !274, line: 224, column: 5)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !274, line: 223, column: 7)
!2434 = !DILocalVariable(name: "add", scope: !2432, file: !274, line: 226, type: !61)
!2435 = !DILocalVariable(name: "left_over", scope: !2436, file: !274, line: 270, type: !61)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !274, line: 269, column: 5)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !274, line: 268, column: 7)
!2438 = !DILocation(line: 219, column: 33, scope: !2426)
!2439 = !DILocation(line: 219, column: 48, scope: !2426)
!2440 = !DILocation(line: 219, column: 70, scope: !2426)
!2441 = !DILocation(line: 223, column: 12, scope: !2433)
!2442 = !DILocation(line: 223, column: 19, scope: !2433)
!2443 = !DILocation(line: 223, column: 7, scope: !2426)
!2444 = !DILocation(line: 225, column: 26, scope: !2432)
!2445 = !DILocation(line: 225, column: 14, scope: !2432)
!2446 = !DILocation(line: 226, column: 24, scope: !2432)
!2447 = !DILocation(line: 226, column: 36, scope: !2432)
!2448 = !DILocation(line: 226, column: 20, scope: !2432)
!2449 = !DILocation(line: 226, column: 14, scope: !2432)
!2450 = !DILocation(line: 228, column: 16, scope: !2432)
!2451 = !DILocation(line: 228, column: 7, scope: !2432)
!2452 = !DILocation(line: 229, column: 19, scope: !2432)
!2453 = !DILocation(line: 231, column: 23, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2432, file: !274, line: 231, column: 11)
!2455 = !DILocation(line: 231, column: 11, scope: !2432)
!2456 = !DILocation(line: 233, column: 56, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !274, line: 232, column: 9)
!2458 = !DILocation(line: 233, column: 11, scope: !2457)
!2459 = !DILocation(line: 235, column: 23, scope: !2457)
!2460 = !DILocation(line: 238, column: 61, scope: !2457)
!2461 = !DILocation(line: 238, column: 20, scope: !2457)
!2462 = !DILocation(line: 239, column: 19, scope: !2457)
!2463 = !DILocation(line: 237, column: 11, scope: !2457)
!2464 = !DILocation(line: 240, column: 9, scope: !2457)
!2465 = !DILocation(line: 242, column: 38, scope: !2432)
!2466 = !DILocation(line: 243, column: 11, scope: !2432)
!2467 = !DILocation(line: 244, column: 5, scope: !2432)
!2468 = !DILocation(line: 247, column: 11, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2426, file: !274, line: 247, column: 7)
!2470 = !DILocation(line: 247, column: 7, scope: !2426)
!2471 = !DILocation(line: 261, column: 43, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !274, line: 260, column: 9)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !274, line: 248, column: 5)
!2474 = !DILocation(line: 261, column: 11, scope: !2472)
!2475 = !DILocation(line: 262, column: 42, scope: !2472)
!2476 = !DILocation(line: 263, column: 15, scope: !2472)
!2477 = !DILocation(line: 265, column: 5, scope: !2473)
!2478 = !DILocation(line: 268, column: 11, scope: !2437)
!2479 = !DILocation(line: 268, column: 7, scope: !2426)
!2480 = !DILocation(line: 270, column: 31, scope: !2436)
!2481 = !DILocation(line: 270, column: 26, scope: !2436)
!2482 = !DILocation(line: 270, column: 14, scope: !2436)
!2483 = !DILocation(line: 272, column: 31, scope: !2436)
!2484 = !DILocation(line: 272, column: 16, scope: !2436)
!2485 = !DILocation(line: 272, column: 7, scope: !2436)
!2486 = !DILocation(line: 273, column: 17, scope: !2436)
!2487 = !DILocation(line: 274, column: 21, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2436, file: !274, line: 274, column: 11)
!2489 = !DILocation(line: 274, column: 11, scope: !2436)
!2490 = !DILocation(line: 276, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !274, line: 275, column: 9)
!2492 = !DILocation(line: 277, column: 21, scope: !2491)
!2493 = !DILocation(line: 278, column: 33, scope: !2491)
!2494 = !DILocation(line: 278, column: 11, scope: !2491)
!2495 = !DILocation(line: 279, column: 9, scope: !2491)
!2496 = !DILocation(line: 280, column: 21, scope: !2436)
!2497 = !DILocation(line: 280, column: 19, scope: !2436)
!2498 = !DILocation(line: 281, column: 5, scope: !2436)
!2499 = !DILocation(line: 282, column: 1, scope: !2426)
!2500 = distinct !DISubprogram(name: "sha1_buffer", scope: !274, file: !274, line: 204, type: !2501, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!60, !68, !61, !60}
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DILocalVariable(name: "buffer", arg: 1, scope: !2500, file: !274, line: 204, type: !68)
!2505 = !DILocalVariable(name: "len", arg: 2, scope: !2500, file: !274, line: 204, type: !61)
!2506 = !DILocalVariable(name: "resblock", arg: 3, scope: !2500, file: !274, line: 204, type: !60)
!2507 = !DILocalVariable(name: "ctx", scope: !2500, file: !274, line: 206, type: !1853)
!2508 = !DILocation(line: 204, column: 26, scope: !2500)
!2509 = !DILocation(line: 204, column: 41, scope: !2500)
!2510 = !DILocation(line: 204, column: 52, scope: !2500)
!2511 = !DILocation(line: 206, column: 3, scope: !2500)
!2512 = !DILocation(line: 206, column: 19, scope: !2500)
!2513 = !DILocation(line: 62, column: 33, scope: !1849, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 209, column: 3, scope: !2500)
!2515 = !DILocation(line: 64, column: 10, scope: !1849, inlinedAt: !2514)
!2516 = !DILocation(line: 68, column: 8, scope: !1849, inlinedAt: !2514)
!2517 = !DILocation(line: 68, column: 10, scope: !1849, inlinedAt: !2514)
!2518 = !DILocation(line: 212, column: 3, scope: !2500)
!2519 = !DILocation(line: 215, column: 10, scope: !2500)
!2520 = !DILocation(line: 216, column: 1, scope: !2500)
!2521 = !DILocation(line: 215, column: 3, scope: !2500)
!2522 = distinct !DISubprogram(name: "fdadvise", scope: !2523, file: !2523, line: 31, type: !2524, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !736, variables: !2528)
!2523 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !70, !2526, !2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !130, line: 91, baseType: !158)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!2528 = !{!2529, !2530, !2531, !2532, !2533}
!2529 = !DILocalVariable(name: "fd", arg: 1, scope: !2522, file: !2523, line: 31, type: !70)
!2530 = !DILocalVariable(name: "offset", arg: 2, scope: !2522, file: !2523, line: 31, type: !2526)
!2531 = !DILocalVariable(name: "len", arg: 3, scope: !2522, file: !2523, line: 31, type: !2526)
!2532 = !DILocalVariable(name: "advice", arg: 4, scope: !2522, file: !2523, line: 31, type: !2527)
!2533 = !DILocalVariable(name: "__x", scope: !2534, file: !2523, line: 34, type: !70)
!2534 = distinct !DILexicalBlock(scope: !2522, file: !2523, line: 34, column: 3)
!2535 = !DILocation(line: 31, column: 15, scope: !2522)
!2536 = !DILocation(line: 31, column: 25, scope: !2522)
!2537 = !DILocation(line: 31, column: 39, scope: !2522)
!2538 = !DILocation(line: 31, column: 54, scope: !2522)
!2539 = !DILocation(line: 34, column: 3, scope: !2534)
!2540 = !DILocation(line: 36, column: 1, scope: !2522)
!2541 = distinct !DISubprogram(name: "fadvise", scope: !2523, file: !2523, line: 39, type: !2542, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !736, variables: !2584)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2544, !2527}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2546, file: !132, line: 242, baseType: !70, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2546, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2546, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2546, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2546, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2546, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2546, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2546, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2546, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2546, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2546, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2546, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2546, file: !132, line: 260, baseType: !2561, size: 64, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2563)
!2563 = !{!2564, !2565, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2562, file: !132, line: 157, baseType: !2561, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2562, file: !132, line: 158, baseType: !2566, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2562, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2546, file: !132, line: 262, baseType: !2566, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2546, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2546, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2546, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2546, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2546, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2546, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2546, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2546, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2546, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2546, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2546, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2546, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2546, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2546, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2546, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "fp", arg: 1, scope: !2541, file: !2523, line: 39, type: !2544)
!2586 = !DILocalVariable(name: "advice", arg: 2, scope: !2541, file: !2523, line: 39, type: !2527)
!2587 = !DILocation(line: 39, column: 16, scope: !2541)
!2588 = !DILocation(line: 39, column: 30, scope: !2541)
!2589 = !DILocation(line: 41, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2541, file: !2523, line: 41, column: 7)
!2591 = !DILocation(line: 41, column: 7, scope: !2541)
!2592 = !DILocation(line: 42, column: 15, scope: !2590)
!2593 = !DILocation(line: 31, column: 15, scope: !2522, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 42, column: 5, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2590, file: !2523, discriminator: 1)
!2596 = !DILocation(line: 31, column: 25, scope: !2522, inlinedAt: !2594)
!2597 = !DILocation(line: 31, column: 39, scope: !2522, inlinedAt: !2594)
!2598 = !DILocation(line: 31, column: 54, scope: !2522, inlinedAt: !2594)
!2599 = !DILocation(line: 34, column: 3, scope: !2534, inlinedAt: !2594)
!2600 = !DILocation(line: 42, column: 5, scope: !2590)
!2601 = !DILocation(line: 43, column: 1, scope: !2541)
!2602 = distinct !DISubprogram(name: "fopen_safer", scope: !2603, file: !2603, line: 31, type: !2604, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !739, variables: !2646)
!2603 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!2606, !68, !68}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2608)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2608, file: !132, line: 242, baseType: !70, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2608, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2608, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2608, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2608, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2608, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2608, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2608, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2608, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2608, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2608, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2608, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2608, file: !132, line: 260, baseType: !2623, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2625)
!2625 = !{!2626, !2627, !2629}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2624, file: !132, line: 157, baseType: !2623, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2624, file: !132, line: 158, baseType: !2628, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2624, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2608, file: !132, line: 262, baseType: !2628, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2608, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2608, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2608, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2608, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2608, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2608, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2608, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2608, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2608, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2608, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2608, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2608, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2608, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2608, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2608, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2646 = !{!2647, !2648, !2649, !2650, !2653, !2656, !2659}
!2647 = !DILocalVariable(name: "file", arg: 1, scope: !2602, file: !2603, line: 31, type: !68)
!2648 = !DILocalVariable(name: "mode", arg: 2, scope: !2602, file: !2603, line: 31, type: !68)
!2649 = !DILocalVariable(name: "fp", scope: !2602, file: !2603, line: 33, type: !2606)
!2650 = !DILocalVariable(name: "fd", scope: !2651, file: !2603, line: 37, type: !70)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2603, line: 36, column: 5)
!2652 = distinct !DILexicalBlock(scope: !2602, file: !2603, line: 35, column: 7)
!2653 = !DILocalVariable(name: "f", scope: !2654, file: !2603, line: 41, type: !70)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2603, line: 40, column: 9)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !2603, line: 39, column: 11)
!2656 = !DILocalVariable(name: "e", scope: !2657, file: !2603, line: 45, type: !70)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !2603, line: 44, column: 13)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !2603, line: 43, column: 15)
!2659 = !DILocalVariable(name: "e", scope: !2660, file: !2603, line: 54, type: !70)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !2603, line: 53, column: 13)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !2603, line: 51, column: 15)
!2662 = !DILocation(line: 31, column: 26, scope: !2602)
!2663 = !DILocation(line: 31, column: 44, scope: !2602)
!2664 = !DILocation(line: 33, column: 14, scope: !2602)
!2665 = !DILocation(line: 33, column: 9, scope: !2602)
!2666 = !DILocation(line: 35, column: 7, scope: !2652)
!2667 = !DILocation(line: 35, column: 7, scope: !2602)
!2668 = !DILocation(line: 37, column: 16, scope: !2651)
!2669 = !DILocation(line: 37, column: 11, scope: !2651)
!2670 = !DILocation(line: 39, column: 19, scope: !2655)
!2671 = !DILocation(line: 41, column: 19, scope: !2654)
!2672 = !DILocation(line: 41, column: 15, scope: !2654)
!2673 = !DILocation(line: 43, column: 17, scope: !2658)
!2674 = !DILocation(line: 43, column: 15, scope: !2654)
!2675 = !DILocation(line: 45, column: 23, scope: !2657)
!2676 = !DILocation(line: 45, column: 19, scope: !2657)
!2677 = !DILocation(line: 46, column: 15, scope: !2657)
!2678 = !DILocation(line: 47, column: 21, scope: !2657)
!2679 = !DILocation(line: 51, column: 15, scope: !2661)
!2680 = !DILocation(line: 51, column: 27, scope: !2661)
!2681 = !DILocation(line: 52, column: 15, scope: !2661)
!2682 = !DILocation(line: 52, column: 26, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2661, file: !2603, discriminator: 1)
!2684 = !DILocation(line: 52, column: 24, scope: !2683)
!2685 = !DILocation(line: 51, column: 15, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2654, file: !2603, discriminator: 1)
!2687 = !DILocation(line: 54, column: 23, scope: !2660)
!2688 = !DILocation(line: 54, column: 19, scope: !2660)
!2689 = !DILocation(line: 55, column: 15, scope: !2660)
!2690 = !DILocation(line: 56, column: 21, scope: !2660)
!2691 = !DILocation(line: 63, column: 1, scope: !2602)
!2692 = distinct !DISubprogram(name: "set_program_name", scope: !291, file: !291, line: 39, type: !84, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !287, variables: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "argv0", arg: 1, scope: !2692, file: !291, line: 39, type: !68)
!2695 = !DILocalVariable(name: "slash", scope: !2692, file: !291, line: 46, type: !68)
!2696 = !DILocalVariable(name: "base", scope: !2692, file: !291, line: 47, type: !68)
!2697 = !DILocation(line: 39, column: 31, scope: !2692)
!2698 = !DILocation(line: 51, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2692, file: !291, line: 51, column: 7)
!2700 = !DILocation(line: 51, column: 7, scope: !2692)
!2701 = !DILocation(line: 55, column: 14, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !291, line: 52, column: 5)
!2703 = !DILocation(line: 54, column: 7, scope: !2702)
!2704 = !DILocation(line: 56, column: 7, scope: !2702)
!2705 = !DILocation(line: 59, column: 11, scope: !2692)
!2706 = !DILocation(line: 46, column: 15, scope: !2692)
!2707 = !DILocation(line: 60, column: 17, scope: !2692)
!2708 = !DILocation(line: 60, column: 33, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2692, file: !291, discriminator: 1)
!2710 = !DILocation(line: 60, column: 11, scope: !2692)
!2711 = !DILocation(line: 47, column: 15, scope: !2692)
!2712 = !DILocation(line: 61, column: 12, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2692, file: !291, line: 61, column: 7)
!2714 = !DILocation(line: 61, column: 20, scope: !2713)
!2715 = !DILocation(line: 61, column: 25, scope: !2713)
!2716 = !DILocation(line: 61, column: 28, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2713, file: !291, discriminator: 1)
!2718 = !DILocation(line: 61, column: 61, scope: !2717)
!2719 = !DILocation(line: 61, column: 7, scope: !2709)
!2720 = !DILocation(line: 64, column: 11, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !291, line: 64, column: 11)
!2722 = distinct !DILexicalBlock(scope: !2713, file: !291, line: 62, column: 5)
!2723 = !DILocation(line: 64, column: 36, scope: !2721)
!2724 = !DILocation(line: 64, column: 11, scope: !2722)
!2725 = !DILocation(line: 66, column: 24, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2721, file: !291, line: 65, column: 9)
!2727 = !DILocation(line: 70, column: 41, scope: !2726)
!2728 = !DILocation(line: 72, column: 9, scope: !2726)
!2729 = !DILocation(line: 84, column: 16, scope: !2692)
!2730 = !DILocation(line: 90, column: 27, scope: !2692)
!2731 = !DILocation(line: 92, column: 1, scope: !2692)
!2732 = distinct !DISubprogram(name: "clone_quoting_options", scope: !306, file: !306, line: 114, type: !2733, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2736)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2735, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2736 = !{!2737, !2738, !2739}
!2737 = !DILocalVariable(name: "o", arg: 1, scope: !2732, file: !306, line: 114, type: !2735)
!2738 = !DILocalVariable(name: "e", scope: !2732, file: !306, line: 116, type: !70)
!2739 = !DILocalVariable(name: "p", scope: !2732, file: !306, line: 117, type: !2735)
!2740 = !DILocation(line: 114, column: 48, scope: !2732)
!2741 = !DILocation(line: 116, column: 11, scope: !2732)
!2742 = !DILocation(line: 116, column: 7, scope: !2732)
!2743 = !DILocation(line: 117, column: 40, scope: !2732)
!2744 = !DILocation(line: 117, column: 40, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2732, file: !306, discriminator: 3)
!2746 = !DILocation(line: 117, column: 31, scope: !2745)
!2747 = !DILocation(line: 117, column: 27, scope: !2732)
!2748 = !DILocation(line: 119, column: 9, scope: !2732)
!2749 = !DILocation(line: 120, column: 3, scope: !2732)
!2750 = distinct !DISubprogram(name: "get_quoting_style", scope: !306, file: !306, line: 125, type: !2751, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2755)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!5, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "o", arg: 1, scope: !2750, file: !306, line: 125, type: !2753)
!2757 = !DILocation(line: 125, column: 50, scope: !2750)
!2758 = !DILocation(line: 127, column: 11, scope: !2750)
!2759 = !DILocation(line: 127, column: 46, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2750, file: !306, discriminator: 3)
!2761 = !{!2762, !806, i64 0}
!2762 = !{!"quoting_options", !806, i64 0, !1016, i64 4, !806, i64 8, !805, i64 40, !805, i64 48}
!2763 = !DILocation(line: 127, column: 3, scope: !2760)
!2764 = distinct !DISubprogram(name: "set_quoting_style", scope: !306, file: !306, line: 133, type: !2765, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2735, !5}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "o", arg: 1, scope: !2764, file: !306, line: 133, type: !2735)
!2769 = !DILocalVariable(name: "s", arg: 2, scope: !2764, file: !306, line: 133, type: !5)
!2770 = !DILocation(line: 133, column: 44, scope: !2764)
!2771 = !DILocation(line: 133, column: 66, scope: !2764)
!2772 = !DILocation(line: 135, column: 4, scope: !2764)
!2773 = !DILocation(line: 135, column: 39, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2764, file: !306, discriminator: 3)
!2775 = !DILocation(line: 135, column: 45, scope: !2774)
!2776 = !DILocation(line: 136, column: 1, scope: !2764)
!2777 = distinct !DISubprogram(name: "set_char_quoting", scope: !306, file: !306, line: 144, type: !2778, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!70, !2735, !59, !70}
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2787, !2788}
!2781 = !DILocalVariable(name: "o", arg: 1, scope: !2777, file: !306, line: 144, type: !2735)
!2782 = !DILocalVariable(name: "c", arg: 2, scope: !2777, file: !306, line: 144, type: !59)
!2783 = !DILocalVariable(name: "i", arg: 3, scope: !2777, file: !306, line: 144, type: !70)
!2784 = !DILocalVariable(name: "uc", scope: !2777, file: !306, line: 146, type: !67)
!2785 = !DILocalVariable(name: "p", scope: !2777, file: !306, line: 147, type: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!2787 = !DILocalVariable(name: "shift", scope: !2777, file: !306, line: 149, type: !70)
!2788 = !DILocalVariable(name: "r", scope: !2777, file: !306, line: 150, type: !70)
!2789 = !DILocation(line: 144, column: 43, scope: !2777)
!2790 = !DILocation(line: 144, column: 51, scope: !2777)
!2791 = !DILocation(line: 144, column: 58, scope: !2777)
!2792 = !DILocation(line: 146, column: 17, scope: !2777)
!2793 = !DILocation(line: 148, column: 6, scope: !2777)
!2794 = !DILocation(line: 148, column: 62, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2777, file: !306, discriminator: 3)
!2796 = !DILocation(line: 148, column: 57, scope: !2795)
!2797 = !DILocation(line: 147, column: 17, scope: !2777)
!2798 = !DILocation(line: 149, column: 18, scope: !2777)
!2799 = !DILocation(line: 149, column: 15, scope: !2777)
!2800 = !DILocation(line: 149, column: 7, scope: !2777)
!2801 = !DILocation(line: 150, column: 12, scope: !2777)
!2802 = !DILocation(line: 150, column: 15, scope: !2777)
!2803 = !DILocation(line: 150, column: 25, scope: !2777)
!2804 = !DILocation(line: 150, column: 7, scope: !2777)
!2805 = !DILocation(line: 151, column: 13, scope: !2777)
!2806 = !DILocation(line: 151, column: 18, scope: !2777)
!2807 = !DILocation(line: 151, column: 23, scope: !2777)
!2808 = !DILocation(line: 151, column: 6, scope: !2777)
!2809 = !DILocation(line: 152, column: 3, scope: !2777)
!2810 = distinct !DISubprogram(name: "set_quoting_flags", scope: !306, file: !306, line: 160, type: !2811, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!70, !2735, !70}
!2813 = !{!2814, !2815, !2816}
!2814 = !DILocalVariable(name: "o", arg: 1, scope: !2810, file: !306, line: 160, type: !2735)
!2815 = !DILocalVariable(name: "i", arg: 2, scope: !2810, file: !306, line: 160, type: !70)
!2816 = !DILocalVariable(name: "r", scope: !2810, file: !306, line: 162, type: !70)
!2817 = !DILocation(line: 160, column: 44, scope: !2810)
!2818 = !DILocation(line: 160, column: 51, scope: !2810)
!2819 = !DILocation(line: 163, column: 8, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2810, file: !306, line: 163, column: 7)
!2821 = !DILocation(line: 163, column: 7, scope: !2810)
!2822 = !DILocation(line: 165, column: 10, scope: !2810)
!2823 = !{!2762, !1016, i64 4}
!2824 = !DILocation(line: 162, column: 7, scope: !2810)
!2825 = !DILocation(line: 166, column: 12, scope: !2810)
!2826 = !DILocation(line: 167, column: 3, scope: !2810)
!2827 = distinct !DISubprogram(name: "set_custom_quoting", scope: !306, file: !306, line: 171, type: !2828, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !2735, !68, !68}
!2830 = !{!2831, !2832, !2833}
!2831 = !DILocalVariable(name: "o", arg: 1, scope: !2827, file: !306, line: 171, type: !2735)
!2832 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2827, file: !306, line: 172, type: !68)
!2833 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2827, file: !306, line: 172, type: !68)
!2834 = !DILocation(line: 171, column: 45, scope: !2827)
!2835 = !DILocation(line: 172, column: 33, scope: !2827)
!2836 = !DILocation(line: 172, column: 57, scope: !2827)
!2837 = !DILocation(line: 174, column: 8, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2827, file: !306, line: 174, column: 7)
!2839 = !DILocation(line: 174, column: 7, scope: !2827)
!2840 = !DILocation(line: 176, column: 6, scope: !2827)
!2841 = !DILocation(line: 176, column: 12, scope: !2827)
!2842 = !DILocation(line: 177, column: 8, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2827, file: !306, line: 177, column: 7)
!2844 = !DILocation(line: 177, column: 23, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2843, file: !306, discriminator: 1)
!2846 = !DILocation(line: 177, column: 19, scope: !2843)
!2847 = !DILocation(line: 178, column: 5, scope: !2843)
!2848 = !DILocation(line: 179, column: 6, scope: !2827)
!2849 = !DILocation(line: 179, column: 17, scope: !2827)
!2850 = !{!2762, !805, i64 40}
!2851 = !DILocation(line: 180, column: 6, scope: !2827)
!2852 = !DILocation(line: 180, column: 18, scope: !2827)
!2853 = !{!2762, !805, i64 48}
!2854 = !DILocation(line: 181, column: 1, scope: !2827)
!2855 = distinct !DISubprogram(name: "quotearg_buffer", scope: !306, file: !306, line: 776, type: !2856, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!61, !58, !61, !68, !61, !2753}
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2859 = !DILocalVariable(name: "buffer", arg: 1, scope: !2855, file: !306, line: 776, type: !58)
!2860 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2855, file: !306, line: 776, type: !61)
!2861 = !DILocalVariable(name: "arg", arg: 3, scope: !2855, file: !306, line: 777, type: !68)
!2862 = !DILocalVariable(name: "argsize", arg: 4, scope: !2855, file: !306, line: 777, type: !61)
!2863 = !DILocalVariable(name: "o", arg: 5, scope: !2855, file: !306, line: 778, type: !2753)
!2864 = !DILocalVariable(name: "p", scope: !2855, file: !306, line: 780, type: !2753)
!2865 = !DILocalVariable(name: "e", scope: !2855, file: !306, line: 781, type: !70)
!2866 = !DILocalVariable(name: "r", scope: !2855, file: !306, line: 782, type: !61)
!2867 = !DILocation(line: 776, column: 24, scope: !2855)
!2868 = !DILocation(line: 776, column: 39, scope: !2855)
!2869 = !DILocation(line: 777, column: 30, scope: !2855)
!2870 = !DILocation(line: 777, column: 42, scope: !2855)
!2871 = !DILocation(line: 778, column: 48, scope: !2855)
!2872 = !DILocation(line: 780, column: 37, scope: !2855)
!2873 = !DILocation(line: 780, column: 33, scope: !2855)
!2874 = !DILocation(line: 781, column: 11, scope: !2855)
!2875 = !DILocation(line: 781, column: 7, scope: !2855)
!2876 = !DILocation(line: 783, column: 43, scope: !2855)
!2877 = !DILocation(line: 783, column: 53, scope: !2855)
!2878 = !DILocation(line: 783, column: 60, scope: !2855)
!2879 = !DILocation(line: 784, column: 43, scope: !2855)
!2880 = !DILocation(line: 784, column: 58, scope: !2855)
!2881 = !DILocation(line: 782, column: 14, scope: !2855)
!2882 = !DILocation(line: 782, column: 10, scope: !2855)
!2883 = !DILocation(line: 785, column: 9, scope: !2855)
!2884 = !DILocation(line: 786, column: 3, scope: !2855)
!2885 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !306, file: !306, line: 248, type: !2886, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !2890)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!61, !58, !61, !68, !61, !5, !70, !2888, !68, !68}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2915, !2916, !2917, !2918, !2919, !2922, !2923, !2940, !2943, !2944, !2951}
!2891 = !DILocalVariable(name: "buffer", arg: 1, scope: !2885, file: !306, line: 248, type: !58)
!2892 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2885, file: !306, line: 248, type: !61)
!2893 = !DILocalVariable(name: "arg", arg: 3, scope: !2885, file: !306, line: 249, type: !68)
!2894 = !DILocalVariable(name: "argsize", arg: 4, scope: !2885, file: !306, line: 249, type: !61)
!2895 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2885, file: !306, line: 250, type: !5)
!2896 = !DILocalVariable(name: "flags", arg: 6, scope: !2885, file: !306, line: 250, type: !70)
!2897 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2885, file: !306, line: 251, type: !2888)
!2898 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2885, file: !306, line: 252, type: !68)
!2899 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2885, file: !306, line: 253, type: !68)
!2900 = !DILocalVariable(name: "i", scope: !2885, file: !306, line: 255, type: !61)
!2901 = !DILocalVariable(name: "len", scope: !2885, file: !306, line: 256, type: !61)
!2902 = !DILocalVariable(name: "orig_buffersize", scope: !2885, file: !306, line: 257, type: !61)
!2903 = !DILocalVariable(name: "quote_string", scope: !2885, file: !306, line: 258, type: !68)
!2904 = !DILocalVariable(name: "quote_string_len", scope: !2885, file: !306, line: 259, type: !61)
!2905 = !DILocalVariable(name: "backslash_escapes", scope: !2885, file: !306, line: 260, type: !76)
!2906 = !DILocalVariable(name: "unibyte_locale", scope: !2885, file: !306, line: 261, type: !76)
!2907 = !DILocalVariable(name: "elide_outer_quotes", scope: !2885, file: !306, line: 262, type: !76)
!2908 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2885, file: !306, line: 263, type: !76)
!2909 = !DILocalVariable(name: "encountered_single_quote", scope: !2885, file: !306, line: 264, type: !76)
!2910 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2885, file: !306, line: 265, type: !76)
!2911 = !DILocalVariable(name: "c", scope: !2912, file: !306, line: 394, type: !67)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !306, line: 393, column: 5)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !306, line: 392, column: 3)
!2914 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 392, column: 3)
!2915 = !DILocalVariable(name: "esc", scope: !2912, file: !306, line: 395, type: !67)
!2916 = !DILocalVariable(name: "is_right_quote", scope: !2912, file: !306, line: 396, type: !76)
!2917 = !DILocalVariable(name: "escaping", scope: !2912, file: !306, line: 397, type: !76)
!2918 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2912, file: !306, line: 398, type: !76)
!2919 = !DILocalVariable(name: "m", scope: !2920, file: !306, line: 602, type: !61)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 600, column: 11)
!2921 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 418, column: 9)
!2922 = !DILocalVariable(name: "printable", scope: !2920, file: !306, line: 604, type: !76)
!2923 = !DILocalVariable(name: "mbstate", scope: !2924, file: !306, line: 613, type: !2926)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !306, line: 612, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !306, line: 606, column: 17)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2927, line: 107, baseType: !2928)
!2927 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2927, line: 95, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2927, line: 83, size: 64, elements: !2930)
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2929, file: !2927, line: 85, baseType: !70, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2929, file: !2927, line: 94, baseType: !2933, size: 32, offset: 32)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2929, file: !2927, line: 86, size: 32, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2933, file: !2927, line: 89, baseType: !272, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2933, file: !2927, line: 93, baseType: !2937, size: 32)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !2938)
!2938 = !{!2939}
!2939 = !DISubrange(count: 4)
!2940 = !DILocalVariable(name: "w", scope: !2941, file: !306, line: 623, type: !2942)
!2941 = distinct !DILexicalBlock(scope: !2924, file: !306, line: 622, column: 19)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !62, line: 90, baseType: !70)
!2943 = !DILocalVariable(name: "bytes", scope: !2941, file: !306, line: 624, type: !61)
!2944 = !DILocalVariable(name: "j", scope: !2945, file: !306, line: 649, type: !61)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !306, line: 648, column: 27)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !306, line: 646, column: 29)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !306, line: 641, column: 23)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !306, line: 633, column: 30)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !306, line: 628, column: 30)
!2950 = distinct !DILexicalBlock(scope: !2941, file: !306, line: 626, column: 25)
!2951 = !DILocalVariable(name: "ilim", scope: !2952, file: !306, line: 676, type: !61)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !306, line: 673, column: 15)
!2953 = distinct !DILexicalBlock(scope: !2920, file: !306, line: 672, column: 17)
!2954 = !DILocation(line: 248, column: 33, scope: !2885)
!2955 = !DILocation(line: 248, column: 48, scope: !2885)
!2956 = !DILocation(line: 249, column: 39, scope: !2885)
!2957 = !DILocation(line: 249, column: 51, scope: !2885)
!2958 = !DILocation(line: 250, column: 46, scope: !2885)
!2959 = !DILocation(line: 250, column: 65, scope: !2885)
!2960 = !DILocation(line: 251, column: 47, scope: !2885)
!2961 = !DILocation(line: 252, column: 39, scope: !2885)
!2962 = !DILocation(line: 253, column: 39, scope: !2885)
!2963 = !DILocation(line: 256, column: 10, scope: !2885)
!2964 = !DILocation(line: 257, column: 10, scope: !2885)
!2965 = !DILocation(line: 258, column: 15, scope: !2885)
!2966 = !DILocation(line: 259, column: 10, scope: !2885)
!2967 = !DILocation(line: 260, column: 8, scope: !2885)
!2968 = !DILocation(line: 261, column: 25, scope: !2885)
!2969 = !DILocation(line: 261, column: 36, scope: !2885)
!2970 = !DILocation(line: 262, column: 8, scope: !2885)
!2971 = !DILocation(line: 263, column: 8, scope: !2885)
!2972 = !DILocation(line: 264, column: 8, scope: !2885)
!2973 = !DILocation(line: 265, column: 8, scope: !2885)
!2974 = !DILocation(line: 265, column: 3, scope: !2885)
!2975 = !DILocation(line: 308, column: 3, scope: !2885)
!2976 = !DILocation(line: 315, column: 11, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 309, column: 5)
!2978 = !DILocation(line: 315, column: 12, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2977, file: !306, line: 315, column: 11)
!2980 = !DILocation(line: 316, column: 9, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2982, file: !306, discriminator: 1)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !306, line: 316, column: 9)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !306, line: 316, column: 9)
!2984 = !DILocation(line: 316, column: 9, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2983, file: !306, discriminator: 1)
!2986 = !DILocation(line: 316, column: 9, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2982, file: !306, discriminator: 2)
!2988 = !DILocation(line: 354, column: 26, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !306, line: 332, column: 11)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !306, line: 331, column: 13)
!2991 = distinct !DILexicalBlock(scope: !2977, file: !306, line: 330, column: 7)
!2992 = !DILocation(line: 355, column: 27, scope: !2989)
!2993 = !DILocation(line: 356, column: 11, scope: !2989)
!2994 = !DILocation(line: 357, column: 14, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !306, line: 357, column: 13)
!2996 = !DILocation(line: 357, column: 13, scope: !2991)
!2997 = !DILocation(line: 358, column: 43, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2999, file: !306, discriminator: 1)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !306, line: 358, column: 11)
!3000 = distinct !DILexicalBlock(scope: !2995, file: !306, line: 358, column: 11)
!3001 = !DILocation(line: 358, column: 11, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !3000, file: !306, discriminator: 1)
!3003 = !DILocation(line: 359, column: 13, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3005, file: !306, discriminator: 1)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !306, line: 359, column: 13)
!3006 = distinct !DILexicalBlock(scope: !2999, file: !306, line: 359, column: 13)
!3007 = !DILocation(line: 359, column: 13, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !3006, file: !306, discriminator: 1)
!3009 = !DILocation(line: 359, column: 13, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3005, file: !306, discriminator: 2)
!3011 = !DILocation(line: 359, column: 13, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3006, file: !306, discriminator: 3)
!3013 = !DILocation(line: 358, column: 70, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !2999, file: !306, discriminator: 2)
!3015 = distinct !{!3015, !3016, !3017}
!3016 = !DILocation(line: 358, column: 11, scope: !3000)
!3017 = !DILocation(line: 359, column: 13, scope: !3000)
!3018 = !DILocation(line: 362, column: 28, scope: !2991)
!3019 = !DILocation(line: 364, column: 7, scope: !2977)
!3020 = !DILocation(line: 367, column: 7, scope: !2977)
!3021 = !DILocation(line: 370, column: 7, scope: !2977)
!3022 = !DILocation(line: 373, column: 12, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2977, file: !306, line: 373, column: 11)
!3024 = !DILocation(line: 373, column: 11, scope: !2977)
!3025 = !DILocation(line: 378, column: 12, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2977, file: !306, line: 378, column: 11)
!3027 = !DILocation(line: 378, column: 11, scope: !2977)
!3028 = !DILocation(line: 379, column: 9, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3030, file: !306, discriminator: 1)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !306, line: 379, column: 9)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !306, line: 379, column: 9)
!3032 = !DILocation(line: 379, column: 9, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3031, file: !306, discriminator: 1)
!3034 = !DILocation(line: 379, column: 9, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3030, file: !306, discriminator: 2)
!3036 = !DILocation(line: 386, column: 7, scope: !2977)
!3037 = !DILocation(line: 389, column: 7, scope: !2977)
!3038 = !DILocation(line: 255, column: 10, scope: !2885)
!3039 = !DILocation(line: 392, column: 8, scope: !2914)
!3040 = !DILocation(line: 392, column: 27, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !2913, file: !306, discriminator: 1)
!3042 = !DILocation(line: 392, column: 19, scope: !3041)
!3043 = !DILocation(line: 392, column: 60, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !2913, file: !306, discriminator: 3)
!3045 = !DILocation(line: 392, column: 3, scope: !3046)
!3046 = !DILexicalBlockFile(scope: !2914, file: !306, discriminator: 4)
!3047 = !DILocation(line: 392, column: 41, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !2913, file: !306, discriminator: 2)
!3049 = !DILocation(line: 392, column: 48, scope: !3048)
!3050 = !DILocation(line: 396, column: 12, scope: !2912)
!3051 = !DILocation(line: 397, column: 12, scope: !2912)
!3052 = !DILocation(line: 398, column: 12, scope: !2912)
!3053 = !DILocation(line: 401, column: 11, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 400, column: 11)
!3055 = !DILocation(line: 403, column: 17, scope: !3056)
!3056 = !DILexicalBlockFile(scope: !3054, file: !306, discriminator: 1)
!3057 = !DILocation(line: 404, column: 39, scope: !3054)
!3058 = !DILocation(line: 408, column: 32, scope: !3054)
!3059 = !DILocation(line: 404, column: 19, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3054, file: !306, discriminator: 2)
!3061 = !DILocation(line: 404, column: 15, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3054, file: !306, discriminator: 4)
!3063 = !DILocation(line: 409, column: 11, scope: !3054)
!3064 = !DILocation(line: 409, column: 26, scope: !3056)
!3065 = !DILocation(line: 409, column: 14, scope: !3056)
!3066 = !DILocation(line: 400, column: 11, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !2912, file: !306, discriminator: 1)
!3068 = !DILocation(line: 416, column: 11, scope: !2912)
!3069 = !DILocation(line: 394, column: 21, scope: !2912)
!3070 = !DILocation(line: 417, column: 7, scope: !2912)
!3071 = !DILocation(line: 420, column: 15, scope: !2921)
!3072 = !DILocation(line: 422, column: 15, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3074, file: !306, discriminator: 1)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !306, line: 422, column: 15)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !306, line: 421, column: 13)
!3076 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 420, column: 15)
!3077 = !DILocation(line: 422, column: 15, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3079, file: !306, discriminator: 4)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !306, line: 422, column: 15)
!3080 = !DILocation(line: 422, column: 15, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3079, file: !306, discriminator: 3)
!3082 = !DILocation(line: 422, column: 15, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3084, file: !306, discriminator: 6)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !306, line: 422, column: 15)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !306, line: 422, column: 15)
!3086 = distinct !DILexicalBlock(scope: !3079, file: !306, line: 422, column: 15)
!3087 = !DILocation(line: 422, column: 15, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3085, file: !306, discriminator: 6)
!3089 = !DILocation(line: 422, column: 15, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3084, file: !306, discriminator: 7)
!3091 = !DILocation(line: 422, column: 15, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3085, file: !306, discriminator: 8)
!3093 = !DILocation(line: 422, column: 15, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3095, file: !306, discriminator: 11)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !306, line: 422, column: 15)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !306, line: 422, column: 15)
!3097 = !DILocation(line: 422, column: 15, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3096, file: !306, discriminator: 11)
!3099 = !DILocation(line: 422, column: 15, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3095, file: !306, discriminator: 12)
!3101 = !DILocation(line: 422, column: 15, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3096, file: !306, discriminator: 13)
!3103 = !DILocation(line: 422, column: 15, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3105, file: !306, discriminator: 16)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !306, line: 422, column: 15)
!3106 = distinct !DILexicalBlock(scope: !3086, file: !306, line: 422, column: 15)
!3107 = !DILocation(line: 422, column: 15, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3106, file: !306, discriminator: 16)
!3109 = !DILocation(line: 422, column: 15, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3105, file: !306, discriminator: 17)
!3111 = !DILocation(line: 422, column: 15, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3106, file: !306, discriminator: 18)
!3113 = !DILocation(line: 422, column: 15, scope: !3114)
!3114 = !DILexicalBlockFile(scope: !3086, file: !306, discriminator: 20)
!3115 = !DILocation(line: 422, column: 15, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3117, file: !306, discriminator: 22)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !306, line: 422, column: 15)
!3118 = distinct !DILexicalBlock(scope: !3074, file: !306, line: 422, column: 15)
!3119 = !DILocation(line: 422, column: 15, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3118, file: !306, discriminator: 22)
!3121 = !DILocation(line: 422, column: 15, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !3117, file: !306, discriminator: 23)
!3123 = !DILocation(line: 422, column: 15, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3118, file: !306, discriminator: 24)
!3125 = !DILocation(line: 430, column: 19, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3075, file: !306, line: 429, column: 19)
!3127 = !DILocation(line: 430, column: 24, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3126, file: !306, discriminator: 1)
!3129 = !DILocation(line: 430, column: 28, scope: !3128)
!3130 = !DILocation(line: 430, column: 38, scope: !3128)
!3131 = !DILocation(line: 430, column: 48, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3126, file: !306, discriminator: 2)
!3133 = !DILocation(line: 430, column: 59, scope: !3132)
!3134 = !DILocation(line: 432, column: 19, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3136, file: !306, discriminator: 1)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !306, line: 432, column: 19)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !306, line: 432, column: 19)
!3138 = distinct !DILexicalBlock(scope: !3126, file: !306, line: 431, column: 17)
!3139 = !DILocation(line: 432, column: 19, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3137, file: !306, discriminator: 1)
!3141 = !DILocation(line: 432, column: 19, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3136, file: !306, discriminator: 2)
!3143 = !DILocation(line: 432, column: 19, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !3137, file: !306, discriminator: 3)
!3145 = !DILocation(line: 433, column: 19, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3147, file: !306, discriminator: 1)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !306, line: 433, column: 19)
!3148 = distinct !DILexicalBlock(scope: !3138, file: !306, line: 433, column: 19)
!3149 = !DILocation(line: 433, column: 19, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3148, file: !306, discriminator: 1)
!3151 = !DILocation(line: 433, column: 19, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3147, file: !306, discriminator: 2)
!3153 = !DILocation(line: 433, column: 19, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3148, file: !306, discriminator: 3)
!3155 = !DILocation(line: 434, column: 17, scope: !3138)
!3156 = !DILocation(line: 441, column: 20, scope: !3076)
!3157 = !DILocation(line: 446, column: 11, scope: !2921)
!3158 = !DILocation(line: 449, column: 19, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 447, column: 13)
!3160 = !DILocation(line: 455, column: 19, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3159, file: !306, line: 454, column: 19)
!3162 = !DILocation(line: 455, column: 24, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3161, file: !306, discriminator: 1)
!3164 = !DILocation(line: 455, column: 28, scope: !3163)
!3165 = !DILocation(line: 455, column: 38, scope: !3163)
!3166 = !DILocation(line: 455, column: 47, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3161, file: !306, discriminator: 2)
!3168 = !DILocation(line: 455, column: 41, scope: !3167)
!3169 = !DILocation(line: 455, column: 52, scope: !3167)
!3170 = !DILocation(line: 454, column: 19, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3159, file: !306, discriminator: 1)
!3172 = !DILocation(line: 456, column: 25, scope: !3161)
!3173 = !DILocation(line: 456, column: 17, scope: !3161)
!3174 = !DILocation(line: 463, column: 25, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3161, file: !306, line: 457, column: 19)
!3176 = !DILocation(line: 467, column: 21, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3178, file: !306, discriminator: 1)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !306, line: 467, column: 21)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !306, line: 467, column: 21)
!3180 = !DILocation(line: 467, column: 21, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3179, file: !306, discriminator: 1)
!3182 = !DILocation(line: 467, column: 21, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3178, file: !306, discriminator: 2)
!3184 = !DILocation(line: 467, column: 21, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3179, file: !306, discriminator: 3)
!3186 = !DILocation(line: 468, column: 21, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3188, file: !306, discriminator: 1)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !306, line: 468, column: 21)
!3189 = distinct !DILexicalBlock(scope: !3175, file: !306, line: 468, column: 21)
!3190 = !DILocation(line: 468, column: 21, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3189, file: !306, discriminator: 1)
!3192 = !DILocation(line: 468, column: 21, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3188, file: !306, discriminator: 2)
!3194 = !DILocation(line: 468, column: 21, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3189, file: !306, discriminator: 3)
!3196 = !DILocation(line: 469, column: 21, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3198, file: !306, discriminator: 1)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !306, line: 469, column: 21)
!3199 = distinct !DILexicalBlock(scope: !3175, file: !306, line: 469, column: 21)
!3200 = !DILocation(line: 469, column: 21, scope: !3201)
!3201 = !DILexicalBlockFile(scope: !3199, file: !306, discriminator: 1)
!3202 = !DILocation(line: 469, column: 21, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3198, file: !306, discriminator: 2)
!3204 = !DILocation(line: 469, column: 21, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3199, file: !306, discriminator: 3)
!3206 = !DILocation(line: 470, column: 21, scope: !3207)
!3207 = !DILexicalBlockFile(scope: !3208, file: !306, discriminator: 1)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !306, line: 470, column: 21)
!3209 = distinct !DILexicalBlock(scope: !3175, file: !306, line: 470, column: 21)
!3210 = !DILocation(line: 470, column: 21, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3209, file: !306, discriminator: 1)
!3212 = !DILocation(line: 470, column: 21, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3208, file: !306, discriminator: 2)
!3214 = !DILocation(line: 470, column: 21, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3209, file: !306, discriminator: 3)
!3216 = !DILocation(line: 471, column: 21, scope: !3175)
!3217 = !DILocation(line: 395, column: 21, scope: !2912)
!3218 = !DILocation(line: 484, column: 31, scope: !2921)
!3219 = !DILocation(line: 485, column: 31, scope: !2921)
!3220 = !DILocation(line: 487, column: 31, scope: !2921)
!3221 = !DILocation(line: 488, column: 31, scope: !2921)
!3222 = !DILocation(line: 489, column: 31, scope: !2921)
!3223 = !DILocation(line: 492, column: 15, scope: !2921)
!3224 = !DILocation(line: 494, column: 19, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !306, line: 493, column: 13)
!3226 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 492, column: 15)
!3227 = !DILocation(line: 501, column: 33, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 501, column: 15)
!3229 = !DILocation(line: 506, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 505, column: 15)
!3231 = !DILocation(line: 510, column: 15, scope: !2921)
!3232 = !DILocation(line: 518, column: 26, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 518, column: 15)
!3234 = !DILocation(line: 518, column: 15, scope: !2921)
!3235 = !DILocation(line: 518, column: 40, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3233, file: !306, discriminator: 1)
!3237 = !DILocation(line: 518, column: 47, scope: !3236)
!3238 = !DILocation(line: 522, column: 17, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 522, column: 15)
!3240 = !DILocation(line: 518, column: 18, scope: !3236)
!3241 = !DILocation(line: 518, column: 65, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3233, file: !306, discriminator: 2)
!3243 = !DILocation(line: 518, column: 15, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !2921, file: !306, discriminator: 2)
!3245 = !DILocation(line: 522, column: 15, scope: !2921)
!3246 = !DILocation(line: 526, column: 11, scope: !2921)
!3247 = !DILocation(line: 541, column: 15, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 540, column: 15)
!3249 = !DILocation(line: 548, column: 15, scope: !2921)
!3250 = !DILocation(line: 550, column: 19, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !306, line: 549, column: 13)
!3252 = distinct !DILexicalBlock(scope: !2921, file: !306, line: 548, column: 15)
!3253 = !DILocation(line: 553, column: 19, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !306, line: 553, column: 19)
!3255 = !DILocation(line: 553, column: 35, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3254, file: !306, discriminator: 1)
!3257 = !DILocation(line: 553, column: 30, scope: !3254)
!3258 = !DILocation(line: 562, column: 15, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3260, file: !306, discriminator: 1)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !306, line: 562, column: 15)
!3261 = distinct !DILexicalBlock(scope: !3251, file: !306, line: 562, column: 15)
!3262 = !DILocation(line: 562, column: 15, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3261, file: !306, discriminator: 1)
!3264 = !DILocation(line: 562, column: 15, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3260, file: !306, discriminator: 2)
!3266 = !DILocation(line: 562, column: 15, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3261, file: !306, discriminator: 3)
!3268 = !DILocation(line: 563, column: 15, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3270, file: !306, discriminator: 1)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !306, line: 563, column: 15)
!3271 = distinct !DILexicalBlock(scope: !3251, file: !306, line: 563, column: 15)
!3272 = !DILocation(line: 563, column: 15, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3271, file: !306, discriminator: 1)
!3274 = !DILocation(line: 563, column: 15, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3270, file: !306, discriminator: 2)
!3276 = !DILocation(line: 563, column: 15, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3271, file: !306, discriminator: 3)
!3278 = !DILocation(line: 564, column: 15, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3280, file: !306, discriminator: 1)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !306, line: 564, column: 15)
!3281 = distinct !DILexicalBlock(scope: !3251, file: !306, line: 564, column: 15)
!3282 = !DILocation(line: 564, column: 15, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3281, file: !306, discriminator: 1)
!3284 = !DILocation(line: 564, column: 15, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3280, file: !306, discriminator: 2)
!3286 = !DILocation(line: 564, column: 15, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3281, file: !306, discriminator: 3)
!3288 = !DILocation(line: 566, column: 13, scope: !3251)
!3289 = !DILocation(line: 606, column: 17, scope: !2920)
!3290 = !DILocation(line: 602, column: 20, scope: !2920)
!3291 = !DILocation(line: 609, column: 29, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !2925, file: !306, line: 607, column: 15)
!3293 = !DILocation(line: 609, column: 27, scope: !3292)
!3294 = !DILocation(line: 604, column: 18, scope: !2920)
!3295 = !DILocation(line: 610, column: 15, scope: !3292)
!3296 = !DILocation(line: 613, column: 17, scope: !2924)
!3297 = !DILocation(line: 614, column: 17, scope: !2924)
!3298 = !DILocation(line: 618, column: 29, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !2924, file: !306, line: 618, column: 21)
!3300 = !DILocation(line: 618, column: 21, scope: !2924)
!3301 = distinct !{!3301, !3302, !3303}
!3302 = !DILocation(line: 621, column: 17, scope: !2924)
!3303 = !DILocation(line: 667, column: 44, scope: !2924)
!3304 = !DILocation(line: 619, column: 29, scope: !3299)
!3305 = !DILocation(line: 619, column: 19, scope: !3299)
!3306 = !DILocation(line: 623, column: 21, scope: !2941)
!3307 = !DILocation(line: 624, column: 56, scope: !2941)
!3308 = !DILocation(line: 624, column: 50, scope: !2941)
!3309 = !DILocation(line: 625, column: 53, scope: !2941)
!3310 = !DILocation(line: 613, column: 27, scope: !2924)
!3311 = !DILocation(line: 623, column: 29, scope: !2941)
!3312 = !DILocation(line: 624, column: 36, scope: !2941)
!3313 = !DILocation(line: 624, column: 28, scope: !2941)
!3314 = !DILocation(line: 626, column: 25, scope: !2941)
!3315 = !DILocation(line: 636, column: 38, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !3317, file: !306, discriminator: 1)
!3317 = distinct !DILexicalBlock(scope: !2948, file: !306, line: 634, column: 23)
!3318 = !DILocation(line: 636, column: 48, scope: !3316)
!3319 = !DILocation(line: 636, column: 51, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3317, file: !306, discriminator: 2)
!3321 = !DILocation(line: 636, column: 48, scope: !3320)
!3322 = !DILocation(line: 636, column: 25, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3317, file: !306, discriminator: 3)
!3324 = !DILocation(line: 637, column: 28, scope: !3317)
!3325 = !DILocation(line: 636, column: 34, scope: !3316)
!3326 = distinct !{!3326, !3327, !3324}
!3327 = !DILocation(line: 636, column: 25, scope: !3317)
!3328 = !DILocation(line: 650, column: 43, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3330, file: !306, discriminator: 1)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !306, line: 650, column: 29)
!3331 = distinct !DILexicalBlock(scope: !2945, file: !306, line: 650, column: 29)
!3332 = !DILocation(line: 647, column: 29, scope: !2946)
!3333 = !DILocation(line: 649, column: 36, scope: !2945)
!3334 = !DILocation(line: 651, column: 49, scope: !3330)
!3335 = !DILocation(line: 651, column: 39, scope: !3330)
!3336 = !DILocation(line: 651, column: 31, scope: !3330)
!3337 = !DILocation(line: 650, column: 53, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3330, file: !306, discriminator: 2)
!3339 = !DILocation(line: 650, column: 29, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3331, file: !306, discriminator: 1)
!3341 = distinct !{!3341, !3342, !3343}
!3342 = !DILocation(line: 650, column: 29, scope: !3331)
!3343 = !DILocation(line: 659, column: 33, scope: !3331)
!3344 = !DILocation(line: 666, column: 19, scope: !2924)
!3345 = !DILocation(line: 662, column: 41, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !2947, file: !306, line: 662, column: 29)
!3347 = !DILocation(line: 662, column: 31, scope: !3346)
!3348 = !DILocation(line: 662, column: 29, scope: !2947)
!3349 = !DILocation(line: 664, column: 27, scope: !2947)
!3350 = !DILocation(line: 667, column: 26, scope: !2924)
!3351 = !DILocation(line: 667, column: 24, scope: !2924)
!3352 = !DILocation(line: 666, column: 19, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !2941, file: !306, discriminator: 3)
!3354 = !DILocation(line: 668, column: 15, scope: !2925)
!3355 = !DILocation(line: 670, column: 40, scope: !2920)
!3356 = !DILocation(line: 672, column: 19, scope: !2953)
!3357 = !DILocation(line: 672, column: 45, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !2953, file: !306, discriminator: 1)
!3359 = !DILocation(line: 672, column: 23, scope: !2953)
!3360 = !DILocation(line: 676, column: 33, scope: !2952)
!3361 = !DILocation(line: 676, column: 24, scope: !2952)
!3362 = !DILocation(line: 678, column: 17, scope: !2952)
!3363 = !DILocation(line: 680, column: 43, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !306, line: 680, column: 25)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !306, line: 679, column: 19)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !306, line: 678, column: 17)
!3367 = distinct !DILexicalBlock(scope: !2952, file: !306, line: 678, column: 17)
!3368 = !DILocation(line: 682, column: 25, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3370, file: !306, discriminator: 1)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !306, line: 682, column: 25)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !306, line: 681, column: 23)
!3372 = !DILocation(line: 682, column: 25, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3374, file: !306, discriminator: 4)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !306, line: 682, column: 25)
!3375 = !DILocation(line: 682, column: 25, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3374, file: !306, discriminator: 3)
!3377 = !DILocation(line: 682, column: 25, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3379, file: !306, discriminator: 6)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !306, line: 682, column: 25)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !306, line: 682, column: 25)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !306, line: 682, column: 25)
!3382 = !DILocation(line: 682, column: 25, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3380, file: !306, discriminator: 6)
!3384 = !DILocation(line: 682, column: 25, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3379, file: !306, discriminator: 7)
!3386 = !DILocation(line: 682, column: 25, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3380, file: !306, discriminator: 8)
!3388 = !DILocation(line: 682, column: 25, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3390, file: !306, discriminator: 11)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !306, line: 682, column: 25)
!3391 = distinct !DILexicalBlock(scope: !3381, file: !306, line: 682, column: 25)
!3392 = !DILocation(line: 682, column: 25, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3391, file: !306, discriminator: 11)
!3394 = !DILocation(line: 682, column: 25, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3390, file: !306, discriminator: 12)
!3396 = !DILocation(line: 682, column: 25, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3391, file: !306, discriminator: 13)
!3398 = !DILocation(line: 682, column: 25, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3400, file: !306, discriminator: 16)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !306, line: 682, column: 25)
!3401 = distinct !DILexicalBlock(scope: !3381, file: !306, line: 682, column: 25)
!3402 = !DILocation(line: 682, column: 25, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3401, file: !306, discriminator: 16)
!3404 = !DILocation(line: 682, column: 25, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3400, file: !306, discriminator: 17)
!3406 = !DILocation(line: 682, column: 25, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3401, file: !306, discriminator: 18)
!3408 = !DILocation(line: 682, column: 25, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3381, file: !306, discriminator: 20)
!3410 = !DILocation(line: 682, column: 25, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !306, discriminator: 22)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !306, line: 682, column: 25)
!3413 = distinct !DILexicalBlock(scope: !3370, file: !306, line: 682, column: 25)
!3414 = !DILocation(line: 682, column: 25, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3413, file: !306, discriminator: 22)
!3416 = !DILocation(line: 682, column: 25, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3412, file: !306, discriminator: 23)
!3418 = !DILocation(line: 682, column: 25, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3413, file: !306, discriminator: 24)
!3420 = !DILocation(line: 683, column: 25, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3422, file: !306, discriminator: 1)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !306, line: 683, column: 25)
!3423 = distinct !DILexicalBlock(scope: !3371, file: !306, line: 683, column: 25)
!3424 = !DILocation(line: 683, column: 25, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3423, file: !306, discriminator: 1)
!3426 = !DILocation(line: 683, column: 25, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3422, file: !306, discriminator: 2)
!3428 = !DILocation(line: 683, column: 25, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3423, file: !306, discriminator: 3)
!3430 = !DILocation(line: 684, column: 25, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3432, file: !306, discriminator: 1)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !306, line: 684, column: 25)
!3433 = distinct !DILexicalBlock(scope: !3371, file: !306, line: 684, column: 25)
!3434 = !DILocation(line: 684, column: 25, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3433, file: !306, discriminator: 1)
!3436 = !DILocation(line: 684, column: 25, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3432, file: !306, discriminator: 2)
!3438 = !DILocation(line: 684, column: 25, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3433, file: !306, discriminator: 3)
!3440 = !DILocation(line: 685, column: 38, scope: !3371)
!3441 = !DILocation(line: 685, column: 33, scope: !3371)
!3442 = !DILocation(line: 686, column: 23, scope: !3371)
!3443 = !DILocation(line: 687, column: 30, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3364, file: !306, line: 687, column: 30)
!3445 = !DILocation(line: 687, column: 30, scope: !3364)
!3446 = !DILocation(line: 689, column: 25, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3448, file: !306, discriminator: 1)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !306, line: 689, column: 25)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !306, line: 689, column: 25)
!3450 = distinct !DILexicalBlock(scope: !3444, file: !306, line: 688, column: 23)
!3451 = !DILocation(line: 689, column: 25, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3449, file: !306, discriminator: 1)
!3453 = !DILocation(line: 689, column: 25, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3448, file: !306, discriminator: 2)
!3455 = !DILocation(line: 689, column: 25, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3449, file: !306, discriminator: 3)
!3457 = !DILocation(line: 691, column: 23, scope: !3450)
!3458 = !DILocation(line: 692, column: 35, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3365, file: !306, line: 692, column: 25)
!3460 = !DILocation(line: 692, column: 30, scope: !3459)
!3461 = !DILocation(line: 692, column: 25, scope: !3365)
!3462 = !DILocation(line: 694, column: 21, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3464, file: !306, discriminator: 1)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !306, line: 694, column: 21)
!3465 = distinct !DILexicalBlock(scope: !3365, file: !306, line: 694, column: 21)
!3466 = !DILocation(line: 694, column: 21, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3464, file: !306, discriminator: 2)
!3468 = !DILocation(line: 694, column: 21, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !3470, file: !306, discriminator: 4)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !306, line: 694, column: 21)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !306, line: 694, column: 21)
!3472 = distinct !DILexicalBlock(scope: !3464, file: !306, line: 694, column: 21)
!3473 = !DILocation(line: 694, column: 21, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3471, file: !306, discriminator: 4)
!3475 = !DILocation(line: 694, column: 21, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3470, file: !306, discriminator: 5)
!3477 = !DILocation(line: 694, column: 21, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !3471, file: !306, discriminator: 6)
!3479 = !DILocation(line: 694, column: 21, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3481, file: !306, discriminator: 9)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !306, line: 694, column: 21)
!3482 = distinct !DILexicalBlock(scope: !3472, file: !306, line: 694, column: 21)
!3483 = !DILocation(line: 694, column: 21, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3482, file: !306, discriminator: 9)
!3485 = !DILocation(line: 694, column: 21, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3481, file: !306, discriminator: 10)
!3487 = !DILocation(line: 694, column: 21, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3482, file: !306, discriminator: 11)
!3489 = !DILocation(line: 694, column: 21, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3472, file: !306, discriminator: 13)
!3491 = !DILocation(line: 695, column: 21, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !306, discriminator: 1)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !306, line: 695, column: 21)
!3494 = distinct !DILexicalBlock(scope: !3365, file: !306, line: 695, column: 21)
!3495 = !DILocation(line: 695, column: 21, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3494, file: !306, discriminator: 1)
!3497 = !DILocation(line: 695, column: 21, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3493, file: !306, discriminator: 2)
!3499 = !DILocation(line: 695, column: 21, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3494, file: !306, discriminator: 3)
!3501 = !DILocation(line: 696, column: 25, scope: !3365)
!3502 = !DILocation(line: 678, column: 17, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3366, file: !306, discriminator: 1)
!3504 = distinct !{!3504, !3505, !3506}
!3505 = !DILocation(line: 678, column: 17, scope: !3367)
!3506 = !DILocation(line: 697, column: 19, scope: !3367)
!3507 = !DILocation(line: 704, column: 34, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 704, column: 11)
!3509 = !DILocation(line: 706, column: 14, scope: !3508)
!3510 = !DILocation(line: 707, column: 14, scope: !3508)
!3511 = !DILocation(line: 707, column: 35, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3508, file: !306, discriminator: 1)
!3513 = !DILocation(line: 707, column: 17, scope: !3512)
!3514 = !DILocation(line: 707, column: 53, scope: !3512)
!3515 = !DILocation(line: 707, column: 47, scope: !3512)
!3516 = !DILocation(line: 707, column: 65, scope: !3512)
!3517 = !DILocation(line: 708, column: 15, scope: !3512)
!3518 = !DILocation(line: 708, column: 11, scope: !3508)
!3519 = !DILocation(line: 704, column: 11, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !2912, file: !306, discriminator: 2)
!3521 = !DILocation(line: 712, column: 7, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3523, file: !306, discriminator: 1)
!3523 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 712, column: 7)
!3524 = !DILocation(line: 712, column: 7, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3526, file: !306, discriminator: 4)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !306, line: 712, column: 7)
!3527 = !DILocation(line: 712, column: 7, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3526, file: !306, discriminator: 3)
!3529 = !DILocation(line: 712, column: 7, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !3531, file: !306, discriminator: 6)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !306, line: 712, column: 7)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !306, line: 712, column: 7)
!3533 = distinct !DILexicalBlock(scope: !3526, file: !306, line: 712, column: 7)
!3534 = !DILocation(line: 712, column: 7, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3532, file: !306, discriminator: 6)
!3536 = !DILocation(line: 712, column: 7, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3531, file: !306, discriminator: 7)
!3538 = !DILocation(line: 712, column: 7, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3532, file: !306, discriminator: 8)
!3540 = !DILocation(line: 712, column: 7, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3542, file: !306, discriminator: 11)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !306, line: 712, column: 7)
!3543 = distinct !DILexicalBlock(scope: !3533, file: !306, line: 712, column: 7)
!3544 = !DILocation(line: 712, column: 7, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3543, file: !306, discriminator: 11)
!3546 = !DILocation(line: 712, column: 7, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3542, file: !306, discriminator: 12)
!3548 = !DILocation(line: 712, column: 7, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3543, file: !306, discriminator: 13)
!3550 = !DILocation(line: 712, column: 7, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3552, file: !306, discriminator: 16)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !306, line: 712, column: 7)
!3553 = distinct !DILexicalBlock(scope: !3533, file: !306, line: 712, column: 7)
!3554 = !DILocation(line: 712, column: 7, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3553, file: !306, discriminator: 16)
!3556 = !DILocation(line: 712, column: 7, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3552, file: !306, discriminator: 17)
!3558 = !DILocation(line: 712, column: 7, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3553, file: !306, discriminator: 18)
!3560 = !DILocation(line: 712, column: 7, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !3533, file: !306, discriminator: 20)
!3562 = !DILocation(line: 712, column: 7, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3564, file: !306, discriminator: 22)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !306, line: 712, column: 7)
!3565 = distinct !DILexicalBlock(scope: !3523, file: !306, line: 712, column: 7)
!3566 = !DILocation(line: 712, column: 7, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3565, file: !306, discriminator: 22)
!3568 = !DILocation(line: 712, column: 7, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3564, file: !306, discriminator: 23)
!3570 = !DILocation(line: 712, column: 7, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3565, file: !306, discriminator: 24)
!3572 = !DILocation(line: 715, column: 7, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3574, file: !306, discriminator: 1)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !306, line: 715, column: 7)
!3575 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 715, column: 7)
!3576 = !DILocation(line: 715, column: 7, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3574, file: !306, discriminator: 2)
!3578 = !DILocation(line: 715, column: 7, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3580, file: !306, discriminator: 4)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !306, line: 715, column: 7)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !306, line: 715, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !306, line: 715, column: 7)
!3583 = !DILocation(line: 715, column: 7, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3581, file: !306, discriminator: 4)
!3585 = !DILocation(line: 715, column: 7, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3580, file: !306, discriminator: 5)
!3587 = !DILocation(line: 715, column: 7, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3581, file: !306, discriminator: 6)
!3589 = !DILocation(line: 715, column: 7, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3591, file: !306, discriminator: 9)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !306, line: 715, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3582, file: !306, line: 715, column: 7)
!3593 = !DILocation(line: 715, column: 7, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3592, file: !306, discriminator: 9)
!3595 = !DILocation(line: 715, column: 7, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3591, file: !306, discriminator: 10)
!3597 = !DILocation(line: 715, column: 7, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3592, file: !306, discriminator: 11)
!3599 = !DILocation(line: 715, column: 7, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3582, file: !306, discriminator: 13)
!3601 = !DILocation(line: 716, column: 7, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3603, file: !306, discriminator: 1)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !306, line: 716, column: 7)
!3604 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 716, column: 7)
!3605 = !DILocation(line: 716, column: 7, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3604, file: !306, discriminator: 1)
!3607 = !DILocation(line: 716, column: 7, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3603, file: !306, discriminator: 2)
!3609 = !DILocation(line: 716, column: 7, scope: !3610)
!3610 = !DILexicalBlockFile(scope: !3604, file: !306, discriminator: 3)
!3611 = !DILocation(line: 718, column: 13, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !2912, file: !306, line: 718, column: 11)
!3613 = !DILocation(line: 718, column: 11, scope: !2912)
!3614 = !DILocation(line: 720, column: 5, scope: !2913)
!3615 = !DILocation(line: 392, column: 75, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !2913, file: !306, discriminator: 5)
!3617 = !DILocation(line: 392, column: 3, scope: !3616)
!3618 = distinct !{!3618, !3619, !3620}
!3619 = !DILocation(line: 392, column: 3, scope: !2914)
!3620 = !DILocation(line: 720, column: 5, scope: !2914)
!3621 = !DILocation(line: 722, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 722, column: 7)
!3623 = !DILocation(line: 722, column: 16, scope: !3622)
!3624 = !DILocation(line: 730, column: 51, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 730, column: 7)
!3626 = !DILocation(line: 731, column: 10, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3625, file: !306, discriminator: 1)
!3628 = !DILocation(line: 733, column: 11, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !306, line: 733, column: 11)
!3630 = distinct !DILexicalBlock(scope: !3625, file: !306, line: 732, column: 5)
!3631 = !DILocation(line: 733, column: 11, scope: !3630)
!3632 = !DILocation(line: 734, column: 16, scope: !3629)
!3633 = !DILocation(line: 734, column: 9, scope: !3629)
!3634 = !DILocation(line: 738, column: 18, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !306, line: 738, column: 16)
!3636 = !DILocation(line: 738, column: 32, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3635, file: !306, discriminator: 1)
!3638 = !DILocation(line: 738, column: 29, scope: !3635)
!3639 = !DILocation(line: 747, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 747, column: 7)
!3641 = !DILocation(line: 747, column: 20, scope: !3640)
!3642 = !DILocation(line: 748, column: 12, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3644, file: !306, discriminator: 1)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !306, line: 748, column: 5)
!3645 = distinct !DILexicalBlock(scope: !3640, file: !306, line: 748, column: 5)
!3646 = !DILocation(line: 748, column: 5, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3645, file: !306, discriminator: 1)
!3648 = !DILocation(line: 749, column: 7, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3650, file: !306, discriminator: 1)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !306, line: 749, column: 7)
!3651 = distinct !DILexicalBlock(scope: !3644, file: !306, line: 749, column: 7)
!3652 = !DILocation(line: 749, column: 7, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3651, file: !306, discriminator: 1)
!3654 = !DILocation(line: 749, column: 7, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3650, file: !306, discriminator: 2)
!3656 = !DILocation(line: 749, column: 7, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3651, file: !306, discriminator: 3)
!3658 = !DILocation(line: 748, column: 39, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3644, file: !306, discriminator: 2)
!3660 = distinct !{!3660, !3661, !3662}
!3661 = !DILocation(line: 748, column: 5, scope: !3645)
!3662 = !DILocation(line: 749, column: 7, scope: !3645)
!3663 = !DILocation(line: 751, column: 11, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 751, column: 7)
!3665 = !DILocation(line: 751, column: 7, scope: !2885)
!3666 = !DILocation(line: 752, column: 5, scope: !3664)
!3667 = !DILocation(line: 752, column: 17, scope: !3664)
!3668 = !DILocation(line: 758, column: 21, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !2885, file: !306, line: 758, column: 7)
!3670 = !DILocation(line: 758, column: 54, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3669, file: !306, discriminator: 1)
!3672 = !DILocation(line: 758, column: 51, scope: !3669)
!3673 = !DILocation(line: 762, column: 42, scope: !2885)
!3674 = !DILocation(line: 760, column: 10, scope: !2885)
!3675 = !DILocation(line: 760, column: 3, scope: !2885)
!3676 = !DILocation(line: 764, column: 1, scope: !2885)
!3677 = distinct !DISubprogram(name: "gettext_quote", scope: !306, file: !306, line: 199, type: !3678, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!68, !68, !5}
!3680 = !{!3681, !3682, !3683, !3684}
!3681 = !DILocalVariable(name: "msgid", arg: 1, scope: !3677, file: !306, line: 199, type: !68)
!3682 = !DILocalVariable(name: "s", arg: 2, scope: !3677, file: !306, line: 199, type: !5)
!3683 = !DILocalVariable(name: "translation", scope: !3677, file: !306, line: 201, type: !68)
!3684 = !DILocalVariable(name: "locale_code", scope: !3677, file: !306, line: 202, type: !68)
!3685 = !DILocation(line: 199, column: 28, scope: !3677)
!3686 = !DILocation(line: 199, column: 54, scope: !3677)
!3687 = !DILocation(line: 201, column: 29, scope: !3677)
!3688 = !DILocation(line: 201, column: 15, scope: !3677)
!3689 = !DILocation(line: 204, column: 19, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3677, file: !306, line: 204, column: 7)
!3691 = !DILocation(line: 204, column: 7, scope: !3677)
!3692 = !DILocation(line: 225, column: 17, scope: !3677)
!3693 = !DILocation(line: 202, column: 15, scope: !3677)
!3694 = !DILocalVariable(name: "s2", arg: 2, scope: !3695, file: !3696, line: 160, type: !68)
!3695 = distinct !DISubprogram(name: "strcaseeq0", scope: !3696, file: !3696, line: 160, type: !3697, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3699)
!3696 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59, !59, !59}
!3699 = !{!3700, !3694, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3700 = !DILocalVariable(name: "s1", arg: 1, scope: !3695, file: !3696, line: 160, type: !68)
!3701 = !DILocalVariable(name: "s20", arg: 3, scope: !3695, file: !3696, line: 160, type: !59)
!3702 = !DILocalVariable(name: "s21", arg: 4, scope: !3695, file: !3696, line: 160, type: !59)
!3703 = !DILocalVariable(name: "s22", arg: 5, scope: !3695, file: !3696, line: 160, type: !59)
!3704 = !DILocalVariable(name: "s23", arg: 6, scope: !3695, file: !3696, line: 160, type: !59)
!3705 = !DILocalVariable(name: "s24", arg: 7, scope: !3695, file: !3696, line: 160, type: !59)
!3706 = !DILocalVariable(name: "s25", arg: 8, scope: !3695, file: !3696, line: 160, type: !59)
!3707 = !DILocalVariable(name: "s26", arg: 9, scope: !3695, file: !3696, line: 160, type: !59)
!3708 = !DILocalVariable(name: "s27", arg: 10, scope: !3695, file: !3696, line: 160, type: !59)
!3709 = !DILocalVariable(name: "s28", arg: 11, scope: !3695, file: !3696, line: 160, type: !59)
!3710 = !DILocation(line: 160, column: 41, scope: !3695, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 226, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3677, file: !306, line: 226, column: 7)
!3713 = !DILocation(line: 160, column: 120, scope: !3695, inlinedAt: !3711)
!3714 = !DILocation(line: 160, column: 130, scope: !3695, inlinedAt: !3711)
!3715 = !DILocation(line: 162, column: 7, scope: !3716, inlinedAt: !3711)
!3716 = !DILexicalBlockFile(scope: !3717, file: !3696, discriminator: 1)
!3717 = distinct !DILexicalBlock(scope: !3695, file: !3696, line: 162, column: 7)
!3718 = !DILocalVariable(name: "s2", arg: 2, scope: !3719, file: !3696, line: 146, type: !68)
!3719 = distinct !DISubprogram(name: "strcaseeq1", scope: !3696, file: !3696, line: 146, type: !3720, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59, !59}
!3722 = !{!3723, !3718, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3723 = !DILocalVariable(name: "s1", arg: 1, scope: !3719, file: !3696, line: 146, type: !68)
!3724 = !DILocalVariable(name: "s21", arg: 3, scope: !3719, file: !3696, line: 146, type: !59)
!3725 = !DILocalVariable(name: "s22", arg: 4, scope: !3719, file: !3696, line: 146, type: !59)
!3726 = !DILocalVariable(name: "s23", arg: 5, scope: !3719, file: !3696, line: 146, type: !59)
!3727 = !DILocalVariable(name: "s24", arg: 6, scope: !3719, file: !3696, line: 146, type: !59)
!3728 = !DILocalVariable(name: "s25", arg: 7, scope: !3719, file: !3696, line: 146, type: !59)
!3729 = !DILocalVariable(name: "s26", arg: 8, scope: !3719, file: !3696, line: 146, type: !59)
!3730 = !DILocalVariable(name: "s27", arg: 9, scope: !3719, file: !3696, line: 146, type: !59)
!3731 = !DILocalVariable(name: "s28", arg: 10, scope: !3719, file: !3696, line: 146, type: !59)
!3732 = !DILocation(line: 146, column: 41, scope: !3719, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 167, column: 16, scope: !3734, inlinedAt: !3711)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3696, line: 164, column: 11)
!3735 = distinct !DILexicalBlock(scope: !3717, file: !3696, line: 163, column: 5)
!3736 = !DILocation(line: 146, column: 110, scope: !3719, inlinedAt: !3733)
!3737 = !DILocation(line: 146, column: 120, scope: !3719, inlinedAt: !3733)
!3738 = !DILocation(line: 148, column: 7, scope: !3739, inlinedAt: !3733)
!3739 = !DILexicalBlockFile(scope: !3740, file: !3696, discriminator: 1)
!3740 = distinct !DILexicalBlock(scope: !3719, file: !3696, line: 148, column: 7)
!3741 = !DILocalVariable(name: "s2", arg: 2, scope: !3742, file: !3696, line: 132, type: !68)
!3742 = distinct !DISubprogram(name: "strcaseeq2", scope: !3696, file: !3696, line: 132, type: !3743, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59}
!3745 = !{!3746, !3741, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3746 = !DILocalVariable(name: "s1", arg: 1, scope: !3742, file: !3696, line: 132, type: !68)
!3747 = !DILocalVariable(name: "s22", arg: 3, scope: !3742, file: !3696, line: 132, type: !59)
!3748 = !DILocalVariable(name: "s23", arg: 4, scope: !3742, file: !3696, line: 132, type: !59)
!3749 = !DILocalVariable(name: "s24", arg: 5, scope: !3742, file: !3696, line: 132, type: !59)
!3750 = !DILocalVariable(name: "s25", arg: 6, scope: !3742, file: !3696, line: 132, type: !59)
!3751 = !DILocalVariable(name: "s26", arg: 7, scope: !3742, file: !3696, line: 132, type: !59)
!3752 = !DILocalVariable(name: "s27", arg: 8, scope: !3742, file: !3696, line: 132, type: !59)
!3753 = !DILocalVariable(name: "s28", arg: 9, scope: !3742, file: !3696, line: 132, type: !59)
!3754 = !DILocation(line: 132, column: 41, scope: !3742, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 153, column: 16, scope: !3756, inlinedAt: !3733)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3696, line: 150, column: 11)
!3757 = distinct !DILexicalBlock(scope: !3740, file: !3696, line: 149, column: 5)
!3758 = !DILocation(line: 132, column: 100, scope: !3742, inlinedAt: !3755)
!3759 = !DILocation(line: 132, column: 110, scope: !3742, inlinedAt: !3755)
!3760 = !DILocation(line: 134, column: 7, scope: !3761, inlinedAt: !3755)
!3761 = !DILexicalBlockFile(scope: !3762, file: !3696, discriminator: 1)
!3762 = distinct !DILexicalBlock(scope: !3742, file: !3696, line: 134, column: 7)
!3763 = !DILocalVariable(name: "s2", arg: 2, scope: !3764, file: !3696, line: 118, type: !68)
!3764 = distinct !DISubprogram(name: "strcaseeq3", scope: !3696, file: !3696, line: 118, type: !3765, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59}
!3767 = !{!3768, !3763, !3769, !3770, !3771, !3772, !3773, !3774}
!3768 = !DILocalVariable(name: "s1", arg: 1, scope: !3764, file: !3696, line: 118, type: !68)
!3769 = !DILocalVariable(name: "s23", arg: 3, scope: !3764, file: !3696, line: 118, type: !59)
!3770 = !DILocalVariable(name: "s24", arg: 4, scope: !3764, file: !3696, line: 118, type: !59)
!3771 = !DILocalVariable(name: "s25", arg: 5, scope: !3764, file: !3696, line: 118, type: !59)
!3772 = !DILocalVariable(name: "s26", arg: 6, scope: !3764, file: !3696, line: 118, type: !59)
!3773 = !DILocalVariable(name: "s27", arg: 7, scope: !3764, file: !3696, line: 118, type: !59)
!3774 = !DILocalVariable(name: "s28", arg: 8, scope: !3764, file: !3696, line: 118, type: !59)
!3775 = !DILocation(line: 118, column: 41, scope: !3764, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 139, column: 16, scope: !3777, inlinedAt: !3755)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !3696, line: 136, column: 11)
!3778 = distinct !DILexicalBlock(scope: !3762, file: !3696, line: 135, column: 5)
!3779 = !DILocation(line: 118, column: 90, scope: !3764, inlinedAt: !3776)
!3780 = !DILocation(line: 118, column: 100, scope: !3764, inlinedAt: !3776)
!3781 = !DILocation(line: 120, column: 7, scope: !3782, inlinedAt: !3776)
!3782 = !DILexicalBlockFile(scope: !3783, file: !3696, discriminator: 2)
!3783 = distinct !DILexicalBlock(scope: !3764, file: !3696, line: 120, column: 7)
!3784 = !DILocation(line: 120, column: 7, scope: !3785, inlinedAt: !3776)
!3785 = !DILexicalBlockFile(scope: !3764, file: !3696, discriminator: 2)
!3786 = !DILocalVariable(name: "s2", arg: 2, scope: !3787, file: !3696, line: 104, type: !68)
!3787 = distinct !DISubprogram(name: "strcaseeq4", scope: !3696, file: !3696, line: 104, type: !3788, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!70, !68, !68, !59, !59, !59, !59, !59}
!3790 = !{!3791, !3786, !3792, !3793, !3794, !3795, !3796}
!3791 = !DILocalVariable(name: "s1", arg: 1, scope: !3787, file: !3696, line: 104, type: !68)
!3792 = !DILocalVariable(name: "s24", arg: 3, scope: !3787, file: !3696, line: 104, type: !59)
!3793 = !DILocalVariable(name: "s25", arg: 4, scope: !3787, file: !3696, line: 104, type: !59)
!3794 = !DILocalVariable(name: "s26", arg: 5, scope: !3787, file: !3696, line: 104, type: !59)
!3795 = !DILocalVariable(name: "s27", arg: 6, scope: !3787, file: !3696, line: 104, type: !59)
!3796 = !DILocalVariable(name: "s28", arg: 7, scope: !3787, file: !3696, line: 104, type: !59)
!3797 = !DILocation(line: 104, column: 41, scope: !3787, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 125, column: 16, scope: !3799, inlinedAt: !3776)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3696, line: 122, column: 11)
!3800 = distinct !DILexicalBlock(scope: !3783, file: !3696, line: 121, column: 5)
!3801 = !DILocation(line: 104, column: 80, scope: !3787, inlinedAt: !3798)
!3802 = !DILocation(line: 104, column: 90, scope: !3787, inlinedAt: !3798)
!3803 = !DILocation(line: 106, column: 7, scope: !3804, inlinedAt: !3798)
!3804 = !DILexicalBlockFile(scope: !3805, file: !3696, discriminator: 2)
!3805 = distinct !DILexicalBlock(scope: !3787, file: !3696, line: 106, column: 7)
!3806 = !DILocation(line: 106, column: 7, scope: !3807, inlinedAt: !3798)
!3807 = !DILexicalBlockFile(scope: !3787, file: !3696, discriminator: 2)
!3808 = !DILocalVariable(name: "s2", arg: 2, scope: !3809, file: !3696, line: 90, type: !68)
!3809 = distinct !DISubprogram(name: "strcaseeq5", scope: !3696, file: !3696, line: 90, type: !3810, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!70, !68, !68, !59, !59, !59, !59}
!3812 = !{!3813, !3808, !3814, !3815, !3816, !3817}
!3813 = !DILocalVariable(name: "s1", arg: 1, scope: !3809, file: !3696, line: 90, type: !68)
!3814 = !DILocalVariable(name: "s25", arg: 3, scope: !3809, file: !3696, line: 90, type: !59)
!3815 = !DILocalVariable(name: "s26", arg: 4, scope: !3809, file: !3696, line: 90, type: !59)
!3816 = !DILocalVariable(name: "s27", arg: 5, scope: !3809, file: !3696, line: 90, type: !59)
!3817 = !DILocalVariable(name: "s28", arg: 6, scope: !3809, file: !3696, line: 90, type: !59)
!3818 = !DILocation(line: 90, column: 41, scope: !3809, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 111, column: 16, scope: !3820, inlinedAt: !3798)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3696, line: 108, column: 11)
!3821 = distinct !DILexicalBlock(scope: !3805, file: !3696, line: 107, column: 5)
!3822 = !DILocation(line: 90, column: 70, scope: !3809, inlinedAt: !3819)
!3823 = !DILocation(line: 90, column: 80, scope: !3809, inlinedAt: !3819)
!3824 = !DILocation(line: 92, column: 7, scope: !3825, inlinedAt: !3819)
!3825 = !DILexicalBlockFile(scope: !3826, file: !3696, discriminator: 2)
!3826 = distinct !DILexicalBlock(scope: !3809, file: !3696, line: 92, column: 7)
!3827 = !DILocation(line: 92, column: 7, scope: !3828, inlinedAt: !3819)
!3828 = !DILexicalBlockFile(scope: !3809, file: !3696, discriminator: 2)
!3829 = !DILocation(line: 227, column: 12, scope: !3712)
!3830 = !DILocation(line: 227, column: 21, scope: !3712)
!3831 = !DILocation(line: 227, column: 5, scope: !3712)
!3832 = !DILocation(line: 146, column: 41, scope: !3719, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 167, column: 16, scope: !3734, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 228, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3677, file: !306, line: 228, column: 7)
!3836 = !DILocation(line: 146, column: 110, scope: !3719, inlinedAt: !3833)
!3837 = !DILocation(line: 146, column: 120, scope: !3719, inlinedAt: !3833)
!3838 = !DILocation(line: 148, column: 7, scope: !3739, inlinedAt: !3833)
!3839 = !DILocation(line: 132, column: 41, scope: !3742, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 153, column: 16, scope: !3756, inlinedAt: !3833)
!3841 = !DILocation(line: 132, column: 100, scope: !3742, inlinedAt: !3840)
!3842 = !DILocation(line: 132, column: 110, scope: !3742, inlinedAt: !3840)
!3843 = !DILocation(line: 134, column: 7, scope: !3844, inlinedAt: !3840)
!3844 = !DILexicalBlockFile(scope: !3762, file: !3696, discriminator: 2)
!3845 = !DILocation(line: 134, column: 7, scope: !3846, inlinedAt: !3840)
!3846 = !DILexicalBlockFile(scope: !3742, file: !3696, discriminator: 2)
!3847 = !DILocation(line: 118, column: 41, scope: !3764, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 139, column: 16, scope: !3777, inlinedAt: !3840)
!3849 = !DILocation(line: 118, column: 90, scope: !3764, inlinedAt: !3848)
!3850 = !DILocation(line: 118, column: 100, scope: !3764, inlinedAt: !3848)
!3851 = !DILocation(line: 120, column: 7, scope: !3782, inlinedAt: !3848)
!3852 = !DILocation(line: 120, column: 7, scope: !3785, inlinedAt: !3848)
!3853 = !DILocation(line: 104, column: 41, scope: !3787, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 125, column: 16, scope: !3799, inlinedAt: !3848)
!3855 = !DILocation(line: 104, column: 80, scope: !3787, inlinedAt: !3854)
!3856 = !DILocation(line: 104, column: 90, scope: !3787, inlinedAt: !3854)
!3857 = !DILocation(line: 106, column: 7, scope: !3804, inlinedAt: !3854)
!3858 = !DILocation(line: 106, column: 7, scope: !3807, inlinedAt: !3854)
!3859 = !DILocation(line: 90, column: 41, scope: !3809, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 111, column: 16, scope: !3820, inlinedAt: !3854)
!3861 = !DILocation(line: 90, column: 70, scope: !3809, inlinedAt: !3860)
!3862 = !DILocation(line: 90, column: 80, scope: !3809, inlinedAt: !3860)
!3863 = !DILocation(line: 92, column: 7, scope: !3825, inlinedAt: !3860)
!3864 = !DILocation(line: 92, column: 7, scope: !3828, inlinedAt: !3860)
!3865 = !DILocalVariable(name: "s2", arg: 2, scope: !3866, file: !3696, line: 76, type: !68)
!3866 = distinct !DISubprogram(name: "strcaseeq6", scope: !3696, file: !3696, line: 76, type: !3867, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!70, !68, !68, !59, !59, !59}
!3869 = !{!3870, !3865, !3871, !3872, !3873}
!3870 = !DILocalVariable(name: "s1", arg: 1, scope: !3866, file: !3696, line: 76, type: !68)
!3871 = !DILocalVariable(name: "s26", arg: 3, scope: !3866, file: !3696, line: 76, type: !59)
!3872 = !DILocalVariable(name: "s27", arg: 4, scope: !3866, file: !3696, line: 76, type: !59)
!3873 = !DILocalVariable(name: "s28", arg: 5, scope: !3866, file: !3696, line: 76, type: !59)
!3874 = !DILocation(line: 76, column: 41, scope: !3866, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 97, column: 16, scope: !3876, inlinedAt: !3860)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3696, line: 94, column: 11)
!3877 = distinct !DILexicalBlock(scope: !3826, file: !3696, line: 93, column: 5)
!3878 = !DILocation(line: 76, column: 60, scope: !3866, inlinedAt: !3875)
!3879 = !DILocation(line: 76, column: 70, scope: !3866, inlinedAt: !3875)
!3880 = !DILocation(line: 78, column: 7, scope: !3881, inlinedAt: !3875)
!3881 = !DILexicalBlockFile(scope: !3882, file: !3696, discriminator: 2)
!3882 = distinct !DILexicalBlock(scope: !3866, file: !3696, line: 78, column: 7)
!3883 = !DILocation(line: 78, column: 7, scope: !3884, inlinedAt: !3875)
!3884 = !DILexicalBlockFile(scope: !3866, file: !3696, discriminator: 2)
!3885 = !DILocalVariable(name: "s2", arg: 2, scope: !3886, file: !3696, line: 62, type: !68)
!3886 = distinct !DISubprogram(name: "strcaseeq7", scope: !3696, file: !3696, line: 62, type: !3887, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!70, !68, !68, !59, !59}
!3889 = !{!3890, !3885, !3891, !3892}
!3890 = !DILocalVariable(name: "s1", arg: 1, scope: !3886, file: !3696, line: 62, type: !68)
!3891 = !DILocalVariable(name: "s27", arg: 3, scope: !3886, file: !3696, line: 62, type: !59)
!3892 = !DILocalVariable(name: "s28", arg: 4, scope: !3886, file: !3696, line: 62, type: !59)
!3893 = !DILocation(line: 62, column: 41, scope: !3886, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 83, column: 16, scope: !3895, inlinedAt: !3875)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3696, line: 80, column: 11)
!3896 = distinct !DILexicalBlock(scope: !3882, file: !3696, line: 79, column: 5)
!3897 = !DILocation(line: 62, column: 50, scope: !3886, inlinedAt: !3894)
!3898 = !DILocation(line: 62, column: 60, scope: !3886, inlinedAt: !3894)
!3899 = !DILocation(line: 64, column: 7, scope: !3900, inlinedAt: !3894)
!3900 = !DILexicalBlockFile(scope: !3901, file: !3696, discriminator: 2)
!3901 = distinct !DILexicalBlock(scope: !3886, file: !3696, line: 64, column: 7)
!3902 = !DILocation(line: 228, column: 7, scope: !3677)
!3903 = !DILocation(line: 229, column: 12, scope: !3835)
!3904 = !DILocation(line: 229, column: 21, scope: !3835)
!3905 = !DILocation(line: 229, column: 5, scope: !3835)
!3906 = !DILocation(line: 231, column: 13, scope: !3677)
!3907 = !DILocation(line: 231, column: 11, scope: !3677)
!3908 = !DILocation(line: 231, column: 3, scope: !3677)
!3909 = !DILocation(line: 232, column: 1, scope: !3677)
!3910 = distinct !DISubprogram(name: "quotearg_alloc", scope: !306, file: !306, line: 791, type: !3911, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!58, !68, !61, !2753}
!3913 = !{!3914, !3915, !3916}
!3914 = !DILocalVariable(name: "arg", arg: 1, scope: !3910, file: !306, line: 791, type: !68)
!3915 = !DILocalVariable(name: "argsize", arg: 2, scope: !3910, file: !306, line: 791, type: !61)
!3916 = !DILocalVariable(name: "o", arg: 3, scope: !3910, file: !306, line: 792, type: !2753)
!3917 = !DILocation(line: 791, column: 29, scope: !3910)
!3918 = !DILocation(line: 791, column: 41, scope: !3910)
!3919 = !DILocation(line: 792, column: 47, scope: !3910)
!3920 = !DILocalVariable(name: "arg", arg: 1, scope: !3921, file: !306, line: 804, type: !68)
!3921 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !306, file: !306, line: 804, type: !3922, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3924)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!58, !68, !61, !759, !2753}
!3924 = !{!3920, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932}
!3925 = !DILocalVariable(name: "argsize", arg: 2, scope: !3921, file: !306, line: 804, type: !61)
!3926 = !DILocalVariable(name: "size", arg: 3, scope: !3921, file: !306, line: 804, type: !759)
!3927 = !DILocalVariable(name: "o", arg: 4, scope: !3921, file: !306, line: 805, type: !2753)
!3928 = !DILocalVariable(name: "p", scope: !3921, file: !306, line: 807, type: !2753)
!3929 = !DILocalVariable(name: "e", scope: !3921, file: !306, line: 808, type: !70)
!3930 = !DILocalVariable(name: "flags", scope: !3921, file: !306, line: 810, type: !70)
!3931 = !DILocalVariable(name: "bufsize", scope: !3921, file: !306, line: 811, type: !61)
!3932 = !DILocalVariable(name: "buf", scope: !3921, file: !306, line: 815, type: !58)
!3933 = !DILocation(line: 804, column: 33, scope: !3921, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 794, column: 10, scope: !3910)
!3935 = !DILocation(line: 804, column: 45, scope: !3921, inlinedAt: !3934)
!3936 = !DILocation(line: 804, column: 62, scope: !3921, inlinedAt: !3934)
!3937 = !DILocation(line: 805, column: 51, scope: !3921, inlinedAt: !3934)
!3938 = !DILocation(line: 807, column: 37, scope: !3921, inlinedAt: !3934)
!3939 = !DILocation(line: 807, column: 33, scope: !3921, inlinedAt: !3934)
!3940 = !DILocation(line: 808, column: 11, scope: !3921, inlinedAt: !3934)
!3941 = !DILocation(line: 808, column: 7, scope: !3921, inlinedAt: !3934)
!3942 = !DILocation(line: 810, column: 18, scope: !3921, inlinedAt: !3934)
!3943 = !DILocation(line: 810, column: 24, scope: !3921, inlinedAt: !3934)
!3944 = !DILocation(line: 810, column: 7, scope: !3921, inlinedAt: !3934)
!3945 = !DILocation(line: 811, column: 69, scope: !3921, inlinedAt: !3934)
!3946 = !DILocation(line: 812, column: 53, scope: !3921, inlinedAt: !3934)
!3947 = !DILocation(line: 813, column: 49, scope: !3921, inlinedAt: !3934)
!3948 = !DILocation(line: 814, column: 49, scope: !3921, inlinedAt: !3934)
!3949 = !DILocation(line: 811, column: 20, scope: !3921, inlinedAt: !3934)
!3950 = !DILocation(line: 814, column: 62, scope: !3921, inlinedAt: !3934)
!3951 = !DILocation(line: 811, column: 10, scope: !3921, inlinedAt: !3934)
!3952 = !DILocalVariable(name: "n", arg: 1, scope: !3953, file: !755, line: 220, type: !61)
!3953 = distinct !DISubprogram(name: "xcharalloc", scope: !755, file: !755, line: 220, type: !3954, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!58, !61}
!3956 = !{!3952}
!3957 = !DILocation(line: 220, column: 20, scope: !3953, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 815, column: 15, scope: !3921, inlinedAt: !3934)
!3959 = !DILocation(line: 222, column: 10, scope: !3953, inlinedAt: !3958)
!3960 = !DILocation(line: 815, column: 9, scope: !3921, inlinedAt: !3934)
!3961 = !DILocation(line: 816, column: 60, scope: !3921, inlinedAt: !3934)
!3962 = !DILocation(line: 818, column: 32, scope: !3921, inlinedAt: !3934)
!3963 = !DILocation(line: 818, column: 47, scope: !3921, inlinedAt: !3934)
!3964 = !DILocation(line: 816, column: 3, scope: !3921, inlinedAt: !3934)
!3965 = !DILocation(line: 819, column: 9, scope: !3921, inlinedAt: !3934)
!3966 = !DILocation(line: 794, column: 3, scope: !3910)
!3967 = !DILocation(line: 804, column: 33, scope: !3921)
!3968 = !DILocation(line: 804, column: 45, scope: !3921)
!3969 = !DILocation(line: 804, column: 62, scope: !3921)
!3970 = !DILocation(line: 805, column: 51, scope: !3921)
!3971 = !DILocation(line: 807, column: 37, scope: !3921)
!3972 = !DILocation(line: 807, column: 33, scope: !3921)
!3973 = !DILocation(line: 808, column: 11, scope: !3921)
!3974 = !DILocation(line: 808, column: 7, scope: !3921)
!3975 = !DILocation(line: 810, column: 18, scope: !3921)
!3976 = !DILocation(line: 810, column: 27, scope: !3921)
!3977 = !DILocation(line: 810, column: 24, scope: !3921)
!3978 = !DILocation(line: 810, column: 7, scope: !3921)
!3979 = !DILocation(line: 811, column: 69, scope: !3921)
!3980 = !DILocation(line: 812, column: 53, scope: !3921)
!3981 = !DILocation(line: 813, column: 49, scope: !3921)
!3982 = !DILocation(line: 814, column: 49, scope: !3921)
!3983 = !DILocation(line: 811, column: 20, scope: !3921)
!3984 = !DILocation(line: 814, column: 62, scope: !3921)
!3985 = !DILocation(line: 811, column: 10, scope: !3921)
!3986 = !DILocation(line: 220, column: 20, scope: !3953, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 815, column: 15, scope: !3921)
!3988 = !DILocation(line: 222, column: 10, scope: !3953, inlinedAt: !3987)
!3989 = !DILocation(line: 815, column: 9, scope: !3921)
!3990 = !DILocation(line: 816, column: 60, scope: !3921)
!3991 = !DILocation(line: 818, column: 32, scope: !3921)
!3992 = !DILocation(line: 818, column: 47, scope: !3921)
!3993 = !DILocation(line: 816, column: 3, scope: !3921)
!3994 = !DILocation(line: 819, column: 9, scope: !3921)
!3995 = !DILocation(line: 820, column: 7, scope: !3921)
!3996 = !DILocation(line: 821, column: 11, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3921, file: !306, line: 820, column: 7)
!3998 = !DILocation(line: 821, column: 5, scope: !3997)
!3999 = !DILocation(line: 822, column: 3, scope: !3921)
!4000 = distinct !DISubprogram(name: "quotearg_free", scope: !306, file: !306, line: 840, type: !818, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4001)
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "sv", scope: !4000, file: !306, line: 842, type: !332)
!4003 = !DILocalVariable(name: "i", scope: !4000, file: !306, line: 843, type: !70)
!4004 = !DILocation(line: 842, column: 24, scope: !4000)
!4005 = !DILocation(line: 842, column: 19, scope: !4000)
!4006 = !DILocation(line: 843, column: 7, scope: !4000)
!4007 = !DILocation(line: 844, column: 19, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !4009, file: !306, discriminator: 1)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !306, line: 844, column: 3)
!4010 = distinct !DILexicalBlock(scope: !4000, file: !306, line: 844, column: 3)
!4011 = !DILocation(line: 844, column: 17, scope: !4008)
!4012 = !DILocation(line: 844, column: 3, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4010, file: !306, discriminator: 1)
!4014 = !DILocation(line: 845, column: 17, scope: !4009)
!4015 = !{!4016, !805, i64 8}
!4016 = !{!"slotvec", !1087, i64 0, !805, i64 8}
!4017 = !DILocation(line: 845, column: 5, scope: !4009)
!4018 = !DILocation(line: 844, column: 28, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !4009, file: !306, discriminator: 2)
!4020 = distinct !{!4020, !4021, !4022}
!4021 = !DILocation(line: 844, column: 3, scope: !4010)
!4022 = !DILocation(line: 845, column: 20, scope: !4010)
!4023 = !DILocation(line: 846, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4000, file: !306, line: 846, column: 7)
!4025 = !DILocation(line: 846, column: 17, scope: !4024)
!4026 = !DILocation(line: 846, column: 7, scope: !4000)
!4027 = !DILocation(line: 848, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !306, line: 847, column: 5)
!4029 = !DILocation(line: 849, column: 21, scope: !4028)
!4030 = !{!4016, !1087, i64 0}
!4031 = !DILocation(line: 850, column: 20, scope: !4028)
!4032 = !DILocation(line: 851, column: 5, scope: !4028)
!4033 = !DILocation(line: 852, column: 10, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4000, file: !306, line: 852, column: 7)
!4035 = !DILocation(line: 852, column: 7, scope: !4000)
!4036 = !DILocation(line: 854, column: 13, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4034, file: !306, line: 853, column: 5)
!4038 = !DILocation(line: 854, column: 7, scope: !4037)
!4039 = !DILocation(line: 855, column: 15, scope: !4037)
!4040 = !DILocation(line: 856, column: 5, scope: !4037)
!4041 = !DILocation(line: 857, column: 10, scope: !4000)
!4042 = !DILocation(line: 858, column: 1, scope: !4000)
!4043 = distinct !DISubprogram(name: "quotearg_n", scope: !306, file: !306, line: 922, type: !4044, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!58, !70, !68}
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "n", arg: 1, scope: !4043, file: !306, line: 922, type: !70)
!4048 = !DILocalVariable(name: "arg", arg: 2, scope: !4043, file: !306, line: 922, type: !68)
!4049 = !DILocation(line: 922, column: 17, scope: !4043)
!4050 = !DILocation(line: 922, column: 32, scope: !4043)
!4051 = !DILocation(line: 924, column: 10, scope: !4043)
!4052 = !DILocation(line: 924, column: 3, scope: !4043)
!4053 = distinct !DISubprogram(name: "quotearg_n_options", scope: !306, file: !306, line: 869, type: !4054, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!58, !70, !68, !61, !2753}
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063, !4066, !4068, !4069, !4070}
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4053, file: !306, line: 869, type: !70)
!4058 = !DILocalVariable(name: "arg", arg: 2, scope: !4053, file: !306, line: 869, type: !68)
!4059 = !DILocalVariable(name: "argsize", arg: 3, scope: !4053, file: !306, line: 869, type: !61)
!4060 = !DILocalVariable(name: "options", arg: 4, scope: !4053, file: !306, line: 870, type: !2753)
!4061 = !DILocalVariable(name: "e", scope: !4053, file: !306, line: 872, type: !70)
!4062 = !DILocalVariable(name: "sv", scope: !4053, file: !306, line: 874, type: !332)
!4063 = !DILocalVariable(name: "preallocated", scope: !4064, file: !306, line: 881, type: !76)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !306, line: 880, column: 5)
!4065 = distinct !DILexicalBlock(scope: !4053, file: !306, line: 879, column: 7)
!4066 = !DILocalVariable(name: "size", scope: !4067, file: !306, line: 894, type: !61)
!4067 = distinct !DILexicalBlock(scope: !4053, file: !306, line: 893, column: 3)
!4068 = !DILocalVariable(name: "val", scope: !4067, file: !306, line: 895, type: !58)
!4069 = !DILocalVariable(name: "flags", scope: !4067, file: !306, line: 897, type: !70)
!4070 = !DILocalVariable(name: "qsize", scope: !4067, file: !306, line: 898, type: !61)
!4071 = !DILocation(line: 869, column: 25, scope: !4053)
!4072 = !DILocation(line: 869, column: 40, scope: !4053)
!4073 = !DILocation(line: 869, column: 52, scope: !4053)
!4074 = !DILocation(line: 870, column: 51, scope: !4053)
!4075 = !DILocation(line: 872, column: 11, scope: !4053)
!4076 = !DILocation(line: 872, column: 7, scope: !4053)
!4077 = !DILocation(line: 874, column: 24, scope: !4053)
!4078 = !DILocation(line: 874, column: 19, scope: !4053)
!4079 = !DILocation(line: 876, column: 9, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4053, file: !306, line: 876, column: 7)
!4081 = !DILocation(line: 876, column: 7, scope: !4053)
!4082 = !DILocation(line: 877, column: 5, scope: !4080)
!4083 = !DILocation(line: 879, column: 7, scope: !4065)
!4084 = !DILocation(line: 879, column: 14, scope: !4065)
!4085 = !DILocation(line: 879, column: 7, scope: !4053)
!4086 = !DILocation(line: 881, column: 31, scope: !4064)
!4087 = !DILocation(line: 883, column: 67, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4064, file: !306, line: 883, column: 11)
!4089 = !DILocation(line: 883, column: 11, scope: !4064)
!4090 = !DILocation(line: 884, column: 9, scope: !4088)
!4091 = !DILocation(line: 886, column: 32, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4064, file: !306, discriminator: 3)
!4093 = !DILocation(line: 886, column: 61, scope: !4092)
!4094 = !DILocation(line: 886, column: 58, scope: !4092)
!4095 = !DILocation(line: 886, column: 66, scope: !4092)
!4096 = !DILocation(line: 886, column: 22, scope: !4092)
!4097 = !DILocation(line: 886, column: 15, scope: !4092)
!4098 = !DILocation(line: 887, column: 11, scope: !4064)
!4099 = !DILocation(line: 888, column: 15, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4064, file: !306, line: 887, column: 11)
!4101 = !{i64 0, i64 8, !1086, i64 8, i64 8, !804}
!4102 = !DILocation(line: 888, column: 9, scope: !4100)
!4103 = !DILocation(line: 889, column: 20, scope: !4064)
!4104 = !DILocation(line: 889, column: 18, scope: !4064)
!4105 = !DILocation(line: 889, column: 7, scope: !4064)
!4106 = !DILocation(line: 889, column: 38, scope: !4064)
!4107 = !DILocation(line: 889, column: 31, scope: !4064)
!4108 = !DILocation(line: 889, column: 48, scope: !4064)
!4109 = !DILocation(line: 890, column: 14, scope: !4064)
!4110 = !DILocation(line: 891, column: 5, scope: !4064)
!4111 = !DILocation(line: 894, column: 19, scope: !4067)
!4112 = !DILocation(line: 894, column: 25, scope: !4067)
!4113 = !DILocation(line: 894, column: 12, scope: !4067)
!4114 = !DILocation(line: 895, column: 23, scope: !4067)
!4115 = !DILocation(line: 895, column: 11, scope: !4067)
!4116 = !DILocation(line: 897, column: 26, scope: !4067)
!4117 = !DILocation(line: 897, column: 32, scope: !4067)
!4118 = !DILocation(line: 897, column: 9, scope: !4067)
!4119 = !DILocation(line: 899, column: 55, scope: !4067)
!4120 = !DILocation(line: 900, column: 46, scope: !4067)
!4121 = !DILocation(line: 901, column: 55, scope: !4067)
!4122 = !DILocation(line: 902, column: 55, scope: !4067)
!4123 = !DILocation(line: 898, column: 20, scope: !4067)
!4124 = !DILocation(line: 898, column: 12, scope: !4067)
!4125 = !DILocation(line: 904, column: 14, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4067, file: !306, line: 904, column: 9)
!4127 = !DILocation(line: 904, column: 9, scope: !4067)
!4128 = !DILocation(line: 906, column: 35, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !306, line: 905, column: 7)
!4130 = !DILocation(line: 906, column: 20, scope: !4129)
!4131 = !DILocation(line: 907, column: 17, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !306, line: 907, column: 13)
!4133 = !DILocation(line: 907, column: 13, scope: !4129)
!4134 = !DILocation(line: 908, column: 11, scope: !4132)
!4135 = !DILocation(line: 220, column: 20, scope: !3953, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 909, column: 27, scope: !4129)
!4137 = !DILocation(line: 222, column: 10, scope: !3953, inlinedAt: !4136)
!4138 = !DILocation(line: 909, column: 19, scope: !4129)
!4139 = !DILocation(line: 910, column: 69, scope: !4129)
!4140 = !DILocation(line: 912, column: 44, scope: !4129)
!4141 = !DILocation(line: 913, column: 44, scope: !4129)
!4142 = !DILocation(line: 910, column: 9, scope: !4129)
!4143 = !DILocation(line: 914, column: 7, scope: !4129)
!4144 = !DILocation(line: 916, column: 11, scope: !4067)
!4145 = !DILocation(line: 917, column: 5, scope: !4067)
!4146 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !306, file: !306, line: 928, type: !4147, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!58, !70, !68, !61}
!4149 = !{!4150, !4151, !4152}
!4150 = !DILocalVariable(name: "n", arg: 1, scope: !4146, file: !306, line: 928, type: !70)
!4151 = !DILocalVariable(name: "arg", arg: 2, scope: !4146, file: !306, line: 928, type: !68)
!4152 = !DILocalVariable(name: "argsize", arg: 3, scope: !4146, file: !306, line: 928, type: !61)
!4153 = !DILocation(line: 928, column: 21, scope: !4146)
!4154 = !DILocation(line: 928, column: 36, scope: !4146)
!4155 = !DILocation(line: 928, column: 48, scope: !4146)
!4156 = !DILocation(line: 930, column: 10, scope: !4146)
!4157 = !DILocation(line: 930, column: 3, scope: !4146)
!4158 = distinct !DISubprogram(name: "quotearg", scope: !306, file: !306, line: 934, type: !4159, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!58, !68}
!4161 = !{!4162}
!4162 = !DILocalVariable(name: "arg", arg: 1, scope: !4158, file: !306, line: 934, type: !68)
!4163 = !DILocation(line: 934, column: 23, scope: !4158)
!4164 = !DILocation(line: 922, column: 17, scope: !4043, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 936, column: 10, scope: !4158)
!4166 = !DILocation(line: 922, column: 32, scope: !4043, inlinedAt: !4165)
!4167 = !DILocation(line: 924, column: 10, scope: !4043, inlinedAt: !4165)
!4168 = !DILocation(line: 936, column: 3, scope: !4158)
!4169 = distinct !DISubprogram(name: "quotearg_mem", scope: !306, file: !306, line: 940, type: !4170, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!58, !68, !61}
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "arg", arg: 1, scope: !4169, file: !306, line: 940, type: !68)
!4174 = !DILocalVariable(name: "argsize", arg: 2, scope: !4169, file: !306, line: 940, type: !61)
!4175 = !DILocation(line: 940, column: 27, scope: !4169)
!4176 = !DILocation(line: 940, column: 39, scope: !4169)
!4177 = !DILocation(line: 928, column: 21, scope: !4146, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 942, column: 10, scope: !4169)
!4179 = !DILocation(line: 928, column: 36, scope: !4146, inlinedAt: !4178)
!4180 = !DILocation(line: 928, column: 48, scope: !4146, inlinedAt: !4178)
!4181 = !DILocation(line: 930, column: 10, scope: !4146, inlinedAt: !4178)
!4182 = !DILocation(line: 942, column: 3, scope: !4169)
!4183 = distinct !DISubprogram(name: "quotearg_n_style", scope: !306, file: !306, line: 946, type: !4184, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4186)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!58, !70, !5, !68}
!4186 = !{!4187, !4188, !4189, !4190}
!4187 = !DILocalVariable(name: "n", arg: 1, scope: !4183, file: !306, line: 946, type: !70)
!4188 = !DILocalVariable(name: "s", arg: 2, scope: !4183, file: !306, line: 946, type: !5)
!4189 = !DILocalVariable(name: "arg", arg: 3, scope: !4183, file: !306, line: 946, type: !68)
!4190 = !DILocalVariable(name: "o", scope: !4183, file: !306, line: 948, type: !2754)
!4191 = !DILocalVariable(name: "o", scope: !4192, file: !306, line: 187, type: !313)
!4192 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !306, file: !306, line: 185, type: !4193, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!313, !5}
!4195 = !{!4196, !4191}
!4196 = !DILocalVariable(name: "style", arg: 1, scope: !4192, file: !306, line: 185, type: !5)
!4197 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4198 = !DILocation(line: 187, column: 26, scope: !4192, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 948, column: 36, scope: !4183)
!4200 = !DILocation(line: 946, column: 23, scope: !4183)
!4201 = !DILocation(line: 946, column: 45, scope: !4183)
!4202 = !DILocation(line: 946, column: 60, scope: !4183)
!4203 = !DILocation(line: 948, column: 3, scope: !4183)
!4204 = !DILocation(line: 948, column: 32, scope: !4183)
!4205 = !DILocation(line: 185, column: 48, scope: !4192, inlinedAt: !4199)
!4206 = !DILocation(line: 187, column: 3, scope: !4192, inlinedAt: !4199)
!4207 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4208 = !DILocation(line: 188, column: 13, scope: !4209, inlinedAt: !4199)
!4209 = distinct !DILexicalBlock(scope: !4192, file: !306, line: 188, column: 7)
!4210 = !DILocation(line: 188, column: 7, scope: !4192, inlinedAt: !4199)
!4211 = !DILocation(line: 189, column: 5, scope: !4209, inlinedAt: !4199)
!4212 = !{!4213}
!4213 = distinct !{!4213, !4214, !"quoting_options_from_style: argument 0"}
!4214 = distinct !{!4214, !"quoting_options_from_style"}
!4215 = !DILocation(line: 191, column: 10, scope: !4192, inlinedAt: !4199)
!4216 = !DILocation(line: 192, column: 1, scope: !4192, inlinedAt: !4199)
!4217 = !DILocation(line: 949, column: 10, scope: !4183)
!4218 = !DILocation(line: 950, column: 1, scope: !4183)
!4219 = !DILocation(line: 949, column: 3, scope: !4183)
!4220 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !306, file: !306, line: 953, type: !4221, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!58, !70, !5, !68, !61}
!4223 = !{!4224, !4225, !4226, !4227, !4228}
!4224 = !DILocalVariable(name: "n", arg: 1, scope: !4220, file: !306, line: 953, type: !70)
!4225 = !DILocalVariable(name: "s", arg: 2, scope: !4220, file: !306, line: 953, type: !5)
!4226 = !DILocalVariable(name: "arg", arg: 3, scope: !4220, file: !306, line: 954, type: !68)
!4227 = !DILocalVariable(name: "argsize", arg: 4, scope: !4220, file: !306, line: 954, type: !61)
!4228 = !DILocalVariable(name: "o", scope: !4220, file: !306, line: 956, type: !2754)
!4229 = !DILocation(line: 187, column: 26, scope: !4192, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 956, column: 36, scope: !4220)
!4231 = !DILocation(line: 953, column: 27, scope: !4220)
!4232 = !DILocation(line: 953, column: 49, scope: !4220)
!4233 = !DILocation(line: 954, column: 35, scope: !4220)
!4234 = !DILocation(line: 954, column: 47, scope: !4220)
!4235 = !DILocation(line: 956, column: 3, scope: !4220)
!4236 = !DILocation(line: 956, column: 32, scope: !4220)
!4237 = !DILocation(line: 185, column: 48, scope: !4192, inlinedAt: !4230)
!4238 = !DILocation(line: 187, column: 3, scope: !4192, inlinedAt: !4230)
!4239 = !DILocation(line: 188, column: 13, scope: !4209, inlinedAt: !4230)
!4240 = !DILocation(line: 188, column: 7, scope: !4192, inlinedAt: !4230)
!4241 = !DILocation(line: 189, column: 5, scope: !4209, inlinedAt: !4230)
!4242 = !{!4243}
!4243 = distinct !{!4243, !4244, !"quoting_options_from_style: argument 0"}
!4244 = distinct !{!4244, !"quoting_options_from_style"}
!4245 = !DILocation(line: 191, column: 10, scope: !4192, inlinedAt: !4230)
!4246 = !DILocation(line: 192, column: 1, scope: !4192, inlinedAt: !4230)
!4247 = !DILocation(line: 957, column: 10, scope: !4220)
!4248 = !DILocation(line: 958, column: 1, scope: !4220)
!4249 = !DILocation(line: 957, column: 3, scope: !4220)
!4250 = distinct !DISubprogram(name: "quotearg_style", scope: !306, file: !306, line: 961, type: !4251, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!58, !5, !68}
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "s", arg: 1, scope: !4250, file: !306, line: 961, type: !5)
!4255 = !DILocalVariable(name: "arg", arg: 2, scope: !4250, file: !306, line: 961, type: !68)
!4256 = !DILocation(line: 187, column: 26, scope: !4192, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 948, column: 36, scope: !4183, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 963, column: 10, scope: !4250)
!4259 = !DILocation(line: 961, column: 36, scope: !4250)
!4260 = !DILocation(line: 961, column: 51, scope: !4250)
!4261 = !DILocation(line: 946, column: 23, scope: !4183, inlinedAt: !4258)
!4262 = !DILocation(line: 946, column: 45, scope: !4183, inlinedAt: !4258)
!4263 = !DILocation(line: 946, column: 60, scope: !4183, inlinedAt: !4258)
!4264 = !DILocation(line: 948, column: 3, scope: !4183, inlinedAt: !4258)
!4265 = !DILocation(line: 948, column: 32, scope: !4183, inlinedAt: !4258)
!4266 = !DILocation(line: 185, column: 48, scope: !4192, inlinedAt: !4257)
!4267 = !DILocation(line: 187, column: 3, scope: !4192, inlinedAt: !4257)
!4268 = !DILocation(line: 188, column: 13, scope: !4209, inlinedAt: !4257)
!4269 = !DILocation(line: 188, column: 7, scope: !4192, inlinedAt: !4257)
!4270 = !DILocation(line: 189, column: 5, scope: !4209, inlinedAt: !4257)
!4271 = !{!4272}
!4272 = distinct !{!4272, !4273, !"quoting_options_from_style: argument 0"}
!4273 = distinct !{!4273, !"quoting_options_from_style"}
!4274 = !DILocation(line: 191, column: 10, scope: !4192, inlinedAt: !4257)
!4275 = !DILocation(line: 192, column: 1, scope: !4192, inlinedAt: !4257)
!4276 = !DILocation(line: 949, column: 10, scope: !4183, inlinedAt: !4258)
!4277 = !DILocation(line: 950, column: 1, scope: !4183, inlinedAt: !4258)
!4278 = !DILocation(line: 963, column: 3, scope: !4250)
!4279 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !306, file: !306, line: 967, type: !4280, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!58, !5, !68, !61}
!4282 = !{!4283, !4284, !4285}
!4283 = !DILocalVariable(name: "s", arg: 1, scope: !4279, file: !306, line: 967, type: !5)
!4284 = !DILocalVariable(name: "arg", arg: 2, scope: !4279, file: !306, line: 967, type: !68)
!4285 = !DILocalVariable(name: "argsize", arg: 3, scope: !4279, file: !306, line: 967, type: !61)
!4286 = !DILocation(line: 187, column: 26, scope: !4192, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 956, column: 36, scope: !4220, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 969, column: 10, scope: !4279)
!4289 = !DILocation(line: 967, column: 40, scope: !4279)
!4290 = !DILocation(line: 967, column: 55, scope: !4279)
!4291 = !DILocation(line: 967, column: 67, scope: !4279)
!4292 = !DILocation(line: 953, column: 27, scope: !4220, inlinedAt: !4288)
!4293 = !DILocation(line: 953, column: 49, scope: !4220, inlinedAt: !4288)
!4294 = !DILocation(line: 954, column: 35, scope: !4220, inlinedAt: !4288)
!4295 = !DILocation(line: 954, column: 47, scope: !4220, inlinedAt: !4288)
!4296 = !DILocation(line: 956, column: 3, scope: !4220, inlinedAt: !4288)
!4297 = !DILocation(line: 956, column: 32, scope: !4220, inlinedAt: !4288)
!4298 = !DILocation(line: 185, column: 48, scope: !4192, inlinedAt: !4287)
!4299 = !DILocation(line: 187, column: 3, scope: !4192, inlinedAt: !4287)
!4300 = !DILocation(line: 188, column: 13, scope: !4209, inlinedAt: !4287)
!4301 = !DILocation(line: 188, column: 7, scope: !4192, inlinedAt: !4287)
!4302 = !DILocation(line: 189, column: 5, scope: !4209, inlinedAt: !4287)
!4303 = !{!4304}
!4304 = distinct !{!4304, !4305, !"quoting_options_from_style: argument 0"}
!4305 = distinct !{!4305, !"quoting_options_from_style"}
!4306 = !DILocation(line: 191, column: 10, scope: !4192, inlinedAt: !4287)
!4307 = !DILocation(line: 192, column: 1, scope: !4192, inlinedAt: !4287)
!4308 = !DILocation(line: 957, column: 10, scope: !4220, inlinedAt: !4288)
!4309 = !DILocation(line: 958, column: 1, scope: !4220, inlinedAt: !4288)
!4310 = !DILocation(line: 969, column: 3, scope: !4279)
!4311 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !306, file: !306, line: 973, type: !4312, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!58, !68, !61, !59}
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "arg", arg: 1, scope: !4311, file: !306, line: 973, type: !68)
!4316 = !DILocalVariable(name: "argsize", arg: 2, scope: !4311, file: !306, line: 973, type: !61)
!4317 = !DILocalVariable(name: "ch", arg: 3, scope: !4311, file: !306, line: 973, type: !59)
!4318 = !DILocalVariable(name: "options", scope: !4311, file: !306, line: 975, type: !313)
!4319 = !DILocation(line: 973, column: 32, scope: !4311)
!4320 = !DILocation(line: 973, column: 44, scope: !4311)
!4321 = !DILocation(line: 973, column: 58, scope: !4311)
!4322 = !DILocation(line: 975, column: 3, scope: !4311)
!4323 = !DILocation(line: 976, column: 13, scope: !4311)
!4324 = !{i64 0, i64 4, !1051, i64 4, i64 4, !1015, i64 8, i64 32, !1051, i64 40, i64 8, !804, i64 48, i64 8, !804}
!4325 = !DILocation(line: 975, column: 26, scope: !4311)
!4326 = !DILocation(line: 144, column: 43, scope: !2777, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 977, column: 3, scope: !4311)
!4328 = !DILocation(line: 144, column: 51, scope: !2777, inlinedAt: !4327)
!4329 = !DILocation(line: 144, column: 58, scope: !2777, inlinedAt: !4327)
!4330 = !DILocation(line: 146, column: 17, scope: !2777, inlinedAt: !4327)
!4331 = !DILocation(line: 148, column: 62, scope: !2795, inlinedAt: !4327)
!4332 = !DILocation(line: 148, column: 57, scope: !2795, inlinedAt: !4327)
!4333 = !DILocation(line: 147, column: 17, scope: !2777, inlinedAt: !4327)
!4334 = !DILocation(line: 149, column: 18, scope: !2777, inlinedAt: !4327)
!4335 = !DILocation(line: 149, column: 15, scope: !2777, inlinedAt: !4327)
!4336 = !DILocation(line: 149, column: 7, scope: !2777, inlinedAt: !4327)
!4337 = !DILocation(line: 150, column: 12, scope: !2777, inlinedAt: !4327)
!4338 = !DILocation(line: 150, column: 15, scope: !2777, inlinedAt: !4327)
!4339 = !DILocation(line: 150, column: 25, scope: !2777, inlinedAt: !4327)
!4340 = !DILocation(line: 150, column: 7, scope: !2777, inlinedAt: !4327)
!4341 = !DILocation(line: 151, column: 18, scope: !2777, inlinedAt: !4327)
!4342 = !DILocation(line: 151, column: 23, scope: !2777, inlinedAt: !4327)
!4343 = !DILocation(line: 151, column: 6, scope: !2777, inlinedAt: !4327)
!4344 = !DILocation(line: 978, column: 10, scope: !4311)
!4345 = !DILocation(line: 979, column: 1, scope: !4311)
!4346 = !DILocation(line: 978, column: 3, scope: !4311)
!4347 = distinct !DISubprogram(name: "quotearg_char", scope: !306, file: !306, line: 982, type: !4348, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!58, !68, !59}
!4350 = !{!4351, !4352}
!4351 = !DILocalVariable(name: "arg", arg: 1, scope: !4347, file: !306, line: 982, type: !68)
!4352 = !DILocalVariable(name: "ch", arg: 2, scope: !4347, file: !306, line: 982, type: !59)
!4353 = !DILocation(line: 982, column: 28, scope: !4347)
!4354 = !DILocation(line: 982, column: 38, scope: !4347)
!4355 = !DILocation(line: 973, column: 32, scope: !4311, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 984, column: 10, scope: !4347)
!4357 = !DILocation(line: 973, column: 44, scope: !4311, inlinedAt: !4356)
!4358 = !DILocation(line: 973, column: 58, scope: !4311, inlinedAt: !4356)
!4359 = !DILocation(line: 975, column: 3, scope: !4311, inlinedAt: !4356)
!4360 = !DILocation(line: 976, column: 13, scope: !4311, inlinedAt: !4356)
!4361 = !DILocation(line: 975, column: 26, scope: !4311, inlinedAt: !4356)
!4362 = !DILocation(line: 144, column: 43, scope: !2777, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 977, column: 3, scope: !4311, inlinedAt: !4356)
!4364 = !DILocation(line: 144, column: 51, scope: !2777, inlinedAt: !4363)
!4365 = !DILocation(line: 144, column: 58, scope: !2777, inlinedAt: !4363)
!4366 = !DILocation(line: 146, column: 17, scope: !2777, inlinedAt: !4363)
!4367 = !DILocation(line: 148, column: 62, scope: !2795, inlinedAt: !4363)
!4368 = !DILocation(line: 148, column: 57, scope: !2795, inlinedAt: !4363)
!4369 = !DILocation(line: 147, column: 17, scope: !2777, inlinedAt: !4363)
!4370 = !DILocation(line: 149, column: 18, scope: !2777, inlinedAt: !4363)
!4371 = !DILocation(line: 149, column: 15, scope: !2777, inlinedAt: !4363)
!4372 = !DILocation(line: 149, column: 7, scope: !2777, inlinedAt: !4363)
!4373 = !DILocation(line: 150, column: 12, scope: !2777, inlinedAt: !4363)
!4374 = !DILocation(line: 150, column: 15, scope: !2777, inlinedAt: !4363)
!4375 = !DILocation(line: 150, column: 25, scope: !2777, inlinedAt: !4363)
!4376 = !DILocation(line: 150, column: 7, scope: !2777, inlinedAt: !4363)
!4377 = !DILocation(line: 151, column: 18, scope: !2777, inlinedAt: !4363)
!4378 = !DILocation(line: 151, column: 23, scope: !2777, inlinedAt: !4363)
!4379 = !DILocation(line: 151, column: 6, scope: !2777, inlinedAt: !4363)
!4380 = !DILocation(line: 978, column: 10, scope: !4311, inlinedAt: !4356)
!4381 = !DILocation(line: 979, column: 1, scope: !4311, inlinedAt: !4356)
!4382 = !DILocation(line: 984, column: 3, scope: !4347)
!4383 = distinct !DISubprogram(name: "quotearg_colon", scope: !306, file: !306, line: 988, type: !4159, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4384)
!4384 = !{!4385}
!4385 = !DILocalVariable(name: "arg", arg: 1, scope: !4383, file: !306, line: 988, type: !68)
!4386 = !DILocation(line: 988, column: 29, scope: !4383)
!4387 = !DILocation(line: 982, column: 28, scope: !4347, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 990, column: 10, scope: !4383)
!4389 = !DILocation(line: 982, column: 38, scope: !4347, inlinedAt: !4388)
!4390 = !DILocation(line: 973, column: 32, scope: !4311, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 984, column: 10, scope: !4347, inlinedAt: !4388)
!4392 = !DILocation(line: 973, column: 44, scope: !4311, inlinedAt: !4391)
!4393 = !DILocation(line: 973, column: 58, scope: !4311, inlinedAt: !4391)
!4394 = !DILocation(line: 975, column: 3, scope: !4311, inlinedAt: !4391)
!4395 = !DILocation(line: 976, column: 13, scope: !4311, inlinedAt: !4391)
!4396 = !DILocation(line: 975, column: 26, scope: !4311, inlinedAt: !4391)
!4397 = !DILocation(line: 144, column: 43, scope: !2777, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 977, column: 3, scope: !4311, inlinedAt: !4391)
!4399 = !DILocation(line: 144, column: 51, scope: !2777, inlinedAt: !4398)
!4400 = !DILocation(line: 144, column: 58, scope: !2777, inlinedAt: !4398)
!4401 = !DILocation(line: 146, column: 17, scope: !2777, inlinedAt: !4398)
!4402 = !DILocation(line: 148, column: 57, scope: !2795, inlinedAt: !4398)
!4403 = !DILocation(line: 147, column: 17, scope: !2777, inlinedAt: !4398)
!4404 = !DILocation(line: 149, column: 7, scope: !2777, inlinedAt: !4398)
!4405 = !DILocation(line: 150, column: 12, scope: !2777, inlinedAt: !4398)
!4406 = !DILocation(line: 151, column: 6, scope: !2777, inlinedAt: !4398)
!4407 = !DILocation(line: 978, column: 10, scope: !4311, inlinedAt: !4391)
!4408 = !DILocation(line: 979, column: 1, scope: !4311, inlinedAt: !4391)
!4409 = !DILocation(line: 990, column: 3, scope: !4383)
!4410 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !306, file: !306, line: 994, type: !4170, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4411)
!4411 = !{!4412, !4413}
!4412 = !DILocalVariable(name: "arg", arg: 1, scope: !4410, file: !306, line: 994, type: !68)
!4413 = !DILocalVariable(name: "argsize", arg: 2, scope: !4410, file: !306, line: 994, type: !61)
!4414 = !DILocation(line: 994, column: 33, scope: !4410)
!4415 = !DILocation(line: 994, column: 45, scope: !4410)
!4416 = !DILocation(line: 973, column: 32, scope: !4311, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 996, column: 10, scope: !4410)
!4418 = !DILocation(line: 973, column: 44, scope: !4311, inlinedAt: !4417)
!4419 = !DILocation(line: 973, column: 58, scope: !4311, inlinedAt: !4417)
!4420 = !DILocation(line: 975, column: 3, scope: !4311, inlinedAt: !4417)
!4421 = !DILocation(line: 976, column: 13, scope: !4311, inlinedAt: !4417)
!4422 = !DILocation(line: 975, column: 26, scope: !4311, inlinedAt: !4417)
!4423 = !DILocation(line: 144, column: 43, scope: !2777, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 977, column: 3, scope: !4311, inlinedAt: !4417)
!4425 = !DILocation(line: 144, column: 51, scope: !2777, inlinedAt: !4424)
!4426 = !DILocation(line: 144, column: 58, scope: !2777, inlinedAt: !4424)
!4427 = !DILocation(line: 146, column: 17, scope: !2777, inlinedAt: !4424)
!4428 = !DILocation(line: 148, column: 57, scope: !2795, inlinedAt: !4424)
!4429 = !DILocation(line: 147, column: 17, scope: !2777, inlinedAt: !4424)
!4430 = !DILocation(line: 149, column: 7, scope: !2777, inlinedAt: !4424)
!4431 = !DILocation(line: 150, column: 12, scope: !2777, inlinedAt: !4424)
!4432 = !DILocation(line: 151, column: 6, scope: !2777, inlinedAt: !4424)
!4433 = !DILocation(line: 978, column: 10, scope: !4311, inlinedAt: !4417)
!4434 = !DILocation(line: 979, column: 1, scope: !4311, inlinedAt: !4417)
!4435 = !DILocation(line: 996, column: 3, scope: !4410)
!4436 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !306, file: !306, line: 1000, type: !4184, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4437)
!4437 = !{!4438, !4439, !4440, !4441}
!4438 = !DILocalVariable(name: "n", arg: 1, scope: !4436, file: !306, line: 1000, type: !70)
!4439 = !DILocalVariable(name: "s", arg: 2, scope: !4436, file: !306, line: 1000, type: !5)
!4440 = !DILocalVariable(name: "arg", arg: 3, scope: !4436, file: !306, line: 1000, type: !68)
!4441 = !DILocalVariable(name: "options", scope: !4436, file: !306, line: 1002, type: !313)
!4442 = !DILocation(line: 187, column: 26, scope: !4192, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 1003, column: 13, scope: !4436)
!4444 = !DILocation(line: 1000, column: 29, scope: !4436)
!4445 = !DILocation(line: 1000, column: 51, scope: !4436)
!4446 = !DILocation(line: 1000, column: 66, scope: !4436)
!4447 = !DILocation(line: 1002, column: 3, scope: !4436)
!4448 = !DILocation(line: 185, column: 48, scope: !4192, inlinedAt: !4443)
!4449 = !DILocation(line: 187, column: 3, scope: !4192, inlinedAt: !4443)
!4450 = !DILocation(line: 188, column: 13, scope: !4209, inlinedAt: !4443)
!4451 = !DILocation(line: 188, column: 7, scope: !4192, inlinedAt: !4443)
!4452 = !DILocation(line: 189, column: 5, scope: !4209, inlinedAt: !4443)
!4453 = !{!4454}
!4454 = distinct !{!4454, !4455, !"quoting_options_from_style: argument 0"}
!4455 = distinct !{!4455, !"quoting_options_from_style"}
!4456 = !DILocation(line: 191, column: 10, scope: !4192, inlinedAt: !4443)
!4457 = !DILocation(line: 192, column: 1, scope: !4192, inlinedAt: !4443)
!4458 = !DILocation(line: 1003, column: 13, scope: !4436)
!4459 = !DILocation(line: 1002, column: 26, scope: !4436)
!4460 = !DILocation(line: 144, column: 43, scope: !2777, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 1004, column: 3, scope: !4436)
!4462 = !DILocation(line: 144, column: 51, scope: !2777, inlinedAt: !4461)
!4463 = !DILocation(line: 144, column: 58, scope: !2777, inlinedAt: !4461)
!4464 = !DILocation(line: 146, column: 17, scope: !2777, inlinedAt: !4461)
!4465 = !DILocation(line: 148, column: 57, scope: !2795, inlinedAt: !4461)
!4466 = !DILocation(line: 147, column: 17, scope: !2777, inlinedAt: !4461)
!4467 = !DILocation(line: 149, column: 7, scope: !2777, inlinedAt: !4461)
!4468 = !DILocation(line: 150, column: 12, scope: !2777, inlinedAt: !4461)
!4469 = !DILocation(line: 151, column: 6, scope: !2777, inlinedAt: !4461)
!4470 = !DILocation(line: 1005, column: 10, scope: !4436)
!4471 = !DILocation(line: 1006, column: 1, scope: !4436)
!4472 = !DILocation(line: 1005, column: 3, scope: !4436)
!4473 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !306, file: !306, line: 1009, type: !4474, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!58, !70, !68, !68, !68}
!4476 = !{!4477, !4478, !4479, !4480}
!4477 = !DILocalVariable(name: "n", arg: 1, scope: !4473, file: !306, line: 1009, type: !70)
!4478 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4473, file: !306, line: 1009, type: !68)
!4479 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4473, file: !306, line: 1010, type: !68)
!4480 = !DILocalVariable(name: "arg", arg: 4, scope: !4473, file: !306, line: 1010, type: !68)
!4481 = !DILocation(line: 1009, column: 24, scope: !4473)
!4482 = !DILocation(line: 1009, column: 39, scope: !4473)
!4483 = !DILocation(line: 1010, column: 32, scope: !4473)
!4484 = !DILocation(line: 1010, column: 57, scope: !4473)
!4485 = !DILocalVariable(name: "n", arg: 1, scope: !4486, file: !306, line: 1017, type: !70)
!4486 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !306, file: !306, line: 1017, type: !4487, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!58, !70, !68, !68, !68, !61}
!4489 = !{!4485, !4490, !4491, !4492, !4493, !4494}
!4490 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4486, file: !306, line: 1017, type: !68)
!4491 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4486, file: !306, line: 1018, type: !68)
!4492 = !DILocalVariable(name: "arg", arg: 4, scope: !4486, file: !306, line: 1019, type: !68)
!4493 = !DILocalVariable(name: "argsize", arg: 5, scope: !4486, file: !306, line: 1019, type: !61)
!4494 = !DILocalVariable(name: "o", scope: !4486, file: !306, line: 1021, type: !313)
!4495 = !DILocation(line: 1017, column: 28, scope: !4486, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 1012, column: 10, scope: !4473)
!4497 = !DILocation(line: 1017, column: 43, scope: !4486, inlinedAt: !4496)
!4498 = !DILocation(line: 1018, column: 36, scope: !4486, inlinedAt: !4496)
!4499 = !DILocation(line: 1019, column: 36, scope: !4486, inlinedAt: !4496)
!4500 = !DILocation(line: 1019, column: 48, scope: !4486, inlinedAt: !4496)
!4501 = !DILocation(line: 1021, column: 3, scope: !4486, inlinedAt: !4496)
!4502 = !DILocation(line: 1021, column: 30, scope: !4486, inlinedAt: !4496)
!4503 = !DILocation(line: 1021, column: 26, scope: !4486, inlinedAt: !4496)
!4504 = !DILocation(line: 171, column: 45, scope: !2827, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 1022, column: 3, scope: !4486, inlinedAt: !4496)
!4506 = !DILocation(line: 172, column: 33, scope: !2827, inlinedAt: !4505)
!4507 = !DILocation(line: 172, column: 57, scope: !2827, inlinedAt: !4505)
!4508 = !DILocation(line: 176, column: 6, scope: !2827, inlinedAt: !4505)
!4509 = !DILocation(line: 176, column: 12, scope: !2827, inlinedAt: !4505)
!4510 = !DILocation(line: 177, column: 8, scope: !2843, inlinedAt: !4505)
!4511 = !DILocation(line: 177, column: 23, scope: !2845, inlinedAt: !4505)
!4512 = !DILocation(line: 177, column: 19, scope: !2843, inlinedAt: !4505)
!4513 = !DILocation(line: 178, column: 5, scope: !2843, inlinedAt: !4505)
!4514 = !DILocation(line: 179, column: 6, scope: !2827, inlinedAt: !4505)
!4515 = !DILocation(line: 179, column: 17, scope: !2827, inlinedAt: !4505)
!4516 = !DILocation(line: 180, column: 6, scope: !2827, inlinedAt: !4505)
!4517 = !DILocation(line: 180, column: 18, scope: !2827, inlinedAt: !4505)
!4518 = !DILocation(line: 1023, column: 10, scope: !4486, inlinedAt: !4496)
!4519 = !DILocation(line: 1024, column: 1, scope: !4486, inlinedAt: !4496)
!4520 = !DILocation(line: 1012, column: 3, scope: !4473)
!4521 = !DILocation(line: 1017, column: 28, scope: !4486)
!4522 = !DILocation(line: 1017, column: 43, scope: !4486)
!4523 = !DILocation(line: 1018, column: 36, scope: !4486)
!4524 = !DILocation(line: 1019, column: 36, scope: !4486)
!4525 = !DILocation(line: 1019, column: 48, scope: !4486)
!4526 = !DILocation(line: 1021, column: 3, scope: !4486)
!4527 = !DILocation(line: 1021, column: 30, scope: !4486)
!4528 = !DILocation(line: 1021, column: 26, scope: !4486)
!4529 = !DILocation(line: 171, column: 45, scope: !2827, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 1022, column: 3, scope: !4486)
!4531 = !DILocation(line: 172, column: 33, scope: !2827, inlinedAt: !4530)
!4532 = !DILocation(line: 172, column: 57, scope: !2827, inlinedAt: !4530)
!4533 = !DILocation(line: 176, column: 6, scope: !2827, inlinedAt: !4530)
!4534 = !DILocation(line: 176, column: 12, scope: !2827, inlinedAt: !4530)
!4535 = !DILocation(line: 177, column: 8, scope: !2843, inlinedAt: !4530)
!4536 = !DILocation(line: 177, column: 23, scope: !2845, inlinedAt: !4530)
!4537 = !DILocation(line: 177, column: 19, scope: !2843, inlinedAt: !4530)
!4538 = !DILocation(line: 178, column: 5, scope: !2843, inlinedAt: !4530)
!4539 = !DILocation(line: 179, column: 6, scope: !2827, inlinedAt: !4530)
!4540 = !DILocation(line: 179, column: 17, scope: !2827, inlinedAt: !4530)
!4541 = !DILocation(line: 180, column: 6, scope: !2827, inlinedAt: !4530)
!4542 = !DILocation(line: 180, column: 18, scope: !2827, inlinedAt: !4530)
!4543 = !DILocation(line: 1023, column: 10, scope: !4486)
!4544 = !DILocation(line: 1024, column: 1, scope: !4486)
!4545 = !DILocation(line: 1023, column: 3, scope: !4486)
!4546 = distinct !DISubprogram(name: "quotearg_custom", scope: !306, file: !306, line: 1027, type: !4547, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!58, !68, !68, !68}
!4549 = !{!4550, !4551, !4552}
!4550 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4546, file: !306, line: 1027, type: !68)
!4551 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4546, file: !306, line: 1027, type: !68)
!4552 = !DILocalVariable(name: "arg", arg: 3, scope: !4546, file: !306, line: 1028, type: !68)
!4553 = !DILocation(line: 1027, column: 30, scope: !4546)
!4554 = !DILocation(line: 1027, column: 54, scope: !4546)
!4555 = !DILocation(line: 1028, column: 30, scope: !4546)
!4556 = !DILocation(line: 1009, column: 24, scope: !4473, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 1030, column: 10, scope: !4546)
!4558 = !DILocation(line: 1009, column: 39, scope: !4473, inlinedAt: !4557)
!4559 = !DILocation(line: 1010, column: 32, scope: !4473, inlinedAt: !4557)
!4560 = !DILocation(line: 1010, column: 57, scope: !4473, inlinedAt: !4557)
!4561 = !DILocation(line: 1017, column: 28, scope: !4486, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 1012, column: 10, scope: !4473, inlinedAt: !4557)
!4563 = !DILocation(line: 1017, column: 43, scope: !4486, inlinedAt: !4562)
!4564 = !DILocation(line: 1018, column: 36, scope: !4486, inlinedAt: !4562)
!4565 = !DILocation(line: 1019, column: 36, scope: !4486, inlinedAt: !4562)
!4566 = !DILocation(line: 1019, column: 48, scope: !4486, inlinedAt: !4562)
!4567 = !DILocation(line: 1021, column: 3, scope: !4486, inlinedAt: !4562)
!4568 = !DILocation(line: 1021, column: 30, scope: !4486, inlinedAt: !4562)
!4569 = !DILocation(line: 1021, column: 26, scope: !4486, inlinedAt: !4562)
!4570 = !DILocation(line: 171, column: 45, scope: !2827, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 1022, column: 3, scope: !4486, inlinedAt: !4562)
!4572 = !DILocation(line: 172, column: 33, scope: !2827, inlinedAt: !4571)
!4573 = !DILocation(line: 172, column: 57, scope: !2827, inlinedAt: !4571)
!4574 = !DILocation(line: 176, column: 6, scope: !2827, inlinedAt: !4571)
!4575 = !DILocation(line: 176, column: 12, scope: !2827, inlinedAt: !4571)
!4576 = !DILocation(line: 177, column: 8, scope: !2843, inlinedAt: !4571)
!4577 = !DILocation(line: 177, column: 23, scope: !2845, inlinedAt: !4571)
!4578 = !DILocation(line: 177, column: 19, scope: !2843, inlinedAt: !4571)
!4579 = !DILocation(line: 178, column: 5, scope: !2843, inlinedAt: !4571)
!4580 = !DILocation(line: 179, column: 6, scope: !2827, inlinedAt: !4571)
!4581 = !DILocation(line: 179, column: 17, scope: !2827, inlinedAt: !4571)
!4582 = !DILocation(line: 180, column: 6, scope: !2827, inlinedAt: !4571)
!4583 = !DILocation(line: 180, column: 18, scope: !2827, inlinedAt: !4571)
!4584 = !DILocation(line: 1023, column: 10, scope: !4486, inlinedAt: !4562)
!4585 = !DILocation(line: 1024, column: 1, scope: !4486, inlinedAt: !4562)
!4586 = !DILocation(line: 1030, column: 3, scope: !4546)
!4587 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !306, file: !306, line: 1034, type: !4588, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!58, !68, !68, !68, !61}
!4590 = !{!4591, !4592, !4593, !4594}
!4591 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4587, file: !306, line: 1034, type: !68)
!4592 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4587, file: !306, line: 1034, type: !68)
!4593 = !DILocalVariable(name: "arg", arg: 3, scope: !4587, file: !306, line: 1035, type: !68)
!4594 = !DILocalVariable(name: "argsize", arg: 4, scope: !4587, file: !306, line: 1035, type: !61)
!4595 = !DILocation(line: 1034, column: 34, scope: !4587)
!4596 = !DILocation(line: 1034, column: 58, scope: !4587)
!4597 = !DILocation(line: 1035, column: 34, scope: !4587)
!4598 = !DILocation(line: 1035, column: 46, scope: !4587)
!4599 = !DILocation(line: 1017, column: 28, scope: !4486, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 1037, column: 10, scope: !4587)
!4601 = !DILocation(line: 1017, column: 43, scope: !4486, inlinedAt: !4600)
!4602 = !DILocation(line: 1018, column: 36, scope: !4486, inlinedAt: !4600)
!4603 = !DILocation(line: 1019, column: 36, scope: !4486, inlinedAt: !4600)
!4604 = !DILocation(line: 1019, column: 48, scope: !4486, inlinedAt: !4600)
!4605 = !DILocation(line: 1021, column: 3, scope: !4486, inlinedAt: !4600)
!4606 = !DILocation(line: 1021, column: 30, scope: !4486, inlinedAt: !4600)
!4607 = !DILocation(line: 1021, column: 26, scope: !4486, inlinedAt: !4600)
!4608 = !DILocation(line: 171, column: 45, scope: !2827, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 1022, column: 3, scope: !4486, inlinedAt: !4600)
!4610 = !DILocation(line: 172, column: 33, scope: !2827, inlinedAt: !4609)
!4611 = !DILocation(line: 172, column: 57, scope: !2827, inlinedAt: !4609)
!4612 = !DILocation(line: 176, column: 6, scope: !2827, inlinedAt: !4609)
!4613 = !DILocation(line: 176, column: 12, scope: !2827, inlinedAt: !4609)
!4614 = !DILocation(line: 177, column: 8, scope: !2843, inlinedAt: !4609)
!4615 = !DILocation(line: 177, column: 23, scope: !2845, inlinedAt: !4609)
!4616 = !DILocation(line: 177, column: 19, scope: !2843, inlinedAt: !4609)
!4617 = !DILocation(line: 178, column: 5, scope: !2843, inlinedAt: !4609)
!4618 = !DILocation(line: 179, column: 6, scope: !2827, inlinedAt: !4609)
!4619 = !DILocation(line: 179, column: 17, scope: !2827, inlinedAt: !4609)
!4620 = !DILocation(line: 180, column: 6, scope: !2827, inlinedAt: !4609)
!4621 = !DILocation(line: 180, column: 18, scope: !2827, inlinedAt: !4609)
!4622 = !DILocation(line: 1023, column: 10, scope: !4486, inlinedAt: !4600)
!4623 = !DILocation(line: 1024, column: 1, scope: !4486, inlinedAt: !4600)
!4624 = !DILocation(line: 1037, column: 3, scope: !4587)
!4625 = distinct !DISubprogram(name: "quote_n_mem", scope: !306, file: !306, line: 1052, type: !4626, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!68, !70, !68, !61}
!4628 = !{!4629, !4630, !4631}
!4629 = !DILocalVariable(name: "n", arg: 1, scope: !4625, file: !306, line: 1052, type: !70)
!4630 = !DILocalVariable(name: "arg", arg: 2, scope: !4625, file: !306, line: 1052, type: !68)
!4631 = !DILocalVariable(name: "argsize", arg: 3, scope: !4625, file: !306, line: 1052, type: !61)
!4632 = !DILocation(line: 1052, column: 18, scope: !4625)
!4633 = !DILocation(line: 1052, column: 33, scope: !4625)
!4634 = !DILocation(line: 1052, column: 45, scope: !4625)
!4635 = !DILocation(line: 1054, column: 10, scope: !4625)
!4636 = !DILocation(line: 1054, column: 3, scope: !4625)
!4637 = distinct !DISubprogram(name: "quote_mem", scope: !306, file: !306, line: 1058, type: !4638, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!68, !68, !61}
!4640 = !{!4641, !4642}
!4641 = !DILocalVariable(name: "arg", arg: 1, scope: !4637, file: !306, line: 1058, type: !68)
!4642 = !DILocalVariable(name: "argsize", arg: 2, scope: !4637, file: !306, line: 1058, type: !61)
!4643 = !DILocation(line: 1058, column: 24, scope: !4637)
!4644 = !DILocation(line: 1058, column: 36, scope: !4637)
!4645 = !DILocation(line: 1052, column: 18, scope: !4625, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 1060, column: 10, scope: !4637)
!4647 = !DILocation(line: 1052, column: 33, scope: !4625, inlinedAt: !4646)
!4648 = !DILocation(line: 1052, column: 45, scope: !4625, inlinedAt: !4646)
!4649 = !DILocation(line: 1054, column: 10, scope: !4625, inlinedAt: !4646)
!4650 = !DILocation(line: 1060, column: 3, scope: !4637)
!4651 = distinct !DISubprogram(name: "quote_n", scope: !306, file: !306, line: 1064, type: !4652, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!68, !70, !68}
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "n", arg: 1, scope: !4651, file: !306, line: 1064, type: !70)
!4656 = !DILocalVariable(name: "arg", arg: 2, scope: !4651, file: !306, line: 1064, type: !68)
!4657 = !DILocation(line: 1064, column: 14, scope: !4651)
!4658 = !DILocation(line: 1064, column: 29, scope: !4651)
!4659 = !DILocation(line: 1052, column: 18, scope: !4625, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 1066, column: 10, scope: !4651)
!4661 = !DILocation(line: 1052, column: 33, scope: !4625, inlinedAt: !4660)
!4662 = !DILocation(line: 1052, column: 45, scope: !4625, inlinedAt: !4660)
!4663 = !DILocation(line: 1054, column: 10, scope: !4625, inlinedAt: !4660)
!4664 = !DILocation(line: 1066, column: 3, scope: !4651)
!4665 = distinct !DISubprogram(name: "quote", scope: !306, file: !306, line: 1070, type: !4666, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!68, !68}
!4668 = !{!4669}
!4669 = !DILocalVariable(name: "arg", arg: 1, scope: !4665, file: !306, line: 1070, type: !68)
!4670 = !DILocation(line: 1070, column: 20, scope: !4665)
!4671 = !DILocation(line: 1064, column: 14, scope: !4651, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 1072, column: 10, scope: !4665)
!4673 = !DILocation(line: 1064, column: 29, scope: !4651, inlinedAt: !4672)
!4674 = !DILocation(line: 1052, column: 18, scope: !4625, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 1066, column: 10, scope: !4651, inlinedAt: !4672)
!4676 = !DILocation(line: 1052, column: 33, scope: !4625, inlinedAt: !4675)
!4677 = !DILocation(line: 1052, column: 45, scope: !4625, inlinedAt: !4675)
!4678 = !DILocation(line: 1054, column: 10, scope: !4625, inlinedAt: !4675)
!4679 = !DILocation(line: 1072, column: 3, scope: !4665)
!4680 = distinct !DISubprogram(name: "dup_safer", scope: !4681, file: !4681, line: 31, type: !1401, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !741, variables: !4682)
!4681 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4682 = !{!4683}
!4683 = !DILocalVariable(name: "fd", arg: 1, scope: !4680, file: !4681, line: 31, type: !70)
!4684 = !DILocation(line: 31, column: 16, scope: !4680)
!4685 = !DILocation(line: 33, column: 10, scope: !4680)
!4686 = !DILocation(line: 33, column: 3, scope: !4680)
!4687 = distinct !DISubprogram(name: "version_etc_arn", scope: !747, file: !747, line: 62, type: !4688, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !4731)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !4690, !68, !68, !68, !4730, !61}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !4692)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4692, file: !132, line: 242, baseType: !70, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4692, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4692, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4692, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4692, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4692, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4692, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4692, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4692, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4692, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4692, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4692, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4692, file: !132, line: 260, baseType: !4707, size: 64, offset: 768)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !4709)
!4709 = !{!4710, !4711, !4713}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4708, file: !132, line: 157, baseType: !4707, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4708, file: !132, line: 158, baseType: !4712, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4708, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4692, file: !132, line: 262, baseType: !4712, size: 64, offset: 832)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4692, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4692, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4692, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4692, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4692, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4692, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4692, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4692, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4692, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4692, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4692, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4692, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4692, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4692, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4692, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4731 = !{!4732, !4733, !4734, !4735, !4736, !4737}
!4732 = !DILocalVariable(name: "stream", arg: 1, scope: !4687, file: !747, line: 62, type: !4690)
!4733 = !DILocalVariable(name: "command_name", arg: 2, scope: !4687, file: !747, line: 63, type: !68)
!4734 = !DILocalVariable(name: "package", arg: 3, scope: !4687, file: !747, line: 63, type: !68)
!4735 = !DILocalVariable(name: "version", arg: 4, scope: !4687, file: !747, line: 64, type: !68)
!4736 = !DILocalVariable(name: "authors", arg: 5, scope: !4687, file: !747, line: 65, type: !4730)
!4737 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4687, file: !747, line: 65, type: !61)
!4738 = !DILocation(line: 62, column: 24, scope: !4687)
!4739 = !DILocation(line: 63, column: 30, scope: !4687)
!4740 = !DILocation(line: 63, column: 56, scope: !4687)
!4741 = !DILocation(line: 64, column: 30, scope: !4687)
!4742 = !DILocation(line: 65, column: 39, scope: !4687)
!4743 = !DILocation(line: 65, column: 55, scope: !4687)
!4744 = !DILocation(line: 67, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4687, file: !747, line: 67, column: 7)
!4746 = !DILocation(line: 67, column: 7, scope: !4687)
!4747 = !DILocation(line: 68, column: 5, scope: !4745)
!4748 = !DILocation(line: 70, column: 5, scope: !4745)
!4749 = !DILocation(line: 84, column: 3, scope: !4687)
!4750 = !DILocation(line: 84, column: 3, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !4687, file: !747, discriminator: 1)
!4752 = !DILocation(line: 86, column: 3, scope: !4687)
!4753 = !DILocation(line: 86, column: 3, scope: !4751)
!4754 = !DILocation(line: 95, column: 3, scope: !4687)
!4755 = !DILocation(line: 99, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4687, file: !747, line: 96, column: 5)
!4757 = !DILocation(line: 102, column: 7, scope: !4756)
!4758 = !DILocation(line: 102, column: 7, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !4756, file: !747, discriminator: 1)
!4760 = !DILocation(line: 103, column: 7, scope: !4756)
!4761 = !DILocation(line: 106, column: 7, scope: !4756)
!4762 = !DILocation(line: 106, column: 7, scope: !4759)
!4763 = !DILocation(line: 107, column: 7, scope: !4756)
!4764 = !DILocation(line: 110, column: 7, scope: !4756)
!4765 = !DILocation(line: 110, column: 7, scope: !4759)
!4766 = !DILocation(line: 112, column: 7, scope: !4756)
!4767 = !DILocation(line: 117, column: 7, scope: !4756)
!4768 = !DILocation(line: 117, column: 7, scope: !4759)
!4769 = !DILocation(line: 119, column: 7, scope: !4756)
!4770 = !DILocation(line: 124, column: 7, scope: !4756)
!4771 = !DILocation(line: 124, column: 7, scope: !4759)
!4772 = !DILocation(line: 126, column: 7, scope: !4756)
!4773 = !DILocation(line: 131, column: 7, scope: !4756)
!4774 = !DILocation(line: 131, column: 7, scope: !4759)
!4775 = !DILocation(line: 134, column: 7, scope: !4756)
!4776 = !DILocation(line: 139, column: 7, scope: !4756)
!4777 = !DILocation(line: 139, column: 7, scope: !4759)
!4778 = !DILocation(line: 142, column: 7, scope: !4756)
!4779 = !DILocation(line: 147, column: 7, scope: !4756)
!4780 = !DILocation(line: 147, column: 7, scope: !4759)
!4781 = !DILocation(line: 151, column: 7, scope: !4756)
!4782 = !DILocation(line: 156, column: 7, scope: !4756)
!4783 = !DILocation(line: 156, column: 7, scope: !4759)
!4784 = !DILocation(line: 160, column: 7, scope: !4756)
!4785 = !DILocation(line: 167, column: 7, scope: !4756)
!4786 = !DILocation(line: 167, column: 7, scope: !4759)
!4787 = !DILocation(line: 171, column: 7, scope: !4756)
!4788 = !DILocation(line: 173, column: 1, scope: !4687)
!4789 = distinct !DISubprogram(name: "version_etc_ar", scope: !747, file: !747, line: 180, type: !4790, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !4690, !68, !68, !68, !4730}
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798}
!4793 = !DILocalVariable(name: "stream", arg: 1, scope: !4789, file: !747, line: 180, type: !4690)
!4794 = !DILocalVariable(name: "command_name", arg: 2, scope: !4789, file: !747, line: 181, type: !68)
!4795 = !DILocalVariable(name: "package", arg: 3, scope: !4789, file: !747, line: 181, type: !68)
!4796 = !DILocalVariable(name: "version", arg: 4, scope: !4789, file: !747, line: 182, type: !68)
!4797 = !DILocalVariable(name: "authors", arg: 5, scope: !4789, file: !747, line: 182, type: !4730)
!4798 = !DILocalVariable(name: "n_authors", scope: !4789, file: !747, line: 184, type: !61)
!4799 = !DILocation(line: 180, column: 23, scope: !4789)
!4800 = !DILocation(line: 181, column: 29, scope: !4789)
!4801 = !DILocation(line: 181, column: 55, scope: !4789)
!4802 = !DILocation(line: 182, column: 29, scope: !4789)
!4803 = !DILocation(line: 182, column: 59, scope: !4789)
!4804 = !DILocation(line: 184, column: 10, scope: !4789)
!4805 = !DILocation(line: 186, column: 8, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4789, file: !747, line: 186, column: 3)
!4807 = !DILocation(line: 186, column: 23, scope: !4808)
!4808 = !DILexicalBlockFile(scope: !4809, file: !747, discriminator: 1)
!4809 = distinct !DILexicalBlock(scope: !4806, file: !747, line: 186, column: 3)
!4810 = !DILocation(line: 186, column: 3, scope: !4811)
!4811 = !DILexicalBlockFile(scope: !4806, file: !747, discriminator: 1)
!4812 = !DILocation(line: 186, column: 52, scope: !4813)
!4813 = !DILexicalBlockFile(scope: !4809, file: !747, discriminator: 3)
!4814 = distinct !{!4814, !4815, !4816}
!4815 = !DILocation(line: 186, column: 3, scope: !4806)
!4816 = !DILocation(line: 187, column: 5, scope: !4806)
!4817 = !DILocation(line: 188, column: 3, scope: !4789)
!4818 = !DILocation(line: 189, column: 1, scope: !4789)
!4819 = distinct !DISubprogram(name: "version_etc_va", scope: !747, file: !747, line: 196, type: !4820, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !4829)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{null, !4690, !68, !68, !68, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !744, line: 189, size: 192, elements: !4824)
!4824 = !{!4825, !4826, !4827, !4828}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4823, file: !744, line: 189, baseType: !272, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4823, file: !744, line: 189, baseType: !272, size: 32, offset: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4823, file: !744, line: 189, baseType: !60, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4823, file: !744, line: 189, baseType: !60, size: 64, offset: 128)
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836}
!4830 = !DILocalVariable(name: "stream", arg: 1, scope: !4819, file: !747, line: 196, type: !4690)
!4831 = !DILocalVariable(name: "command_name", arg: 2, scope: !4819, file: !747, line: 197, type: !68)
!4832 = !DILocalVariable(name: "package", arg: 3, scope: !4819, file: !747, line: 197, type: !68)
!4833 = !DILocalVariable(name: "version", arg: 4, scope: !4819, file: !747, line: 198, type: !68)
!4834 = !DILocalVariable(name: "authors", arg: 5, scope: !4819, file: !747, line: 198, type: !4822)
!4835 = !DILocalVariable(name: "n_authors", scope: !4819, file: !747, line: 200, type: !61)
!4836 = !DILocalVariable(name: "authtab", scope: !4819, file: !747, line: 201, type: !4837)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !309)
!4838 = !DILocation(line: 196, column: 23, scope: !4819)
!4839 = !DILocation(line: 197, column: 29, scope: !4819)
!4840 = !DILocation(line: 197, column: 55, scope: !4819)
!4841 = !DILocation(line: 198, column: 29, scope: !4819)
!4842 = !DILocation(line: 198, column: 46, scope: !4819)
!4843 = !DILocation(line: 201, column: 3, scope: !4819)
!4844 = !DILocation(line: 201, column: 15, scope: !4819)
!4845 = !DILocation(line: 200, column: 10, scope: !4819)
!4846 = !DILocation(line: 205, column: 35, scope: !4847)
!4847 = !DILexicalBlockFile(scope: !4848, file: !747, discriminator: 1)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !747, line: 203, column: 3)
!4849 = distinct !DILexicalBlock(scope: !4819, file: !747, line: 203, column: 3)
!4850 = !DILocation(line: 205, column: 35, scope: !4851)
!4851 = !DILexicalBlockFile(scope: !4848, file: !747, discriminator: 2)
!4852 = !DILocation(line: 205, column: 35, scope: !4853)
!4853 = !DILexicalBlockFile(scope: !4848, file: !747, discriminator: 3)
!4854 = !DILocation(line: 205, column: 35, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !4848, file: !747, discriminator: 4)
!4856 = !DILocation(line: 205, column: 14, scope: !4855)
!4857 = !DILocation(line: 205, column: 33, scope: !4855)
!4858 = !DILocation(line: 205, column: 67, scope: !4855)
!4859 = !DILocation(line: 203, column: 3, scope: !4860)
!4860 = !DILexicalBlockFile(scope: !4849, file: !747, discriminator: 1)
!4861 = !DILocation(line: 208, column: 3, scope: !4819)
!4862 = !DILocation(line: 210, column: 1, scope: !4819)
!4863 = distinct !DISubprogram(name: "version_etc", scope: !747, file: !747, line: 227, type: !4864, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !4866)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !4690, !68, !68, !68, null}
!4866 = !{!4867, !4868, !4869, !4870, !4871}
!4867 = !DILocalVariable(name: "stream", arg: 1, scope: !4863, file: !747, line: 227, type: !4690)
!4868 = !DILocalVariable(name: "command_name", arg: 2, scope: !4863, file: !747, line: 228, type: !68)
!4869 = !DILocalVariable(name: "package", arg: 3, scope: !4863, file: !747, line: 228, type: !68)
!4870 = !DILocalVariable(name: "version", arg: 4, scope: !4863, file: !747, line: 229, type: !68)
!4871 = !DILocalVariable(name: "authors", scope: !4863, file: !747, line: 231, type: !4872)
!4872 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !130, line: 80, baseType: !4873)
!4873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !368, line: 50, baseType: !4874)
!4874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !744, line: 231, baseType: !4875)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4823, size: 192, elements: !165)
!4876 = !DILocation(line: 227, column: 20, scope: !4863)
!4877 = !DILocation(line: 228, column: 26, scope: !4863)
!4878 = !DILocation(line: 228, column: 52, scope: !4863)
!4879 = !DILocation(line: 229, column: 26, scope: !4863)
!4880 = !DILocation(line: 231, column: 3, scope: !4863)
!4881 = !DILocation(line: 231, column: 11, scope: !4863)
!4882 = !DILocation(line: 233, column: 3, scope: !4863)
!4883 = !DILocation(line: 234, column: 3, scope: !4863)
!4884 = !DILocation(line: 235, column: 3, scope: !4863)
!4885 = !DILocation(line: 236, column: 1, scope: !4863)
!4886 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !747, file: !747, line: 239, type: !818, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !743, variables: !256)
!4887 = !DILocation(line: 245, column: 3, scope: !4886)
!4888 = !DILocation(line: 245, column: 3, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4886, file: !747, discriminator: 1)
!4890 = !DILocation(line: 251, column: 3, scope: !4886)
!4891 = !DILocation(line: 251, column: 3, scope: !4889)
!4892 = !DILocation(line: 256, column: 3, scope: !4886)
!4893 = !DILocation(line: 256, column: 3, scope: !4889)
!4894 = !DILocation(line: 258, column: 1, scope: !4886)
!4895 = distinct !DISubprogram(name: "xnmalloc", scope: !755, file: !755, line: 105, type: !4896, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !4898)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!60, !61, !61}
!4898 = !{!4899, !4900}
!4899 = !DILocalVariable(name: "n", arg: 1, scope: !4895, file: !755, line: 105, type: !61)
!4900 = !DILocalVariable(name: "s", arg: 2, scope: !4895, file: !755, line: 105, type: !61)
!4901 = !DILocation(line: 105, column: 18, scope: !4895)
!4902 = !DILocation(line: 105, column: 28, scope: !4895)
!4903 = !DILocation(line: 107, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4895, file: !755, line: 107, column: 7)
!4905 = !DILocation(line: 107, column: 7, scope: !4895)
!4906 = !DILocation(line: 108, column: 5, scope: !4904)
!4907 = !DILocation(line: 109, column: 21, scope: !4895)
!4908 = !DILocalVariable(name: "n", arg: 1, scope: !4909, file: !4910, line: 39, type: !61)
!4909 = distinct !DISubprogram(name: "xmalloc", scope: !4910, file: !4910, line: 39, type: !4911, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !4913)
!4910 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!60, !61}
!4913 = !{!4908, !4914}
!4914 = !DILocalVariable(name: "p", scope: !4909, file: !4910, line: 41, type: !60)
!4915 = !DILocation(line: 39, column: 17, scope: !4909, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 109, column: 10, scope: !4895)
!4917 = !DILocation(line: 41, column: 13, scope: !4909, inlinedAt: !4916)
!4918 = !DILocation(line: 41, column: 9, scope: !4909, inlinedAt: !4916)
!4919 = !DILocation(line: 42, column: 8, scope: !4920, inlinedAt: !4916)
!4920 = distinct !DILexicalBlock(scope: !4909, file: !4910, line: 42, column: 7)
!4921 = !DILocation(line: 42, column: 15, scope: !4922, inlinedAt: !4916)
!4922 = !DILexicalBlockFile(scope: !4920, file: !4910, discriminator: 1)
!4923 = !DILocation(line: 42, column: 10, scope: !4920, inlinedAt: !4916)
!4924 = !DILocation(line: 43, column: 5, scope: !4920, inlinedAt: !4916)
!4925 = !DILocation(line: 109, column: 3, scope: !4895)
!4926 = !DILocation(line: 39, column: 17, scope: !4909)
!4927 = !DILocation(line: 41, column: 13, scope: !4909)
!4928 = !DILocation(line: 41, column: 9, scope: !4909)
!4929 = !DILocation(line: 42, column: 8, scope: !4920)
!4930 = !DILocation(line: 42, column: 15, scope: !4922)
!4931 = !DILocation(line: 42, column: 10, scope: !4920)
!4932 = !DILocation(line: 43, column: 5, scope: !4920)
!4933 = !DILocation(line: 44, column: 3, scope: !4909)
!4934 = distinct !DISubprogram(name: "xnrealloc", scope: !755, file: !755, line: 118, type: !4935, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !4937)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!60, !60, !61, !61}
!4937 = !{!4938, !4939, !4940}
!4938 = !DILocalVariable(name: "p", arg: 1, scope: !4934, file: !755, line: 118, type: !60)
!4939 = !DILocalVariable(name: "n", arg: 2, scope: !4934, file: !755, line: 118, type: !61)
!4940 = !DILocalVariable(name: "s", arg: 3, scope: !4934, file: !755, line: 118, type: !61)
!4941 = !DILocation(line: 118, column: 18, scope: !4934)
!4942 = !DILocation(line: 118, column: 28, scope: !4934)
!4943 = !DILocation(line: 118, column: 38, scope: !4934)
!4944 = !DILocation(line: 120, column: 7, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4934, file: !755, line: 120, column: 7)
!4946 = !DILocation(line: 120, column: 7, scope: !4934)
!4947 = !DILocation(line: 121, column: 5, scope: !4945)
!4948 = !DILocation(line: 122, column: 25, scope: !4934)
!4949 = !DILocalVariable(name: "p", arg: 1, scope: !4950, file: !4910, line: 51, type: !60)
!4950 = distinct !DISubprogram(name: "xrealloc", scope: !4910, file: !4910, line: 51, type: !4951, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !4953)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!60, !60, !61}
!4953 = !{!4949, !4954}
!4954 = !DILocalVariable(name: "n", arg: 2, scope: !4950, file: !4910, line: 51, type: !61)
!4955 = !DILocation(line: 51, column: 17, scope: !4950, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 122, column: 10, scope: !4934)
!4957 = !DILocation(line: 51, column: 27, scope: !4950, inlinedAt: !4956)
!4958 = !DILocation(line: 53, column: 8, scope: !4959, inlinedAt: !4956)
!4959 = distinct !DILexicalBlock(scope: !4950, file: !4910, line: 53, column: 7)
!4960 = !DILocation(line: 53, column: 13, scope: !4961, inlinedAt: !4956)
!4961 = !DILexicalBlockFile(scope: !4959, file: !4910, discriminator: 1)
!4962 = !DILocation(line: 53, column: 10, scope: !4959, inlinedAt: !4956)
!4963 = !DILocation(line: 57, column: 7, scope: !4964, inlinedAt: !4956)
!4964 = distinct !DILexicalBlock(scope: !4959, file: !4910, line: 54, column: 5)
!4965 = !DILocation(line: 58, column: 7, scope: !4964, inlinedAt: !4956)
!4966 = !DILocation(line: 61, column: 7, scope: !4950, inlinedAt: !4956)
!4967 = !DILocation(line: 62, column: 8, scope: !4968, inlinedAt: !4956)
!4968 = distinct !DILexicalBlock(scope: !4950, file: !4910, line: 62, column: 7)
!4969 = !DILocation(line: 62, column: 13, scope: !4970, inlinedAt: !4956)
!4970 = !DILexicalBlockFile(scope: !4968, file: !4910, discriminator: 1)
!4971 = !DILocation(line: 62, column: 10, scope: !4968, inlinedAt: !4956)
!4972 = !DILocation(line: 63, column: 5, scope: !4968, inlinedAt: !4956)
!4973 = !DILocation(line: 122, column: 3, scope: !4934)
!4974 = !DILocation(line: 51, column: 17, scope: !4950)
!4975 = !DILocation(line: 51, column: 27, scope: !4950)
!4976 = !DILocation(line: 53, column: 8, scope: !4959)
!4977 = !DILocation(line: 53, column: 13, scope: !4961)
!4978 = !DILocation(line: 53, column: 10, scope: !4959)
!4979 = !DILocation(line: 57, column: 7, scope: !4964)
!4980 = !DILocation(line: 58, column: 7, scope: !4964)
!4981 = !DILocation(line: 61, column: 7, scope: !4950)
!4982 = !DILocation(line: 62, column: 8, scope: !4968)
!4983 = !DILocation(line: 62, column: 13, scope: !4970)
!4984 = !DILocation(line: 62, column: 10, scope: !4968)
!4985 = !DILocation(line: 63, column: 5, scope: !4968)
!4986 = !DILocation(line: 65, column: 1, scope: !4950)
!4987 = !DILocation(line: 180, column: 19, scope: !756)
!4988 = !DILocation(line: 180, column: 30, scope: !756)
!4989 = !DILocation(line: 180, column: 41, scope: !756)
!4990 = !DILocation(line: 182, column: 14, scope: !756)
!4991 = !DILocation(line: 182, column: 10, scope: !756)
!4992 = !DILocation(line: 184, column: 9, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !756, file: !755, line: 184, column: 7)
!4994 = !DILocation(line: 184, column: 7, scope: !756)
!4995 = !DILocation(line: 186, column: 13, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !755, line: 186, column: 11)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !755, line: 185, column: 5)
!4998 = !DILocation(line: 186, column: 11, scope: !4997)
!4999 = !DILocation(line: 194, column: 30, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !755, line: 187, column: 9)
!5001 = !DILocation(line: 195, column: 16, scope: !5000)
!5002 = !DILocation(line: 195, column: 13, scope: !5000)
!5003 = !DILocation(line: 196, column: 9, scope: !5000)
!5004 = !DILocation(line: 204, column: 69, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !755, line: 204, column: 11)
!5006 = distinct !DILexicalBlock(scope: !4993, file: !755, line: 199, column: 5)
!5007 = !DILocation(line: 205, column: 11, scope: !5005)
!5008 = !DILocation(line: 204, column: 11, scope: !5006)
!5009 = !DILocation(line: 206, column: 9, scope: !5005)
!5010 = !DILocation(line: 210, column: 7, scope: !756)
!5011 = !DILocation(line: 211, column: 25, scope: !756)
!5012 = !DILocation(line: 51, column: 17, scope: !4950, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 211, column: 10, scope: !756)
!5014 = !DILocation(line: 51, column: 27, scope: !4950, inlinedAt: !5013)
!5015 = !DILocation(line: 53, column: 10, scope: !4959, inlinedAt: !5013)
!5016 = !DILocation(line: 207, column: 14, scope: !5006)
!5017 = !DILocation(line: 207, column: 18, scope: !5006)
!5018 = !DILocation(line: 207, column: 9, scope: !5006)
!5019 = !DILocation(line: 53, column: 8, scope: !4959, inlinedAt: !5013)
!5020 = !DILocation(line: 57, column: 7, scope: !4964, inlinedAt: !5013)
!5021 = !DILocation(line: 58, column: 7, scope: !4964, inlinedAt: !5013)
!5022 = !DILocation(line: 61, column: 7, scope: !4950, inlinedAt: !5013)
!5023 = !DILocation(line: 62, column: 8, scope: !4968, inlinedAt: !5013)
!5024 = !DILocation(line: 62, column: 13, scope: !4970, inlinedAt: !5013)
!5025 = !DILocation(line: 62, column: 10, scope: !4968, inlinedAt: !5013)
!5026 = !DILocation(line: 63, column: 5, scope: !4968, inlinedAt: !5013)
!5027 = !DILocation(line: 211, column: 3, scope: !756)
!5028 = distinct !DISubprogram(name: "xcharalloc", scope: !755, file: !755, line: 220, type: !3954, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5029)
!5029 = !{!5030}
!5030 = !DILocalVariable(name: "n", arg: 1, scope: !5028, file: !755, line: 220, type: !61)
!5031 = !DILocation(line: 220, column: 20, scope: !5028)
!5032 = !DILocation(line: 39, column: 17, scope: !4909, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 222, column: 10, scope: !5028)
!5034 = !DILocation(line: 41, column: 13, scope: !4909, inlinedAt: !5033)
!5035 = !DILocation(line: 41, column: 9, scope: !4909, inlinedAt: !5033)
!5036 = !DILocation(line: 42, column: 8, scope: !4920, inlinedAt: !5033)
!5037 = !DILocation(line: 42, column: 15, scope: !4922, inlinedAt: !5033)
!5038 = !DILocation(line: 42, column: 10, scope: !4920, inlinedAt: !5033)
!5039 = !DILocation(line: 43, column: 5, scope: !4920, inlinedAt: !5033)
!5040 = !DILocation(line: 222, column: 3, scope: !5028)
!5041 = distinct !DISubprogram(name: "x2realloc", scope: !4910, file: !4910, line: 74, type: !5042, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5044)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!60, !60, !759}
!5044 = !{!5045, !5046}
!5045 = !DILocalVariable(name: "p", arg: 1, scope: !5041, file: !4910, line: 74, type: !60)
!5046 = !DILocalVariable(name: "pn", arg: 2, scope: !5041, file: !4910, line: 74, type: !759)
!5047 = !DILocation(line: 74, column: 18, scope: !5041)
!5048 = !DILocation(line: 74, column: 29, scope: !5041)
!5049 = !DILocation(line: 180, column: 19, scope: !756, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 76, column: 10, scope: !5041)
!5051 = !DILocation(line: 180, column: 30, scope: !756, inlinedAt: !5050)
!5052 = !DILocation(line: 180, column: 41, scope: !756, inlinedAt: !5050)
!5053 = !DILocation(line: 182, column: 14, scope: !756, inlinedAt: !5050)
!5054 = !DILocation(line: 182, column: 10, scope: !756, inlinedAt: !5050)
!5055 = !DILocation(line: 184, column: 9, scope: !4993, inlinedAt: !5050)
!5056 = !DILocation(line: 184, column: 7, scope: !756, inlinedAt: !5050)
!5057 = !DILocation(line: 186, column: 13, scope: !4996, inlinedAt: !5050)
!5058 = !DILocation(line: 186, column: 11, scope: !4997, inlinedAt: !5050)
!5059 = !DILocation(line: 210, column: 7, scope: !756, inlinedAt: !5050)
!5060 = !DILocation(line: 51, column: 17, scope: !4950, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 211, column: 10, scope: !756, inlinedAt: !5050)
!5062 = !DILocation(line: 51, column: 27, scope: !4950, inlinedAt: !5061)
!5063 = !DILocation(line: 53, column: 10, scope: !4959, inlinedAt: !5061)
!5064 = !DILocation(line: 205, column: 11, scope: !5005, inlinedAt: !5050)
!5065 = !DILocation(line: 204, column: 11, scope: !5006, inlinedAt: !5050)
!5066 = !DILocation(line: 206, column: 9, scope: !5005, inlinedAt: !5050)
!5067 = !DILocation(line: 207, column: 14, scope: !5006, inlinedAt: !5050)
!5068 = !DILocation(line: 207, column: 18, scope: !5006, inlinedAt: !5050)
!5069 = !DILocation(line: 207, column: 9, scope: !5006, inlinedAt: !5050)
!5070 = !DILocation(line: 53, column: 8, scope: !4959, inlinedAt: !5061)
!5071 = !DILocation(line: 57, column: 7, scope: !4964, inlinedAt: !5061)
!5072 = !DILocation(line: 58, column: 7, scope: !4964, inlinedAt: !5061)
!5073 = !DILocation(line: 61, column: 7, scope: !4950, inlinedAt: !5061)
!5074 = !DILocation(line: 62, column: 8, scope: !4968, inlinedAt: !5061)
!5075 = !DILocation(line: 62, column: 13, scope: !4970, inlinedAt: !5061)
!5076 = !DILocation(line: 62, column: 10, scope: !4968, inlinedAt: !5061)
!5077 = !DILocation(line: 63, column: 5, scope: !4968, inlinedAt: !5061)
!5078 = !DILocation(line: 76, column: 3, scope: !5041)
!5079 = distinct !DISubprogram(name: "xzalloc", scope: !4910, file: !4910, line: 84, type: !4911, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5080)
!5080 = !{!5081}
!5081 = !DILocalVariable(name: "s", arg: 1, scope: !5079, file: !4910, line: 84, type: !61)
!5082 = !DILocation(line: 84, column: 17, scope: !5079)
!5083 = !DILocation(line: 39, column: 17, scope: !4909, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 86, column: 18, scope: !5079)
!5085 = !DILocation(line: 41, column: 13, scope: !4909, inlinedAt: !5084)
!5086 = !DILocation(line: 41, column: 9, scope: !4909, inlinedAt: !5084)
!5087 = !DILocation(line: 42, column: 8, scope: !4920, inlinedAt: !5084)
!5088 = !DILocation(line: 42, column: 15, scope: !4922, inlinedAt: !5084)
!5089 = !DILocation(line: 42, column: 10, scope: !4920, inlinedAt: !5084)
!5090 = !DILocation(line: 43, column: 5, scope: !4920, inlinedAt: !5084)
!5091 = !DILocation(line: 86, column: 10, scope: !5079)
!5092 = !DILocation(line: 86, column: 3, scope: !5079)
!5093 = distinct !DISubprogram(name: "xcalloc", scope: !4910, file: !4910, line: 93, type: !4896, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5094)
!5094 = !{!5095, !5096, !5097}
!5095 = !DILocalVariable(name: "n", arg: 1, scope: !5093, file: !4910, line: 93, type: !61)
!5096 = !DILocalVariable(name: "s", arg: 2, scope: !5093, file: !4910, line: 93, type: !61)
!5097 = !DILocalVariable(name: "p", scope: !5093, file: !4910, line: 95, type: !60)
!5098 = !DILocation(line: 93, column: 17, scope: !5093)
!5099 = !DILocation(line: 93, column: 27, scope: !5093)
!5100 = !DILocation(line: 100, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5093, file: !4910, line: 100, column: 7)
!5102 = !DILocation(line: 101, column: 7, scope: !5101)
!5103 = !DILocation(line: 101, column: 18, scope: !5104)
!5104 = !DILexicalBlockFile(scope: !5101, file: !4910, discriminator: 1)
!5105 = !DILocation(line: 95, column: 9, scope: !5093)
!5106 = !DILocation(line: 101, column: 16, scope: !5104)
!5107 = !DILocation(line: 100, column: 7, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5093, file: !4910, discriminator: 1)
!5109 = !DILocation(line: 102, column: 5, scope: !5101)
!5110 = !DILocation(line: 103, column: 3, scope: !5093)
!5111 = distinct !DISubprogram(name: "xmemdup", scope: !4910, file: !4910, line: 111, type: !903, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5112)
!5112 = !{!5113, !5114}
!5113 = !DILocalVariable(name: "p", arg: 1, scope: !5111, file: !4910, line: 111, type: !63)
!5114 = !DILocalVariable(name: "s", arg: 2, scope: !5111, file: !4910, line: 111, type: !61)
!5115 = !DILocation(line: 111, column: 22, scope: !5111)
!5116 = !DILocation(line: 111, column: 32, scope: !5111)
!5117 = !DILocation(line: 39, column: 17, scope: !4909, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 113, column: 18, scope: !5111)
!5119 = !DILocation(line: 41, column: 13, scope: !4909, inlinedAt: !5118)
!5120 = !DILocation(line: 41, column: 9, scope: !4909, inlinedAt: !5118)
!5121 = !DILocation(line: 42, column: 8, scope: !4920, inlinedAt: !5118)
!5122 = !DILocation(line: 42, column: 15, scope: !4922, inlinedAt: !5118)
!5123 = !DILocation(line: 42, column: 10, scope: !4920, inlinedAt: !5118)
!5124 = !DILocation(line: 43, column: 5, scope: !4920, inlinedAt: !5118)
!5125 = !DILocation(line: 113, column: 10, scope: !5111)
!5126 = !DILocation(line: 113, column: 3, scope: !5111)
!5127 = distinct !DISubprogram(name: "xstrdup", scope: !4910, file: !4910, line: 119, type: !4159, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !5128)
!5128 = !{!5129}
!5129 = !DILocalVariable(name: "string", arg: 1, scope: !5127, file: !4910, line: 119, type: !68)
!5130 = !DILocation(line: 119, column: 22, scope: !5127)
!5131 = !DILocation(line: 121, column: 27, scope: !5127)
!5132 = !DILocation(line: 121, column: 43, scope: !5127)
!5133 = !DILocation(line: 111, column: 22, scope: !5111, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 121, column: 10, scope: !5135)
!5135 = !DILexicalBlockFile(scope: !5127, file: !4910, discriminator: 1)
!5136 = !DILocation(line: 111, column: 32, scope: !5111, inlinedAt: !5134)
!5137 = !DILocation(line: 39, column: 17, scope: !4909, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 113, column: 18, scope: !5111, inlinedAt: !5134)
!5139 = !DILocation(line: 41, column: 13, scope: !4909, inlinedAt: !5138)
!5140 = !DILocation(line: 41, column: 9, scope: !4909, inlinedAt: !5138)
!5141 = !DILocation(line: 42, column: 8, scope: !4920, inlinedAt: !5138)
!5142 = !DILocation(line: 42, column: 15, scope: !4922, inlinedAt: !5138)
!5143 = !DILocation(line: 42, column: 10, scope: !4920, inlinedAt: !5138)
!5144 = !DILocation(line: 43, column: 5, scope: !4920, inlinedAt: !5138)
!5145 = !DILocation(line: 113, column: 10, scope: !5111, inlinedAt: !5134)
!5146 = !DILocation(line: 121, column: 3, scope: !5127)
!5147 = distinct !DISubprogram(name: "xalloc_die", scope: !5148, file: !5148, line: 32, type: !818, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !768, variables: !256)
!5148 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5149 = !DILocation(line: 34, column: 10, scope: !5147)
!5150 = !DILocation(line: 34, column: 33, scope: !5147)
!5151 = !DILocation(line: 34, column: 3, scope: !5152)
!5152 = !DILexicalBlockFile(scope: !5147, file: !5148, discriminator: 1)
!5153 = !DILocation(line: 40, column: 3, scope: !5147)
!5154 = distinct !DISubprogram(name: "rpl_calloc", scope: !5155, file: !5155, line: 42, type: !4896, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !770, variables: !5156)
!5155 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5156 = !{!5157, !5158, !5159, !5160}
!5157 = !DILocalVariable(name: "n", arg: 1, scope: !5154, file: !5155, line: 42, type: !61)
!5158 = !DILocalVariable(name: "s", arg: 2, scope: !5154, file: !5155, line: 42, type: !61)
!5159 = !DILocalVariable(name: "result", scope: !5154, file: !5155, line: 44, type: !60)
!5160 = !DILocalVariable(name: "bytes", scope: !5161, file: !5155, line: 56, type: !61)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !5155, line: 53, column: 5)
!5162 = distinct !DILexicalBlock(scope: !5154, file: !5155, line: 47, column: 7)
!5163 = !DILocation(line: 42, column: 20, scope: !5154)
!5164 = !DILocation(line: 42, column: 30, scope: !5154)
!5165 = !DILocation(line: 47, column: 9, scope: !5162)
!5166 = !DILocation(line: 47, column: 19, scope: !5167)
!5167 = !DILexicalBlockFile(scope: !5162, file: !5155, discriminator: 1)
!5168 = !DILocation(line: 47, column: 14, scope: !5162)
!5169 = !DILocation(line: 56, column: 24, scope: !5161)
!5170 = !DILocation(line: 56, column: 14, scope: !5161)
!5171 = !DILocation(line: 57, column: 17, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5161, file: !5155, line: 57, column: 11)
!5173 = !DILocation(line: 57, column: 21, scope: !5172)
!5174 = !DILocation(line: 57, column: 11, scope: !5161)
!5175 = !DILocation(line: 59, column: 11, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5172, file: !5155, line: 58, column: 9)
!5177 = !DILocation(line: 59, column: 17, scope: !5176)
!5178 = !DILocation(line: 65, column: 12, scope: !5154)
!5179 = !DILocation(line: 44, column: 9, scope: !5154)
!5180 = !DILocation(line: 72, column: 3, scope: !5154)
!5181 = !DILocation(line: 73, column: 1, scope: !5154)
!5182 = distinct !DISubprogram(name: "rpl_fclose", scope: !5183, file: !5183, line: 56, type: !5184, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !772, variables: !5226)
!5183 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!70, !5186}
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5188)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5189)
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5188, file: !132, line: 242, baseType: !70, size: 32)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5188, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5188, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5188, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5188, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5188, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5188, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5188, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5188, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5188, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5188, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5188, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5188, file: !132, line: 260, baseType: !5203, size: 64, offset: 768)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5205)
!5205 = !{!5206, !5207, !5209}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5204, file: !132, line: 157, baseType: !5203, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5204, file: !132, line: 158, baseType: !5208, size: 64, offset: 64)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5204, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5188, file: !132, line: 262, baseType: !5208, size: 64, offset: 832)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5188, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5188, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5188, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5188, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5188, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5188, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5188, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5188, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5188, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5188, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5188, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5188, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5188, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5188, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5188, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5226 = !{!5227, !5228, !5229, !5230}
!5227 = !DILocalVariable(name: "fp", arg: 1, scope: !5182, file: !5183, line: 56, type: !5186)
!5228 = !DILocalVariable(name: "saved_errno", scope: !5182, file: !5183, line: 58, type: !70)
!5229 = !DILocalVariable(name: "fd", scope: !5182, file: !5183, line: 59, type: !70)
!5230 = !DILocalVariable(name: "result", scope: !5182, file: !5183, line: 60, type: !70)
!5231 = !DILocation(line: 56, column: 19, scope: !5182)
!5232 = !DILocation(line: 58, column: 7, scope: !5182)
!5233 = !DILocation(line: 60, column: 7, scope: !5182)
!5234 = !DILocation(line: 63, column: 8, scope: !5182)
!5235 = !DILocation(line: 59, column: 7, scope: !5182)
!5236 = !DILocation(line: 64, column: 10, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5182, file: !5183, line: 64, column: 7)
!5238 = !DILocation(line: 64, column: 7, scope: !5182)
!5239 = !DILocation(line: 65, column: 12, scope: !5237)
!5240 = !DILocation(line: 65, column: 5, scope: !5237)
!5241 = !DILocation(line: 70, column: 9, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5182, file: !5183, line: 70, column: 7)
!5243 = !DILocation(line: 70, column: 23, scope: !5242)
!5244 = !DILocation(line: 70, column: 33, scope: !5245)
!5245 = !DILexicalBlockFile(scope: !5242, file: !5183, discriminator: 1)
!5246 = !DILocation(line: 70, column: 26, scope: !5247)
!5247 = !DILexicalBlockFile(scope: !5242, file: !5183, discriminator: 3)
!5248 = !DILocation(line: 70, column: 59, scope: !5245)
!5249 = !DILocation(line: 71, column: 7, scope: !5242)
!5250 = !DILocation(line: 71, column: 10, scope: !5245)
!5251 = !DILocation(line: 70, column: 7, scope: !5252)
!5252 = !DILexicalBlockFile(scope: !5182, file: !5183, discriminator: 2)
!5253 = !DILocation(line: 98, column: 12, scope: !5182)
!5254 = !DILocation(line: 103, column: 7, scope: !5182)
!5255 = !DILocation(line: 72, column: 19, scope: !5242)
!5256 = !DILocation(line: 103, column: 19, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5182, file: !5183, line: 103, column: 7)
!5258 = !DILocation(line: 105, column: 13, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5257, file: !5183, line: 104, column: 5)
!5260 = !DILocation(line: 107, column: 5, scope: !5259)
!5261 = !DILocation(line: 110, column: 1, scope: !5182)
!5262 = !DILocation(line: 272, column: 16, scope: !356)
!5263 = !DILocation(line: 272, column: 24, scope: !356)
!5264 = !DILocation(line: 274, column: 3, scope: !356)
!5265 = !DILocation(line: 274, column: 11, scope: !356)
!5266 = !DILocation(line: 275, column: 7, scope: !356)
!5267 = !DILocation(line: 276, column: 3, scope: !356)
!5268 = !DILocation(line: 277, column: 3, scope: !356)
!5269 = !DILocation(line: 322, column: 22, scope: !379)
!5270 = !DILocation(line: 322, column: 22, scope: !5271)
!5271 = !DILexicalBlockFile(scope: !379, file: !357, discriminator: 1)
!5272 = !DILocation(line: 322, column: 22, scope: !5273)
!5273 = !DILexicalBlockFile(scope: !379, file: !357, discriminator: 2)
!5274 = !DILocation(line: 322, column: 22, scope: !5275)
!5275 = !DILexicalBlockFile(scope: !379, file: !357, discriminator: 3)
!5276 = !DILocation(line: 322, column: 13, scope: !379)
!5277 = !DILocation(line: 336, column: 18, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !379, file: !357, line: 336, column: 13)
!5279 = !DILocation(line: 336, column: 15, scope: !5278)
!5280 = !DILocation(line: 336, column: 13, scope: !379)
!5281 = !DILocation(line: 338, column: 22, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !357, line: 337, column: 11)
!5283 = !DILocation(line: 339, column: 19, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5282, file: !357, line: 339, column: 17)
!5285 = !DILocation(line: 339, column: 29, scope: !5284)
!5286 = !DILocation(line: 339, column: 32, scope: !5287)
!5287 = !DILexicalBlockFile(scope: !5284, file: !357, discriminator: 1)
!5288 = !DILocation(line: 339, column: 38, scope: !5287)
!5289 = !DILocation(line: 339, column: 17, scope: !5290)
!5290 = !DILexicalBlockFile(scope: !5282, file: !357, discriminator: 1)
!5291 = !DILocation(line: 349, column: 26, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5284, file: !357, line: 348, column: 15)
!5293 = !DILocation(line: 350, column: 28, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5292, file: !357, line: 350, column: 21)
!5295 = !DILocation(line: 350, column: 21, scope: !5292)
!5296 = !DILocation(line: 354, column: 11, scope: !5282)
!5297 = !DILocation(line: 356, column: 20, scope: !5278)
!5298 = !DILocation(line: 357, column: 28, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !383, file: !357, discriminator: 1)
!5300 = !DILocation(line: 357, column: 15, scope: !383)
!5301 = !DILocation(line: 357, column: 47, scope: !5299)
!5302 = !DILocation(line: 357, column: 25, scope: !383)
!5303 = !DILocation(line: 359, column: 25, scope: !382)
!5304 = !DILocation(line: 359, column: 17, scope: !382)
!5305 = !DILocation(line: 360, column: 23, scope: !386)
!5306 = !DILocation(line: 360, column: 27, scope: !386)
!5307 = !DILocation(line: 360, column: 60, scope: !5308)
!5308 = !DILexicalBlockFile(scope: !386, file: !357, discriminator: 1)
!5309 = !DILocation(line: 360, column: 30, scope: !5308)
!5310 = !DILocation(line: 360, column: 74, scope: !5308)
!5311 = !DILocation(line: 360, column: 17, scope: !5312)
!5312 = !DILexicalBlockFile(scope: !382, file: !357, discriminator: 1)
!5313 = !DILocation(line: 362, column: 35, scope: !385)
!5314 = !DILocation(line: 362, column: 21, scope: !385)
!5315 = !DILocation(line: 363, column: 17, scope: !385)
!5316 = !DILocation(line: 364, column: 23, scope: !385)
!5317 = !DILocation(line: 366, column: 15, scope: !385)
!5318 = !DILocation(line: 404, column: 19, scope: !388)
!5319 = !DILocation(line: 404, column: 19, scope: !5320)
!5320 = !DILexicalBlockFile(scope: !388, file: !357, discriminator: 1)
!5321 = !DILocation(line: 404, column: 19, scope: !5322)
!5322 = !DILexicalBlockFile(scope: !388, file: !357, discriminator: 2)
!5323 = !DILocation(line: 404, column: 19, scope: !5324)
!5324 = !DILexicalBlockFile(scope: !388, file: !357, discriminator: 3)
!5325 = !DILocation(line: 404, column: 15, scope: !388)
!5326 = !DILocation(line: 405, column: 18, scope: !388)
!5327 = !DILocation(line: 412, column: 3, scope: !356)
!5328 = !DILocation(line: 414, column: 1, scope: !356)
!5329 = !DILocation(line: 413, column: 3, scope: !356)
!5330 = distinct !DISubprogram(name: "rpl_fflush", scope: !5331, file: !5331, line: 127, type: !5332, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !774, variables: !5374)
!5331 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!70, !5334}
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5336)
!5336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5337)
!5337 = !{!5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5336, file: !132, line: 242, baseType: !70, size: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5336, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5336, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5336, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5336, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5336, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5336, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5336, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5336, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5336, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5336, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5336, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5336, file: !132, line: 260, baseType: !5351, size: 64, offset: 768)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5353)
!5353 = !{!5354, !5355, !5357}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5352, file: !132, line: 157, baseType: !5351, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5352, file: !132, line: 158, baseType: !5356, size: 64, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5352, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5336, file: !132, line: 262, baseType: !5356, size: 64, offset: 832)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5336, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5336, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5336, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5336, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5336, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5336, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5336, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5336, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5336, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5336, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5336, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5336, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5336, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5336, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5336, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5374 = !{!5375}
!5375 = !DILocalVariable(name: "stream", arg: 1, scope: !5330, file: !5331, line: 127, type: !5334)
!5376 = !DILocation(line: 127, column: 19, scope: !5330)
!5377 = !DILocation(line: 148, column: 14, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5330, file: !5331, line: 148, column: 7)
!5379 = !DILocation(line: 148, column: 22, scope: !5378)
!5380 = !DILocation(line: 148, column: 27, scope: !5381)
!5381 = !DILexicalBlockFile(scope: !5378, file: !5331, discriminator: 1)
!5382 = !DILocation(line: 148, column: 7, scope: !5383)
!5383 = !DILexicalBlockFile(scope: !5330, file: !5331, discriminator: 1)
!5384 = !DILocation(line: 149, column: 12, scope: !5378)
!5385 = !DILocation(line: 149, column: 5, scope: !5378)
!5386 = !DILocalVariable(name: "fp", arg: 1, scope: !5387, file: !5331, line: 40, type: !5334)
!5387 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5331, file: !5331, line: 40, type: !5388, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !774, variables: !5390)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{null, !5334}
!5390 = !{!5386}
!5391 = !DILocation(line: 40, column: 48, scope: !5387, inlinedAt: !5392)
!5392 = distinct !DILocation(line: 153, column: 3, scope: !5330)
!5393 = !DILocation(line: 42, column: 11, scope: !5394, inlinedAt: !5392)
!5394 = distinct !DILexicalBlock(scope: !5387, file: !5331, line: 42, column: 7)
!5395 = !DILocation(line: 42, column: 18, scope: !5394, inlinedAt: !5392)
!5396 = !DILocation(line: 42, column: 7, scope: !5387, inlinedAt: !5392)
!5397 = !DILocation(line: 44, column: 5, scope: !5394, inlinedAt: !5392)
!5398 = !DILocation(line: 155, column: 10, scope: !5330)
!5399 = !DILocation(line: 155, column: 3, scope: !5330)
!5400 = !DILocation(line: 229, column: 1, scope: !5330)
!5401 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5402, file: !5402, line: 28, type: !5403, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !776, variables: !5445)
!5402 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!70, !5405, !2526, !70}
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5407)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5408)
!5408 = !{!5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5407, file: !132, line: 242, baseType: !70, size: 32)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5407, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5407, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5407, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5407, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5407, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5407, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5407, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5407, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5407, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5407, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5407, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5407, file: !132, line: 260, baseType: !5422, size: 64, offset: 768)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5424)
!5424 = !{!5425, !5426, !5428}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5423, file: !132, line: 157, baseType: !5422, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5423, file: !132, line: 158, baseType: !5427, size: 64, offset: 64)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5423, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5407, file: !132, line: 262, baseType: !5427, size: 64, offset: 832)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5407, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5407, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5407, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5407, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5407, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5407, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5407, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5407, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5407, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5407, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5407, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5407, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5407, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5407, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5407, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5445 = !{!5446, !5447, !5448, !5449}
!5446 = !DILocalVariable(name: "fp", arg: 1, scope: !5401, file: !5402, line: 28, type: !5405)
!5447 = !DILocalVariable(name: "offset", arg: 2, scope: !5401, file: !5402, line: 28, type: !2526)
!5448 = !DILocalVariable(name: "whence", arg: 3, scope: !5401, file: !5402, line: 28, type: !70)
!5449 = !DILocalVariable(name: "pos", scope: !5450, file: !5402, line: 116, type: !2526)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !5402, line: 112, column: 5)
!5451 = distinct !DILexicalBlock(scope: !5401, file: !5402, line: 51, column: 7)
!5452 = !DILocation(line: 28, column: 15, scope: !5401)
!5453 = !DILocation(line: 28, column: 25, scope: !5401)
!5454 = !DILocation(line: 28, column: 37, scope: !5401)
!5455 = !DILocation(line: 51, column: 11, scope: !5451)
!5456 = !{!1409, !805, i64 16}
!5457 = !DILocation(line: 51, column: 31, scope: !5451)
!5458 = !{!1409, !805, i64 8}
!5459 = !DILocation(line: 51, column: 24, scope: !5451)
!5460 = !DILocation(line: 52, column: 7, scope: !5451)
!5461 = !DILocation(line: 52, column: 14, scope: !5462)
!5462 = !DILexicalBlockFile(scope: !5451, file: !5402, discriminator: 1)
!5463 = !DILocation(line: 52, column: 35, scope: !5462)
!5464 = !{!1409, !805, i64 32}
!5465 = !DILocation(line: 52, column: 28, scope: !5462)
!5466 = !DILocation(line: 53, column: 7, scope: !5451)
!5467 = !DILocation(line: 53, column: 14, scope: !5462)
!5468 = !{!1409, !805, i64 72}
!5469 = !DILocation(line: 53, column: 28, scope: !5462)
!5470 = !DILocation(line: 51, column: 7, scope: !5471)
!5471 = !DILexicalBlockFile(scope: !5401, file: !5402, discriminator: 1)
!5472 = !DILocation(line: 116, column: 26, scope: !5450)
!5473 = !DILocation(line: 116, column: 19, scope: !5474)
!5474 = !DILexicalBlockFile(scope: !5450, file: !5402, discriminator: 1)
!5475 = !DILocation(line: 116, column: 13, scope: !5450)
!5476 = !DILocation(line: 117, column: 15, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5450, file: !5402, line: 117, column: 11)
!5478 = !DILocation(line: 117, column: 11, scope: !5450)
!5479 = !DILocation(line: 127, column: 11, scope: !5450)
!5480 = !DILocation(line: 127, column: 18, scope: !5450)
!5481 = !DILocation(line: 128, column: 11, scope: !5450)
!5482 = !DILocation(line: 128, column: 19, scope: !5450)
!5483 = !{!1409, !1087, i64 144}
!5484 = !DILocation(line: 159, column: 7, scope: !5450)
!5485 = !DILocation(line: 161, column: 10, scope: !5401)
!5486 = !DILocation(line: 161, column: 3, scope: !5401)
!5487 = !DILocation(line: 162, column: 1, scope: !5401)
!5488 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5489, file: !5489, line: 334, type: !5490, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !778, variables: !5504)
!5489 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!61, !5492, !68, !61, !5493}
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2927, line: 107, baseType: !5495)
!5495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2927, line: 95, baseType: !5496)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2927, line: 83, size: 64, elements: !5497)
!5497 = !{!5498, !5499}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5496, file: !2927, line: 85, baseType: !70, size: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5496, file: !2927, line: 94, baseType: !5500, size: 32, offset: 32)
!5500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5496, file: !2927, line: 86, size: 32, elements: !5501)
!5501 = !{!5502, !5503}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5500, file: !2927, line: 89, baseType: !272, size: 32)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5500, file: !2927, line: 93, baseType: !2937, size: 32)
!5504 = !{!5505, !5506, !5507, !5508, !5509, !5510, !5511}
!5505 = !DILocalVariable(name: "pwc", arg: 1, scope: !5488, file: !5489, line: 334, type: !5492)
!5506 = !DILocalVariable(name: "s", arg: 2, scope: !5488, file: !5489, line: 334, type: !68)
!5507 = !DILocalVariable(name: "n", arg: 3, scope: !5488, file: !5489, line: 334, type: !61)
!5508 = !DILocalVariable(name: "ps", arg: 4, scope: !5488, file: !5489, line: 334, type: !5493)
!5509 = !DILocalVariable(name: "ret", scope: !5488, file: !5489, line: 336, type: !61)
!5510 = !DILocalVariable(name: "wc", scope: !5488, file: !5489, line: 337, type: !2942)
!5511 = !DILocalVariable(name: "uc", scope: !5512, file: !5489, line: 398, type: !67)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !5489, line: 397, column: 5)
!5513 = distinct !DILexicalBlock(scope: !5488, file: !5489, line: 396, column: 7)
!5514 = !DILocation(line: 334, column: 23, scope: !5488)
!5515 = !DILocation(line: 334, column: 40, scope: !5488)
!5516 = !DILocation(line: 334, column: 50, scope: !5488)
!5517 = !DILocation(line: 334, column: 64, scope: !5488)
!5518 = !DILocation(line: 337, column: 3, scope: !5488)
!5519 = !DILocation(line: 353, column: 9, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5488, file: !5489, line: 353, column: 7)
!5521 = !DILocation(line: 353, column: 7, scope: !5488)
!5522 = !DILocation(line: 388, column: 9, scope: !5488)
!5523 = !DILocation(line: 336, column: 10, scope: !5488)
!5524 = !DILocation(line: 396, column: 19, scope: !5513)
!5525 = !DILocation(line: 396, column: 31, scope: !5526)
!5526 = !DILexicalBlockFile(scope: !5513, file: !5489, discriminator: 1)
!5527 = !DILocation(line: 396, column: 26, scope: !5513)
!5528 = !DILocation(line: 396, column: 41, scope: !5529)
!5529 = !DILexicalBlockFile(scope: !5513, file: !5489, discriminator: 2)
!5530 = !DILocation(line: 396, column: 7, scope: !5531)
!5531 = !DILexicalBlockFile(scope: !5488, file: !5489, discriminator: 2)
!5532 = !DILocation(line: 398, column: 26, scope: !5512)
!5533 = !DILocation(line: 398, column: 21, scope: !5512)
!5534 = !DILocation(line: 399, column: 14, scope: !5512)
!5535 = !DILocation(line: 399, column: 12, scope: !5512)
!5536 = !DILocation(line: 405, column: 1, scope: !5488)
!5537 = distinct !DISubprogram(name: "close_stream", scope: !5538, file: !5538, line: 56, type: !5539, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !781, variables: !5581)
!5538 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!70, !5541}
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5543)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5544)
!5544 = !{!5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5543, file: !132, line: 242, baseType: !70, size: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5543, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5543, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5543, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5543, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5543, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5543, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5543, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5543, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5543, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5543, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5543, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5543, file: !132, line: 260, baseType: !5558, size: 64, offset: 768)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5560)
!5560 = !{!5561, !5562, !5564}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5559, file: !132, line: 157, baseType: !5558, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5559, file: !132, line: 158, baseType: !5563, size: 64, offset: 64)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5559, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5543, file: !132, line: 262, baseType: !5563, size: 64, offset: 832)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5543, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5543, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5543, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5543, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5543, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5543, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5543, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5543, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5543, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5543, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5543, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5543, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5543, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5543, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5543, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5581 = !{!5582, !5583, !5585, !5586}
!5582 = !DILocalVariable(name: "stream", arg: 1, scope: !5537, file: !5538, line: 56, type: !5541)
!5583 = !DILocalVariable(name: "some_pending", scope: !5537, file: !5538, line: 58, type: !5584)
!5584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!5585 = !DILocalVariable(name: "prev_fail", scope: !5537, file: !5538, line: 59, type: !5584)
!5586 = !DILocalVariable(name: "fclose_fail", scope: !5537, file: !5538, line: 60, type: !5584)
!5587 = !DILocation(line: 56, column: 21, scope: !5537)
!5588 = !DILocation(line: 58, column: 30, scope: !5537)
!5589 = !DILocalVariable(name: "__stream", arg: 1, scope: !5590, file: !1104, line: 132, type: !5541)
!5590 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1104, file: !1104, line: 132, type: !5539, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !781, variables: !5591)
!5591 = !{!5589}
!5592 = !DILocation(line: 132, column: 1, scope: !5590, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 59, column: 27, scope: !5537)
!5594 = !DILocation(line: 134, column: 10, scope: !5590, inlinedAt: !5593)
!5595 = !DILocation(line: 59, column: 43, scope: !5537)
!5596 = !DILocation(line: 60, column: 29, scope: !5537)
!5597 = !DILocation(line: 60, column: 45, scope: !5537)
!5598 = !DILocation(line: 70, column: 17, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5537, file: !5538, line: 70, column: 7)
!5600 = !DILocation(line: 70, column: 33, scope: !5601)
!5601 = !DILexicalBlockFile(scope: !5599, file: !5538, discriminator: 1)
!5602 = !DILocation(line: 70, column: 53, scope: !5603)
!5603 = !DILexicalBlockFile(scope: !5599, file: !5538, discriminator: 3)
!5604 = !DILocation(line: 70, column: 7, scope: !5605)
!5605 = !DILexicalBlockFile(scope: !5537, file: !5538, discriminator: 3)
!5606 = !DILocation(line: 72, column: 11, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5599, file: !5538, line: 71, column: 5)
!5608 = !DILocation(line: 73, column: 9, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5607, file: !5538, line: 72, column: 11)
!5610 = !DILocation(line: 73, column: 15, scope: !5609)
!5611 = !DILocation(line: 78, column: 1, scope: !5537)
!5612 = distinct !DISubprogram(name: "hard_locale", scope: !5613, file: !5613, line: 38, type: !5614, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !783, variables: !5616)
!5613 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!76, !70}
!5616 = !{!5617, !5618, !5619, !5620, !5627, !5628, !5630, !5631, !5633, !5634, !5636}
!5617 = !DILocalVariable(name: "category", arg: 1, scope: !5612, file: !5613, line: 38, type: !70)
!5618 = !DILocalVariable(name: "hard", scope: !5612, file: !5613, line: 40, type: !76)
!5619 = !DILocalVariable(name: "p", scope: !5612, file: !5613, line: 41, type: !68)
!5620 = !DILocalVariable(name: "__s1_len", scope: !5621, file: !5613, line: 47, type: !61)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !5613, line: 47, column: 15)
!5622 = distinct !DILexicalBlock(scope: !5623, file: !5613, line: 47, column: 15)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !5613, line: 46, column: 9)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !5613, line: 45, column: 11)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !5613, line: 44, column: 5)
!5626 = distinct !DILexicalBlock(scope: !5612, file: !5613, line: 43, column: 7)
!5627 = !DILocalVariable(name: "__s2_len", scope: !5621, file: !5613, line: 47, type: !61)
!5628 = !DILocalVariable(name: "__s2", scope: !5629, file: !5613, line: 47, type: !65)
!5629 = distinct !DILexicalBlock(scope: !5621, file: !5613, line: 47, column: 15)
!5630 = !DILocalVariable(name: "__result", scope: !5629, file: !5613, line: 47, type: !70)
!5631 = !DILocalVariable(name: "__s1_len", scope: !5632, file: !5613, line: 47, type: !61)
!5632 = distinct !DILexicalBlock(scope: !5622, file: !5613, line: 47, column: 39)
!5633 = !DILocalVariable(name: "__s2_len", scope: !5632, file: !5613, line: 47, type: !61)
!5634 = !DILocalVariable(name: "__s2", scope: !5635, file: !5613, line: 47, type: !65)
!5635 = distinct !DILexicalBlock(scope: !5632, file: !5613, line: 47, column: 39)
!5636 = !DILocalVariable(name: "__result", scope: !5635, file: !5613, line: 47, type: !70)
!5637 = !DILocation(line: 38, column: 18, scope: !5612)
!5638 = !DILocation(line: 40, column: 8, scope: !5612)
!5639 = !DILocation(line: 41, column: 19, scope: !5612)
!5640 = !DILocation(line: 41, column: 15, scope: !5612)
!5641 = !DILocation(line: 43, column: 7, scope: !5626)
!5642 = !DILocation(line: 43, column: 7, scope: !5612)
!5643 = !DILocation(line: 47, column: 15, scope: !5621)
!5644 = !DILocation(line: 47, column: 15, scope: !5629)
!5645 = !DILocation(line: 47, column: 15, scope: !5646)
!5646 = !DILexicalBlockFile(scope: !5629, file: !5613, discriminator: 2)
!5647 = !DILocation(line: 47, column: 15, scope: !5648)
!5648 = !DILexicalBlockFile(scope: !5649, file: !5613, discriminator: 3)
!5649 = distinct !DILexicalBlock(scope: !5629, file: !5613, line: 47, column: 15)
!5650 = !DILocation(line: 47, column: 15, scope: !5651)
!5651 = !DILexicalBlockFile(scope: !5649, file: !5613, discriminator: 2)
!5652 = !DILocation(line: 47, column: 15, scope: !5653)
!5653 = !DILexicalBlockFile(scope: !5654, file: !5613, discriminator: 4)
!5654 = distinct !DILexicalBlock(scope: !5649, file: !5613, line: 47, column: 15)
!5655 = !DILocation(line: 47, column: 15, scope: !5656)
!5656 = !DILexicalBlockFile(scope: !5621, file: !5613, discriminator: 11)
!5657 = !DILocation(line: 47, column: 36, scope: !5658)
!5658 = !DILexicalBlockFile(scope: !5622, file: !5613, discriminator: 13)
!5659 = !DILocation(line: 47, column: 39, scope: !5632)
!5660 = !DILocation(line: 47, column: 39, scope: !5661)
!5661 = !DILexicalBlockFile(scope: !5632, file: !5613, discriminator: 26)
!5662 = !DILocation(line: 47, column: 59, scope: !5663)
!5663 = !DILexicalBlockFile(scope: !5622, file: !5613, discriminator: 27)
!5664 = !DILocation(line: 47, column: 15, scope: !5665)
!5665 = !DILexicalBlockFile(scope: !5623, file: !5613, discriminator: 27)
!5666 = !DILocation(line: 48, column: 13, scope: !5622)
!5667 = !DILocation(line: 71, column: 3, scope: !5612)
!5668 = distinct !DISubprogram(name: "locale_charset", scope: !734, file: !734, line: 393, type: !5669, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !391, variables: !5671)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!68}
!5671 = !{!5672, !5673, !5674, !5679}
!5672 = !DILocalVariable(name: "codeset", scope: !5668, file: !734, line: 395, type: !68)
!5673 = !DILocalVariable(name: "aliases", scope: !5668, file: !734, line: 396, type: !68)
!5674 = !DILocalVariable(name: "__s1_len", scope: !5675, file: !734, line: 592, type: !61)
!5675 = distinct !DILexicalBlock(scope: !5676, file: !734, line: 592, column: 9)
!5676 = distinct !DILexicalBlock(scope: !5677, file: !734, line: 592, column: 9)
!5677 = distinct !DILexicalBlock(scope: !5678, file: !734, line: 589, column: 3)
!5678 = distinct !DILexicalBlock(scope: !5668, file: !734, line: 589, column: 3)
!5679 = !DILocalVariable(name: "__s2_len", scope: !5675, file: !734, line: 592, type: !61)
!5680 = !DILocalVariable(name: "buf1", scope: !5681, file: !734, line: 196, type: !5748)
!5681 = distinct !DILexicalBlock(scope: !5682, file: !734, line: 194, column: 21)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !734, line: 193, column: 19)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !734, line: 193, column: 19)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !734, line: 188, column: 17)
!5685 = distinct !DILexicalBlock(scope: !5686, file: !734, line: 181, column: 19)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !734, line: 177, column: 13)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !734, line: 173, column: 15)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !734, line: 161, column: 9)
!5689 = distinct !DILexicalBlock(scope: !5690, file: !734, line: 157, column: 11)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !734, line: 130, column: 5)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !734, line: 129, column: 7)
!5692 = distinct !DISubprogram(name: "get_charset_aliases", scope: !734, file: !734, line: 124, type: !5669, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !391, variables: !5693)
!5693 = !{!5694, !5695, !5696, !5697, !5698, !5700, !5701, !5702, !5703, !5744, !5745, !5746, !5680, !5747, !5751, !5752, !5753}
!5694 = !DILocalVariable(name: "cp", scope: !5692, file: !734, line: 126, type: !68)
!5695 = !DILocalVariable(name: "dir", scope: !5690, file: !734, line: 132, type: !68)
!5696 = !DILocalVariable(name: "base", scope: !5690, file: !734, line: 133, type: !68)
!5697 = !DILocalVariable(name: "file_name", scope: !5690, file: !734, line: 134, type: !58)
!5698 = !DILocalVariable(name: "dir_len", scope: !5699, file: !734, line: 144, type: !61)
!5699 = distinct !DILexicalBlock(scope: !5690, file: !734, line: 143, column: 7)
!5700 = !DILocalVariable(name: "base_len", scope: !5699, file: !734, line: 145, type: !61)
!5701 = !DILocalVariable(name: "add_slash", scope: !5699, file: !734, line: 146, type: !70)
!5702 = !DILocalVariable(name: "fd", scope: !5688, file: !734, line: 162, type: !70)
!5703 = !DILocalVariable(name: "fp", scope: !5686, file: !734, line: 178, type: !5704)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5706)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5707)
!5707 = !{!5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5706, file: !132, line: 242, baseType: !70, size: 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5706, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5706, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5706, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5706, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5706, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5706, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5706, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5706, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5706, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5706, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5706, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5706, file: !132, line: 260, baseType: !5721, size: 64, offset: 768)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5723)
!5723 = !{!5724, !5725, !5727}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5722, file: !132, line: 157, baseType: !5721, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5722, file: !132, line: 158, baseType: !5726, size: 64, offset: 64)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5722, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5706, file: !132, line: 262, baseType: !5726, size: 64, offset: 832)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5706, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5706, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5706, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5706, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5706, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5706, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5706, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5706, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5706, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5706, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5706, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5706, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5706, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5706, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5706, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5744 = !DILocalVariable(name: "res_ptr", scope: !5684, file: !734, line: 190, type: !58)
!5745 = !DILocalVariable(name: "res_size", scope: !5684, file: !734, line: 191, type: !61)
!5746 = !DILocalVariable(name: "c", scope: !5681, file: !734, line: 195, type: !70)
!5747 = !DILocalVariable(name: "buf2", scope: !5681, file: !734, line: 197, type: !5748)
!5748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 408, elements: !5749)
!5749 = !{!5750}
!5750 = !DISubrange(count: 51)
!5751 = !DILocalVariable(name: "l1", scope: !5681, file: !734, line: 198, type: !61)
!5752 = !DILocalVariable(name: "l2", scope: !5681, file: !734, line: 198, type: !61)
!5753 = !DILocalVariable(name: "old_res_ptr", scope: !5681, file: !734, line: 199, type: !58)
!5754 = !DILocation(line: 196, column: 28, scope: !5681, inlinedAt: !5755)
!5755 = distinct !DILocation(line: 589, column: 18, scope: !5678)
!5756 = !DILocation(line: 197, column: 28, scope: !5681, inlinedAt: !5755)
!5757 = !DILocation(line: 403, column: 13, scope: !5668)
!5758 = !DILocation(line: 395, column: 15, scope: !5668)
!5759 = !DILocation(line: 584, column: 15, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5668, file: !734, line: 584, column: 7)
!5761 = !DILocation(line: 584, column: 7, scope: !5668)
!5762 = !DILocation(line: 128, column: 8, scope: !5692, inlinedAt: !5755)
!5763 = !DILocation(line: 126, column: 15, scope: !5692, inlinedAt: !5755)
!5764 = !DILocation(line: 129, column: 10, scope: !5691, inlinedAt: !5755)
!5765 = !DILocation(line: 129, column: 7, scope: !5692, inlinedAt: !5755)
!5766 = !DILocation(line: 138, column: 13, scope: !5690, inlinedAt: !5755)
!5767 = !DILocation(line: 132, column: 19, scope: !5690, inlinedAt: !5755)
!5768 = !DILocation(line: 139, column: 15, scope: !5769, inlinedAt: !5755)
!5769 = distinct !DILexicalBlock(scope: !5690, file: !734, line: 139, column: 11)
!5770 = !DILocation(line: 139, column: 23, scope: !5769, inlinedAt: !5755)
!5771 = !DILocation(line: 139, column: 26, scope: !5772, inlinedAt: !5755)
!5772 = !DILexicalBlockFile(scope: !5769, file: !734, discriminator: 1)
!5773 = !DILocation(line: 139, column: 33, scope: !5772, inlinedAt: !5755)
!5774 = !DILocation(line: 139, column: 11, scope: !5775, inlinedAt: !5755)
!5775 = !DILexicalBlockFile(scope: !5690, file: !734, discriminator: 1)
!5776 = !DILocation(line: 140, column: 9, scope: !5769, inlinedAt: !5755)
!5777 = !DILocation(line: 144, column: 26, scope: !5699, inlinedAt: !5755)
!5778 = !DILocation(line: 144, column: 16, scope: !5699, inlinedAt: !5755)
!5779 = !DILocation(line: 145, column: 16, scope: !5699, inlinedAt: !5755)
!5780 = !DILocation(line: 146, column: 34, scope: !5699, inlinedAt: !5755)
!5781 = !DILocation(line: 146, column: 38, scope: !5699, inlinedAt: !5755)
!5782 = !DILocation(line: 146, column: 42, scope: !5783, inlinedAt: !5755)
!5783 = !DILexicalBlockFile(scope: !5699, file: !734, discriminator: 1)
!5784 = !DILocation(line: 146, column: 41, scope: !5783, inlinedAt: !5755)
!5785 = !DILocation(line: 147, column: 48, scope: !5699, inlinedAt: !5755)
!5786 = !DILocation(line: 147, column: 46, scope: !5699, inlinedAt: !5755)
!5787 = !DILocation(line: 147, column: 69, scope: !5699, inlinedAt: !5755)
!5788 = !DILocation(line: 147, column: 30, scope: !5699, inlinedAt: !5755)
!5789 = !DILocation(line: 134, column: 13, scope: !5690, inlinedAt: !5755)
!5790 = !DILocation(line: 148, column: 13, scope: !5699, inlinedAt: !5755)
!5791 = !DILocation(line: 150, column: 13, scope: !5792, inlinedAt: !5755)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !734, line: 149, column: 11)
!5793 = distinct !DILexicalBlock(scope: !5699, file: !734, line: 148, column: 13)
!5794 = !DILocation(line: 151, column: 17, scope: !5792, inlinedAt: !5755)
!5795 = !DILocation(line: 152, column: 34, scope: !5796, inlinedAt: !5755)
!5796 = distinct !DILexicalBlock(scope: !5792, file: !734, line: 151, column: 17)
!5797 = !DILocation(line: 153, column: 41, scope: !5792, inlinedAt: !5755)
!5798 = !DILocation(line: 153, column: 13, scope: !5792, inlinedAt: !5755)
!5799 = !DILocation(line: 157, column: 11, scope: !5690, inlinedAt: !5755)
!5800 = !DILocation(line: 171, column: 16, scope: !5688, inlinedAt: !5755)
!5801 = !DILocation(line: 162, column: 15, scope: !5688, inlinedAt: !5755)
!5802 = !DILocation(line: 173, column: 18, scope: !5687, inlinedAt: !5755)
!5803 = !DILocation(line: 173, column: 15, scope: !5688, inlinedAt: !5755)
!5804 = !DILocation(line: 180, column: 20, scope: !5686, inlinedAt: !5755)
!5805 = !DILocation(line: 178, column: 21, scope: !5686, inlinedAt: !5755)
!5806 = !DILocation(line: 181, column: 22, scope: !5685, inlinedAt: !5755)
!5807 = !DILocation(line: 181, column: 19, scope: !5686, inlinedAt: !5755)
!5808 = !DILocation(line: 190, column: 25, scope: !5684, inlinedAt: !5755)
!5809 = !DILocation(line: 184, column: 19, scope: !5810, inlinedAt: !5755)
!5810 = distinct !DILexicalBlock(scope: !5685, file: !734, line: 182, column: 17)
!5811 = !DILocation(line: 186, column: 17, scope: !5810, inlinedAt: !5755)
!5812 = !DILocation(line: 191, column: 26, scope: !5684, inlinedAt: !5755)
!5813 = !DILocation(line: 196, column: 23, scope: !5681, inlinedAt: !5755)
!5814 = !DILocation(line: 197, column: 23, scope: !5681, inlinedAt: !5755)
!5815 = !DILocalVariable(name: "__fp", arg: 1, scope: !5816, file: !1104, line: 63, type: !5704)
!5816 = distinct !DISubprogram(name: "getc_unlocked", scope: !1104, file: !1104, line: 63, type: !5817, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !391, variables: !5819)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!70, !5704}
!5819 = !{!5815}
!5820 = !DILocation(line: 63, column: 22, scope: !5816, inlinedAt: !5821)
!5821 = distinct !DILocation(line: 201, column: 27, scope: !5681, inlinedAt: !5755)
!5822 = !DILocation(line: 65, column: 10, scope: !5816, inlinedAt: !5821)
!5823 = !DILocation(line: 65, column: 10, scope: !5824, inlinedAt: !5821)
!5824 = !DILexicalBlockFile(scope: !5816, file: !1104, discriminator: 1)
!5825 = !DILocation(line: 65, column: 10, scope: !5826, inlinedAt: !5821)
!5826 = !DILexicalBlockFile(scope: !5816, file: !1104, discriminator: 2)
!5827 = !DILocation(line: 65, column: 10, scope: !5828, inlinedAt: !5821)
!5828 = !DILexicalBlockFile(scope: !5816, file: !1104, discriminator: 3)
!5829 = !DILocation(line: 195, column: 27, scope: !5681, inlinedAt: !5755)
!5830 = !DILocation(line: 202, column: 27, scope: !5681, inlinedAt: !5755)
!5831 = !DILocation(line: 63, column: 22, scope: !5816, inlinedAt: !5832)
!5832 = distinct !DILocation(line: 210, column: 33, scope: !5833, inlinedAt: !5755)
!5833 = distinct !DILexicalBlock(scope: !5834, file: !734, line: 207, column: 25)
!5834 = distinct !DILexicalBlock(scope: !5681, file: !734, line: 206, column: 27)
!5835 = !DILocation(line: 65, column: 10, scope: !5816, inlinedAt: !5832)
!5836 = !DILocation(line: 65, column: 10, scope: !5824, inlinedAt: !5832)
!5837 = !DILocation(line: 65, column: 10, scope: !5826, inlinedAt: !5832)
!5838 = !DILocation(line: 65, column: 10, scope: !5828, inlinedAt: !5832)
!5839 = !DILocation(line: 210, column: 29, scope: !5840, inlinedAt: !5755)
!5840 = !DILexicalBlockFile(scope: !5833, file: !734, discriminator: 1)
!5841 = distinct !{!5841, !5842, !5843}
!5842 = !DILocation(line: 193, column: 19, scope: !5683)
!5843 = !DILocation(line: 241, column: 21, scope: !5683)
!5844 = !DILocation(line: 216, column: 23, scope: !5681, inlinedAt: !5755)
!5845 = !DILocation(line: 217, column: 27, scope: !5846, inlinedAt: !5755)
!5846 = distinct !DILexicalBlock(scope: !5681, file: !734, line: 217, column: 27)
!5847 = !DILocation(line: 217, column: 64, scope: !5846, inlinedAt: !5755)
!5848 = !DILocation(line: 217, column: 27, scope: !5681, inlinedAt: !5755)
!5849 = !DILocation(line: 219, column: 28, scope: !5681, inlinedAt: !5755)
!5850 = !DILocation(line: 198, column: 30, scope: !5681, inlinedAt: !5755)
!5851 = !DILocation(line: 220, column: 28, scope: !5681, inlinedAt: !5755)
!5852 = !DILocation(line: 198, column: 34, scope: !5681, inlinedAt: !5755)
!5853 = !DILocation(line: 199, column: 29, scope: !5681, inlinedAt: !5755)
!5854 = !DILocation(line: 222, column: 36, scope: !5855, inlinedAt: !5755)
!5855 = distinct !DILexicalBlock(scope: !5681, file: !734, line: 222, column: 27)
!5856 = !DILocation(line: 222, column: 27, scope: !5681, inlinedAt: !5755)
!5857 = !DILocation(line: 225, column: 63, scope: !5858, inlinedAt: !5755)
!5858 = distinct !DILexicalBlock(scope: !5855, file: !734, line: 223, column: 25)
!5859 = !DILocation(line: 225, column: 46, scope: !5858, inlinedAt: !5755)
!5860 = !DILocation(line: 226, column: 25, scope: !5858, inlinedAt: !5755)
!5861 = !DILocation(line: 229, column: 36, scope: !5862, inlinedAt: !5755)
!5862 = distinct !DILexicalBlock(scope: !5855, file: !734, line: 228, column: 25)
!5863 = !DILocation(line: 230, column: 73, scope: !5862, inlinedAt: !5755)
!5864 = !DILocation(line: 230, column: 46, scope: !5862, inlinedAt: !5755)
!5865 = !DILocation(line: 232, column: 35, scope: !5866, inlinedAt: !5755)
!5866 = distinct !DILexicalBlock(scope: !5681, file: !734, line: 232, column: 27)
!5867 = !DILocation(line: 232, column: 27, scope: !5681, inlinedAt: !5755)
!5868 = !DILocation(line: 236, column: 27, scope: !5869, inlinedAt: !5755)
!5869 = distinct !DILexicalBlock(scope: !5866, file: !734, line: 233, column: 25)
!5870 = !DILocation(line: 237, column: 27, scope: !5869, inlinedAt: !5755)
!5871 = !DILocation(line: 239, column: 39, scope: !5681, inlinedAt: !5755)
!5872 = !DILocation(line: 239, column: 50, scope: !5681, inlinedAt: !5755)
!5873 = !DILocation(line: 239, column: 61, scope: !5681, inlinedAt: !5755)
!5874 = !DILocalVariable(name: "__dest", arg: 1, scope: !5875, file: !5876, line: 107, type: !5879)
!5875 = distinct !DISubprogram(name: "strcpy", scope: !5876, file: !5876, line: 107, type: !5877, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !391, variables: !5881)
!5876 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!58, !5879, !5880}
!5879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!5880 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!5881 = !{!5874, !5882}
!5882 = !DILocalVariable(name: "__src", arg: 2, scope: !5875, file: !5876, line: 107, type: !5880)
!5883 = !DILocation(line: 107, column: 1, scope: !5875, inlinedAt: !5884)
!5884 = distinct !DILocation(line: 239, column: 23, scope: !5681, inlinedAt: !5755)
!5885 = !DILocation(line: 109, column: 49, scope: !5875, inlinedAt: !5884)
!5886 = !DILocation(line: 109, column: 10, scope: !5875, inlinedAt: !5884)
!5887 = !DILocation(line: 107, column: 1, scope: !5875, inlinedAt: !5888)
!5888 = distinct !DILocation(line: 240, column: 23, scope: !5681, inlinedAt: !5755)
!5889 = !DILocation(line: 109, column: 49, scope: !5875, inlinedAt: !5888)
!5890 = !DILocation(line: 109, column: 10, scope: !5875, inlinedAt: !5888)
!5891 = !DILocation(line: 241, column: 21, scope: !5682, inlinedAt: !5755)
!5892 = !DILocation(line: 242, column: 19, scope: !5684, inlinedAt: !5755)
!5893 = !DILocation(line: 243, column: 32, scope: !5894, inlinedAt: !5755)
!5894 = distinct !DILexicalBlock(scope: !5684, file: !734, line: 243, column: 23)
!5895 = !DILocation(line: 243, column: 23, scope: !5684, inlinedAt: !5755)
!5896 = !DILocation(line: 247, column: 33, scope: !5897, inlinedAt: !5755)
!5897 = distinct !DILexicalBlock(scope: !5894, file: !734, line: 246, column: 21)
!5898 = !DILocation(line: 247, column: 45, scope: !5897, inlinedAt: !5755)
!5899 = !DILocation(line: 253, column: 11, scope: !5688, inlinedAt: !5755)
!5900 = !DILocation(line: 377, column: 23, scope: !5690, inlinedAt: !5755)
!5901 = !DILocation(line: 378, column: 5, scope: !5690, inlinedAt: !5755)
!5902 = !DILocation(line: 396, column: 15, scope: !5668)
!5903 = !DILocation(line: 590, column: 8, scope: !5677)
!5904 = !DILocation(line: 590, column: 17, scope: !5677)
!5905 = !DILocation(line: 589, column: 3, scope: !5906)
!5906 = !DILexicalBlockFile(scope: !5678, file: !734, discriminator: 1)
!5907 = !DILocation(line: 592, column: 9, scope: !5675)
!5908 = !DILocation(line: 592, column: 35, scope: !5676)
!5909 = !DILocation(line: 593, column: 9, scope: !5676)
!5910 = !DILocation(line: 593, column: 24, scope: !5911)
!5911 = !DILexicalBlockFile(scope: !5676, file: !734, discriminator: 1)
!5912 = !DILocation(line: 593, column: 31, scope: !5911)
!5913 = !DILocation(line: 593, column: 34, scope: !5914)
!5914 = !DILexicalBlockFile(scope: !5676, file: !734, discriminator: 2)
!5915 = !DILocation(line: 593, column: 45, scope: !5914)
!5916 = !DILocation(line: 592, column: 9, scope: !5917)
!5917 = !DILexicalBlockFile(scope: !5677, file: !734, discriminator: 1)
!5918 = !DILocation(line: 595, column: 29, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5676, file: !734, line: 594, column: 7)
!5920 = !DILocation(line: 595, column: 27, scope: !5919)
!5921 = !DILocation(line: 595, column: 46, scope: !5919)
!5922 = !DILocation(line: 596, column: 9, scope: !5919)
!5923 = !DILocation(line: 591, column: 19, scope: !5677)
!5924 = !DILocation(line: 591, column: 36, scope: !5677)
!5925 = !DILocation(line: 591, column: 16, scope: !5677)
!5926 = !DILocation(line: 591, column: 52, scope: !5917)
!5927 = !DILocation(line: 591, column: 69, scope: !5677)
!5928 = !DILocation(line: 591, column: 49, scope: !5677)
!5929 = distinct !{!5929, !5930, !5931}
!5930 = !DILocation(line: 589, column: 3, scope: !5678)
!5931 = !DILocation(line: 597, column: 7, scope: !5678)
!5932 = !DILocation(line: 602, column: 7, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5668, file: !734, line: 602, column: 7)
!5934 = !DILocation(line: 602, column: 18, scope: !5933)
!5935 = !DILocation(line: 602, column: 7, scope: !5668)
!5936 = !DILocation(line: 612, column: 3, scope: !5668)
