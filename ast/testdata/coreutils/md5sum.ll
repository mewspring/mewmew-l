; ModuleID = 'coreutils-8.27/src/md5sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
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
@.str.11 = private unnamed_addr constant [9 x i8] c"RFC 1321\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
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
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !236
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), align 8, !dbg !250
@.str.35 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !256
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !261
@.str.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !264
@exit_failure = global i32 1, align 4, !dbg !274
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !281
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16, !dbg !288
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !300
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !307
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !320
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.96 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.97 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.98 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.99 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !327
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !334
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !322
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !336
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !342
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !351
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !386
@.str.3.160 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.161 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.162 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.163 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.164 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !788 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !792, metadata !793), !dbg !794
  %2 = icmp eq i32 %0, 0, !dbg !795
  br i1 %2, label %8, label %3, !dbg !797

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !798, !tbaa !801
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !798
  %6 = load i8*, i8** @program_name, align 8, !dbg !798, !tbaa !801
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !805
  br label %52, !dbg !807

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !809
  %10 = load i8*, i8** @program_name, align 8, !dbg !809, !tbaa !801
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128) #10, !dbg !811
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !813
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !801
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !818
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !820
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !801
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !822
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !824
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !825
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !826
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !826, !tbaa !801
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !827
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !828
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !828, !tbaa !801
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !830
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !832
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !832, !tbaa !801
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !833
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !834
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !834, !tbaa !801
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !835
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !836
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !836, !tbaa !801
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !837
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !838
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !839
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !88, metadata !793) #10, !dbg !840
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !88, metadata !793) #10, !dbg !840
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !842
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !843
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !845
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !99, metadata !793) #10, !dbg !846
  %40 = icmp eq i8* %39, null, !dbg !847
  br i1 %40, label %47, label %41, !dbg !848

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 3) #13, !dbg !849
  %43 = icmp eq i32 %42, 0, !dbg !849
  br i1 %43, label %47, label %44, !dbg !851

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !853
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !855
  br label %47, !dbg !857

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !858
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !859
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !860
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !861
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #14, !dbg !862
  unreachable, !dbg !862
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !863 {
  %3 = alloca [20 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !188, metadata !793), !dbg !892
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !868, metadata !793), !dbg !894
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !869, metadata !793), !dbg !895
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !896
  call void @llvm.lifetime.start(i64 20, i8* nonnull %9) #10, !dbg !896
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !870, metadata !793), !dbg !897
  tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !898, metadata !793), !dbg !906
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 3, !dbg !908
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !905, metadata !793), !dbg !909
  %11 = ptrtoint i8* %10 to i64, !dbg !910
  %12 = and i64 %11, 3, !dbg !911
  %13 = sub nsw i64 0, %12, !dbg !912
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !912
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !871, metadata !793), !dbg !913
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !872, metadata !793), !dbg !914
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !793), !dbg !915
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !875, metadata !793), !dbg !916
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !876, metadata !793), !dbg !917
  %15 = load i8*, i8** %1, align 8, !dbg !918, !tbaa !801
  call void @set_program_name(i8* %15) #10, !dbg !919
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !920
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !921
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !922
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !923
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !924, !tbaa !801
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !925
  br label %22, !dbg !926

; <label>:22:                                     ; preds = %35, %2
  %23 = phi i32 [ -1, %2 ], [ %36, %35 ]
  %24 = phi i8 [ 0, %2 ], [ %37, %35 ]
  %25 = phi i8 [ 0, %2 ], [ %38, %35 ]
  call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !872, metadata !793), !dbg !914
  call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !876, metadata !793), !dbg !917
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !875, metadata !793), !dbg !916
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !927
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !873, metadata !793), !dbg !929
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
  ], !dbg !930

; <label>:27:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !872, metadata !793), !dbg !914
  br label %35, !dbg !931

; <label>:28:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35, !dbg !933

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !875, metadata !793), !dbg !916
  br label %35, !dbg !934

; <label>:30:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %35, !dbg !935

; <label>:31:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %35, !dbg !936

; <label>:32:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %35, !dbg !937

; <label>:33:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %35, !dbg !938

; <label>:34:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !876, metadata !793), !dbg !917
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !875, metadata !793), !dbg !916
  br label %35, !dbg !939

; <label>:35:                                     ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %22
  %36 = phi i32 [ 1, %34 ], [ %23, %33 ], [ %23, %32 ], [ %23, %31 ], [ %23, %30 ], [ 0, %29 ], [ %23, %28 ], [ %23, %27 ], [ 1, %22 ]
  %37 = phi i8 [ 1, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %30 ], [ %24, %29 ], [ %24, %28 ], [ %24, %27 ], [ %24, %22 ]
  %38 = phi i8 [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %25, %30 ], [ %25, %29 ], [ %25, %28 ], [ 1, %27 ], [ %25, %22 ]
  br label %22, !dbg !914, !llvm.loop !940

; <label>:39:                                     ; preds = %22
  call void @usage(i32 0) #15, !dbg !942
  unreachable, !dbg !942

; <label>:40:                                     ; preds = %22
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !943, !tbaa !801
  %42 = load i8*, i8** @Version, align 8, !dbg !943, !tbaa !801
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !943
  call void @exit(i32 0) #14, !dbg !944
  unreachable, !dbg !943

; <label>:43:                                     ; preds = %22
  call void @usage(i32 1) #15, !dbg !946
  unreachable, !dbg !946

; <label>:44:                                     ; preds = %22
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %45 = icmp ne i8 %24, 0, !dbg !947
  %46 = xor i1 %45, true, !dbg !949
  %47 = icmp ne i32 %23, 0, !dbg !950
  %48 = or i1 %47, %46, !dbg !949
  br i1 %48, label %51, label %49, !dbg !949

; <label>:49:                                     ; preds = %44
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !952
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10, !dbg !954
  call void @usage(i32 1) #15, !dbg !956
  unreachable, !dbg !956

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i8 %25, 0, !dbg !957
  %53 = or i1 %52, %46, !dbg !960
  br i1 %53, label %56, label %54, !dbg !960

; <label>:54:                                     ; preds = %51
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !961
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55) #10, !dbg !963
  call void @usage(i32 1) #15, !dbg !965
  unreachable, !dbg !965

; <label>:56:                                     ; preds = %51
  %57 = icmp slt i32 %23, 0, !dbg !966
  %58 = or i1 %57, %52, !dbg !968
  br i1 %58, label %61, label %59, !dbg !968

; <label>:59:                                     ; preds = %56
  %60 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !969
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60) #10, !dbg !971
  call void @usage(i32 1) #15, !dbg !973
  unreachable, !dbg !973

; <label>:61:                                     ; preds = %56
  %62 = load i1, i1* @ignore_missing, align 1
  %63 = and i1 %52, %62, !dbg !974
  br i1 %63, label %64, label %66, !dbg !974

; <label>:64:                                     ; preds = %61
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !976
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #10, !dbg !978
  call void @usage(i32 1) #15, !dbg !979
  unreachable, !dbg !979

; <label>:66:                                     ; preds = %61
  %67 = load i1, i1* @status_only, align 1
  %68 = and i1 %52, %67, !dbg !980
  br i1 %68, label %69, label %71, !dbg !980

; <label>:69:                                     ; preds = %66
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #10, !dbg !984
  call void @usage(i32 1) #15, !dbg !985
  unreachable, !dbg !985

; <label>:71:                                     ; preds = %66
  %72 = load i1, i1* @warn, align 1
  %73 = and i1 %52, %72, !dbg !986
  br i1 %73, label %74, label %76, !dbg !986

; <label>:74:                                     ; preds = %71
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !988
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #10, !dbg !990
  call void @usage(i32 1) #15, !dbg !991
  unreachable, !dbg !991

; <label>:76:                                     ; preds = %71
  %77 = load i1, i1* @quiet, align 1
  %78 = and i1 %52, %77, !dbg !992
  br i1 %78, label %79, label %81, !dbg !992

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !994
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !996
  call void @usage(i32 1) #15, !dbg !997
  unreachable, !dbg !997

; <label>:81:                                     ; preds = %76
  %82 = load i1, i1* @strict, align 1
  %83 = icmp ne i8 %25, 0, !dbg !998
  %84 = xor i1 %83, true, !dbg !1000
  %85 = and i1 %82, %84, !dbg !1001
  br i1 %85, label %86, label %88, !dbg !1002

; <label>:86:                                     ; preds = %81
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !1005
  call void @usage(i32 1) #15, !dbg !1006
  unreachable, !dbg !1006

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !875, metadata !793), !dbg !916
  %89 = icmp sgt i32 %23, 0, !dbg !1007
  %90 = sext i32 %0 to i64, !dbg !1008
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90, !dbg !1008
  call void @llvm.dbg.value(metadata i8** %91, i64 0, metadata !878, metadata !793), !dbg !1009
  %92 = load i32, i32* @optind, align 4, !dbg !1010, !tbaa !1012
  %93 = icmp eq i32 %92, %0, !dbg !1014
  br i1 %93, label %94, label %96, !dbg !1015

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !1016
  call void @llvm.dbg.value(metadata i8** %95, i64 0, metadata !878, metadata !793), !dbg !1009
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** %91, align 8, !dbg !1017, !tbaa !801
  br label %96, !dbg !1018

; <label>:96:                                     ; preds = %94, %88
  %97 = phi i8** [ %95, %94 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i8** %97, i64 0, metadata !878, metadata !793), !dbg !1009
  %98 = sext i32 %92 to i64, !dbg !1019
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98, !dbg !1019
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !879, metadata !793), !dbg !1020
  call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !879, metadata !793), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !793), !dbg !915
  %100 = icmp ult i8** %99, %97, !dbg !1021
  br i1 %100, label %101, label %113, !dbg !1023

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 3
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 3
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = bitcast i8** %4 to i8*
  %109 = bitcast i64* %5 to i8*
  %110 = select i1 %89, i32 42, i32 32
  %111 = trunc i32 %110 to i8
  br label %116, !dbg !1023

; <label>:112:                                    ; preds = %655
  br label %113

; <label>:113:                                    ; preds = %112, %96
  %114 = phi i8 [ 1, %96 ], [ %656, %112 ]
  %115 = load i1, i1* @have_read_stdin, align 1
  br i1 %115, label %659, label %667, !dbg !1025

; <label>:116:                                    ; preds = %101, %655
  %117 = phi i8** [ %99, %101 ], [ %657, %655 ]
  %118 = phi i8 [ 1, %101 ], [ %656, %655 ]
  %119 = load i8*, i8** %117, align 8, !dbg !1027, !tbaa !801
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !881, metadata !793), !dbg !1028
  br i1 %83, label %120, label %563, !dbg !1029

; <label>:120:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !126, metadata !793) #10, !dbg !1030
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !182, metadata !793) #10, !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !183, metadata !793) #10, !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !184, metadata !793) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !185, metadata !793) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !186, metadata !793) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !187, metadata !793) #10, !dbg !1036
  call void @llvm.lifetime.start(i64 20, i8* nonnull %102) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !898, metadata !793) #10, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !905, metadata !793) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !190, metadata !793) #10, !dbg !1041
  call void @llvm.lifetime.start(i64 8, i8* nonnull %108) #10, !dbg !1042
  call void @llvm.lifetime.start(i64 8, i8* nonnull %109) #10, !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !197, metadata !793) #10, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !198, metadata !793) #10, !dbg !1045
  %121 = load i8, i8* %119, align 1, !dbg !1046, !tbaa !1048
  %122 = icmp eq i8 %121, 45, !dbg !1049
  br i1 %122, label %123, label %130, !dbg !1052

; <label>:123:                                    ; preds = %120
  %124 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1054
  %125 = load i8, i8* %124, align 1, !dbg !1054, !tbaa !1048
  %126 = icmp eq i8 %125, 0, !dbg !1057
  br i1 %126, label %127, label %130, !dbg !1059

; <label>:127:                                    ; preds = %123
  store i1 true, i1* @have_read_stdin, align 1
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !126, metadata !793) #10, !dbg !1030
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1063, !tbaa !801
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %129, i64 0, metadata !127, metadata !793) #10, !dbg !1064
  br label %137, !dbg !1065

; <label>:130:                                    ; preds = %123, %120
  %131 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1066
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, i64 0, metadata !127, metadata !793) #10, !dbg !1064
  %132 = icmp eq %struct._IO_FILE* %131, null, !dbg !1068
  br i1 %132, label %133, label %137, !dbg !1070

; <label>:133:                                    ; preds = %130
  %134 = tail call i32* @__errno_location() #1, !dbg !1071
  %135 = load i32, i32* %134, align 4, !dbg !1071, !tbaa !1012
  %136 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %119) #10, !dbg !1073
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %136) #10, !dbg !1075
  br label %559, !dbg !1077

; <label>:137:                                    ; preds = %130, %127
  %138 = phi i1 [ true, %127 ], [ false, %130 ]
  %139 = phi %struct._IO_FILE* [ %129, %127 ], [ %131, %130 ]
  %140 = phi i8* [ %128, %127 ], [ %119, %130 ]
  call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !126, metadata !793) #10, !dbg !1030
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !127, metadata !793) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !191, metadata !793) #10, !dbg !1078
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !192, metadata !793) #10, !dbg !1079
  store i8* null, i8** %4, align 8, !dbg !1080, !tbaa !801
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !193, metadata !793) #10, !dbg !1081
  store i64 0, i64* %5, align 8, !dbg !1082, !tbaa !1083
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 0
  br label %142, !dbg !1085, !llvm.loop !1086

; <label>:142:                                    ; preds = %486, %137
  %143 = phi i64 [ 0, %137 ], [ %150, %486 ]
  %144 = phi i8 [ 0, %137 ], [ %487, %486 ]
  %145 = phi i8 [ 0, %137 ], [ %488, %486 ]
  %146 = phi i64 [ 0, %137 ], [ %489, %486 ]
  %147 = phi i64 [ 0, %137 ], [ %490, %486 ]
  %148 = phi i64 [ 0, %137 ], [ %491, %486 ]
  %149 = phi i64 [ 0, %137 ], [ %492, %486 ]
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !182, metadata !793) #10, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !183, metadata !793) #10, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !184, metadata !793) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !185, metadata !793) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i8 %145, i64 0, metadata !186, metadata !793) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !187, metadata !793) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !191, metadata !793) #10, !dbg !1078
  %150 = add i64 %143, 1, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !191, metadata !793) #10, !dbg !1078
  %151 = icmp eq i64 %150, 0, !dbg !1090
  br i1 %151, label %152, label %155, !dbg !1092

; <label>:152:                                    ; preds = %142
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !1093
  %154 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1094
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %154) #10, !dbg !1096
  unreachable, !dbg !1093

; <label>:155:                                    ; preds = %142
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !192, metadata !1098) #10, !dbg !1079
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !193, metadata !1098) #10, !dbg !1081
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1099, metadata !793) #10, !dbg !1107
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1105, metadata !793) #10, !dbg !1109
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1106, metadata !793) #10, !dbg !1110
  %156 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %139) #10, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !205, metadata !793) #10, !dbg !1112
  %157 = icmp slt i64 %156, 1, !dbg !1113
  br i1 %157, label %496, label %158, !dbg !1115

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %4, align 8, !dbg !1116, !tbaa !801
  call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !192, metadata !793) #10, !dbg !1079
  %160 = load i8, i8* %159, align 1, !dbg !1116, !tbaa !1048
  %161 = icmp eq i8 %160, 35, !dbg !1118
  br i1 %161, label %486, label %162, !dbg !1119

; <label>:162:                                    ; preds = %158
  %163 = add nsw i64 %156, -1, !dbg !1120
  %164 = getelementptr inbounds i8, i8* %159, i64 %163, !dbg !1122
  %165 = load i8, i8* %164, align 1, !dbg !1122, !tbaa !1048
  %166 = icmp eq i8 %165, 10, !dbg !1123
  br i1 %166, label %167, label %169, !dbg !1124

; <label>:167:                                    ; preds = %162
  call void @llvm.dbg.value(metadata i64 %163, i64 0, metadata !205, metadata !793) #10, !dbg !1112
  store i8 0, i8* %164, align 1, !dbg !1125, !tbaa !1048
  %168 = load i8*, i8** %4, align 8, !tbaa !801
  br label %169, !dbg !1126

; <label>:169:                                    ; preds = %167, %162
  %170 = phi i8* [ %168, %167 ], [ %159, %162 ], !dbg !1127
  %171 = phi i64 [ %163, %167 ], [ %156, %162 ]
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !205, metadata !793) #10, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !192, metadata !793) #10, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !1128, metadata !793) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1134, metadata !793) #10, !dbg !1143
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1138, metadata !793) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  br label %172, !dbg !1146

; <label>:172:                                    ; preds = %176, %169
  %173 = phi i64 [ 0, %169 ], [ %177, %176 ]
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %174 = getelementptr inbounds i8, i8* %170, i64 %173, !dbg !1147
  %175 = load i8, i8* %174, align 1, !dbg !1147, !tbaa !1048
  switch i8 %175, label %180 [
    i8 32, label %176
    i8 9, label %176
    i8 92, label %178
  ], !dbg !1147

; <label>:176:                                    ; preds = %172, %172
  %177 = add i64 %173, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %177, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  br label %172, !dbg !1150, !llvm.loop !1152

; <label>:178:                                    ; preds = %172
  %179 = add i64 %173, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1138, metadata !793) #10, !dbg !1144
  br label %181, !dbg !1158

; <label>:180:                                    ; preds = %172
  br label %181, !dbg !1145

; <label>:181:                                    ; preds = %180, %178
  %182 = phi i1 [ true, %178 ], [ false, %180 ]
  %183 = phi i64 [ %179, %178 ], [ %173, %180 ]
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1139, metadata !793) #10, !dbg !1159
  %184 = getelementptr inbounds i8, i8* %170, i64 %183, !dbg !1160
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3) #13, !dbg !1160
  %186 = icmp eq i32 %185, 0, !dbg !1160
  br i1 %186, label %187, label %261, !dbg !1162

; <label>:187:                                    ; preds = %181
  %188 = add i64 %183, 3, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %189 = getelementptr inbounds i8, i8* %170, i64 %188, !dbg !1165
  %190 = load i8, i8* %189, align 1, !dbg !1165, !tbaa !1048
  %191 = icmp eq i8 %190, 32, !dbg !1167
  %192 = add i64 %183, 4, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %192, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %193, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %194 = getelementptr inbounds i8, i8* %170, i64 %193, !dbg !1170
  %195 = load i8, i8* %194, align 1, !dbg !1170, !tbaa !1048
  %196 = icmp eq i8 %195, 40, !dbg !1172
  br i1 %196, label %197, label %370, !dbg !1173

; <label>:197:                                    ; preds = %187
  %198 = add i64 %193, 1, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %198, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %199 = getelementptr inbounds i8, i8* %170, i64 %198, !dbg !1176
  %200 = sub i64 %171, %198, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1178, metadata !793) #10, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1183, metadata !793) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i1 %182, i64 0, metadata !1186, metadata !1191) #10, !dbg !1192
  %201 = icmp eq i64 %200, 0, !dbg !1193
  br i1 %201, label %370, label %202, !dbg !1195

; <label>:202:                                    ; preds = %197
  br label %203

; <label>:203:                                    ; preds = %202, %207
  %204 = phi i64 [ %205, %207 ], [ %200, %202 ]
  %205 = add i64 %204, -1
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1187, metadata !793) #10, !dbg !1196
  %206 = icmp eq i64 %205, 0, !dbg !1197
  br i1 %206, label %211, label %207, !dbg !1199

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i8, i8* %199, i64 %205, !dbg !1200
  %209 = load i8, i8* %208, align 1, !dbg !1200, !tbaa !1048
  %210 = icmp eq i8 %209, 41, !dbg !1202
  br i1 %210, label %214, label %203, !dbg !1203, !llvm.loop !1205

; <label>:211:                                    ; preds = %203
  %212 = load i8, i8* %199, align 1, !tbaa !1048
  %213 = icmp eq i8 %212, 41, !dbg !1199
  br i1 %213, label %215, label %370, !dbg !1208

; <label>:214:                                    ; preds = %207
  br label %215, !dbg !1209

; <label>:215:                                    ; preds = %214, %211
  %216 = phi i8* [ %199, %211 ], [ %208, %214 ]
  %217 = phi i1 [ true, %211 ], [ false, %214 ]
  %218 = phi i64 [ 0, %211 ], [ %205, %214 ]
  br i1 %182, label %219, label %247, !dbg !1209

; <label>:219:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1211, metadata !793) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1216, metadata !793) #10, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1217, metadata !793) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1217, metadata !793) #10, !dbg !1224
  br i1 %217, label %243, label %220, !dbg !1226

; <label>:220:                                    ; preds = %219
  %221 = add i64 %204, -2
  br label %222, !dbg !1226

; <label>:222:                                    ; preds = %236, %220
  %223 = phi i64 [ 0, %220 ], [ %240, %236 ]
  %224 = phi i8* [ %199, %220 ], [ %239, %236 ]
  %225 = getelementptr inbounds i8, i8* %199, i64 %223, !dbg !1228
  %226 = load i8, i8* %225, align 1, !dbg !1228, !tbaa !1048
  %227 = sext i8 %226 to i32, !dbg !1228
  switch i32 %227, label %236 [
    i32 92, label %228
    i32 0, label %368
  ], !dbg !1231

; <label>:228:                                    ; preds = %222
  %229 = icmp eq i64 %223, %221, !dbg !1232
  br i1 %229, label %368, label %230, !dbg !1235

; <label>:230:                                    ; preds = %228
  %231 = add i64 %223, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  %232 = getelementptr inbounds i8, i8* %199, i64 %231, !dbg !1237
  %233 = load i8, i8* %232, align 1, !dbg !1237, !tbaa !1048
  %234 = sext i8 %233 to i32, !dbg !1237
  switch i32 %234, label %368 [
    i32 110, label %235
    i32 92, label %236
  ], !dbg !1238

; <label>:235:                                    ; preds = %230
  br label %236, !dbg !1239

; <label>:236:                                    ; preds = %235, %230, %222
  %237 = phi i8 [ 10, %235 ], [ 92, %230 ], [ %226, %222 ]
  %238 = phi i64 [ %231, %235 ], [ %231, %230 ], [ %223, %222 ]
  store i8 %237, i8* %224, align 1, !tbaa !1048
  %239 = getelementptr inbounds i8, i8* %224, i64 1
  call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !1217, metadata !793) #10, !dbg !1224
  %240 = add i64 %238, 1, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1218, metadata !793) #10, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !1217, metadata !793) #10, !dbg !1224
  %241 = icmp ult i64 %240, %218, !dbg !1243
  br i1 %241, label %222, label %242, !dbg !1226, !llvm.loop !1245

; <label>:242:                                    ; preds = %236
  br label %243, !dbg !1248

; <label>:243:                                    ; preds = %242, %219
  %244 = phi i8* [ %199, %219 ], [ %239, %242 ]
  %245 = icmp ult i8* %244, %216, !dbg !1248
  br i1 %245, label %246, label %247, !dbg !1250

; <label>:246:                                    ; preds = %243
  store i8 0, i8* %244, align 1, !dbg !1251, !tbaa !1048
  br label %247, !dbg !1252

; <label>:247:                                    ; preds = %246, %243, %215
  call void @llvm.dbg.value(metadata i64 %204, i64 0, metadata !1187, metadata !793) #10, !dbg !1196
  store i8 0, i8* %216, align 1, !dbg !1253, !tbaa !1048
  br label %248, !dbg !1254

; <label>:248:                                    ; preds = %253, %247
  %249 = phi i64 [ %204, %247 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i64 %249, i64 0, metadata !1187, metadata !793) #10, !dbg !1196
  %250 = getelementptr inbounds i8, i8* %199, i64 %249, !dbg !1255
  %251 = load i8, i8* %250, align 1, !dbg !1255, !tbaa !1048
  switch i8 %251, label %367 [
    i8 32, label %253
    i8 9, label %253
    i8 61, label %252
  ], !dbg !1255

; <label>:252:                                    ; preds = %248
  br label %255

; <label>:253:                                    ; preds = %248, %248
  %254 = add i64 %249, 1, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %254, i64 0, metadata !1187, metadata !793) #10, !dbg !1196
  br label %248, !dbg !1257, !llvm.loop !1259

; <label>:255:                                    ; preds = %260, %252
  %256 = phi i64 [ %249, %252 ], [ %257, %260 ]
  %257 = add i64 %256, 1
  call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1187, metadata !793) #10, !dbg !1196
  %258 = getelementptr inbounds i8, i8* %199, i64 %257, !dbg !1262
  %259 = load i8, i8* %258, align 1, !dbg !1262, !tbaa !1048
  switch i8 %259, label %328 [
    i8 32, label %260
    i8 9, label %260
  ], !dbg !1262

; <label>:260:                                    ; preds = %255, %255
  br label %255, !llvm.loop !1263

; <label>:261:                                    ; preds = %181
  %262 = sub i64 %171, %183, !dbg !1266
  %263 = load i1, i1* @min_digest_line_length, align 8
  %264 = select i1 %263, i64 34, i64 0
  %265 = load i8, i8* %184, align 1, !dbg !1268, !tbaa !1048
  %266 = icmp eq i8 %265, 92, !dbg !1269
  %267 = zext i1 %266 to i64, !dbg !1270
  %268 = or i64 %267, %264, !dbg !1271
  %269 = icmp ult i64 %262, %268, !dbg !1272
  br i1 %269, label %370, label %270, !dbg !1273

; <label>:270:                                    ; preds = %261
  %271 = load i1, i1* @digest_hex_bytes, align 8
  %272 = select i1 %271, i64 32, i64 0
  %273 = add i64 %272, %183, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %273, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %274 = getelementptr inbounds i8, i8* %170, i64 %273, !dbg !1275
  %275 = load i8, i8* %274, align 1, !dbg !1275, !tbaa !1048
  switch i8 %275, label %370 [
    i8 32, label %276
    i8 9, label %276
  ], !dbg !1275

; <label>:276:                                    ; preds = %270, %270
  %277 = add i64 %273, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %277, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  store i8 0, i8* %274, align 1, !dbg !1278, !tbaa !1048
  %278 = sub i64 %171, %277, !dbg !1279
  %279 = icmp eq i64 %278, 1, !dbg !1281
  br i1 %279, label %283, label %280, !dbg !1282

; <label>:280:                                    ; preds = %276
  %281 = getelementptr inbounds i8, i8* %170, i64 %277, !dbg !1283
  %282 = load i8, i8* %281, align 1, !dbg !1283, !tbaa !1048
  switch i8 %282, label %283 [
    i8 32, label %287
    i8 42, label %287
  ], !dbg !1285

; <label>:283:                                    ; preds = %280, %276
  %284 = load i32, i32* @bsd_reversed, align 4, !dbg !1286, !tbaa !1012
  %285 = icmp eq i32 %284, 0, !dbg !1289
  br i1 %285, label %370, label %286, !dbg !1290

; <label>:286:                                    ; preds = %283
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1291, !tbaa !1012
  br label %292, !dbg !1292

; <label>:287:                                    ; preds = %280, %280
  %288 = load i32, i32* @bsd_reversed, align 4, !dbg !1293, !tbaa !1012
  %289 = icmp eq i32 %288, 1, !dbg !1295
  br i1 %289, label %292, label %290, !dbg !1296

; <label>:290:                                    ; preds = %287
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1297, !tbaa !1012
  %291 = add i64 %273, 2, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  br label %292, !dbg !1300

; <label>:292:                                    ; preds = %290, %287, %286
  %293 = phi i64 [ %277, %286 ], [ %291, %290 ], [ %277, %287 ]
  call void @llvm.dbg.value(metadata i64 %293, i64 0, metadata !1140, metadata !793) #10, !dbg !1145
  %294 = getelementptr inbounds i8, i8* %170, i64 %293, !dbg !1301
  br i1 %182, label %295, label %329, !dbg !1302

; <label>:295:                                    ; preds = %292
  %296 = sub i64 %171, %293, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1211, metadata !793) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1216, metadata !793) #10, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1217, metadata !793) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !1217, metadata !793) #10, !dbg !1308
  %297 = icmp eq i64 %296, 0, !dbg !1310
  br i1 %297, label %321, label %298, !dbg !1311

; <label>:298:                                    ; preds = %295
  %299 = add i64 %296, -1
  br label %300, !dbg !1311

; <label>:300:                                    ; preds = %314, %298
  %301 = phi i64 [ 0, %298 ], [ %318, %314 ]
  %302 = phi i8* [ %294, %298 ], [ %317, %314 ]
  %303 = getelementptr inbounds i8, i8* %294, i64 %301, !dbg !1312
  %304 = load i8, i8* %303, align 1, !dbg !1312, !tbaa !1048
  %305 = sext i8 %304 to i32, !dbg !1312
  switch i32 %305, label %314 [
    i32 92, label %306
    i32 0, label %369
  ], !dbg !1313

; <label>:306:                                    ; preds = %300
  %307 = icmp eq i64 %301, %299, !dbg !1314
  br i1 %307, label %369, label %308, !dbg !1315

; <label>:308:                                    ; preds = %306
  %309 = add i64 %301, 1, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %309, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  %310 = getelementptr inbounds i8, i8* %294, i64 %309, !dbg !1317
  %311 = load i8, i8* %310, align 1, !dbg !1317, !tbaa !1048
  %312 = sext i8 %311 to i32, !dbg !1317
  switch i32 %312, label %369 [
    i32 110, label %313
    i32 92, label %314
  ], !dbg !1318

; <label>:313:                                    ; preds = %308
  br label %314, !dbg !1319

; <label>:314:                                    ; preds = %313, %308, %300
  %315 = phi i8 [ 10, %313 ], [ 92, %308 ], [ %304, %300 ]
  %316 = phi i64 [ %309, %313 ], [ %309, %308 ], [ %301, %300 ]
  store i8 %315, i8* %302, align 1, !tbaa !1048
  %317 = getelementptr inbounds i8, i8* %302, i64 1
  call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1217, metadata !793) #10, !dbg !1308
  %318 = add i64 %316, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %318, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %318, i64 0, metadata !1218, metadata !793) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !1217, metadata !793) #10, !dbg !1308
  %319 = icmp ult i64 %318, %296, !dbg !1310
  br i1 %319, label %300, label %320, !dbg !1311, !llvm.loop !1245

; <label>:320:                                    ; preds = %314
  br label %321, !dbg !1321

; <label>:321:                                    ; preds = %320, %295
  %322 = phi i8* [ %294, %295 ], [ %317, %320 ]
  %323 = getelementptr inbounds i8, i8* %294, i64 %296, !dbg !1321
  %324 = icmp ult i8* %322, %323, !dbg !1322
  br i1 %324, label %325, label %326, !dbg !1323

; <label>:325:                                    ; preds = %321
  store i8 0, i8* %322, align 1, !dbg !1324, !tbaa !1048
  br label %326, !dbg !1325

; <label>:326:                                    ; preds = %325, %321
  %327 = icmp eq i8* %294, null, !dbg !1326
  br i1 %327, label %370, label %329, !dbg !1327

; <label>:328:                                    ; preds = %255
  br label %329, !dbg !1328

; <label>:329:                                    ; preds = %328, %326, %292
  %330 = phi i8* [ %184, %326 ], [ %184, %292 ], [ %258, %328 ]
  %331 = phi i8* [ %294, %326 ], [ %294, %292 ], [ %199, %328 ]
  br i1 %138, label %332, label %339, !dbg !1328

; <label>:332:                                    ; preds = %329
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !212, metadata !793) #10, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !201, metadata !793) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !213, metadata !793) #10, !dbg !1332
  %333 = load i8, i8* %331, align 1, !dbg !1333, !tbaa !1048
  %334 = icmp eq i8 %333, 45, !dbg !1335
  br i1 %334, label %335, label %339, !dbg !1338

; <label>:335:                                    ; preds = %332
  %336 = getelementptr inbounds i8, i8* %331, i64 1, !dbg !1340
  %337 = load i8, i8* %336, align 1, !dbg !1340, !tbaa !1048
  %338 = icmp eq i8 %337, 0, !dbg !1343
  br i1 %338, label %370, label %339, !dbg !1345

; <label>:339:                                    ; preds = %335, %332, %329
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !204, metadata !793) #10, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1352, metadata !793) #10, !dbg !1355
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1352, metadata !793) #10, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  %340 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %340, label %341, label %362, !dbg !1356

; <label>:341:                                    ; preds = %339
  %342 = tail call i16** @__ctype_b_loc() #1, !dbg !1359
  %343 = load i16*, i16** %342, align 8, !tbaa !801
  br label %344, !dbg !1356

; <label>:344:                                    ; preds = %671, %341
  %345 = phi i32 [ 0, %341 ], [ %673, %671 ]
  %346 = phi i8* [ %330, %341 ], [ %672, %671 ]
  %347 = load i8, i8* %346, align 1, !dbg !1359, !tbaa !1048
  %348 = zext i8 %347 to i64, !dbg !1359
  %349 = getelementptr inbounds i16, i16* %343, i64 %348, !dbg !1359
  %350 = load i16, i16* %349, align 2, !dbg !1359, !tbaa !1363
  %351 = and i16 %350, 4096, !dbg !1359
  %352 = icmp eq i16 %351, 0, !dbg !1359
  br i1 %352, label %366, label %353, !dbg !1365

; <label>:353:                                    ; preds = %344
  %354 = getelementptr inbounds i8, i8* %346, i64 1, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  %355 = load i8, i8* %354, align 1, !dbg !1359, !tbaa !1048
  %356 = zext i8 %355 to i64, !dbg !1359
  %357 = getelementptr inbounds i16, i16* %343, i64 %356, !dbg !1359
  %358 = load i16, i16* %357, align 2, !dbg !1359, !tbaa !1363
  %359 = and i16 %358, 4096, !dbg !1359
  %360 = icmp eq i16 %359, 0, !dbg !1359
  br i1 %360, label %366, label %671, !dbg !1365

; <label>:361:                                    ; preds = %671
  br label %362, !dbg !1367

; <label>:362:                                    ; preds = %361, %339
  %363 = phi i8* [ %330, %339 ], [ %672, %361 ]
  %364 = load i8, i8* %363, align 1, !dbg !1367, !tbaa !1048
  %365 = icmp eq i8 %364, 0, !dbg !1368
  br i1 %365, label %378, label %370, !dbg !1369

; <label>:366:                                    ; preds = %353, %344
  br label %370, !dbg !1371

; <label>:367:                                    ; preds = %248
  br label %370, !dbg !1371

; <label>:368:                                    ; preds = %222, %228, %230
  br label %370, !dbg !1371

; <label>:369:                                    ; preds = %300, %306, %308
  br label %370, !dbg !1371

; <label>:370:                                    ; preds = %369, %368, %367, %366, %362, %335, %326, %283, %270, %261, %211, %197, %187
  %371 = add i64 %149, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !182, metadata !793) #10, !dbg !1031
  %372 = load i1, i1* @warn, align 1
  br i1 %372, label %373, label %376, !dbg !1373

; <label>:373:                                    ; preds = %370
  %374 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 5) #10, !dbg !1374
  %375 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1377
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %374, i8* %375, i64 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1378
  br label %376, !dbg !1379

; <label>:376:                                    ; preds = %373, %370
  %377 = add i64 %148, 1, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %377, i64 0, metadata !183, metadata !793) #10, !dbg !1032
  br label %486, !dbg !1381

; <label>:378:                                    ; preds = %362
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !218, metadata !1098) #10, !dbg !1382
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #10, !dbg !1383
  %379 = load i1, i1* @status_only, align 1
  br i1 %379, label %383, label %380, !dbg !1384

; <label>:380:                                    ; preds = %378
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !201, metadata !793) #10, !dbg !1331
  %381 = call i8* @strchr(i8* %331, i32 10) #10, !dbg !1385
  %382 = icmp ne i8* %381, null, !dbg !1387
  br label %383

; <label>:383:                                    ; preds = %380, %378
  %384 = phi i1 [ false, %378 ], [ %382, %380 ]
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !186, metadata !793) #10, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !201, metadata !793) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !218, metadata !1098) #10, !dbg !1382
  %385 = call fastcc zeroext i1 @digest_file(i8* %331, i8* %107, i8* nonnull %6) #10, !dbg !1388
  br i1 %385, label %404, label %386, !dbg !1389

; <label>:386:                                    ; preds = %383
  %387 = add i64 %146, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %387, i64 0, metadata !185, metadata !793) #10, !dbg !1034
  %388 = load i1, i1* @status_only, align 1
  br i1 %388, label %482, label %389, !dbg !1392

; <label>:389:                                    ; preds = %386
  br i1 %384, label %390, label %401, !dbg !1393

; <label>:390:                                    ; preds = %389
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1396, metadata !793) #10, !dbg !1401
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !801
  %392 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 5, !dbg !1404
  %393 = load i8*, i8** %392, align 8, !dbg !1404, !tbaa !1405
  %394 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %391, i64 0, i32 6, !dbg !1404
  %395 = load i8*, i8** %394, align 8, !dbg !1404, !tbaa !1407
  %396 = icmp ult i8* %393, %395, !dbg !1404
  br i1 %396, label %399, label %397, !dbg !1404, !prof !1408

; <label>:397:                                    ; preds = %390
  %398 = call i32 @__overflow(%struct._IO_FILE* %391, i32 92) #10, !dbg !1409
  br label %401, !dbg !1409

; <label>:399:                                    ; preds = %390
  %400 = getelementptr inbounds i8, i8* %393, i64 1, !dbg !1411
  store i8* %400, i8** %392, align 8, !dbg !1411, !tbaa !1405
  store i8 92, i8* %393, align 1, !dbg !1411, !tbaa !1048
  br label %401, !dbg !1411

; <label>:401:                                    ; preds = %399, %397, %389
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !201, metadata !793) #10, !dbg !1331
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10, !dbg !1413
  %402 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1414
  %403 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %402) #10, !dbg !1415
  br label %482, !dbg !1417

; <label>:404:                                    ; preds = %383
  %405 = load i1, i1* @ignore_missing, align 1
  %406 = xor i1 %405, true, !dbg !1418
  %407 = load i8, i8* %6, align 1, !dbg !1419
  %408 = icmp eq i8 %407, 0, !dbg !1419
  %409 = or i1 %408, %406, !dbg !1418
  br i1 %409, label %410, label %482, !dbg !1418

; <label>:410:                                    ; preds = %404
  %411 = load i1, i1* @digest_hex_bytes, align 8
  %412 = select i1 %411, i64 16, i64 0, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %412, i64 0, metadata !220, metadata !793) #10, !dbg !1422
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !224, metadata !793) #10, !dbg !1423
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !224, metadata !793) #10, !dbg !1423
  br i1 %411, label %413, label %451, !dbg !1424

; <label>:413:                                    ; preds = %410
  %414 = tail call i32** @__ctype_tolower_loc() #1, !dbg !1426
  %415 = load i32*, i32** %414, align 8, !tbaa !801
  br label %416, !dbg !1424

; <label>:416:                                    ; preds = %446, %413
  %417 = phi i64 [ 0, %413 ], [ %447, %446 ]
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !204, metadata !793) #10, !dbg !1346
  %418 = shl i64 %417, 1, !dbg !1426
  %419 = getelementptr inbounds i8, i8* %330, i64 %418, !dbg !1426
  %420 = load i8, i8* %419, align 1, !dbg !1426, !tbaa !1048
  %421 = zext i8 %420 to i64, !dbg !1426
  %422 = getelementptr inbounds i32, i32* %415, i64 %421, !dbg !1426
  %423 = load i32, i32* %422, align 4, !dbg !1426, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 %423, i64 0, metadata !225, metadata !793) #10, !dbg !1428
  %424 = getelementptr inbounds i8, i8* %107, i64 %417, !dbg !1429
  %425 = load i8, i8* %424, align 1, !dbg !1429, !tbaa !1048
  %426 = zext i8 %425 to i32, !dbg !1429
  %427 = lshr i32 %426, 4, !dbg !1430
  %428 = zext i32 %427 to i64, !dbg !1431
  %429 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %428, !dbg !1431
  %430 = load i8, i8* %429, align 1, !dbg !1431, !tbaa !1048
  %431 = sext i8 %430 to i32, !dbg !1431
  %432 = icmp eq i32 %423, %431, !dbg !1432
  br i1 %432, label %433, label %449, !dbg !1433

; <label>:433:                                    ; preds = %416
  %434 = or i64 %418, 1, !dbg !1434
  %435 = getelementptr inbounds i8, i8* %330, i64 %434, !dbg !1434
  %436 = load i8, i8* %435, align 1, !dbg !1434, !tbaa !1048
  %437 = zext i8 %436 to i64, !dbg !1434
  %438 = getelementptr inbounds i32, i32* %415, i64 %437, !dbg !1434
  %439 = load i32, i32* %438, align 4, !dbg !1434, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !231, metadata !793) #10, !dbg !1437
  %440 = and i32 %426, 15, !dbg !1438
  %441 = zext i32 %440 to i64, !dbg !1439
  %442 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %441, !dbg !1439
  %443 = load i8, i8* %442, align 1, !dbg !1439, !tbaa !1048
  %444 = sext i8 %443 to i32, !dbg !1440
  %445 = icmp eq i32 %439, %444, !dbg !1441
  br i1 %445, label %446, label %449, !dbg !1442

; <label>:446:                                    ; preds = %433
  %447 = add nuw nsw i64 %417, 1, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !224, metadata !793) #10, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !224, metadata !793) #10, !dbg !1423
  %448 = icmp ult i64 %447, %412, !dbg !1446
  br i1 %448, label %416, label %449, !dbg !1424, !llvm.loop !1448

; <label>:449:                                    ; preds = %416, %433, %446
  %450 = phi i64 [ %447, %446 ], [ %417, %416 ], [ %417, %433 ]
  br label %451, !dbg !1451

; <label>:451:                                    ; preds = %449, %410
  %452 = phi i64 [ 0, %410 ], [ %450, %449 ]
  %453 = icmp ne i64 %452, %412, !dbg !1451
  %454 = add i64 %147, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !184, metadata !793) #10, !dbg !1033
  %455 = select i1 %453, i8 %144, i8 1, !dbg !1454
  %456 = select i1 %453, i64 %454, i64 %147, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %456, i64 0, metadata !184, metadata !793) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %455, i64 0, metadata !187, metadata !793) #10, !dbg !1036
  %457 = load i1, i1* @status_only, align 1
  br i1 %457, label %482, label %458, !dbg !1455

; <label>:458:                                    ; preds = %451
  br i1 %453, label %461, label %459, !dbg !1456

; <label>:459:                                    ; preds = %458
  %460 = load i1, i1* @quiet, align 1
  br i1 %460, label %482, label %461, !dbg !1460

; <label>:461:                                    ; preds = %459, %458
  br i1 %384, label %462, label %473, !dbg !1462

; <label>:462:                                    ; preds = %461
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1396, metadata !793) #10, !dbg !1464
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1467, !tbaa !801
  %464 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 5, !dbg !1467
  %465 = load i8*, i8** %464, align 8, !dbg !1467, !tbaa !1405
  %466 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %463, i64 0, i32 6, !dbg !1467
  %467 = load i8*, i8** %466, align 8, !dbg !1467, !tbaa !1407
  %468 = icmp ult i8* %465, %467, !dbg !1467
  br i1 %468, label %471, label %469, !dbg !1467, !prof !1408

; <label>:469:                                    ; preds = %462
  %470 = call i32 @__overflow(%struct._IO_FILE* %463, i32 92) #10, !dbg !1468
  br label %473, !dbg !1468

; <label>:471:                                    ; preds = %462
  %472 = getelementptr inbounds i8, i8* %465, i64 1, !dbg !1469
  store i8* %472, i8** %464, align 8, !dbg !1469, !tbaa !1405
  store i8 92, i8* %465, align 1, !dbg !1469, !tbaa !1048
  br label %473, !dbg !1469

; <label>:473:                                    ; preds = %471, %469, %461
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !201, metadata !793) #10, !dbg !1331
  call fastcc void @print_filename(i8* %331, i1 zeroext %384) #10, !dbg !1470
  br i1 %453, label %474, label %477, !dbg !1471

; <label>:474:                                    ; preds = %473
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1472
  %476 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %475) #10, !dbg !1474
  br label %482, !dbg !1472

; <label>:477:                                    ; preds = %473
  %478 = load i1, i1* @quiet, align 1
  br i1 %478, label %482, label %479, !dbg !1476

; <label>:479:                                    ; preds = %477
  %480 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !1477
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %480) #10, !dbg !1479
  br label %482, !dbg !1477

; <label>:482:                                    ; preds = %479, %477, %474, %459, %451, %404, %401, %386
  %483 = phi i8 [ %144, %386 ], [ %144, %401 ], [ %144, %404 ], [ %144, %474 ], [ 1, %479 ], [ 1, %477 ], [ %455, %451 ], [ 1, %459 ]
  %484 = phi i64 [ %387, %386 ], [ %387, %401 ], [ %146, %404 ], [ %146, %474 ], [ %146, %479 ], [ %146, %477 ], [ %146, %451 ], [ %146, %459 ]
  %485 = phi i64 [ %147, %386 ], [ %147, %401 ], [ %147, %404 ], [ %454, %474 ], [ %147, %479 ], [ %147, %477 ], [ %456, %451 ], [ %147, %459 ]
  call void @llvm.dbg.value(metadata i64 %485, i64 0, metadata !184, metadata !793) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %484, i64 0, metadata !185, metadata !793) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !187, metadata !793) #10, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !218, metadata !1098) #10, !dbg !1382
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #10, !dbg !1481
  br label %486

; <label>:486:                                    ; preds = %482, %376, %158
  %487 = phi i8 [ %483, %482 ], [ %144, %376 ], [ %144, %158 ]
  %488 = phi i8 [ 1, %482 ], [ %145, %376 ], [ %145, %158 ]
  %489 = phi i64 [ %484, %482 ], [ %146, %376 ], [ %146, %158 ]
  %490 = phi i64 [ %485, %482 ], [ %147, %376 ], [ %147, %158 ]
  %491 = phi i64 [ %148, %482 ], [ %377, %376 ], [ %148, %158 ]
  %492 = phi i64 [ %149, %482 ], [ %371, %376 ], [ %149, %158 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1482, metadata !793) #10, !dbg !1487
  %493 = load i32, i32* %141, align 8, !dbg !1489, !tbaa !1490
  %494 = and i32 %493, 48, !dbg !1491
  %495 = icmp eq i32 %494, 0, !dbg !1491
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1492, metadata !793) #10, !dbg !1495
  br i1 %495, label %142, label %496, !dbg !1491, !llvm.loop !1086

; <label>:496:                                    ; preds = %486, %155
  %497 = phi i64 [ %492, %486 ], [ %149, %155 ]
  %498 = phi i64 [ %491, %486 ], [ %148, %155 ]
  %499 = phi i64 [ %490, %486 ], [ %147, %155 ]
  %500 = phi i64 [ %489, %486 ], [ %146, %155 ]
  %501 = phi i8 [ %488, %486 ], [ %145, %155 ]
  %502 = phi i8 [ %487, %486 ], [ %144, %155 ]
  %503 = load i8*, i8** %4, align 8, !dbg !1498, !tbaa !801
  call void @llvm.dbg.value(metadata i8* %503, i64 0, metadata !192, metadata !793) #10, !dbg !1079
  call void @free(i8* %503) #10, !dbg !1499
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %139, i64 0, metadata !1492, metadata !793) #10, !dbg !1500
  %504 = load i32, i32* %141, align 8, !dbg !1503, !tbaa !1490
  %505 = and i32 %504, 32, !dbg !1503
  %506 = icmp eq i32 %505, 0, !dbg !1504
  br i1 %506, label %510, label %507, !dbg !1505

; <label>:507:                                    ; preds = %496
  %508 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1506
  %509 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1508
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %508, i8* %509) #10, !dbg !1510
  br label %559, !dbg !1512

; <label>:510:                                    ; preds = %496
  br i1 %138, label %518, label %511, !dbg !1513

; <label>:511:                                    ; preds = %510
  %512 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %139) #10, !dbg !1515
  %513 = icmp eq i32 %512, 0, !dbg !1517
  br i1 %513, label %518, label %514, !dbg !1518

; <label>:514:                                    ; preds = %511
  %515 = tail call i32* @__errno_location() #1, !dbg !1519
  %516 = load i32, i32* %515, align 4, !dbg !1519, !tbaa !1012
  %517 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1521
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %516, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %517) #10, !dbg !1523
  br label %559, !dbg !1525

; <label>:518:                                    ; preds = %511, %510
  %519 = and i8 %501, 1, !dbg !1526
  %520 = icmp eq i8 %519, 0, !dbg !1526
  br i1 %520, label %521, label %524, !dbg !1528

; <label>:521:                                    ; preds = %518
  %522 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1529
  %523 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1531
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %522, i8* %523, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1532
  br label %559, !dbg !1534

; <label>:524:                                    ; preds = %518
  %525 = load i1, i1* @status_only, align 1
  br i1 %525, label %526, label %528, !dbg !1535

; <label>:526:                                    ; preds = %524
  %527 = and i8 %502, 1, !dbg !1537
  br label %548, !dbg !1535

; <label>:528:                                    ; preds = %524
  %529 = icmp eq i64 %497, 0, !dbg !1538
  br i1 %529, label %532, label %530, !dbg !1542

; <label>:530:                                    ; preds = %528
  %531 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i64 0, i64 0), i64 %497, i32 5) #10, !dbg !1543
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %531, i64 %497) #10, !dbg !1545
  br label %532, !dbg !1545

; <label>:532:                                    ; preds = %530, %528
  %533 = icmp eq i64 %500, 0, !dbg !1546
  br i1 %533, label %536, label %534, !dbg !1548

; <label>:534:                                    ; preds = %532
  %535 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 %500, i32 5) #10, !dbg !1549
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %535, i64 %500) #10, !dbg !1551
  br label %536, !dbg !1551

; <label>:536:                                    ; preds = %534, %532
  %537 = icmp eq i64 %499, 0, !dbg !1552
  br i1 %537, label %540, label %538, !dbg !1554

; <label>:538:                                    ; preds = %536
  %539 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i64 0, i64 0), i64 %499, i32 5) #10, !dbg !1555
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %539, i64 %499) #10, !dbg !1557
  br label %540, !dbg !1557

; <label>:540:                                    ; preds = %538, %536
  %541 = load i1, i1* @ignore_missing, align 1
  %542 = and i8 %502, 1, !dbg !1558
  %543 = icmp eq i8 %542, 0, !dbg !1558
  %544 = and i1 %543, %541, !dbg !1561
  br i1 %544, label %545, label %548, !dbg !1561

; <label>:545:                                    ; preds = %540
  %546 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i32 5) #10, !dbg !1562
  %547 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1563
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %546, i8* %547) #10, !dbg !1564
  br label %559, !dbg !1565

; <label>:548:                                    ; preds = %540, %526
  %549 = phi i8 [ %527, %526 ], [ %542, %540 ], !dbg !1537
  %550 = icmp ne i8 %549, 0, !dbg !1537
  %551 = or i64 %500, %499, !dbg !1565
  %552 = icmp eq i64 %551, 0, !dbg !1565
  %553 = and i1 %552, %550, !dbg !1565
  br i1 %553, label %554, label %559, !dbg !1565

; <label>:554:                                    ; preds = %548
  %555 = load i1, i1* @strict, align 1
  %556 = icmp eq i64 %498, 0, !dbg !1566
  %557 = xor i1 %555, true, !dbg !1568
  %558 = or i1 %556, %557, !dbg !1568
  br label %559, !dbg !1568

; <label>:559:                                    ; preds = %133, %507, %514, %521, %545, %548, %554
  %560 = phi i1 [ false, %507 ], [ false, %514 ], [ false, %133 ], [ false, %548 ], [ %558, %554 ], [ false, %521 ], [ false, %545 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %109) #10, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* nonnull %108) #10, !dbg !1569
  call void @llvm.lifetime.end(i64 20, i8* nonnull %102) #10, !dbg !1569
  %561 = zext i1 %560 to i8, !dbg !1570
  %562 = and i8 %561, %118, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %562, i64 0, metadata !874, metadata !793), !dbg !915
  br label %655, !dbg !1572

; <label>:563:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !887, metadata !1098), !dbg !1573
  call void @llvm.lifetime.start(i64 1, i8* nonnull %8) #10, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !887, metadata !1098), !dbg !1573
  %564 = call fastcc zeroext i1 @digest_file(i8* %119, i8* %14, i8* nonnull %8), !dbg !1575
  br i1 %564, label %565, label %653, !dbg !1576

; <label>:565:                                    ; preds = %563
  %566 = call i8* @strchr(i8* %119, i32 92) #10, !dbg !1577
  %567 = icmp eq i8* %566, null, !dbg !1577
  br i1 %567, label %568, label %571, !dbg !1579

; <label>:568:                                    ; preds = %565
  %569 = call i8* @strchr(i8* %119, i32 10) #10, !dbg !1580
  %570 = icmp ne i8* %569, null, !dbg !1582
  br label %571, !dbg !1582

; <label>:571:                                    ; preds = %565, %568
  %572 = phi i1 [ true, %565 ], [ %570, %568 ]
  br i1 %45, label %573, label %592, !dbg !1583

; <label>:573:                                    ; preds = %571
  br i1 %572, label %574, label %585, !dbg !1584

; <label>:574:                                    ; preds = %573
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1396, metadata !793) #10, !dbg !1587
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1590, !tbaa !801
  %576 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 5, !dbg !1590
  %577 = load i8*, i8** %576, align 8, !dbg !1590, !tbaa !1405
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %575, i64 0, i32 6, !dbg !1590
  %579 = load i8*, i8** %578, align 8, !dbg !1590, !tbaa !1407
  %580 = icmp ult i8* %577, %579, !dbg !1590
  br i1 %580, label %583, label %581, !dbg !1590, !prof !1408

; <label>:581:                                    ; preds = %574
  %582 = call i32 @__overflow(%struct._IO_FILE* %575, i32 92) #10, !dbg !1591
  br label %585, !dbg !1591

; <label>:583:                                    ; preds = %574
  %584 = getelementptr inbounds i8, i8* %577, i64 1, !dbg !1592
  store i8* %584, i8** %576, align 8, !dbg !1592, !tbaa !1405
  store i8 92, i8* %577, align 1, !dbg !1592, !tbaa !1048
  br label %585, !dbg !1592

; <label>:585:                                    ; preds = %583, %581, %573
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1593, !tbaa !801
  %587 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %586) #10, !dbg !1593
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1594, !tbaa !801
  %589 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %588) #10, !dbg !1594
  call fastcc void @print_filename(i8* %119, i1 zeroext %572), !dbg !1595
  %590 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1596, !tbaa !801
  %591 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %590) #10, !dbg !1596
  br label %604, !dbg !1597

; <label>:592:                                    ; preds = %571
  br i1 %572, label %593, label %604, !dbg !1599

; <label>:593:                                    ; preds = %592
  call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !1396, metadata !793) #10, !dbg !1601
  %594 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1603, !tbaa !801
  %595 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 5, !dbg !1603
  %596 = load i8*, i8** %595, align 8, !dbg !1603, !tbaa !1405
  %597 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %594, i64 0, i32 6, !dbg !1603
  %598 = load i8*, i8** %597, align 8, !dbg !1603, !tbaa !1407
  %599 = icmp ult i8* %596, %598, !dbg !1603
  br i1 %599, label %602, label %600, !dbg !1603, !prof !1408

; <label>:600:                                    ; preds = %593
  %601 = call i32 @__overflow(%struct._IO_FILE* %594, i32 92) #10, !dbg !1604
  br label %604, !dbg !1604

; <label>:602:                                    ; preds = %593
  %603 = getelementptr inbounds i8, i8* %596, i64 1, !dbg !1605
  store i8* %603, i8** %595, align 8, !dbg !1605, !tbaa !1405
  store i8 92, i8* %596, align 1, !dbg !1605, !tbaa !1048
  br label %604, !dbg !1605

; <label>:604:                                    ; preds = %592, %585, %600, %602
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !891, metadata !793), !dbg !1606
  %605 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %605, label %606, label %618, !dbg !1607

; <label>:606:                                    ; preds = %604
  br label %607, !dbg !1610

; <label>:607:                                    ; preds = %606, %607
  %608 = phi i64 [ %613, %607 ], [ 0, %606 ]
  %609 = getelementptr inbounds i8, i8* %14, i64 %608, !dbg !1610
  %610 = load i8, i8* %609, align 1, !dbg !1610, !tbaa !1048
  %611 = zext i8 %610 to i32, !dbg !1610
  %612 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %611) #10, !dbg !1610
  %613 = add i64 %608, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %613, i64 0, metadata !891, metadata !793), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %613, i64 0, metadata !891, metadata !793), !dbg !1606
  %614 = load i1, i1* @digest_hex_bytes, align 8
  %615 = select i1 %614, i64 16, i64 0, !dbg !1614
  %616 = icmp ult i64 %613, %615, !dbg !1616
  br i1 %616, label %607, label %617, !dbg !1607, !llvm.loop !1617

; <label>:617:                                    ; preds = %607
  br label %618, !dbg !1620

; <label>:618:                                    ; preds = %617, %604
  br i1 %45, label %642, label %619, !dbg !1620

; <label>:619:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1396, metadata !793) #10, !dbg !1621
  %620 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1625, !tbaa !801
  %621 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 5, !dbg !1625
  %622 = load i8*, i8** %621, align 8, !dbg !1625, !tbaa !1405
  %623 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %620, i64 0, i32 6, !dbg !1625
  %624 = load i8*, i8** %623, align 8, !dbg !1625, !tbaa !1407
  %625 = icmp ult i8* %622, %624, !dbg !1625
  br i1 %625, label %628, label %626, !dbg !1625, !prof !1408

; <label>:626:                                    ; preds = %619
  %627 = call i32 @__overflow(%struct._IO_FILE* %620, i32 32) #10, !dbg !1626
  br label %630, !dbg !1626

; <label>:628:                                    ; preds = %619
  %629 = getelementptr inbounds i8, i8* %622, i64 1, !dbg !1627
  store i8* %629, i8** %621, align 8, !dbg !1627, !tbaa !1405
  store i8 32, i8* %622, align 1, !dbg !1627, !tbaa !1048
  br label %630, !dbg !1627

; <label>:630:                                    ; preds = %626, %628
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1396, metadata !793) #10, !dbg !1628
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1630, !tbaa !801
  %632 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 5, !dbg !1630
  %633 = load i8*, i8** %632, align 8, !dbg !1630, !tbaa !1405
  %634 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %631, i64 0, i32 6, !dbg !1630
  %635 = load i8*, i8** %634, align 8, !dbg !1630, !tbaa !1407
  %636 = icmp ult i8* %633, %635, !dbg !1630
  br i1 %636, label %639, label %637, !dbg !1630, !prof !1408

; <label>:637:                                    ; preds = %630
  %638 = call i32 @__overflow(%struct._IO_FILE* %631, i32 %110) #10, !dbg !1631
  br label %641, !dbg !1631

; <label>:639:                                    ; preds = %630
  %640 = getelementptr inbounds i8, i8* %633, i64 1, !dbg !1632
  store i8* %640, i8** %632, align 8, !dbg !1632, !tbaa !1405
  store i8 %111, i8* %633, align 1, !dbg !1632, !tbaa !1048
  br label %641, !dbg !1632

; <label>:641:                                    ; preds = %637, %639
  call fastcc void @print_filename(i8* %119, i1 zeroext %572), !dbg !1633
  br label %642, !dbg !1634

; <label>:642:                                    ; preds = %641, %618
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1396, metadata !793) #10, !dbg !1635
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1637, !tbaa !801
  %644 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 5, !dbg !1637
  %645 = load i8*, i8** %644, align 8, !dbg !1637, !tbaa !1405
  %646 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %643, i64 0, i32 6, !dbg !1637
  %647 = load i8*, i8** %646, align 8, !dbg !1637, !tbaa !1407
  %648 = icmp ult i8* %645, %647, !dbg !1637
  br i1 %648, label %651, label %649, !dbg !1637, !prof !1408

; <label>:649:                                    ; preds = %642
  %650 = call i32 @__overflow(%struct._IO_FILE* %643, i32 10) #10, !dbg !1638
  br label %653, !dbg !1638

; <label>:651:                                    ; preds = %642
  %652 = getelementptr inbounds i8, i8* %645, i64 1, !dbg !1639
  store i8* %652, i8** %644, align 8, !dbg !1639, !tbaa !1405
  store i8 10, i8* %645, align 1, !dbg !1639, !tbaa !1048
  br label %653, !dbg !1639

; <label>:653:                                    ; preds = %651, %649, %563
  %654 = phi i8 [ 0, %563 ], [ %118, %649 ], [ %118, %651 ]
  call void @llvm.dbg.value(metadata i8 %654, i64 0, metadata !874, metadata !793), !dbg !915
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !887, metadata !1098), !dbg !1573
  call void @llvm.lifetime.end(i64 1, i8* nonnull %8) #10, !dbg !1640
  br label %655

; <label>:655:                                    ; preds = %653, %559
  %656 = phi i8 [ %562, %559 ], [ %654, %653 ]
  call void @llvm.dbg.value(metadata i8 %656, i64 0, metadata !874, metadata !793), !dbg !915
  %657 = getelementptr inbounds i8*, i8** %117, i64 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8** %657, i64 0, metadata !879, metadata !793), !dbg !1020
  call void @llvm.dbg.value(metadata i8** %657, i64 0, metadata !879, metadata !793), !dbg !1020
  call void @llvm.dbg.value(metadata i8 %656, i64 0, metadata !874, metadata !793), !dbg !915
  %658 = icmp ult i8** %657, %97, !dbg !1021
  br i1 %658, label %116, label %112, !dbg !1023, !llvm.loop !1643

; <label>:659:                                    ; preds = %113
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1646, !tbaa !801
  %661 = call i32 @rpl_fclose(%struct._IO_FILE* %660) #10, !dbg !1648
  %662 = icmp eq i32 %661, -1, !dbg !1649
  br i1 %662, label %663, label %667, !dbg !1650

; <label>:663:                                    ; preds = %659
  %664 = tail call i32* @__errno_location() #1, !dbg !1651
  %665 = load i32, i32* %664, align 4, !dbg !1651, !tbaa !1012
  %666 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1652
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %665, i8* %666) #10, !dbg !1653
  unreachable, !dbg !1651

; <label>:667:                                    ; preds = %659, %113
  %668 = and i8 %114, 1, !dbg !1655
  %669 = xor i8 %668, 1, !dbg !1655
  %670 = zext i8 %669 to i32, !dbg !1655
  call void @llvm.lifetime.end(i64 20, i8* nonnull %9) #10, !dbg !1656
  ret i32 %670, !dbg !1656

; <label>:671:                                    ; preds = %353
  %672 = getelementptr inbounds i8, i8* %346, i64 2, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  %673 = add nsw i32 %345, 2, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1347, metadata !793) #10, !dbg !1353
  %674 = icmp ult i32 %673, 32, !dbg !1659
  br i1 %674, label %344, label %361, !dbg !1356, !llvm.loop !1661
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
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #6 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1670, metadata !793), !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1678, metadata !793), !dbg !1683
  %4 = load i8, i8* %0, align 1, !dbg !1684, !tbaa !1048
  %5 = icmp eq i8 %4, 45, !dbg !1686
  br i1 %5, label %7, label %6, !dbg !1689

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %2, align 1, !dbg !1691, !tbaa !1692
  br label %13, !dbg !1694

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1695
  %9 = load i8, i8* %8, align 1, !dbg !1695, !tbaa !1048
  %10 = icmp eq i8 %9, 0, !dbg !1698
  store i8 0, i8* %2, align 1, !dbg !1691, !tbaa !1692
  br i1 %10, label %11, label %13, !dbg !1694

; <label>:11:                                     ; preds = %7
  store i1 true, i1* @have_read_stdin, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1700, !tbaa !801
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, i64 0, metadata !1673, metadata !793), !dbg !1703
  br label %26, !dbg !1704

; <label>:13:                                     ; preds = %6, %7
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1705
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1673, metadata !793), !dbg !1703
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !1707
  br i1 %15, label %16, label %26, !dbg !1709

; <label>:16:                                     ; preds = %13
  %17 = load i1, i1* @ignore_missing, align 1
  %18 = tail call i32* @__errno_location() #1, !dbg !1710
  br i1 %17, label %19, label %23, !dbg !1714

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %18, align 4, !dbg !1710, !tbaa !1012
  %21 = icmp eq i32 %20, 2, !dbg !1715
  br i1 %21, label %22, label %23, !dbg !1716

; <label>:22:                                     ; preds = %19
  store i8 1, i8* %2, align 1, !dbg !1718, !tbaa !1692
  br label %47, !dbg !1720

; <label>:23:                                     ; preds = %16, %19
  %24 = load i32, i32* %18, align 4, !dbg !1721, !tbaa !1012
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1722
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %25) #10, !dbg !1723
  br label %47, !dbg !1725

; <label>:26:                                     ; preds = %13, %11
  %27 = phi i1 [ true, %11 ], [ false, %13 ]
  %28 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %28, i64 0, metadata !1673, metadata !793), !dbg !1703
  tail call void @fadvise(%struct._IO_FILE* %28, i32 2) #10, !dbg !1726
  %29 = tail call i32 @md5_stream(%struct._IO_FILE* %28, i8* %1) #10, !dbg !1727
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1674, metadata !793), !dbg !1728
  %30 = icmp eq i32 %29, 0, !dbg !1729
  br i1 %30, label %39, label %31, !dbg !1731

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #1, !dbg !1732
  %33 = load i32, i32* %32, align 4, !dbg !1732, !tbaa !1012
  %34 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1734
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %34) #10, !dbg !1736
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1738, !tbaa !801
  %36 = icmp eq %struct._IO_FILE* %28, %35, !dbg !1740
  br i1 %36, label %47, label %37, !dbg !1741

; <label>:37:                                     ; preds = %31
  %38 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10, !dbg !1742
  br label %47, !dbg !1742

; <label>:39:                                     ; preds = %26
  br i1 %27, label %47, label %40, !dbg !1743

; <label>:40:                                     ; preds = %39
  %41 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #10, !dbg !1745
  %42 = icmp eq i32 %41, 0, !dbg !1747
  br i1 %42, label %47, label %43, !dbg !1748

; <label>:43:                                     ; preds = %40
  %44 = tail call i32* @__errno_location() #1, !dbg !1750
  %45 = load i32, i32* %44, align 4, !dbg !1750, !tbaa !1012
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1752
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* %46) #10, !dbg !1754
  br label %47, !dbg !1756

; <label>:47:                                     ; preds = %39, %40, %37, %31, %43, %23, %22
  %48 = phi i1 [ false, %43 ], [ true, %22 ], [ false, %23 ], [ false, %31 ], [ false, %37 ], [ true, %40 ], [ true, %39 ]
  ret i1 %48, !dbg !1757
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8*, i1 zeroext) unnamed_addr #6 !dbg !1758 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1762, metadata !793), !dbg !1764
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1763, metadata !1191), !dbg !1765
  br i1 %1, label %3, label %7, !dbg !1766

; <label>:3:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1762, metadata !793), !dbg !1764
  %4 = load i8, i8* %0, align 1, !dbg !1767, !tbaa !1048
  %5 = icmp eq i8 %4, 0, !dbg !1769
  br i1 %5, label %37, label %6, !dbg !1769

; <label>:6:                                      ; preds = %3
  br label %10, !dbg !1770

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1772, !tbaa !801
  %9 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %8) #10, !dbg !1772
  br label %37, !dbg !1775

; <label>:10:                                     ; preds = %6, %32
  %11 = phi i8 [ %34, %32 ], [ %4, %6 ]
  %12 = phi i8* [ %33, %32 ], [ %0, %6 ]
  %13 = sext i8 %11 to i32, !dbg !1770
  switch i32 %13, label %20 [
    i32 10, label %14
    i32 92, label %17
  ], !dbg !1776

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1777, !tbaa !801
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %15) #10, !dbg !1777
  br label %32, !dbg !1779

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1780, !tbaa !801
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* %18) #10, !dbg !1780
  br label %32, !dbg !1781

; <label>:20:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1396, metadata !793) #10, !dbg !1782
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1784, !tbaa !801
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 5, !dbg !1784
  %23 = load i8*, i8** %22, align 8, !dbg !1784, !tbaa !1405
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 6, !dbg !1784
  %25 = load i8*, i8** %24, align 8, !dbg !1784, !tbaa !1407
  %26 = icmp ult i8* %23, %25, !dbg !1784
  br i1 %26, label %30, label %27, !dbg !1784, !prof !1408

; <label>:27:                                     ; preds = %20
  %28 = and i32 %13, 255, !dbg !1785
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #10, !dbg !1785
  br label %32, !dbg !1785

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1786
  store i8* %31, i8** %22, align 8, !dbg !1786, !tbaa !1405
  store i8 %11, i8* %23, align 1, !dbg !1786, !tbaa !1048
  br label %32, !dbg !1786

; <label>:32:                                     ; preds = %30, %27, %17, %14
  %33 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1787
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1762, metadata !793), !dbg !1764
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1762, metadata !793), !dbg !1764
  %34 = load i8, i8* %33, align 1, !dbg !1767, !tbaa !1048
  %35 = icmp eq i8 %34, 0, !dbg !1769
  br i1 %35, label %36, label %10, !dbg !1769, !llvm.loop !1788

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !1791

; <label>:37:                                     ; preds = %36, %3, %7
  ret void, !dbg !1791
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1792 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1794, metadata !793), !dbg !1795
  store i8* %0, i8** @file_name, align 8, !dbg !1796, !tbaa !801
  ret void, !dbg !1797
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1798 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1802, metadata !1191), !dbg !1803
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1804, !tbaa !1692
  ret void, !dbg !1805
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1806 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1811, !tbaa !801
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1812
  %3 = icmp eq i32 %2, 0, !dbg !1813
  br i1 %3, label %21, label %4, !dbg !1814

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1815, !tbaa !1692, !range !1817
  %6 = icmp eq i8 %5, 0, !dbg !1815
  %7 = tail call i32* @__errno_location() #1, !dbg !1818
  br i1 %6, label %11, label %8, !dbg !1820

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1821, !tbaa !1012
  %10 = icmp eq i32 %9, 32, !dbg !1823
  br i1 %10, label %21, label %11, !dbg !1824

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1826
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1808, metadata !793), !dbg !1827
  %13 = load i8*, i8** @file_name, align 8, !dbg !1828, !tbaa !801
  %14 = icmp eq i8* %13, null, !dbg !1828
  %15 = load i32, i32* %7, align 4, !tbaa !1012
  br i1 %14, label %18, label %16, !dbg !1829

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1830
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.39, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1832
  br label %19, !dbg !1834

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.40, i64 0, i64 0), i8* %12) #10, !dbg !1835
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1836, !tbaa !1012
  tail call void @_exit(i32 %20) #14, !dbg !1837
  unreachable, !dbg !1837

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1838, !tbaa !801
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1840
  %24 = icmp eq i32 %23, 0, !dbg !1841
  br i1 %24, label %27, label %25, !dbg !1842

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1843, !tbaa !1012
  tail call void @_exit(i32 %26) #14, !dbg !1844
  unreachable, !dbg !1844

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1845
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @md5_init_ctx(%struct.md5_ctx* nocapture) local_unnamed_addr #6 !dbg !1846 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1868, metadata !793), !dbg !1869
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*, !dbg !1870
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1870, !tbaa !1012
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !1871
  store i32 0, i32* %3, align 4, !dbg !1872, !tbaa !1012
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1873
  store i32 0, i32* %4, align 4, !dbg !1874, !tbaa !1012
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1875
  store i32 0, i32* %5, align 4, !dbg !1876, !tbaa !1877
  ret void, !dbg !1879
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 !dbg !1880 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1886, metadata !793), !dbg !1889
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1887, metadata !793), !dbg !1890
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1888, metadata !793), !dbg !1891
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1892
  %4 = load i32, i32* %3, align 4, !dbg !1892, !tbaa !1893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1894, metadata !793), !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1899, metadata !793), !dbg !1902
  %5 = bitcast i8* %1 to i32*, !dbg !1903
  store i32 %4, i32* %5, align 1, !dbg !1903
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1904
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1905
  %8 = load i32, i32* %7, align 4, !dbg !1905, !tbaa !1906
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1894, metadata !793), !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1899, metadata !793), !dbg !1909
  %9 = bitcast i8* %6 to i32*, !dbg !1910
  store i32 %8, i32* %9, align 1, !dbg !1910
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1911
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1912
  %12 = load i32, i32* %11, align 4, !dbg !1912, !tbaa !1913
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1894, metadata !793), !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1899, metadata !793), !dbg !1916
  %13 = bitcast i8* %10 to i32*, !dbg !1917
  store i32 %12, i32* %13, align 1, !dbg !1917
  %14 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1918
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1919
  %16 = load i32, i32* %15, align 4, !dbg !1919, !tbaa !1920
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1894, metadata !793), !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1899, metadata !793), !dbg !1923
  %17 = bitcast i8* %14 to i32*, !dbg !1924
  store i32 %16, i32* %17, align 1, !dbg !1924
  ret i8* %1, !dbg !1925
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx*, i8* returned) local_unnamed_addr #6 !dbg !1926 {
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1930, metadata !793), !dbg !1934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1931, metadata !793), !dbg !1935
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1936
  %4 = load i32, i32* %3, align 4, !dbg !1936, !tbaa !1877
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1932, metadata !793), !dbg !1937
  %5 = icmp ult i32 %4, 56, !dbg !1938
  %6 = select i1 %5, i64 16, i64 32, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1933, metadata !793), !dbg !1940
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1941
  %8 = load i32, i32* %7, align 4, !dbg !1942, !tbaa !1012
  %9 = add i32 %8, %4, !dbg !1942
  store i32 %9, i32* %7, align 4, !dbg !1942, !tbaa !1012
  %10 = icmp ult i32 %9, %4, !dbg !1943
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1
  br i1 %10, label %12, label %15, !dbg !1945

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %11, align 4, !dbg !1946, !tbaa !1012
  %14 = add i32 %13, 1, !dbg !1946
  store i32 %14, i32* %11, align 4, !dbg !1946, !tbaa !1012
  br label %15, !dbg !1946

; <label>:15:                                     ; preds = %2, %12
  %16 = shl i32 %9, 3, !dbg !1947
  %17 = add nsw i64 %6, -2, !dbg !1948
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %17, !dbg !1949
  store i32 %16, i32* %18, align 4, !dbg !1950, !tbaa !1012
  %19 = load i32, i32* %11, align 4, !dbg !1951, !tbaa !1012
  %20 = shl i32 %19, 3, !dbg !1951
  %21 = lshr i32 %9, 29, !dbg !1951
  %22 = or i32 %21, %20, !dbg !1951
  %23 = add nsw i64 %6, -1, !dbg !1952
  %24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %23, !dbg !1953
  store i32 %22, i32* %24, align 4, !dbg !1954, !tbaa !1012
  %25 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0, !dbg !1955
  %26 = bitcast i32* %25 to i8*, !dbg !1955
  %27 = zext i32 %4 to i64, !dbg !1955
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !1955
  %29 = shl nsw i64 %17, 2, !dbg !1956
  %30 = sub nsw i64 %29, %27, !dbg !1957
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %30, i32 1, i1 false), !dbg !1958
  %31 = shl nuw nsw i64 %6, 2, !dbg !1959
  tail call void @md5_process_block(i8* %26, i64 %31, %struct.md5_ctx* nonnull %0) #10, !dbg !1960
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, i64 0, metadata !1886, metadata !793), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1887, metadata !793), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1888, metadata !793), !dbg !1964
  %32 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1965
  %33 = load i32, i32* %32, align 4, !dbg !1965, !tbaa !1893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1894, metadata !793), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1899, metadata !793), !dbg !1968
  %34 = bitcast i8* %1 to i32*, !dbg !1969
  store i32 %33, i32* %34, align 1, !dbg !1969
  %35 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1970
  %36 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1971
  %37 = load i32, i32* %36, align 4, !dbg !1971, !tbaa !1906
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1894, metadata !793), !dbg !1972
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1899, metadata !793), !dbg !1974
  %38 = bitcast i8* %35 to i32*, !dbg !1975
  store i32 %37, i32* %38, align 1, !dbg !1975
  %39 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1976
  %40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1977
  %41 = load i32, i32* %40, align 4, !dbg !1977, !tbaa !1913
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1894, metadata !793), !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !1899, metadata !793), !dbg !1980
  %42 = bitcast i8* %39 to i32*, !dbg !1981
  store i32 %41, i32* %42, align 1, !dbg !1981
  %43 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1982
  %44 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1983
  %45 = load i32, i32* %44, align 4, !dbg !1983, !tbaa !1920
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1894, metadata !793), !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !1899, metadata !793), !dbg !1986
  %46 = bitcast i8* %43 to i32*, !dbg !1987
  store i32 %45, i32* %46, align 1, !dbg !1987
  ret i8* %1, !dbg !1988
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_block(i8* readonly, i64, %struct.md5_ctx* nocapture) local_unnamed_addr #6 !dbg !1989 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1993, metadata !793), !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1994, metadata !793), !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, i64 0, metadata !1995, metadata !793), !dbg !2017
  tail call void @llvm.dbg.declare(metadata [16 x i32]* undef, metadata !1996, metadata !793), !dbg !2018
  %4 = bitcast i8* %0 to i32*, !dbg !2019
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1998, metadata !793), !dbg !2020
  %5 = lshr i64 %1, 2, !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2001, metadata !793), !dbg !2022
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2002, metadata !793), !dbg !2024
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0, !dbg !2025
  %8 = load i32, i32* %7, align 4, !dbg !2025, !tbaa !1893
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2003, metadata !793), !dbg !2026
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1, !dbg !2027
  %10 = load i32, i32* %9, align 4, !dbg !2027, !tbaa !1906
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2004, metadata !793), !dbg !2028
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2, !dbg !2029
  %12 = load i32, i32* %11, align 4, !dbg !2029, !tbaa !1913
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2005, metadata !793), !dbg !2030
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3, !dbg !2031
  %14 = load i32, i32* %13, align 4, !dbg !2031, !tbaa !1920
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2006, metadata !793), !dbg !2032
  %15 = trunc i64 %1 to i32, !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !2007, metadata !793), !dbg !2034
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0, !dbg !2035
  %17 = load i32, i32* %16, align 4, !dbg !2036, !tbaa !1012
  %18 = add i32 %17, %15, !dbg !2036
  store i32 %18, i32* %16, align 4, !dbg !2036, !tbaa !1012
  %19 = lshr i64 %1, 32, !dbg !2037
  %20 = icmp ult i32 %18, %15, !dbg !2038
  %21 = zext i1 %20 to i64, !dbg !2039
  %22 = add nuw nsw i64 %21, %19, !dbg !2040
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1, !dbg !2041
  %24 = load i32, i32* %23, align 4, !dbg !2042, !tbaa !1012
  %25 = zext i32 %24 to i64, !dbg !2042
  %26 = add nuw nsw i64 %22, %25, !dbg !2042
  %27 = trunc i64 %26 to i32, !dbg !2042
  store i32 %27, i32* %23, align 4, !dbg !2042, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1998, metadata !793), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2003, metadata !793), !dbg !2026
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2004, metadata !793), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2005, metadata !793), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2006, metadata !793), !dbg !2032
  %28 = icmp ult i32* %4, %6, !dbg !2043
  br i1 %28, label %29, label %697, !dbg !2045

; <label>:29:                                     ; preds = %3
  br label %30, !dbg !2046

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i32* [ %223, %30 ], [ %4, %29 ]
  %32 = phi i32 [ %690, %30 ], [ %8, %29 ]
  %33 = phi i32 [ %692, %30 ], [ %10, %29 ]
  %34 = phi i32 [ %693, %30 ], [ %12, %29 ]
  %35 = phi i32 [ %694, %30 ], [ %14, %29 ]
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !2011, metadata !793), !dbg !2047
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !2012, metadata !793), !dbg !2048
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !2013, metadata !793), !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !2014, metadata !793), !dbg !2050
  %36 = xor i32 %34, %35, !dbg !2051
  %37 = and i32 %33, %36, !dbg !2051
  %38 = xor i32 %37, %35, !dbg !2051
  %39 = load i32, i32* %31, align 4, !dbg !2051, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !1996, metadata !2054), !dbg !2018
  %40 = add i32 %32, -680876936, !dbg !2051
  %41 = add i32 %40, %38, !dbg !2051
  %42 = add i32 %41, %39, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !2003, metadata !793), !dbg !2026
  %43 = getelementptr inbounds i32, i32* %31, i64 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32* %43, i64 0, metadata !1998, metadata !793), !dbg !2020
  %44 = shl i32 %42, 7, !dbg !2051
  %45 = lshr i32 %42, 25, !dbg !2051
  %46 = or i32 %44, %45, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !2003, metadata !793), !dbg !2026
  %47 = add i32 %46, %33, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !2003, metadata !793), !dbg !2026
  %48 = xor i32 %33, %34, !dbg !2055
  %49 = and i32 %47, %48, !dbg !2055
  %50 = xor i32 %49, %34, !dbg !2055
  %51 = load i32, i32* %43, align 4, !dbg !2055, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1996, metadata !2058), !dbg !2018
  %52 = add i32 %35, -389564586, !dbg !2055
  %53 = add i32 %52, %51, !dbg !2055
  %54 = add i32 %53, %50, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !2006, metadata !793), !dbg !2032
  %55 = getelementptr inbounds i32, i32* %31, i64 2, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !1998, metadata !793), !dbg !2020
  %56 = shl i32 %54, 12, !dbg !2055
  %57 = lshr i32 %54, 20, !dbg !2055
  %58 = or i32 %56, %57, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !2006, metadata !793), !dbg !2032
  %59 = add i32 %58, %47, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !2006, metadata !793), !dbg !2032
  %60 = xor i32 %47, %33, !dbg !2059
  %61 = and i32 %59, %60, !dbg !2059
  %62 = xor i32 %61, %33, !dbg !2059
  %63 = load i32, i32* %55, align 4, !dbg !2059, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1996, metadata !2062), !dbg !2018
  %64 = add i32 %34, 606105819, !dbg !2059
  %65 = add i32 %64, %63, !dbg !2059
  %66 = add i32 %65, %62, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !2005, metadata !793), !dbg !2030
  %67 = getelementptr inbounds i32, i32* %31, i64 3, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32* %67, i64 0, metadata !1998, metadata !793), !dbg !2020
  %68 = shl i32 %66, 17, !dbg !2059
  %69 = lshr i32 %66, 15, !dbg !2059
  %70 = or i32 %68, %69, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !2005, metadata !793), !dbg !2030
  %71 = add i32 %70, %59, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !2005, metadata !793), !dbg !2030
  %72 = xor i32 %59, %47, !dbg !2063
  %73 = and i32 %71, %72, !dbg !2063
  %74 = xor i32 %73, %47, !dbg !2063
  %75 = load i32, i32* %67, align 4, !dbg !2063, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1996, metadata !2066), !dbg !2018
  %76 = add i32 %33, -1044525330, !dbg !2063
  %77 = add i32 %76, %75, !dbg !2063
  %78 = add i32 %77, %74, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !2004, metadata !793), !dbg !2028
  %79 = getelementptr inbounds i32, i32* %31, i64 4, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !1998, metadata !793), !dbg !2020
  %80 = shl i32 %78, 22, !dbg !2063
  %81 = lshr i32 %78, 10, !dbg !2063
  %82 = or i32 %80, %81, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !2004, metadata !793), !dbg !2028
  %83 = add i32 %82, %71, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !2004, metadata !793), !dbg !2028
  %84 = xor i32 %71, %59, !dbg !2067
  %85 = and i32 %83, %84, !dbg !2067
  %86 = xor i32 %85, %59, !dbg !2067
  %87 = load i32, i32* %79, align 4, !dbg !2067, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1996, metadata !2070), !dbg !2018
  %88 = add i32 %87, -176418897, !dbg !2067
  %89 = add i32 %88, %47, !dbg !2067
  %90 = add i32 %89, %86, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !2003, metadata !793), !dbg !2026
  %91 = getelementptr inbounds i32, i32* %31, i64 5, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32* %91, i64 0, metadata !1998, metadata !793), !dbg !2020
  %92 = shl i32 %90, 7, !dbg !2067
  %93 = lshr i32 %90, 25, !dbg !2067
  %94 = or i32 %92, %93, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !2003, metadata !793), !dbg !2026
  %95 = add i32 %94, %83, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2003, metadata !793), !dbg !2026
  %96 = xor i32 %83, %71, !dbg !2071
  %97 = and i32 %95, %96, !dbg !2071
  %98 = xor i32 %97, %71, !dbg !2071
  %99 = load i32, i32* %91, align 4, !dbg !2071, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !1996, metadata !2074), !dbg !2018
  %100 = add i32 %99, 1200080426, !dbg !2071
  %101 = add i32 %100, %59, !dbg !2071
  %102 = add i32 %101, %98, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !2006, metadata !793), !dbg !2032
  %103 = getelementptr inbounds i32, i32* %31, i64 6, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32* %103, i64 0, metadata !1998, metadata !793), !dbg !2020
  %104 = shl i32 %102, 12, !dbg !2071
  %105 = lshr i32 %102, 20, !dbg !2071
  %106 = or i32 %104, %105, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !2006, metadata !793), !dbg !2032
  %107 = add i32 %106, %95, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !2006, metadata !793), !dbg !2032
  %108 = xor i32 %95, %83, !dbg !2075
  %109 = and i32 %107, %108, !dbg !2075
  %110 = xor i32 %109, %83, !dbg !2075
  %111 = load i32, i32* %103, align 4, !dbg !2075, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1996, metadata !2078), !dbg !2018
  %112 = add i32 %111, -1473231341, !dbg !2075
  %113 = add i32 %112, %71, !dbg !2075
  %114 = add i32 %113, %110, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !2005, metadata !793), !dbg !2030
  %115 = getelementptr inbounds i32, i32* %31, i64 7, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !1998, metadata !793), !dbg !2020
  %116 = shl i32 %114, 17, !dbg !2075
  %117 = lshr i32 %114, 15, !dbg !2075
  %118 = or i32 %116, %117, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !2005, metadata !793), !dbg !2030
  %119 = add i32 %118, %107, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %119, i64 0, metadata !2005, metadata !793), !dbg !2030
  %120 = xor i32 %107, %95, !dbg !2079
  %121 = and i32 %119, %120, !dbg !2079
  %122 = xor i32 %121, %95, !dbg !2079
  %123 = load i32, i32* %115, align 4, !dbg !2079, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !1996, metadata !2082), !dbg !2018
  %124 = add i32 %123, -45705983, !dbg !2079
  %125 = add i32 %124, %83, !dbg !2079
  %126 = add i32 %125, %122, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !2004, metadata !793), !dbg !2028
  %127 = getelementptr inbounds i32, i32* %31, i64 8, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32* %127, i64 0, metadata !1998, metadata !793), !dbg !2020
  %128 = shl i32 %126, 22, !dbg !2079
  %129 = lshr i32 %126, 10, !dbg !2079
  %130 = or i32 %128, %129, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !2004, metadata !793), !dbg !2028
  %131 = add i32 %130, %119, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !2004, metadata !793), !dbg !2028
  %132 = xor i32 %119, %107, !dbg !2083
  %133 = and i32 %131, %132, !dbg !2083
  %134 = xor i32 %133, %107, !dbg !2083
  %135 = load i32, i32* %127, align 4, !dbg !2083, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !1996, metadata !2086), !dbg !2018
  %136 = add i32 %135, 1770035416, !dbg !2083
  %137 = add i32 %136, %95, !dbg !2083
  %138 = add i32 %137, %134, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !2003, metadata !793), !dbg !2026
  %139 = getelementptr inbounds i32, i32* %31, i64 9, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !1998, metadata !793), !dbg !2020
  %140 = shl i32 %138, 7, !dbg !2083
  %141 = lshr i32 %138, 25, !dbg !2083
  %142 = or i32 %140, %141, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !2003, metadata !793), !dbg !2026
  %143 = add i32 %142, %131, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !2003, metadata !793), !dbg !2026
  %144 = xor i32 %131, %119, !dbg !2087
  %145 = and i32 %143, %144, !dbg !2087
  %146 = xor i32 %145, %119, !dbg !2087
  %147 = load i32, i32* %139, align 4, !dbg !2087, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !1996, metadata !2090), !dbg !2018
  %148 = add i32 %147, -1958414417, !dbg !2087
  %149 = add i32 %148, %107, !dbg !2087
  %150 = add i32 %149, %146, !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !2006, metadata !793), !dbg !2032
  %151 = getelementptr inbounds i32, i32* %31, i64 10, !dbg !2087
  tail call void @llvm.dbg.value(metadata i32* %151, i64 0, metadata !1998, metadata !793), !dbg !2020
  %152 = shl i32 %150, 12, !dbg !2087
  %153 = lshr i32 %150, 20, !dbg !2087
  %154 = or i32 %152, %153, !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !2006, metadata !793), !dbg !2032
  %155 = add i32 %154, %143, !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !2006, metadata !793), !dbg !2032
  %156 = xor i32 %143, %131, !dbg !2091
  %157 = and i32 %155, %156, !dbg !2091
  %158 = xor i32 %157, %131, !dbg !2091
  %159 = load i32, i32* %151, align 4, !dbg !2091, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !1996, metadata !2094), !dbg !2018
  %160 = add i32 %159, -42063, !dbg !2091
  %161 = add i32 %160, %119, !dbg !2091
  %162 = add i32 %161, %158, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %162, i64 0, metadata !2005, metadata !793), !dbg !2030
  %163 = getelementptr inbounds i32, i32* %31, i64 11, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32* %163, i64 0, metadata !1998, metadata !793), !dbg !2020
  %164 = shl i32 %162, 17, !dbg !2091
  %165 = lshr i32 %162, 15, !dbg !2091
  %166 = or i32 %164, %165, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %166, i64 0, metadata !2005, metadata !793), !dbg !2030
  %167 = add i32 %166, %155, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !2005, metadata !793), !dbg !2030
  %168 = xor i32 %155, %143, !dbg !2095
  %169 = and i32 %167, %168, !dbg !2095
  %170 = xor i32 %169, %143, !dbg !2095
  %171 = load i32, i32* %163, align 4, !dbg !2095, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !1996, metadata !2098), !dbg !2018
  %172 = add i32 %171, -1990404162, !dbg !2095
  %173 = add i32 %172, %131, !dbg !2095
  %174 = add i32 %173, %170, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !2004, metadata !793), !dbg !2028
  %175 = getelementptr inbounds i32, i32* %31, i64 12, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32* %175, i64 0, metadata !1998, metadata !793), !dbg !2020
  %176 = shl i32 %174, 22, !dbg !2095
  %177 = lshr i32 %174, 10, !dbg !2095
  %178 = or i32 %176, %177, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !2004, metadata !793), !dbg !2028
  %179 = add i32 %178, %167, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %179, i64 0, metadata !2004, metadata !793), !dbg !2028
  %180 = xor i32 %167, %155, !dbg !2099
  %181 = and i32 %179, %180, !dbg !2099
  %182 = xor i32 %181, %155, !dbg !2099
  %183 = load i32, i32* %175, align 4, !dbg !2099, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !1996, metadata !2102), !dbg !2018
  %184 = add i32 %183, 1804603682, !dbg !2099
  %185 = add i32 %184, %143, !dbg !2099
  %186 = add i32 %185, %182, !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !2003, metadata !793), !dbg !2026
  %187 = getelementptr inbounds i32, i32* %31, i64 13, !dbg !2099
  tail call void @llvm.dbg.value(metadata i32* %187, i64 0, metadata !1998, metadata !793), !dbg !2020
  %188 = shl i32 %186, 7, !dbg !2099
  %189 = lshr i32 %186, 25, !dbg !2099
  %190 = or i32 %188, %189, !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !2003, metadata !793), !dbg !2026
  %191 = add i32 %190, %179, !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !2003, metadata !793), !dbg !2026
  %192 = xor i32 %179, %167, !dbg !2103
  %193 = and i32 %191, %192, !dbg !2103
  %194 = xor i32 %193, %167, !dbg !2103
  %195 = load i32, i32* %187, align 4, !dbg !2103, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !1996, metadata !2106), !dbg !2018
  %196 = add i32 %195, -40341101, !dbg !2103
  %197 = add i32 %196, %155, !dbg !2103
  %198 = add i32 %197, %194, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !2006, metadata !793), !dbg !2032
  %199 = getelementptr inbounds i32, i32* %31, i64 14, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32* %199, i64 0, metadata !1998, metadata !793), !dbg !2020
  %200 = shl i32 %198, 12, !dbg !2103
  %201 = lshr i32 %198, 20, !dbg !2103
  %202 = or i32 %200, %201, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !2006, metadata !793), !dbg !2032
  %203 = add i32 %202, %191, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %203, i64 0, metadata !2006, metadata !793), !dbg !2032
  %204 = xor i32 %191, %179, !dbg !2107
  %205 = and i32 %203, %204, !dbg !2107
  %206 = xor i32 %205, %179, !dbg !2107
  %207 = load i32, i32* %199, align 4, !dbg !2107, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %207, i64 0, metadata !1996, metadata !2110), !dbg !2018
  %208 = add i32 %207, -1502002290, !dbg !2107
  %209 = add i32 %208, %167, !dbg !2107
  %210 = add i32 %209, %206, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !2005, metadata !793), !dbg !2030
  %211 = getelementptr inbounds i32, i32* %31, i64 15, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32* %211, i64 0, metadata !1998, metadata !793), !dbg !2020
  %212 = shl i32 %210, 17, !dbg !2107
  %213 = lshr i32 %210, 15, !dbg !2107
  %214 = or i32 %212, %213, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !2005, metadata !793), !dbg !2030
  %215 = add i32 %214, %203, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !2005, metadata !793), !dbg !2030
  %216 = xor i32 %203, %191, !dbg !2111
  %217 = and i32 %215, %216, !dbg !2111
  %218 = xor i32 %217, %191, !dbg !2111
  %219 = load i32, i32* %211, align 4, !dbg !2111, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !2008, metadata !793), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %219, i64 0, metadata !1996, metadata !2114), !dbg !2018
  %220 = add i32 %219, 1236535329, !dbg !2111
  %221 = add i32 %220, %179, !dbg !2111
  %222 = add i32 %221, %218, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !2004, metadata !793), !dbg !2028
  %223 = getelementptr inbounds i32, i32* %31, i64 16, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !1998, metadata !793), !dbg !2020
  %224 = shl i32 %222, 22, !dbg !2111
  %225 = lshr i32 %222, 10, !dbg !2111
  %226 = or i32 %224, %225, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !2004, metadata !793), !dbg !2028
  %227 = add i32 %226, %215, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %227, i64 0, metadata !2004, metadata !793), !dbg !2028
  %228 = xor i32 %227, %215, !dbg !2115
  %229 = and i32 %228, %203, !dbg !2115
  %230 = xor i32 %229, %215, !dbg !2115
  %231 = add i32 %51, -165796510, !dbg !2115
  %232 = add i32 %231, %191, !dbg !2115
  %233 = add i32 %232, %230, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !2003, metadata !793), !dbg !2026
  %234 = shl i32 %233, 5, !dbg !2115
  %235 = lshr i32 %233, 27, !dbg !2115
  %236 = or i32 %234, %235, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %236, i64 0, metadata !2003, metadata !793), !dbg !2026
  %237 = add i32 %236, %227, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %237, i64 0, metadata !2003, metadata !793), !dbg !2026
  %238 = xor i32 %237, %227, !dbg !2118
  %239 = and i32 %238, %215, !dbg !2118
  %240 = xor i32 %239, %227, !dbg !2118
  %241 = add i32 %111, -1069501632, !dbg !2118
  %242 = add i32 %241, %203, !dbg !2118
  %243 = add i32 %242, %240, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 %243, i64 0, metadata !2006, metadata !793), !dbg !2032
  %244 = shl i32 %243, 9, !dbg !2118
  %245 = lshr i32 %243, 23, !dbg !2118
  %246 = or i32 %244, %245, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 %246, i64 0, metadata !2006, metadata !793), !dbg !2032
  %247 = add i32 %246, %237, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !2006, metadata !793), !dbg !2032
  %248 = xor i32 %247, %237, !dbg !2121
  %249 = and i32 %248, %227, !dbg !2121
  %250 = xor i32 %249, %237, !dbg !2121
  %251 = add i32 %171, 643717713, !dbg !2121
  %252 = add i32 %251, %215, !dbg !2121
  %253 = add i32 %252, %250, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !2005, metadata !793), !dbg !2030
  %254 = shl i32 %253, 14, !dbg !2121
  %255 = lshr i32 %253, 18, !dbg !2121
  %256 = or i32 %254, %255, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !2005, metadata !793), !dbg !2030
  %257 = add i32 %256, %247, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !2005, metadata !793), !dbg !2030
  %258 = xor i32 %257, %247, !dbg !2124
  %259 = and i32 %258, %237, !dbg !2124
  %260 = xor i32 %259, %247, !dbg !2124
  %261 = add i32 %39, -373897302, !dbg !2124
  %262 = add i32 %261, %227, !dbg !2124
  %263 = add i32 %262, %260, !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 %263, i64 0, metadata !2004, metadata !793), !dbg !2028
  %264 = shl i32 %263, 20, !dbg !2124
  %265 = lshr i32 %263, 12, !dbg !2124
  %266 = or i32 %264, %265, !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 %266, i64 0, metadata !2004, metadata !793), !dbg !2028
  %267 = add i32 %266, %257, !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 %267, i64 0, metadata !2004, metadata !793), !dbg !2028
  %268 = xor i32 %267, %257, !dbg !2127
  %269 = and i32 %268, %247, !dbg !2127
  %270 = xor i32 %269, %257, !dbg !2127
  %271 = add i32 %99, -701558691, !dbg !2127
  %272 = add i32 %271, %237, !dbg !2127
  %273 = add i32 %272, %270, !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %273, i64 0, metadata !2003, metadata !793), !dbg !2026
  %274 = shl i32 %273, 5, !dbg !2127
  %275 = lshr i32 %273, 27, !dbg !2127
  %276 = or i32 %274, %275, !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !2003, metadata !793), !dbg !2026
  %277 = add i32 %276, %267, !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %277, i64 0, metadata !2003, metadata !793), !dbg !2026
  %278 = xor i32 %277, %267, !dbg !2130
  %279 = and i32 %278, %257, !dbg !2130
  %280 = xor i32 %279, %267, !dbg !2130
  %281 = add i32 %159, 38016083, !dbg !2130
  %282 = add i32 %281, %247, !dbg !2130
  %283 = add i32 %282, %280, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %283, i64 0, metadata !2006, metadata !793), !dbg !2032
  %284 = shl i32 %283, 9, !dbg !2130
  %285 = lshr i32 %283, 23, !dbg !2130
  %286 = or i32 %284, %285, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %286, i64 0, metadata !2006, metadata !793), !dbg !2032
  %287 = add i32 %286, %277, !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %287, i64 0, metadata !2006, metadata !793), !dbg !2032
  %288 = xor i32 %287, %277, !dbg !2133
  %289 = and i32 %288, %267, !dbg !2133
  %290 = xor i32 %289, %277, !dbg !2133
  %291 = add i32 %219, -660478335, !dbg !2133
  %292 = add i32 %291, %257, !dbg !2133
  %293 = add i32 %292, %290, !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %293, i64 0, metadata !2005, metadata !793), !dbg !2030
  %294 = shl i32 %293, 14, !dbg !2133
  %295 = lshr i32 %293, 18, !dbg !2133
  %296 = or i32 %294, %295, !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %296, i64 0, metadata !2005, metadata !793), !dbg !2030
  %297 = add i32 %296, %287, !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %297, i64 0, metadata !2005, metadata !793), !dbg !2030
  %298 = xor i32 %297, %287, !dbg !2136
  %299 = and i32 %298, %277, !dbg !2136
  %300 = xor i32 %299, %287, !dbg !2136
  %301 = add i32 %87, -405537848, !dbg !2136
  %302 = add i32 %301, %267, !dbg !2136
  %303 = add i32 %302, %300, !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %303, i64 0, metadata !2004, metadata !793), !dbg !2028
  %304 = shl i32 %303, 20, !dbg !2136
  %305 = lshr i32 %303, 12, !dbg !2136
  %306 = or i32 %304, %305, !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %306, i64 0, metadata !2004, metadata !793), !dbg !2028
  %307 = add i32 %306, %297, !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !2004, metadata !793), !dbg !2028
  %308 = xor i32 %307, %297, !dbg !2139
  %309 = and i32 %308, %287, !dbg !2139
  %310 = xor i32 %309, %297, !dbg !2139
  %311 = add i32 %147, 568446438, !dbg !2139
  %312 = add i32 %311, %277, !dbg !2139
  %313 = add i32 %312, %310, !dbg !2139
  tail call void @llvm.dbg.value(metadata i32 %313, i64 0, metadata !2003, metadata !793), !dbg !2026
  %314 = shl i32 %313, 5, !dbg !2139
  %315 = lshr i32 %313, 27, !dbg !2139
  %316 = or i32 %314, %315, !dbg !2139
  tail call void @llvm.dbg.value(metadata i32 %316, i64 0, metadata !2003, metadata !793), !dbg !2026
  %317 = add i32 %316, %307, !dbg !2139
  tail call void @llvm.dbg.value(metadata i32 %317, i64 0, metadata !2003, metadata !793), !dbg !2026
  %318 = xor i32 %317, %307, !dbg !2142
  %319 = and i32 %318, %297, !dbg !2142
  %320 = xor i32 %319, %307, !dbg !2142
  %321 = add i32 %207, -1019803690, !dbg !2142
  %322 = add i32 %321, %287, !dbg !2142
  %323 = add i32 %322, %320, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !2006, metadata !793), !dbg !2032
  %324 = shl i32 %323, 9, !dbg !2142
  %325 = lshr i32 %323, 23, !dbg !2142
  %326 = or i32 %324, %325, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !2006, metadata !793), !dbg !2032
  %327 = add i32 %326, %317, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %327, i64 0, metadata !2006, metadata !793), !dbg !2032
  %328 = xor i32 %327, %317, !dbg !2145
  %329 = and i32 %328, %307, !dbg !2145
  %330 = xor i32 %329, %317, !dbg !2145
  %331 = add i32 %75, -187363961, !dbg !2145
  %332 = add i32 %331, %297, !dbg !2145
  %333 = add i32 %332, %330, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 %333, i64 0, metadata !2005, metadata !793), !dbg !2030
  %334 = shl i32 %333, 14, !dbg !2145
  %335 = lshr i32 %333, 18, !dbg !2145
  %336 = or i32 %334, %335, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 %336, i64 0, metadata !2005, metadata !793), !dbg !2030
  %337 = add i32 %336, %327, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 %337, i64 0, metadata !2005, metadata !793), !dbg !2030
  %338 = xor i32 %337, %327, !dbg !2148
  %339 = and i32 %338, %317, !dbg !2148
  %340 = xor i32 %339, %327, !dbg !2148
  %341 = add i32 %135, 1163531501, !dbg !2148
  %342 = add i32 %341, %307, !dbg !2148
  %343 = add i32 %342, %340, !dbg !2148
  tail call void @llvm.dbg.value(metadata i32 %343, i64 0, metadata !2004, metadata !793), !dbg !2028
  %344 = shl i32 %343, 20, !dbg !2148
  %345 = lshr i32 %343, 12, !dbg !2148
  %346 = or i32 %344, %345, !dbg !2148
  tail call void @llvm.dbg.value(metadata i32 %346, i64 0, metadata !2004, metadata !793), !dbg !2028
  %347 = add i32 %346, %337, !dbg !2148
  tail call void @llvm.dbg.value(metadata i32 %347, i64 0, metadata !2004, metadata !793), !dbg !2028
  %348 = xor i32 %347, %337, !dbg !2151
  %349 = and i32 %348, %327, !dbg !2151
  %350 = xor i32 %349, %337, !dbg !2151
  %351 = add i32 %195, -1444681467, !dbg !2151
  %352 = add i32 %351, %317, !dbg !2151
  %353 = add i32 %352, %350, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %353, i64 0, metadata !2003, metadata !793), !dbg !2026
  %354 = shl i32 %353, 5, !dbg !2151
  %355 = lshr i32 %353, 27, !dbg !2151
  %356 = or i32 %354, %355, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2003, metadata !793), !dbg !2026
  %357 = add i32 %356, %347, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %357, i64 0, metadata !2003, metadata !793), !dbg !2026
  %358 = xor i32 %357, %347, !dbg !2154
  %359 = and i32 %358, %337, !dbg !2154
  %360 = xor i32 %359, %347, !dbg !2154
  %361 = add i32 %63, -51403784, !dbg !2154
  %362 = add i32 %361, %327, !dbg !2154
  %363 = add i32 %362, %360, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %363, i64 0, metadata !2006, metadata !793), !dbg !2032
  %364 = shl i32 %363, 9, !dbg !2154
  %365 = lshr i32 %363, 23, !dbg !2154
  %366 = or i32 %364, %365, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %366, i64 0, metadata !2006, metadata !793), !dbg !2032
  %367 = add i32 %366, %357, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %367, i64 0, metadata !2006, metadata !793), !dbg !2032
  %368 = xor i32 %367, %357, !dbg !2157
  %369 = and i32 %368, %347, !dbg !2157
  %370 = xor i32 %369, %357, !dbg !2157
  %371 = add i32 %123, 1735328473, !dbg !2157
  %372 = add i32 %371, %337, !dbg !2157
  %373 = add i32 %372, %370, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %373, i64 0, metadata !2005, metadata !793), !dbg !2030
  %374 = shl i32 %373, 14, !dbg !2157
  %375 = lshr i32 %373, 18, !dbg !2157
  %376 = or i32 %374, %375, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %376, i64 0, metadata !2005, metadata !793), !dbg !2030
  %377 = add i32 %376, %367, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %377, i64 0, metadata !2005, metadata !793), !dbg !2030
  %378 = xor i32 %377, %367, !dbg !2160
  %379 = and i32 %378, %357, !dbg !2160
  %380 = xor i32 %379, %367, !dbg !2160
  %381 = add i32 %183, -1926607734, !dbg !2160
  %382 = add i32 %381, %347, !dbg !2160
  %383 = add i32 %382, %380, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %383, i64 0, metadata !2004, metadata !793), !dbg !2028
  %384 = shl i32 %383, 20, !dbg !2160
  %385 = lshr i32 %383, 12, !dbg !2160
  %386 = or i32 %384, %385, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %386, i64 0, metadata !2004, metadata !793), !dbg !2028
  %387 = add i32 %386, %377, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %387, i64 0, metadata !2004, metadata !793), !dbg !2028
  %388 = xor i32 %378, %387, !dbg !2163
  %389 = add i32 %99, -378558, !dbg !2163
  %390 = add i32 %389, %357, !dbg !2163
  %391 = add i32 %390, %388, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %391, i64 0, metadata !2003, metadata !793), !dbg !2026
  %392 = shl i32 %391, 4, !dbg !2163
  %393 = lshr i32 %391, 28, !dbg !2163
  %394 = or i32 %392, %393, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %394, i64 0, metadata !2003, metadata !793), !dbg !2026
  %395 = add i32 %394, %387, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 %395, i64 0, metadata !2003, metadata !793), !dbg !2026
  %396 = xor i32 %387, %377, !dbg !2166
  %397 = xor i32 %396, %395, !dbg !2166
  %398 = add i32 %135, -2022574463, !dbg !2166
  %399 = add i32 %398, %367, !dbg !2166
  %400 = add i32 %399, %397, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %400, i64 0, metadata !2006, metadata !793), !dbg !2032
  %401 = shl i32 %400, 11, !dbg !2166
  %402 = lshr i32 %400, 21, !dbg !2166
  %403 = or i32 %401, %402, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %403, i64 0, metadata !2006, metadata !793), !dbg !2032
  %404 = add i32 %403, %395, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %404, i64 0, metadata !2006, metadata !793), !dbg !2032
  %405 = xor i32 %395, %387, !dbg !2169
  %406 = xor i32 %405, %404, !dbg !2169
  %407 = add i32 %171, 1839030562, !dbg !2169
  %408 = add i32 %407, %377, !dbg !2169
  %409 = add i32 %408, %406, !dbg !2169
  tail call void @llvm.dbg.value(metadata i32 %409, i64 0, metadata !2005, metadata !793), !dbg !2030
  %410 = shl i32 %409, 16, !dbg !2169
  %411 = lshr i32 %409, 16, !dbg !2169
  %412 = or i32 %410, %411, !dbg !2169
  tail call void @llvm.dbg.value(metadata i32 %412, i64 0, metadata !2005, metadata !793), !dbg !2030
  %413 = add i32 %412, %404, !dbg !2169
  tail call void @llvm.dbg.value(metadata i32 %413, i64 0, metadata !2005, metadata !793), !dbg !2030
  %414 = xor i32 %404, %395, !dbg !2172
  %415 = xor i32 %414, %413, !dbg !2172
  %416 = add i32 %207, -35309556, !dbg !2172
  %417 = add i32 %416, %387, !dbg !2172
  %418 = add i32 %417, %415, !dbg !2172
  tail call void @llvm.dbg.value(metadata i32 %418, i64 0, metadata !2004, metadata !793), !dbg !2028
  %419 = shl i32 %418, 23, !dbg !2172
  %420 = lshr i32 %418, 9, !dbg !2172
  %421 = or i32 %419, %420, !dbg !2172
  tail call void @llvm.dbg.value(metadata i32 %421, i64 0, metadata !2004, metadata !793), !dbg !2028
  %422 = add i32 %421, %413, !dbg !2172
  tail call void @llvm.dbg.value(metadata i32 %422, i64 0, metadata !2004, metadata !793), !dbg !2028
  %423 = xor i32 %413, %404, !dbg !2175
  %424 = xor i32 %423, %422, !dbg !2175
  %425 = add i32 %51, -1530992060, !dbg !2175
  %426 = add i32 %425, %395, !dbg !2175
  %427 = add i32 %426, %424, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %427, i64 0, metadata !2003, metadata !793), !dbg !2026
  %428 = shl i32 %427, 4, !dbg !2175
  %429 = lshr i32 %427, 28, !dbg !2175
  %430 = or i32 %428, %429, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %430, i64 0, metadata !2003, metadata !793), !dbg !2026
  %431 = add i32 %430, %422, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %431, i64 0, metadata !2003, metadata !793), !dbg !2026
  %432 = xor i32 %422, %413, !dbg !2178
  %433 = xor i32 %432, %431, !dbg !2178
  %434 = add i32 %87, 1272893353, !dbg !2178
  %435 = add i32 %434, %404, !dbg !2178
  %436 = add i32 %435, %433, !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 %436, i64 0, metadata !2006, metadata !793), !dbg !2032
  %437 = shl i32 %436, 11, !dbg !2178
  %438 = lshr i32 %436, 21, !dbg !2178
  %439 = or i32 %437, %438, !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !2006, metadata !793), !dbg !2032
  %440 = add i32 %439, %431, !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 %440, i64 0, metadata !2006, metadata !793), !dbg !2032
  %441 = xor i32 %431, %422, !dbg !2181
  %442 = xor i32 %441, %440, !dbg !2181
  %443 = add i32 %123, -155497632, !dbg !2181
  %444 = add i32 %443, %413, !dbg !2181
  %445 = add i32 %444, %442, !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %445, i64 0, metadata !2005, metadata !793), !dbg !2030
  %446 = shl i32 %445, 16, !dbg !2181
  %447 = lshr i32 %445, 16, !dbg !2181
  %448 = or i32 %446, %447, !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %448, i64 0, metadata !2005, metadata !793), !dbg !2030
  %449 = add i32 %448, %440, !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %449, i64 0, metadata !2005, metadata !793), !dbg !2030
  %450 = xor i32 %440, %431, !dbg !2184
  %451 = xor i32 %450, %449, !dbg !2184
  %452 = add i32 %159, -1094730640, !dbg !2184
  %453 = add i32 %452, %422, !dbg !2184
  %454 = add i32 %453, %451, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 %454, i64 0, metadata !2004, metadata !793), !dbg !2028
  %455 = shl i32 %454, 23, !dbg !2184
  %456 = lshr i32 %454, 9, !dbg !2184
  %457 = or i32 %455, %456, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 %457, i64 0, metadata !2004, metadata !793), !dbg !2028
  %458 = add i32 %457, %449, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 %458, i64 0, metadata !2004, metadata !793), !dbg !2028
  %459 = xor i32 %449, %440, !dbg !2187
  %460 = xor i32 %459, %458, !dbg !2187
  %461 = add i32 %195, 681279174, !dbg !2187
  %462 = add i32 %461, %431, !dbg !2187
  %463 = add i32 %462, %460, !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 %463, i64 0, metadata !2003, metadata !793), !dbg !2026
  %464 = shl i32 %463, 4, !dbg !2187
  %465 = lshr i32 %463, 28, !dbg !2187
  %466 = or i32 %464, %465, !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 %466, i64 0, metadata !2003, metadata !793), !dbg !2026
  %467 = add i32 %466, %458, !dbg !2187
  tail call void @llvm.dbg.value(metadata i32 %467, i64 0, metadata !2003, metadata !793), !dbg !2026
  %468 = xor i32 %458, %449, !dbg !2190
  %469 = xor i32 %468, %467, !dbg !2190
  %470 = add i32 %39, -358537222, !dbg !2190
  %471 = add i32 %470, %440, !dbg !2190
  %472 = add i32 %471, %469, !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %472, i64 0, metadata !2006, metadata !793), !dbg !2032
  %473 = shl i32 %472, 11, !dbg !2190
  %474 = lshr i32 %472, 21, !dbg !2190
  %475 = or i32 %473, %474, !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %475, i64 0, metadata !2006, metadata !793), !dbg !2032
  %476 = add i32 %475, %467, !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %476, i64 0, metadata !2006, metadata !793), !dbg !2032
  %477 = xor i32 %467, %458, !dbg !2193
  %478 = xor i32 %477, %476, !dbg !2193
  %479 = add i32 %75, -722521979, !dbg !2193
  %480 = add i32 %479, %449, !dbg !2193
  %481 = add i32 %480, %478, !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 %481, i64 0, metadata !2005, metadata !793), !dbg !2030
  %482 = shl i32 %481, 16, !dbg !2193
  %483 = lshr i32 %481, 16, !dbg !2193
  %484 = or i32 %482, %483, !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 %484, i64 0, metadata !2005, metadata !793), !dbg !2030
  %485 = add i32 %484, %476, !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 %485, i64 0, metadata !2005, metadata !793), !dbg !2030
  %486 = xor i32 %476, %467, !dbg !2196
  %487 = xor i32 %486, %485, !dbg !2196
  %488 = add i32 %111, 76029189, !dbg !2196
  %489 = add i32 %488, %458, !dbg !2196
  %490 = add i32 %489, %487, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %490, i64 0, metadata !2004, metadata !793), !dbg !2028
  %491 = shl i32 %490, 23, !dbg !2196
  %492 = lshr i32 %490, 9, !dbg !2196
  %493 = or i32 %491, %492, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %493, i64 0, metadata !2004, metadata !793), !dbg !2028
  %494 = add i32 %493, %485, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %494, i64 0, metadata !2004, metadata !793), !dbg !2028
  %495 = xor i32 %485, %476, !dbg !2199
  %496 = xor i32 %495, %494, !dbg !2199
  %497 = add i32 %147, -640364487, !dbg !2199
  %498 = add i32 %497, %467, !dbg !2199
  %499 = add i32 %498, %496, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %499, i64 0, metadata !2003, metadata !793), !dbg !2026
  %500 = shl i32 %499, 4, !dbg !2199
  %501 = lshr i32 %499, 28, !dbg !2199
  %502 = or i32 %500, %501, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !2003, metadata !793), !dbg !2026
  %503 = add i32 %502, %494, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %503, i64 0, metadata !2003, metadata !793), !dbg !2026
  %504 = xor i32 %494, %485, !dbg !2202
  %505 = xor i32 %504, %503, !dbg !2202
  %506 = add i32 %183, -421815835, !dbg !2202
  %507 = add i32 %506, %476, !dbg !2202
  %508 = add i32 %507, %505, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 %508, i64 0, metadata !2006, metadata !793), !dbg !2032
  %509 = shl i32 %508, 11, !dbg !2202
  %510 = lshr i32 %508, 21, !dbg !2202
  %511 = or i32 %509, %510, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 %511, i64 0, metadata !2006, metadata !793), !dbg !2032
  %512 = add i32 %511, %503, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 %512, i64 0, metadata !2006, metadata !793), !dbg !2032
  %513 = xor i32 %503, %494, !dbg !2205
  %514 = xor i32 %513, %512, !dbg !2205
  %515 = add i32 %219, 530742520, !dbg !2205
  %516 = add i32 %515, %485, !dbg !2205
  %517 = add i32 %516, %514, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %517, i64 0, metadata !2005, metadata !793), !dbg !2030
  %518 = shl i32 %517, 16, !dbg !2205
  %519 = lshr i32 %517, 16, !dbg !2205
  %520 = or i32 %518, %519, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %520, i64 0, metadata !2005, metadata !793), !dbg !2030
  %521 = add i32 %520, %512, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %521, i64 0, metadata !2005, metadata !793), !dbg !2030
  %522 = xor i32 %512, %503, !dbg !2208
  %523 = xor i32 %522, %521, !dbg !2208
  %524 = add i32 %63, -995338651, !dbg !2208
  %525 = add i32 %524, %494, !dbg !2208
  %526 = add i32 %525, %523, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %526, i64 0, metadata !2004, metadata !793), !dbg !2028
  %527 = shl i32 %526, 23, !dbg !2208
  %528 = lshr i32 %526, 9, !dbg !2208
  %529 = or i32 %527, %528, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %529, i64 0, metadata !2004, metadata !793), !dbg !2028
  %530 = add i32 %529, %521, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %530, i64 0, metadata !2004, metadata !793), !dbg !2028
  %531 = xor i32 %512, -1, !dbg !2211
  %532 = or i32 %530, %531, !dbg !2211
  %533 = xor i32 %532, %521, !dbg !2211
  %534 = add i32 %39, -198630844, !dbg !2211
  %535 = add i32 %534, %503, !dbg !2211
  %536 = add i32 %535, %533, !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 %536, i64 0, metadata !2003, metadata !793), !dbg !2026
  %537 = shl i32 %536, 6, !dbg !2211
  %538 = lshr i32 %536, 26, !dbg !2211
  %539 = or i32 %537, %538, !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 %539, i64 0, metadata !2003, metadata !793), !dbg !2026
  %540 = add i32 %539, %530, !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 %540, i64 0, metadata !2003, metadata !793), !dbg !2026
  %541 = xor i32 %521, -1, !dbg !2214
  %542 = or i32 %540, %541, !dbg !2214
  %543 = xor i32 %542, %530, !dbg !2214
  %544 = add i32 %123, 1126891415, !dbg !2214
  %545 = add i32 %544, %512, !dbg !2214
  %546 = add i32 %545, %543, !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 %546, i64 0, metadata !2006, metadata !793), !dbg !2032
  %547 = shl i32 %546, 10, !dbg !2214
  %548 = lshr i32 %546, 22, !dbg !2214
  %549 = or i32 %547, %548, !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 %549, i64 0, metadata !2006, metadata !793), !dbg !2032
  %550 = add i32 %549, %540, !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 %550, i64 0, metadata !2006, metadata !793), !dbg !2032
  %551 = xor i32 %530, -1, !dbg !2217
  %552 = or i32 %550, %551, !dbg !2217
  %553 = xor i32 %552, %540, !dbg !2217
  %554 = add i32 %207, -1416354905, !dbg !2217
  %555 = add i32 %554, %521, !dbg !2217
  %556 = add i32 %555, %553, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %556, i64 0, metadata !2005, metadata !793), !dbg !2030
  %557 = shl i32 %556, 15, !dbg !2217
  %558 = lshr i32 %556, 17, !dbg !2217
  %559 = or i32 %557, %558, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %559, i64 0, metadata !2005, metadata !793), !dbg !2030
  %560 = add i32 %559, %550, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %560, i64 0, metadata !2005, metadata !793), !dbg !2030
  %561 = xor i32 %540, -1, !dbg !2220
  %562 = or i32 %560, %561, !dbg !2220
  %563 = xor i32 %562, %550, !dbg !2220
  %564 = add i32 %99, -57434055, !dbg !2220
  %565 = add i32 %564, %530, !dbg !2220
  %566 = add i32 %565, %563, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %566, i64 0, metadata !2004, metadata !793), !dbg !2028
  %567 = shl i32 %566, 21, !dbg !2220
  %568 = lshr i32 %566, 11, !dbg !2220
  %569 = or i32 %567, %568, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %569, i64 0, metadata !2004, metadata !793), !dbg !2028
  %570 = add i32 %569, %560, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %570, i64 0, metadata !2004, metadata !793), !dbg !2028
  %571 = xor i32 %550, -1, !dbg !2223
  %572 = or i32 %570, %571, !dbg !2223
  %573 = xor i32 %572, %560, !dbg !2223
  %574 = add i32 %183, 1700485571, !dbg !2223
  %575 = add i32 %574, %540, !dbg !2223
  %576 = add i32 %575, %573, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %576, i64 0, metadata !2003, metadata !793), !dbg !2026
  %577 = shl i32 %576, 6, !dbg !2223
  %578 = lshr i32 %576, 26, !dbg !2223
  %579 = or i32 %577, %578, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %579, i64 0, metadata !2003, metadata !793), !dbg !2026
  %580 = add i32 %579, %570, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %580, i64 0, metadata !2003, metadata !793), !dbg !2026
  %581 = xor i32 %560, -1, !dbg !2226
  %582 = or i32 %580, %581, !dbg !2226
  %583 = xor i32 %582, %570, !dbg !2226
  %584 = add i32 %75, -1894986606, !dbg !2226
  %585 = add i32 %584, %550, !dbg !2226
  %586 = add i32 %585, %583, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %586, i64 0, metadata !2006, metadata !793), !dbg !2032
  %587 = shl i32 %586, 10, !dbg !2226
  %588 = lshr i32 %586, 22, !dbg !2226
  %589 = or i32 %587, %588, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %589, i64 0, metadata !2006, metadata !793), !dbg !2032
  %590 = add i32 %589, %580, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %590, i64 0, metadata !2006, metadata !793), !dbg !2032
  %591 = xor i32 %570, -1, !dbg !2229
  %592 = or i32 %590, %591, !dbg !2229
  %593 = xor i32 %592, %580, !dbg !2229
  %594 = add i32 %159, -1051523, !dbg !2229
  %595 = add i32 %594, %560, !dbg !2229
  %596 = add i32 %595, %593, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %596, i64 0, metadata !2005, metadata !793), !dbg !2030
  %597 = shl i32 %596, 15, !dbg !2229
  %598 = lshr i32 %596, 17, !dbg !2229
  %599 = or i32 %597, %598, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %599, i64 0, metadata !2005, metadata !793), !dbg !2030
  %600 = add i32 %599, %590, !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %600, i64 0, metadata !2005, metadata !793), !dbg !2030
  %601 = xor i32 %580, -1, !dbg !2232
  %602 = or i32 %600, %601, !dbg !2232
  %603 = xor i32 %602, %590, !dbg !2232
  %604 = add i32 %51, -2054922799, !dbg !2232
  %605 = add i32 %604, %570, !dbg !2232
  %606 = add i32 %605, %603, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %606, i64 0, metadata !2004, metadata !793), !dbg !2028
  %607 = shl i32 %606, 21, !dbg !2232
  %608 = lshr i32 %606, 11, !dbg !2232
  %609 = or i32 %607, %608, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %609, i64 0, metadata !2004, metadata !793), !dbg !2028
  %610 = add i32 %609, %600, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %610, i64 0, metadata !2004, metadata !793), !dbg !2028
  %611 = xor i32 %590, -1, !dbg !2235
  %612 = or i32 %610, %611, !dbg !2235
  %613 = xor i32 %612, %600, !dbg !2235
  %614 = add i32 %135, 1873313359, !dbg !2235
  %615 = add i32 %614, %580, !dbg !2235
  %616 = add i32 %615, %613, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %616, i64 0, metadata !2003, metadata !793), !dbg !2026
  %617 = shl i32 %616, 6, !dbg !2235
  %618 = lshr i32 %616, 26, !dbg !2235
  %619 = or i32 %617, %618, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %619, i64 0, metadata !2003, metadata !793), !dbg !2026
  %620 = add i32 %619, %610, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %620, i64 0, metadata !2003, metadata !793), !dbg !2026
  %621 = xor i32 %600, -1, !dbg !2238
  %622 = or i32 %620, %621, !dbg !2238
  %623 = xor i32 %622, %610, !dbg !2238
  %624 = add i32 %219, -30611744, !dbg !2238
  %625 = add i32 %624, %590, !dbg !2238
  %626 = add i32 %625, %623, !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 %626, i64 0, metadata !2006, metadata !793), !dbg !2032
  %627 = shl i32 %626, 10, !dbg !2238
  %628 = lshr i32 %626, 22, !dbg !2238
  %629 = or i32 %627, %628, !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 %629, i64 0, metadata !2006, metadata !793), !dbg !2032
  %630 = add i32 %629, %620, !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 %630, i64 0, metadata !2006, metadata !793), !dbg !2032
  %631 = xor i32 %610, -1, !dbg !2241
  %632 = or i32 %630, %631, !dbg !2241
  %633 = xor i32 %632, %620, !dbg !2241
  %634 = add i32 %111, -1560198380, !dbg !2241
  %635 = add i32 %634, %600, !dbg !2241
  %636 = add i32 %635, %633, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %636, i64 0, metadata !2005, metadata !793), !dbg !2030
  %637 = shl i32 %636, 15, !dbg !2241
  %638 = lshr i32 %636, 17, !dbg !2241
  %639 = or i32 %637, %638, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %639, i64 0, metadata !2005, metadata !793), !dbg !2030
  %640 = add i32 %639, %630, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %640, i64 0, metadata !2005, metadata !793), !dbg !2030
  %641 = xor i32 %620, -1, !dbg !2244
  %642 = or i32 %640, %641, !dbg !2244
  %643 = xor i32 %642, %630, !dbg !2244
  %644 = add i32 %195, 1309151649, !dbg !2244
  %645 = add i32 %644, %610, !dbg !2244
  %646 = add i32 %645, %643, !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %646, i64 0, metadata !2004, metadata !793), !dbg !2028
  %647 = shl i32 %646, 21, !dbg !2244
  %648 = lshr i32 %646, 11, !dbg !2244
  %649 = or i32 %647, %648, !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %649, i64 0, metadata !2004, metadata !793), !dbg !2028
  %650 = add i32 %649, %640, !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !2004, metadata !793), !dbg !2028
  %651 = xor i32 %630, -1, !dbg !2247
  %652 = or i32 %650, %651, !dbg !2247
  %653 = xor i32 %652, %640, !dbg !2247
  %654 = add i32 %87, -145523070, !dbg !2247
  %655 = add i32 %654, %620, !dbg !2247
  %656 = add i32 %655, %653, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2003, metadata !793), !dbg !2026
  %657 = shl i32 %656, 6, !dbg !2247
  %658 = lshr i32 %656, 26, !dbg !2247
  %659 = or i32 %657, %658, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %659, i64 0, metadata !2003, metadata !793), !dbg !2026
  %660 = add i32 %659, %650, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %660, i64 0, metadata !2003, metadata !793), !dbg !2026
  %661 = xor i32 %640, -1, !dbg !2250
  %662 = or i32 %660, %661, !dbg !2250
  %663 = xor i32 %662, %650, !dbg !2250
  %664 = add i32 %171, -1120210379, !dbg !2250
  %665 = add i32 %664, %630, !dbg !2250
  %666 = add i32 %665, %663, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %666, i64 0, metadata !2006, metadata !793), !dbg !2032
  %667 = shl i32 %666, 10, !dbg !2250
  %668 = lshr i32 %666, 22, !dbg !2250
  %669 = or i32 %667, %668, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %669, i64 0, metadata !2006, metadata !793), !dbg !2032
  %670 = add i32 %669, %660, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %670, i64 0, metadata !2006, metadata !793), !dbg !2032
  %671 = xor i32 %650, -1, !dbg !2253
  %672 = or i32 %670, %671, !dbg !2253
  %673 = xor i32 %672, %660, !dbg !2253
  %674 = add i32 %63, 718787259, !dbg !2253
  %675 = add i32 %674, %640, !dbg !2253
  %676 = add i32 %675, %673, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %676, i64 0, metadata !2005, metadata !793), !dbg !2030
  %677 = shl i32 %676, 15, !dbg !2253
  %678 = lshr i32 %676, 17, !dbg !2253
  %679 = or i32 %677, %678, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %679, i64 0, metadata !2005, metadata !793), !dbg !2030
  %680 = add i32 %679, %670, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %680, i64 0, metadata !2005, metadata !793), !dbg !2030
  %681 = xor i32 %660, -1, !dbg !2256
  %682 = or i32 %680, %681, !dbg !2256
  %683 = xor i32 %682, %670, !dbg !2256
  %684 = add i32 %147, -343485551, !dbg !2256
  %685 = add i32 %684, %650, !dbg !2256
  %686 = add i32 %685, %683, !dbg !2256
  tail call void @llvm.dbg.value(metadata i32 %686, i64 0, metadata !2004, metadata !793), !dbg !2028
  %687 = shl i32 %686, 21, !dbg !2256
  %688 = lshr i32 %686, 11, !dbg !2256
  %689 = or i32 %687, %688, !dbg !2256
  tail call void @llvm.dbg.value(metadata i32 %689, i64 0, metadata !2004, metadata !793), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %691, i64 0, metadata !2004, metadata !793), !dbg !2028
  %690 = add i32 %660, %32, !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 %690, i64 0, metadata !2003, metadata !793), !dbg !2026
  %691 = add i32 %680, %33, !dbg !2256
  %692 = add i32 %691, %689, !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %692, i64 0, metadata !2004, metadata !793), !dbg !2028
  %693 = add i32 %680, %34, !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %693, i64 0, metadata !2005, metadata !793), !dbg !2030
  %694 = add i32 %670, %35, !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %694, i64 0, metadata !2006, metadata !793), !dbg !2032
  tail call void @llvm.dbg.value(metadata i32* %223, i64 0, metadata !1998, metadata !793), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %690, i64 0, metadata !2003, metadata !793), !dbg !2026
  tail call void @llvm.dbg.value(metadata i32 %692, i64 0, metadata !2004, metadata !793), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %693, i64 0, metadata !2005, metadata !793), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %694, i64 0, metadata !2006, metadata !793), !dbg !2032
  %695 = icmp ult i32* %223, %6, !dbg !2043
  br i1 %695, label %30, label %696, !dbg !2045, !llvm.loop !2263

; <label>:696:                                    ; preds = %30
  br label %697, !dbg !2266

; <label>:697:                                    ; preds = %696, %3
  %698 = phi i32 [ %14, %3 ], [ %694, %696 ]
  %699 = phi i32 [ %12, %3 ], [ %693, %696 ]
  %700 = phi i32 [ %10, %3 ], [ %692, %696 ]
  %701 = phi i32 [ %8, %3 ], [ %690, %696 ]
  store i32 %701, i32* %7, align 4, !dbg !2266, !tbaa !1893
  store i32 %700, i32* %9, align 4, !dbg !2267, !tbaa !1906
  store i32 %699, i32* %11, align 4, !dbg !2268, !tbaa !1913
  store i32 %698, i32* %13, align 4, !dbg !2269, !tbaa !1920
  ret void, !dbg !2270
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @md5_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 !dbg !2271 {
  %3 = alloca %struct.md5_ctx, align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2315, metadata !793), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2316, metadata !793), !dbg !2323
  %4 = bitcast %struct.md5_ctx* %3 to i8*, !dbg !2324
  call void @llvm.lifetime.start(i64 156, i8* nonnull %4) #10, !dbg !2324
  %5 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2325
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2319, metadata !793), !dbg !2326
  %6 = icmp eq i8* %5, null, !dbg !2327
  br i1 %6, label %66, label %7, !dbg !2329

; <label>:7:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2317, metadata !1098), !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1868, metadata !793), !dbg !2331
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2333
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2333, !tbaa !1012
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1, !dbg !2334
  store i32 0, i32* %9, align 4, !dbg !2335, !tbaa !1012
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0, !dbg !2336
  store i32 0, i32* %10, align 16, !dbg !2337, !tbaa !1012
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5, !dbg !2338
  store i32 0, i32* %11, align 8, !dbg !2339, !tbaa !1877
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %13, !dbg !2340

; <label>:13:                                     ; preds = %31, %7
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2318, metadata !793), !dbg !2341
  br label %14, !dbg !2342

; <label>:14:                                     ; preds = %28, %13
  %15 = phi i64 [ 0, %13 ], [ %19, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !2318, metadata !793), !dbg !2341
  %16 = getelementptr inbounds i8, i8* %5, i64 %15, !dbg !2343
  %17 = sub i64 32768, %15, !dbg !2343
  %18 = tail call i64 @fread_unlocked(i8* %16, i64 1, i64 %17, %struct._IO_FILE* %0) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !2320, metadata !793), !dbg !2345
  %19 = add i64 %18, %15, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2318, metadata !793), !dbg !2341
  %20 = icmp eq i64 %19, 32768, !dbg !2347
  br i1 %20, label %31, label %21, !dbg !2349

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i64 %18, 0, !dbg !2350
  %23 = load i32, i32* %12, align 8, !tbaa !1490
  br i1 %22, label %24, label %28, !dbg !2352

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2353, metadata !793), !dbg !2358
  %25 = and i32 %23, 32, !dbg !2362
  %26 = icmp eq i32 %25, 0, !dbg !2363
  br i1 %26, label %33, label %27, !dbg !2364

; <label>:27:                                     ; preds = %24
  tail call void @free(i8* %5) #10, !dbg !2365
  br label %66

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2367, metadata !793), !dbg !2370
  %29 = and i32 %23, 16, !dbg !2373
  %30 = icmp eq i32 %29, 0, !dbg !2374
  br i1 %30, label %14, label %32, !dbg !2375, !llvm.loop !2376

; <label>:31:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2317, metadata !1098), !dbg !2330
  call void @md5_process_block(i8* nonnull %5, i64 32768, %struct.md5_ctx* nonnull %3) #10, !dbg !2378
  br label %13

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !2379

; <label>:33:                                     ; preds = %32, %24
  %34 = icmp eq i64 %19, 0, !dbg !2379
  br i1 %34, label %36, label %35, !dbg !2381

; <label>:35:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2317, metadata !1098), !dbg !2330
  call void @md5_process_bytes(i8* nonnull %5, i64 %19, %struct.md5_ctx* nonnull %3) #10, !dbg !2382
  br label %36, !dbg !2382

; <label>:36:                                     ; preds = %33, %35
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !2317, metadata !1098), !dbg !2330
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1930, metadata !793) #10, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1931, metadata !793) #10, !dbg !2385
  %37 = load i32, i32* %11, align 8, !dbg !2386, !tbaa !1877
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !1932, metadata !793) #10, !dbg !2387
  %38 = icmp ult i32 %37, 56, !dbg !2388
  %39 = select i1 %38, i64 16, i64 32, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1933, metadata !793) #10, !dbg !2390
  %40 = load i32, i32* %10, align 16, !dbg !2391, !tbaa !1012
  %41 = add i32 %40, %37, !dbg !2391
  store i32 %41, i32* %10, align 16, !dbg !2391, !tbaa !1012
  %42 = icmp ult i32 %41, %37, !dbg !2392
  br i1 %42, label %43, label %46, !dbg !2393

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %9, align 4, !dbg !2394, !tbaa !1012
  %45 = add i32 %44, 1, !dbg !2394
  store i32 %45, i32* %9, align 4, !dbg !2394, !tbaa !1012
  br label %46, !dbg !2394

; <label>:46:                                     ; preds = %36, %43
  %47 = shl i32 %41, 3, !dbg !2395
  %48 = add nsw i64 %39, -2, !dbg !2396
  %49 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %48, !dbg !2397
  store i32 %47, i32* %49, align 4, !dbg !2398, !tbaa !1012
  %50 = load i32, i32* %9, align 4, !dbg !2399, !tbaa !1012
  %51 = shl i32 %50, 3, !dbg !2399
  %52 = lshr i32 %41, 29, !dbg !2399
  %53 = or i32 %51, %52, !dbg !2399
  %54 = add nsw i64 %39, -1, !dbg !2400
  %55 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %54, !dbg !2401
  store i32 %53, i32* %55, align 4, !dbg !2402, !tbaa !1012
  %56 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 0, !dbg !2403
  %57 = bitcast i32* %56 to i8*, !dbg !2403
  %58 = zext i32 %37 to i64, !dbg !2403
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2403
  %60 = shl nsw i64 %48, 2, !dbg !2404
  %61 = sub nsw i64 %60, %58, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %61, i32 1, i1 false) #10, !dbg !2406
  %62 = shl nuw nsw i64 %39, 2, !dbg !2407
  call void @md5_process_block(i8* %57, i64 %62, %struct.md5_ctx* nonnull %3) #10, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, i64 0, metadata !1886, metadata !793) #10, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1887, metadata !793) #10, !dbg !2411
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1888, metadata !793) #10, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1894, metadata !793) #10, !dbg !2413
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2415
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2416
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2418
  %63 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2420
  %64 = load <4 x i32>, <4 x i32>* %63, align 16, !dbg !2420, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2421
  %65 = bitcast i8* %1 to <4 x i32>*, !dbg !2423
  store <4 x i32> %64, <4 x i32>* %65, align 1, !dbg !2423
  call void @free(i8* %5) #10, !dbg !2424
  br label %66, !dbg !2425

; <label>:66:                                     ; preds = %27, %2, %46
  %67 = phi i32 [ 0, %46 ], [ 1, %2 ], [ 1, %27 ]
  call void @llvm.lifetime.end(i64 156, i8* nonnull %4) #10, !dbg !2426
  ret i32 %67, !dbg !2426
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_bytes(i8* readonly, i64, %struct.md5_ctx*) local_unnamed_addr #6 !dbg !2427 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2429, metadata !793), !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2430, metadata !793), !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, i64 0, metadata !2431, metadata !793), !dbg !2441
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5, !dbg !2442
  %5 = load i32, i32* %4, align 4, !dbg !2442, !tbaa !1877
  %6 = icmp eq i32 %5, 0, !dbg !2443
  br i1 %6, label %28, label %7, !dbg !2444

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2432, metadata !793), !dbg !2446
  %9 = sub nsw i64 128, %8, !dbg !2447
  %10 = icmp ugt i64 %9, %1, !dbg !2448
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2435, metadata !793), !dbg !2450
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2451
  %13 = bitcast i32* %12 to i8*, !dbg !2451
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2451
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %0, i64 %11, i32 1, i1 false), !dbg !2452
  %15 = add i64 %8, %11, !dbg !2453
  %16 = trunc i64 %15 to i32, !dbg !2453
  store i32 %16, i32* %4, align 4, !dbg !2453, !tbaa !1877
  %17 = icmp ugt i32 %16, 64, !dbg !2454
  br i1 %17, label %18, label %25, !dbg !2456

; <label>:18:                                     ; preds = %7
  %19 = and i64 %15, 4294967232, !dbg !2457
  tail call void @md5_process_block(i8* %13, i64 %19, %struct.md5_ctx* nonnull %2) #10, !dbg !2459
  %20 = load i32, i32* %4, align 4, !dbg !2460, !tbaa !1877
  %21 = and i32 %20, 63, !dbg !2460
  store i32 %21, i32* %4, align 4, !dbg !2460, !tbaa !1877
  %22 = and i64 %15, -64, !dbg !2461
  %23 = getelementptr inbounds i8, i8* %13, i64 %22, !dbg !2462
  %24 = zext i32 %21 to i64, !dbg !2463
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %23, i64 %24, i32 1, i1 false), !dbg !2464
  br label %25, !dbg !2465

; <label>:25:                                     ; preds = %18, %7
  %26 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !2429, metadata !793), !dbg !2439
  %27 = sub i64 %1, %11, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !2430, metadata !793), !dbg !2440
  br label %28, !dbg !2468

; <label>:28:                                     ; preds = %3, %25
  %29 = phi i64 [ %27, %25 ], [ %1, %3 ]
  %30 = phi i8* [ %26, %25 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2429, metadata !793), !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2430, metadata !793), !dbg !2440
  %31 = icmp ugt i64 %29, 63, !dbg !2469
  br i1 %31, label %32, label %36, !dbg !2471

; <label>:32:                                     ; preds = %28
  %33 = and i64 %29, -64, !dbg !2472
  tail call void @md5_process_block(i8* %30, i64 %33, %struct.md5_ctx* nonnull %2) #10, !dbg !2475
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !2429, metadata !793), !dbg !2439
  %35 = and i64 %29, 63, !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2430, metadata !793), !dbg !2440
  br label %36, !dbg !2478

; <label>:36:                                     ; preds = %32, %28
  %37 = phi i64 [ %35, %32 ], [ %29, %28 ]
  %38 = phi i8* [ %34, %32 ], [ %30, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !2429, metadata !793), !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !2430, metadata !793), !dbg !2440
  %39 = icmp eq i64 %37, 0, !dbg !2479
  br i1 %39, label %55, label %40, !dbg !2480

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %4, align 4, !dbg !2481, !tbaa !1877
  %42 = zext i32 %41 to i64, !dbg !2482
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !2436, metadata !793), !dbg !2483
  %43 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, !dbg !2484
  %44 = bitcast [32 x i32]* %43 to i8*, !dbg !2485
  %45 = getelementptr inbounds i8, i8* %44, i64 %42, !dbg !2485
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %38, i64 %37, i32 1, i1 false), !dbg !2486
  %46 = add i64 %42, %37, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !2436, metadata !793), !dbg !2483
  %47 = icmp ugt i64 %46, 63, !dbg !2488
  br i1 %47, label %48, label %52, !dbg !2490

; <label>:48:                                     ; preds = %40
  tail call void @md5_process_block(i8* %44, i64 64, %struct.md5_ctx* nonnull %2) #10, !dbg !2491
  %49 = add i64 %46, -64, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2436, metadata !793), !dbg !2483
  %50 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16, !dbg !2494
  %51 = bitcast i32* %50 to i8*, !dbg !2495
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %51, i64 %49, i32 4, i1 false), !dbg !2495
  br label %52, !dbg !2496

; <label>:52:                                     ; preds = %48, %40
  %53 = phi i64 [ %49, %48 ], [ %46, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !2436, metadata !793), !dbg !2483
  %54 = trunc i64 %53 to i32, !dbg !2497
  store i32 %54, i32* %4, align 4, !dbg !2498, !tbaa !1877
  br label %55, !dbg !2499

; <label>:55:                                     ; preds = %36, %52
  ret void, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 !dbg !2501 {
  %4 = alloca %struct.md5_ctx, align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2505, metadata !793), !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2506, metadata !793), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2507, metadata !793), !dbg !2511
  %5 = bitcast %struct.md5_ctx* %4 to i8*, !dbg !2512
  call void @llvm.lifetime.start(i64 156, i8* nonnull %5) #10, !dbg !2512
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2508, metadata !1098), !dbg !2513
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1868, metadata !793), !dbg !2514
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2516
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2516, !tbaa !1012
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1, !dbg !2517
  store i32 0, i32* %7, align 4, !dbg !2518, !tbaa !1012
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0, !dbg !2519
  store i32 0, i32* %8, align 16, !dbg !2520, !tbaa !1012
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5, !dbg !2521
  store i32 0, i32* %9, align 8, !dbg !2522, !tbaa !1877
  tail call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2508, metadata !1098), !dbg !2513
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #10, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !2508, metadata !1098), !dbg !2513
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1930, metadata !793) #10, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1931, metadata !793) #10, !dbg !2526
  %10 = load i32, i32* %9, align 8, !dbg !2527, !tbaa !1877
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1932, metadata !793) #10, !dbg !2528
  %11 = icmp ult i32 %10, 56, !dbg !2529
  %12 = select i1 %11, i64 16, i64 32, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !1933, metadata !793) #10, !dbg !2531
  %13 = load i32, i32* %8, align 16, !dbg !2532, !tbaa !1012
  %14 = add i32 %13, %10, !dbg !2532
  store i32 %14, i32* %8, align 16, !dbg !2532, !tbaa !1012
  %15 = icmp ult i32 %14, %10, !dbg !2533
  %16 = load i32, i32* %7, align 4, !tbaa !1012
  br i1 %15, label %17, label %19, !dbg !2534

; <label>:17:                                     ; preds = %3
  %18 = add i32 %16, 1, !dbg !2535
  store i32 %18, i32* %7, align 4, !dbg !2535, !tbaa !1012
  br label %19, !dbg !2535

; <label>:19:                                     ; preds = %3, %17
  %20 = phi i32 [ %18, %17 ], [ %16, %3 ], !dbg !2536
  %21 = shl i32 %14, 3, !dbg !2537
  %22 = add nsw i64 %12, -2, !dbg !2538
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %22, !dbg !2539
  store i32 %21, i32* %23, align 4, !dbg !2540, !tbaa !1012
  %24 = shl i32 %20, 3, !dbg !2536
  %25 = lshr i32 %14, 29, !dbg !2536
  %26 = or i32 %24, %25, !dbg !2536
  %27 = add nsw i64 %12, -1, !dbg !2541
  %28 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %27, !dbg !2542
  store i32 %26, i32* %28, align 4, !dbg !2543, !tbaa !1012
  %29 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 0, !dbg !2544
  %30 = bitcast i32* %29 to i8*, !dbg !2544
  %31 = zext i32 %10 to i64, !dbg !2544
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !2544
  %33 = shl nsw i64 %22, 2, !dbg !2545
  %34 = sub nsw i64 %33, %31, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i64 0, i64 0), i64 %34, i32 1, i1 false) #10, !dbg !2547
  %35 = shl nuw nsw i64 %12, 2, !dbg !2548
  call void @md5_process_block(i8* %30, i64 %35, %struct.md5_ctx* nonnull %4) #10, !dbg !2549
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, i64 0, metadata !1886, metadata !793) #10, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1887, metadata !793) #10, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1888, metadata !793) #10, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1894, metadata !793) #10, !dbg !2554
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2556
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2557
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2559
  %36 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2561
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !dbg !2561, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1899, metadata !793) #10, !dbg !2562
  %38 = bitcast i8* %2 to <4 x i32>*, !dbg !2564
  store <4 x i32> %37, <4 x i32>* %38, align 1, !dbg !2564
  call void @llvm.lifetime.end(i64 156, i8* nonnull %5) #10, !dbg !2565
  ret i8* %2, !dbg !2566
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2567 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2574, metadata !793), !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2575, metadata !793), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2576, metadata !793), !dbg !2582
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2577, metadata !793), !dbg !2583
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2578, metadata !793), !dbg !2584
  ret void, !dbg !2585
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2586 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2630, metadata !793), !dbg !2632
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2631, metadata !793), !dbg !2633
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2634
  br i1 %3, label %7, label %4, !dbg !2636

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2574, metadata !793) #10, !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2575, metadata !793) #10, !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2576, metadata !793) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2577, metadata !793) #10, !dbg !2643
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2578, metadata !793) #10, !dbg !2644
  br label %7, !dbg !2645

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2646
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !2647 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2692, metadata !793), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2693, metadata !793), !dbg !2708
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2709
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !2694, metadata !793), !dbg !2710
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2711
  br i1 %4, label %25, label %5, !dbg !2712

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2695, metadata !793), !dbg !2714
  %7 = icmp ult i32 %6, 3, !dbg !2715
  br i1 %7, label %8, label %25, !dbg !2715

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2698, metadata !793), !dbg !2717
  %10 = icmp slt i32 %9, 0, !dbg !2718
  br i1 %10, label %11, label %15, !dbg !2719

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1, !dbg !2720
  %13 = load i32, i32* %12, align 4, !dbg !2720, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2701, metadata !793), !dbg !2721
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2722
  store i32 %13, i32* %12, align 4, !dbg !2723, !tbaa !1012
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2724
  %17 = icmp eq i32 %16, 0, !dbg !2725
  br i1 %17, label %18, label %21, !dbg !2726

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2727
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !2694, metadata !793), !dbg !2710
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2729
  br i1 %20, label %21, label %25, !dbg !2730

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1, !dbg !2732
  %23 = load i32, i32* %22, align 4, !dbg !2732, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !2704, metadata !793), !dbg !2733
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2734
  store i32 %23, i32* %22, align 4, !dbg !2735, !tbaa !1012
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !2736
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2737 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2739, metadata !793), !dbg !2742
  %2 = icmp eq i8* %0, null, !dbg !2743
  br i1 %2, label %3, label %6, !dbg !2745

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2746, !tbaa !801
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2748
  tail call void @abort() #14, !dbg !2749
  unreachable, !dbg !2749

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2740, metadata !793), !dbg !2751
  %8 = icmp ne i8* %7, null, !dbg !2752
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2753
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2741, metadata !793), !dbg !2756
  %11 = ptrtoint i8* %10 to i64, !dbg !2757
  %12 = ptrtoint i8* %0 to i64, !dbg !2757
  %13 = sub i64 %11, %12, !dbg !2757
  %14 = icmp sgt i64 %13, 6, !dbg !2759
  br i1 %14, label %15, label %24, !dbg !2760

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2761
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #13, !dbg !2761
  %18 = icmp eq i32 %17, 0, !dbg !2763
  br i1 %18, label %19, label %24, !dbg !2764

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2739, metadata !793), !dbg !2742
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #13, !dbg !2765
  %21 = icmp eq i32 %20, 0, !dbg !2768
  br i1 %21, label %22, label %24, !dbg !2769

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2739, metadata !793), !dbg !2742
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2772, !tbaa !801
  br label %24, !dbg !2773

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2739, metadata !793), !dbg !2742
  store i8* %25, i8** @program_name, align 8, !dbg !2774, !tbaa !801
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2775, !tbaa !801
  ret void, !dbg !2776
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2782, metadata !793), !dbg !2785
  %2 = tail call i32* @__errno_location() #1, !dbg !2786
  %3 = load i32, i32* %2, align 4, !dbg !2786, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2783, metadata !793), !dbg !2787
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2788
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2789
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2789
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2791
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2791
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2784, metadata !793), !dbg !2792
  store i32 %3, i32* %2, align 4, !dbg !2793, !tbaa !1012
  ret %struct.quoting_options* %8, !dbg !2794
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2795 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2801, metadata !793), !dbg !2802
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2803
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2803
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2804
  %5 = load i32, i32* %4, align 8, !dbg !2804, !tbaa !2806
  ret i32 %5, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2809 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2813, metadata !793), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2814, metadata !793), !dbg !2816
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2817
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2817
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2818
  store i32 %1, i32* %5, align 8, !dbg !2820, !tbaa !2806
  ret void, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2822 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2826, metadata !793), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2827, metadata !793), !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2828, metadata !793), !dbg !2836
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2829, metadata !793), !dbg !2837
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2838
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2838
  %6 = lshr i8 %1, 5, !dbg !2839
  %7 = zext i8 %6 to i64, !dbg !2839
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2830, metadata !793), !dbg !2842
  %9 = and i8 %1, 31, !dbg !2843
  %10 = zext i8 %9 to i32, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2832, metadata !793), !dbg !2845
  %11 = load i32, i32* %8, align 4, !dbg !2846, !tbaa !1012
  %12 = lshr i32 %11, %10, !dbg !2847
  %13 = and i32 %12, 1, !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2833, metadata !793), !dbg !2849
  %14 = and i32 %2, 1, !dbg !2850
  %15 = xor i32 %13, %14, !dbg !2851
  %16 = shl i32 %15, %10, !dbg !2852
  %17 = xor i32 %16, %11, !dbg !2853
  store i32 %17, i32* %8, align 4, !dbg !2853, !tbaa !1012
  ret i32 %13, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2855 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2859, metadata !793), !dbg !2862
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2860, metadata !793), !dbg !2863
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2859, metadata !793), !dbg !2862
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2859, metadata !793), !dbg !2862
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2867
  %6 = load i32, i32* %5, align 4, !dbg !2867, !tbaa !2868
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2861, metadata !793), !dbg !2869
  store i32 %1, i32* %5, align 4, !dbg !2870, !tbaa !2868
  ret i32 %6, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2872 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2876, metadata !793), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2877, metadata !793), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2878, metadata !793), !dbg !2881
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2876, metadata !793), !dbg !2879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2876, metadata !793), !dbg !2879
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2885
  store i32 10, i32* %6, align 8, !dbg !2886, !tbaa !2806
  %7 = icmp ne i8* %1, null, !dbg !2887
  %8 = icmp ne i8* %2, null, !dbg !2889
  %9 = and i1 %7, %8, !dbg !2891
  br i1 %9, label %11, label %10, !dbg !2891

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2892
  unreachable, !dbg !2892

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2893
  store i8* %1, i8** %12, align 8, !dbg !2894, !tbaa !2895
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2896
  store i8* %2, i8** %13, align 8, !dbg !2897, !tbaa !2898
  ret void, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !793), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2905, metadata !793), !dbg !2913
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2906, metadata !793), !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2907, metadata !793), !dbg !2915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2908, metadata !793), !dbg !2916
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2917
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2909, metadata !793), !dbg !2918
  %8 = tail call i32* @__errno_location() #1, !dbg !2919
  %9 = load i32, i32* %8, align 4, !dbg !2919, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2910, metadata !793), !dbg !2920
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2921
  %11 = load i32, i32* %10, align 8, !dbg !2921, !tbaa !2806
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2922
  %13 = load i32, i32* %12, align 4, !dbg !2922, !tbaa !2868
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2923
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2924
  %16 = load i8*, i8** %15, align 8, !dbg !2924, !tbaa !2895
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2925
  %18 = load i8*, i8** %17, align 8, !dbg !2925, !tbaa !2898
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2911, metadata !793), !dbg !2927
  store i32 %9, i32* %8, align 4, !dbg !2928, !tbaa !1012
  ret i64 %19, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2930 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2936, metadata !793), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2937, metadata !793), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2938, metadata !793), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2939, metadata !793), !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2940, metadata !793), !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2941, metadata !793), !dbg !3004
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2942, metadata !793), !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2943, metadata !793), !dbg !3006
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2944, metadata !793), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2946, metadata !793), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2947, metadata !793), !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2948, metadata !793), !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2949, metadata !793), !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2950, metadata !793), !dbg !3012
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !3013
  %14 = icmp eq i64 %13, 1, !dbg !3014
  %15 = lshr i32 %5, 1, !dbg !3015
  %16 = trunc i32 %15 to i8, !dbg !3015
  %17 = and i8 %16, 1, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2952, metadata !793), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !793), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2954, metadata !793), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2955, metadata !793), !dbg !3018
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !3019

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2955, metadata !793), !dbg !3018
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2950, metadata !793), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2949, metadata !793), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2944, metadata !793), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2943, metadata !793), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2940, metadata !793), !dbg !3003
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
  ], !dbg !3020

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2940, metadata !793), !dbg !3003
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2940, metadata !793), !dbg !3003
  br label %95, !dbg !3021

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2940, metadata !793), !dbg !3003
  %43 = and i8 %36, 1, !dbg !3023
  %44 = icmp eq i8 %43, 0, !dbg !3023
  br i1 %44, label %45, label %95, !dbg !3021

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3025
  br i1 %46, label %95, label %47, !dbg !3029

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3031, !tbaa !1048
  br label %95, !dbg !3031

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 %28), !dbg !3033
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2943, metadata !793), !dbg !3006
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 %28), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2944, metadata !793), !dbg !3007
  br label %51, !dbg !3038

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2944, metadata !793), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2943, metadata !793), !dbg !3006
  %54 = and i8 %36, 1, !dbg !3039
  %55 = icmp eq i8 %54, 0, !dbg !3039
  br i1 %55, label %56, label %73, !dbg !3041

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2946, metadata !793), !dbg !3008
  %57 = load i8, i8* %52, align 1, !dbg !3042, !tbaa !1048
  %58 = icmp eq i8 %57, 0, !dbg !3046
  br i1 %58, label %73, label %59, !dbg !3046

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3048

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !3048
  br i1 %64, label %65, label %67, !dbg !3052

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3054
  store i8 %61, i8* %66, align 1, !dbg !3054, !tbaa !1048
  br label %67, !dbg !3054

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2946, metadata !793), !dbg !3008
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2946, metadata !793), !dbg !3008
  %70 = load i8, i8* %69, align 1, !dbg !3042, !tbaa !1048
  %71 = icmp eq i8 %70, 0, !dbg !3046
  br i1 %71, label %72, label %60, !dbg !3046, !llvm.loop !3060

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !3008

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2950, metadata !793), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2948, metadata !793), !dbg !3010
  %75 = call i64 @strlen(i8* %53) #13, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2949, metadata !793), !dbg !3011
  br label %95, !dbg !3064

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2950, metadata !793), !dbg !3012
  br label %77, !dbg !3065

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2950, metadata !793), !dbg !3012
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2952, metadata !793), !dbg !3015
  br label %79, !dbg !3066

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2950, metadata !793), !dbg !3012
  %82 = and i8 %81, 1, !dbg !3067
  %83 = icmp eq i8 %82, 0, !dbg !3067
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2950, metadata !793), !dbg !3012
  %84 = select i1 %83, i8 1, i8 %80, !dbg !3069
  br label %85, !dbg !3069

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2950, metadata !793), !dbg !3012
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2940, metadata !793), !dbg !3003
  %88 = and i8 %87, 1, !dbg !3070
  %89 = icmp eq i8 %88, 0, !dbg !3070
  br i1 %89, label %90, label %95, !dbg !3072

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !3073
  br i1 %91, label %95, label %92, !dbg !3077

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !3079, !tbaa !1048
  br label %95, !dbg !3079

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2952, metadata !793), !dbg !3015
  br label %95, !dbg !3081

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !3082
  unreachable, !dbg !3082

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2952, metadata !793), !dbg !3015
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2950, metadata !793), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2949, metadata !793), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2944, metadata !793), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2943, metadata !793), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2940, metadata !793), !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2945, metadata !793), !dbg !3083
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
  br label %123, !dbg !3084

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2955, metadata !793), !dbg !3018
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2945, metadata !793), !dbg !3083
  %132 = icmp eq i64 %127, -1, !dbg !3085
  br i1 %132, label %135, label %133, !dbg !3087

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !3088
  br i1 %134, label %597, label %139, !dbg !3090

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3092
  %137 = load i8, i8* %136, align 1, !dbg !3092, !tbaa !1048
  %138 = icmp eq i8 %137, 0, !dbg !3094
  br i1 %138, label %597, label %139, !dbg !3090

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2961, metadata !793), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2963, metadata !793), !dbg !3097
  br i1 %109, label %140, label %155, !dbg !3098

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !3100
  %142 = and i1 %110, %132, !dbg !3102
  br i1 %142, label %143, label %145, !dbg !3102

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2939, metadata !793), !dbg !3002
  br label %145, !dbg !3104

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2939, metadata !793), !dbg !3002
  %147 = icmp ugt i64 %141, %146, !dbg !3106
  br i1 %147, label %155, label %148, !dbg !3108

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3109
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3110
  %151 = icmp ne i32 %150, 0, !dbg !3111
  %152 = or i1 %151, %112, !dbg !3111
  %153 = xor i1 %151, true, !dbg !3111
  %154 = zext i1 %153 to i8, !dbg !3111
  br i1 %152, label %155, label %644, !dbg !3111

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2961, metadata !793), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2939, metadata !793), !dbg !3002
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3113
  %159 = load i8, i8* %158, align 1, !dbg !3113, !tbaa !1048
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2956, metadata !793), !dbg !3114
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
  ], !dbg !3115

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !3116

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !3117

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2962, metadata !793), !dbg !3096
  %163 = and i8 %128, 1, !dbg !3122
  %164 = icmp eq i8 %163, 0, !dbg !3122
  %165 = and i1 %114, %164, !dbg !3125
  br i1 %165, label %166, label %182, !dbg !3125

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !3127
  br i1 %167, label %168, label %170, !dbg !3132

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3134
  store i8 39, i8* %169, align 1, !dbg !3134, !tbaa !1048
  br label %170, !dbg !3134

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2946, metadata !793), !dbg !3008
  %172 = icmp ult i64 %171, %131, !dbg !3138
  br i1 %172, label %173, label %175, !dbg !3142

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3144
  store i8 36, i8* %174, align 1, !dbg !3144, !tbaa !1048
  br label %175, !dbg !3144

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2946, metadata !793), !dbg !3008
  %177 = icmp ult i64 %176, %131, !dbg !3148
  br i1 %177, label %178, label %180, !dbg !3152

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3154
  store i8 39, i8* %179, align 1, !dbg !3154, !tbaa !1048
  br label %180, !dbg !3154

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %182, !dbg !3158

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2946, metadata !793), !dbg !3008
  %185 = icmp ult i64 %183, %131, !dbg !3160
  br i1 %185, label %186, label %188, !dbg !3164

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3166
  store i8 92, i8* %187, align 1, !dbg !3166, !tbaa !1048
  br label %188, !dbg !3166

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2946, metadata !793), !dbg !3008
  br i1 %106, label %190, label %476, !dbg !3170

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !3172
  %192 = icmp ult i64 %191, %156, !dbg !3174
  br i1 %192, label %193, label %476, !dbg !3175

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3176
  %195 = load i8, i8* %194, align 1, !dbg !3176, !tbaa !1048
  %196 = add i8 %195, -48, !dbg !3178
  %197 = icmp ult i8 %196, 10, !dbg !3178
  br i1 %197, label %198, label %476, !dbg !3178

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !3179
  br i1 %199, label %200, label %202, !dbg !3184

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3186
  store i8 48, i8* %201, align 1, !dbg !3186, !tbaa !1048
  br label %202, !dbg !3186

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2946, metadata !793), !dbg !3008
  %204 = icmp ult i64 %203, %131, !dbg !3190
  br i1 %204, label %205, label %207, !dbg !3194

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3196
  store i8 48, i8* %206, align 1, !dbg !3196, !tbaa !1048
  br label %207, !dbg !3196

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2946, metadata !793), !dbg !3008
  br label %476, !dbg !3200

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !3201

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !3202

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !3203

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !3205

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !3207
  %215 = icmp ult i64 %214, %156, !dbg !3209
  br i1 %215, label %216, label %476, !dbg !3210

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3211
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3213
  %219 = load i8, i8* %218, align 1, !dbg !3213, !tbaa !1048
  %220 = icmp eq i8 %219, 63, !dbg !3214
  br i1 %220, label %221, label %476, !dbg !3215

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3217
  %223 = load i8, i8* %222, align 1, !dbg !3217, !tbaa !1048
  %224 = sext i8 %223 to i32, !dbg !3217
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
  ], !dbg !3218

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3219

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2945, metadata !793), !dbg !3083
  %227 = icmp ult i64 %125, %131, !dbg !3221
  br i1 %227, label %228, label %230, !dbg !3225

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3227
  store i8 63, i8* %229, align 1, !dbg !3227, !tbaa !1048
  br label %230, !dbg !3227

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2946, metadata !793), !dbg !3008
  %232 = icmp ult i64 %231, %131, !dbg !3231
  br i1 %232, label %233, label %235, !dbg !3235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3237
  store i8 34, i8* %234, align 1, !dbg !3237, !tbaa !1048
  br label %235, !dbg !3237

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2946, metadata !793), !dbg !3008
  %237 = icmp ult i64 %236, %131, !dbg !3241
  br i1 %237, label %238, label %240, !dbg !3245

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3247
  store i8 34, i8* %239, align 1, !dbg !3247, !tbaa !1048
  br label %240, !dbg !3247

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2946, metadata !793), !dbg !3008
  %242 = icmp ult i64 %241, %131, !dbg !3251
  br i1 %242, label %243, label %245, !dbg !3255

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3257
  store i8 63, i8* %244, align 1, !dbg !3257, !tbaa !1048
  br label %245, !dbg !3257

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2946, metadata !793), !dbg !3008
  br label %476, !dbg !3261

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2960, metadata !793), !dbg !3262
  br label %257, !dbg !3263

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2960, metadata !793), !dbg !3262
  br label %257, !dbg !3264

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2960, metadata !793), !dbg !3262
  br label %255, !dbg !3265

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2960, metadata !793), !dbg !3262
  br label %255, !dbg !3266

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2960, metadata !793), !dbg !3262
  br label %257, !dbg !3267

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2960, metadata !793), !dbg !3262
  br i1 %114, label %253, label %254, !dbg !3268

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3269

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3272

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2960, metadata !793), !dbg !3262
  br i1 %118, label %257, label %644, !dbg !3274

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2960, metadata !793), !dbg !3262
  br i1 %105, label %503, label %476, !dbg !3276

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3277
  br i1 %260, label %261, label %266, !dbg !3279

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3280, !tbaa !1048
  %263 = icmp ne i8 %262, 0, !dbg !3282
  %264 = icmp ne i64 %124, 0, !dbg !3283
  %265 = or i1 %264, %263, !dbg !3285
  br i1 %265, label %476, label %272, !dbg !3285

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3286
  %268 = icmp ne i64 %124, 0, !dbg !3283
  %269 = or i1 %268, %267, !dbg !3288
  br i1 %269, label %476, label %272, !dbg !3288

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3283
  br i1 %271, label %272, label %476, !dbg !3290

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2963, metadata !793), !dbg !3097
  br label %273, !dbg !3291

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2963, metadata !793), !dbg !3097
  br i1 %118, label %476, label %644, !dbg !3292

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2963, metadata !793), !dbg !3097
  br i1 %114, label %276, label %476, !dbg !3294

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3295

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3298
  %279 = icmp ne i64 %126, 0, !dbg !3300
  %280 = or i1 %279, %278, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2937, metadata !793), !dbg !3000
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3302
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2947, metadata !793), !dbg !3009
  %283 = icmp ult i64 %125, %282, !dbg !3303
  br i1 %283, label %284, label %286, !dbg !3307

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3309
  store i8 39, i8* %285, align 1, !dbg !3309, !tbaa !1048
  br label %286, !dbg !3309

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2946, metadata !793), !dbg !3008
  %288 = icmp ult i64 %287, %282, !dbg !3313
  br i1 %288, label %289, label %291, !dbg !3317

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3319
  store i8 92, i8* %290, align 1, !dbg !3319, !tbaa !1048
  br label %291, !dbg !3319

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2946, metadata !793), !dbg !3008
  %293 = icmp ult i64 %292, %282, !dbg !3323
  br i1 %293, label %294, label %296, !dbg !3327

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3329
  store i8 39, i8* %295, align 1, !dbg !3329, !tbaa !1048
  br label %296, !dbg !3329

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %476, !dbg !3333

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3334

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2964, metadata !793), !dbg !3335
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3336
  %301 = load i16*, i16** %300, align 8, !dbg !3336, !tbaa !801
  %302 = zext i8 %159 to i64, !dbg !3336
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3336
  %304 = load i16, i16* %303, align 2, !dbg !3336, !tbaa !1363
  %305 = lshr i16 %304, 14, !dbg !3338
  %306 = trunc i16 %305 to i8, !dbg !3338
  %307 = and i8 %306, 1, !dbg !3338
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2967, metadata !793), !dbg !3339
  br label %368, !dbg !3340

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3341
  store i64 0, i64* %10, align 8, !dbg !3342
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2967, metadata !793), !dbg !3339
  %309 = icmp eq i64 %156, -1, !dbg !3343
  br i1 %309, label %310, label %312, !dbg !3345, !llvm.loop !3346

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2939, metadata !793), !dbg !3002
  br label %312, !dbg !3350, !llvm.loop !3346

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3339

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2967, metadata !793), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3351
  %317 = add i64 %315, %124, !dbg !3352
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3353
  %319 = sub i64 %313, %317, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2968, metadata !1098), !dbg !3355
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2985, metadata !1098), !dbg !3356
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2988, metadata !793), !dbg !3358
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3359

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2964, metadata !793), !dbg !3335
  %322 = icmp ugt i64 %313, %317, !dbg !3360
  br i1 %322, label %323, label %351, !dbg !3363

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3364

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3364
  %328 = load i8, i8* %327, align 1, !dbg !3364, !tbaa !1048
  %329 = icmp eq i8 %328, 0, !dbg !3366
  br i1 %329, label %348, label %330, !dbg !3367

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2964, metadata !793), !dbg !3335
  %332 = add i64 %331, %124, !dbg !3370
  %333 = icmp ult i64 %332, %313, !dbg !3360
  br i1 %333, label %324, label %348, !dbg !3363, !llvm.loop !3371

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3373
  %336 = and i1 %116, %335, !dbg !3377
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2989, metadata !793), !dbg !3378
  br i1 %336, label %337, label %355, !dbg !3377

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3379

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3379
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3380
  %342 = load i8, i8* %341, align 1, !dbg !3380, !tbaa !1048
  %343 = sext i8 %342 to i32, !dbg !3380
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3381

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2989, metadata !793), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2989, metadata !793), !dbg !3378
  %346 = icmp ult i64 %345, %320, !dbg !3373
  br i1 %346, label %338, label %354, !dbg !3384, !llvm.loop !3386

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3339

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3339

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3339

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2967, metadata !793), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3389
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3390

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3390, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2985, metadata !793), !dbg !3356
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !3392
  %358 = icmp eq i32 %357, 0, !dbg !3392
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2967, metadata !793), !dbg !3339
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3393
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2967, metadata !793), !dbg !3339
  %360 = add i64 %320, %315, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2967, metadata !793), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3389
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2968, metadata !1098), !dbg !3355
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3395
  %362 = icmp eq i32 %361, 0, !dbg !3396
  br i1 %362, label %314, label %363, !dbg !3397, !llvm.loop !3346

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3399

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3399
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2967, metadata !793), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3389
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3399
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2967, metadata !793), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2964, metadata !793), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2939, metadata !793), !dbg !3002
  %372 = and i8 %371, 1, !dbg !3400
  %373 = icmp ne i8 %372, 0, !dbg !3400
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2963, metadata !793), !dbg !3097
  %374 = icmp ult i64 %370, 2, !dbg !3401
  %375 = or i1 %373, %113, !dbg !3402
  %376 = and i1 %374, %375, !dbg !3404
  br i1 %376, label %476, label %377, !dbg !3404

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2996, metadata !793), !dbg !3406
  br label %379, !dbg !3407

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2961, metadata !793), !dbg !3095
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2945, metadata !793), !dbg !3083
  br i1 %375, label %432, label %386, !dbg !3408

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3413

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2962, metadata !793), !dbg !3096
  %388 = and i8 %382, 1, !dbg !3417
  %389 = icmp eq i8 %388, 0, !dbg !3417
  %390 = and i1 %114, %389, !dbg !3420
  br i1 %390, label %391, label %407, !dbg !3420

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3422
  br i1 %392, label %393, label %395, !dbg !3427

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3429
  store i8 39, i8* %394, align 1, !dbg !3429, !tbaa !1048
  br label %395, !dbg !3429

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2946, metadata !793), !dbg !3008
  %397 = icmp ult i64 %396, %131, !dbg !3433
  br i1 %397, label %398, label %400, !dbg !3437

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3439
  store i8 36, i8* %399, align 1, !dbg !3439, !tbaa !1048
  br label %400, !dbg !3439

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2946, metadata !793), !dbg !3008
  %402 = icmp ult i64 %401, %131, !dbg !3443
  br i1 %402, label %403, label %405, !dbg !3447

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3449
  store i8 39, i8* %404, align 1, !dbg !3449, !tbaa !1048
  br label %405, !dbg !3449

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %407, !dbg !3453

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2946, metadata !793), !dbg !3008
  %410 = icmp ult i64 %408, %131, !dbg !3455
  br i1 %410, label %411, label %413, !dbg !3459

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3461
  store i8 92, i8* %412, align 1, !dbg !3461, !tbaa !1048
  br label %413, !dbg !3461

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2946, metadata !793), !dbg !3008
  %415 = icmp ult i64 %414, %131, !dbg !3465
  br i1 %415, label %416, label %420, !dbg !3469

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3471
  %418 = or i8 %417, 48, !dbg !3471
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3471
  store i8 %418, i8* %419, align 1, !dbg !3471, !tbaa !1048
  br label %420, !dbg !3471

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2946, metadata !793), !dbg !3008
  %422 = icmp ult i64 %421, %131, !dbg !3475
  br i1 %422, label %423, label %428, !dbg !3479

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3481
  %425 = and i8 %424, 7, !dbg !3481
  %426 = or i8 %425, 48, !dbg !3481
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3481
  store i8 %426, i8* %427, align 1, !dbg !3481, !tbaa !1048
  br label %428, !dbg !3481

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2946, metadata !793), !dbg !3008
  %430 = and i8 %383, 7, !dbg !3485
  %431 = or i8 %430, 48, !dbg !3486
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2956, metadata !793), !dbg !3114
  br label %441, !dbg !3487

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3488
  %434 = icmp eq i8 %433, 0, !dbg !3488
  br i1 %434, label %441, label %435, !dbg !3490

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3491
  br i1 %436, label %437, label %439, !dbg !3496

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3498
  store i8 92, i8* %438, align 1, !dbg !3498, !tbaa !1048
  br label %439, !dbg !3498

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2961, metadata !793), !dbg !3095
  br label %441, !dbg !3502

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2961, metadata !793), !dbg !3095
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2946, metadata !793), !dbg !3008
  %447 = add i64 %380, 1, !dbg !3503
  %448 = icmp ugt i64 %378, %447, !dbg !3505
  br i1 %448, label %449, label %541, !dbg !3506

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3507
  %451 = icmp ne i8 %450, 0, !dbg !3507
  %452 = and i8 %446, 1, !dbg !3511
  %453 = icmp eq i8 %452, 0, !dbg !3511
  %454 = and i1 %451, %453, !dbg !3507
  br i1 %454, label %455, label %466, !dbg !3507

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3513
  br i1 %456, label %457, label %459, !dbg !3518

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3520
  store i8 39, i8* %458, align 1, !dbg !3520, !tbaa !1048
  br label %459, !dbg !3520

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2946, metadata !793), !dbg !3008
  %461 = icmp ult i64 %460, %131, !dbg !3524
  br i1 %461, label %462, label %464, !dbg !3528

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3530
  store i8 39, i8* %463, align 1, !dbg !3530, !tbaa !1048
  br label %464, !dbg !3530

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %466, !dbg !3534

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2946, metadata !793), !dbg !3008
  %469 = icmp ult i64 %467, %131, !dbg !3536
  br i1 %469, label %470, label %472, !dbg !3540

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3542
  store i8 %444, i8* %471, align 1, !dbg !3542, !tbaa !1048
  br label %472, !dbg !3542

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2945, metadata !793), !dbg !3083
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3546
  %475 = load i8, i8* %474, align 1, !dbg !3546, !tbaa !1048
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2956, metadata !793), !dbg !3114
  br label %379, !dbg !3547, !llvm.loop !3549

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2963, metadata !793), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2961, metadata !793), !dbg !3095
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2945, metadata !793), !dbg !3083
  br i1 %107, label %488, label %487, !dbg !3552

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3554

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3555

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3556
  %491 = zext i8 %490 to i64, !dbg !3556
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3558
  %493 = load i32, i32* %492, align 4, !dbg !3558, !tbaa !1012
  %494 = and i8 %483, 31, !dbg !3559
  %495 = zext i8 %494 to i32, !dbg !3560
  %496 = shl i32 1, %495, !dbg !3561
  %497 = and i32 %493, %496, !dbg !3561
  %498 = icmp eq i32 %497, 0, !dbg !3561
  %499 = icmp eq i8 %157, 0, !dbg !3562
  %500 = and i1 %499, %498, !dbg !3563
  br i1 %500, label %542, label %503, !dbg !3563

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3562
  br i1 %502, label %542, label %503, !dbg !3564

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2963, metadata !793), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2945, metadata !793), !dbg !3083
  br i1 %112, label %513, label %644, !dbg !3566

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2962, metadata !793), !dbg !3096
  %514 = and i8 %508, 1, !dbg !3569
  %515 = icmp eq i8 %514, 0, !dbg !3569
  %516 = and i1 %114, %515, !dbg !3572
  br i1 %516, label %517, label %533, !dbg !3572

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3574
  br i1 %518, label %519, label %521, !dbg !3579

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3581
  store i8 39, i8* %520, align 1, !dbg !3581, !tbaa !1048
  br label %521, !dbg !3581

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2946, metadata !793), !dbg !3008
  %523 = icmp ult i64 %522, %512, !dbg !3585
  br i1 %523, label %524, label %526, !dbg !3589

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3591
  store i8 36, i8* %525, align 1, !dbg !3591, !tbaa !1048
  br label %526, !dbg !3591

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2946, metadata !793), !dbg !3008
  %528 = icmp ult i64 %527, %512, !dbg !3595
  br i1 %528, label %529, label %531, !dbg !3599

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3601
  store i8 39, i8* %530, align 1, !dbg !3601, !tbaa !1048
  br label %531, !dbg !3601

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %533, !dbg !3605

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2946, metadata !793), !dbg !3008
  %536 = icmp ult i64 %534, %512, !dbg !3607
  br i1 %536, label %537, label %539, !dbg !3611

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3613
  store i8 92, i8* %538, align 1, !dbg !3613, !tbaa !1048
  br label %539, !dbg !3613

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2963, metadata !793), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2945, metadata !793), !dbg !3083
  br label %569, !dbg !3617

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !3000

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2963, metadata !793), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2962, metadata !793), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2956, metadata !793), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2954, metadata !793), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2939, metadata !793), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2947, metadata !793), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2945, metadata !793), !dbg !3083
  %553 = and i8 %547, 1, !dbg !3617
  %554 = icmp ne i8 %553, 0, !dbg !3617
  %555 = and i8 %550, 1, !dbg !3621
  %556 = icmp eq i8 %555, 0, !dbg !3621
  %557 = and i1 %554, %556, !dbg !3617
  br i1 %557, label %558, label %569, !dbg !3617

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3623
  br i1 %559, label %560, label %562, !dbg !3628

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3630
  store i8 39, i8* %561, align 1, !dbg !3630, !tbaa !1048
  br label %562, !dbg !3630

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2946, metadata !793), !dbg !3008
  %564 = icmp ult i64 %563, %552, !dbg !3634
  br i1 %564, label %565, label %567, !dbg !3638

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3640
  store i8 39, i8* %566, align 1, !dbg !3640, !tbaa !1048
  br label %567, !dbg !3640

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2946, metadata !793), !dbg !3008
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2953, metadata !793), !dbg !3016
  br label %569, !dbg !3644

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2953, metadata !793), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2946, metadata !793), !dbg !3008
  %579 = icmp ult i64 %577, %570, !dbg !3646
  br i1 %579, label %580, label %582, !dbg !3650

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3652
  store i8 %572, i8* %581, align 1, !dbg !3652, !tbaa !1048
  br label %582, !dbg !3652

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2946, metadata !793), !dbg !3008
  %584 = and i8 %571, 1, !dbg !3656
  %585 = icmp eq i8 %584, 0, !dbg !3656
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2955, metadata !793), !dbg !3018
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3658
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2955, metadata !793), !dbg !3018
  br label %587, !dbg !3659

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2945, metadata !793), !dbg !3083
  br label %123, !dbg !3662, !llvm.loop !3663

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3666
  %600 = and i1 %114, %599, !dbg !3668
  %601 = xor i1 %600, true, !dbg !3668
  %602 = or i1 %112, %601, !dbg !3668
  br i1 %602, label %603, label %648, !dbg !3668

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3669
  %605 = xor i1 %604, true, !dbg !3669
  %606 = and i8 %129, 1, !dbg !3671
  %607 = icmp eq i8 %606, 0, !dbg !3671
  %608 = or i1 %607, %605, !dbg !3669
  br i1 %608, label %618, label %609, !dbg !3669

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3673
  %611 = icmp eq i8 %610, 0, !dbg !3673
  br i1 %611, label %614, label %612, !dbg !3676

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3677
  br label %659, !dbg !3678

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3679
  %616 = icmp ne i64 %126, 0, !dbg !3681
  %617 = and i1 %616, %615, !dbg !3683
  br i1 %617, label %27, label %618, !dbg !3683

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3684
  %620 = and i1 %619, %112, !dbg !3686
  br i1 %620, label %621, label %638, !dbg !3686

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2946, metadata !793), !dbg !3008
  %622 = load i8, i8* %100, align 1, !dbg !3687, !tbaa !1048
  %623 = icmp eq i8 %622, 0, !dbg !3691
  br i1 %623, label %638, label %624, !dbg !3691

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3693

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3693
  br i1 %629, label %630, label %632, !dbg !3697

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3699
  store i8 %626, i8* %631, align 1, !dbg !3699, !tbaa !1048
  br label %632, !dbg !3699

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2946, metadata !793), !dbg !3008
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2948, metadata !793), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2946, metadata !793), !dbg !3008
  %635 = load i8, i8* %634, align 1, !dbg !3687, !tbaa !1048
  %636 = icmp eq i8 %635, 0, !dbg !3691
  br i1 %636, label %637, label %625, !dbg !3691, !llvm.loop !3705

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !3008

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2946, metadata !793), !dbg !3008
  %640 = icmp ult i64 %639, %131, !dbg !3708
  br i1 %640, label %641, label %659, !dbg !3710

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3711
  store i8 0, i8* %642, align 1, !dbg !3712, !tbaa !1048
  br label %659, !dbg !3711

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !3000

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !3000

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !3000

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2937, metadata !793), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2939, metadata !793), !dbg !3002
  %653 = icmp ne i32 %650, 2, !dbg !3713
  %654 = icmp eq i8 %104, 0, !dbg !3715
  %655 = or i1 %653, %654, !dbg !3717
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2940, metadata !793), !dbg !3003
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3717
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2940, metadata !793), !dbg !3003
  %657 = and i32 %5, -3, !dbg !3718
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3719
  br label %659, !dbg !3720

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3721
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3726, metadata !793), !dbg !3730
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3727, metadata !793), !dbg !3731
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3732
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3728, metadata !793), !dbg !3733
  %4 = icmp eq i8* %3, %0, !dbg !3734
  br i1 %4, label %5, label %75, !dbg !3736

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3729, metadata !793), !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3739, metadata !793), !dbg !3755
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3753, metadata !793), !dbg !3758
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3754, metadata !793), !dbg !3759
  %7 = load i8, i8* %6, align 1, !tbaa !1048
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3760
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3760

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3763, metadata !793), !dbg !3777
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3775, metadata !793), !dbg !3781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3776, metadata !793), !dbg !3782
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1048
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3783
  %15 = icmp eq i32 %14, 84, !dbg !3783
  br i1 %15, label %16, label %72, !dbg !3783

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3786, metadata !793), !dbg !3799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3797, metadata !793), !dbg !3803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3798, metadata !793), !dbg !3804
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1048
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3805
  %21 = icmp eq i32 %20, 70, !dbg !3805
  br i1 %21, label %22, label %72, !dbg !3805

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3808, metadata !793), !dbg !3820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3818, metadata !793), !dbg !3824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3819, metadata !793), !dbg !3825
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1048
  %25 = icmp eq i8 %24, 45, !dbg !3826
  br i1 %25, label %26, label %72, !dbg !3829

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3831, metadata !793), !dbg !3842
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3840, metadata !793), !dbg !3846
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3841, metadata !793), !dbg !3847
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1048
  %29 = icmp eq i8 %28, 56, !dbg !3848
  br i1 %29, label %30, label %72, !dbg !3851

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3853, metadata !793), !dbg !3863
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3861, metadata !793), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3862, metadata !793), !dbg !3868
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1048
  %33 = icmp eq i8 %32, 0, !dbg !3869
  br i1 %33, label %34, label %72, !dbg !3872

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3874, !tbaa !1048
  %36 = icmp eq i8 %35, 96, !dbg !3875
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.97, i64 0, i64 0), !dbg !3874
  br label %75, !dbg !3876

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3763, metadata !793), !dbg !3877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3775, metadata !793), !dbg !3881
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3776, metadata !793), !dbg !3882
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1048
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3883
  %43 = icmp eq i32 %42, 66, !dbg !3883
  br i1 %43, label %44, label %72, !dbg !3883

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3786, metadata !793), !dbg !3884
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3797, metadata !793), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3798, metadata !793), !dbg !3887
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1048
  %47 = icmp eq i8 %46, 49, !dbg !3888
  br i1 %47, label %48, label %72, !dbg !3890

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3808, metadata !793), !dbg !3892
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3818, metadata !793), !dbg !3894
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3819, metadata !793), !dbg !3895
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1048
  %51 = icmp eq i8 %50, 56, !dbg !3896
  br i1 %51, label %52, label %72, !dbg !3897

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3831, metadata !793), !dbg !3898
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3840, metadata !793), !dbg !3900
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3841, metadata !793), !dbg !3901
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1048
  %55 = icmp eq i8 %54, 48, !dbg !3902
  br i1 %55, label %56, label %72, !dbg !3903

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3853, metadata !793), !dbg !3904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3861, metadata !793), !dbg !3906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3862, metadata !793), !dbg !3907
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1048
  %59 = icmp eq i8 %58, 51, !dbg !3908
  br i1 %59, label %60, label %72, !dbg !3909

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3910, metadata !793), !dbg !3919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3917, metadata !793), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3918, metadata !793), !dbg !3924
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1048
  %63 = icmp eq i8 %62, 48, !dbg !3925
  br i1 %63, label %64, label %72, !dbg !3928

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3930, metadata !793), !dbg !3938
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3936, metadata !793), !dbg !3942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3937, metadata !793), !dbg !3943
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1048
  %67 = icmp eq i8 %66, 0, !dbg !3944
  br i1 %67, label %68, label %72, !dbg !3947

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3948, !tbaa !1048
  %70 = icmp eq i8 %69, 96, !dbg !3949
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.99, i64 0, i64 0), !dbg !3948
  br label %75, !dbg !3950

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3951
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !3952
  br label %75, !dbg !3953

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3954
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3955 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3959, metadata !793), !dbg !3962
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3960, metadata !793), !dbg !3963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3961, metadata !793), !dbg !3964
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3965, metadata !793) #10, !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3970, metadata !793) #10, !dbg !3980
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3971, metadata !793) #10, !dbg !3981
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3972, metadata !793) #10, !dbg !3982
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3983
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3973, metadata !793) #10, !dbg !3984
  %6 = tail call i32* @__errno_location() #1, !dbg !3985
  %7 = load i32, i32* %6, align 4, !dbg !3985, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3974, metadata !793) #10, !dbg !3986
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3987
  %9 = load i32, i32* %8, align 4, !dbg !3987, !tbaa !2868
  %10 = or i32 %9, 1, !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3975, metadata !793) #10, !dbg !3989
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3990
  %12 = load i32, i32* %11, align 8, !dbg !3990, !tbaa !2806
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3991
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3992
  %15 = load i8*, i8** %14, align 8, !dbg !3992, !tbaa !2895
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3993
  %17 = load i8*, i8** %16, align 8, !dbg !3993, !tbaa !2898
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3994
  %19 = add i64 %18, 1, !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3976, metadata !793) #10, !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3997, metadata !793) #10, !dbg !4002
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !4004
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3977, metadata !793) #10, !dbg !4005
  %21 = load i32, i32* %11, align 8, !dbg !4006, !tbaa !2806
  %22 = load i8*, i8** %14, align 8, !dbg !4007, !tbaa !2895
  %23 = load i8*, i8** %16, align 8, !dbg !4008, !tbaa !2898
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !4009
  store i32 %7, i32* %6, align 4, !dbg !4010, !tbaa !1012
  ret i8* %20, !dbg !4011
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3966 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3965, metadata !793), !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3970, metadata !793), !dbg !4013
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3971, metadata !793), !dbg !4014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3972, metadata !793), !dbg !4015
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !4016
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3973, metadata !793), !dbg !4017
  %7 = tail call i32* @__errno_location() #1, !dbg !4018
  %8 = load i32, i32* %7, align 4, !dbg !4018, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3974, metadata !793), !dbg !4019
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4020
  %10 = load i32, i32* %9, align 4, !dbg !4020, !tbaa !2868
  %11 = icmp ne i64* %2, null, !dbg !4021
  %12 = xor i1 %11, true, !dbg !4021
  %13 = zext i1 %12 to i32, !dbg !4021
  %14 = or i32 %10, %13, !dbg !4022
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3975, metadata !793), !dbg !4023
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4024
  %16 = load i32, i32* %15, align 8, !dbg !4024, !tbaa !2806
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4025
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4026
  %19 = load i8*, i8** %18, align 8, !dbg !4026, !tbaa !2895
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4027
  %21 = load i8*, i8** %20, align 8, !dbg !4027, !tbaa !2898
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4028
  %23 = add i64 %22, 1, !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3976, metadata !793), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3997, metadata !793) #10, !dbg !4031
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3977, metadata !793), !dbg !4034
  %25 = load i32, i32* %15, align 8, !dbg !4035, !tbaa !2806
  %26 = load i8*, i8** %18, align 8, !dbg !4036, !tbaa !2895
  %27 = load i8*, i8** %20, align 8, !dbg !4037, !tbaa !2898
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4038
  store i32 %8, i32* %7, align 4, !dbg !4039, !tbaa !1012
  br i1 %11, label %29, label %30, !dbg !4040

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !4041, !tbaa !1083
  br label %30, !dbg !4043

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !4044
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !4045 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4049, !tbaa !801
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4047, metadata !793), !dbg !4050
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4048, metadata !793), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4048, metadata !793), !dbg !4051
  %2 = load i32, i32* @nslots, align 4, !dbg !4052, !tbaa !1012
  %3 = icmp sgt i32 %2, 1, !dbg !4056
  br i1 %3, label %4, label %14, !dbg !4057

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4059

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4059
  %8 = load i8*, i8** %7, align 8, !dbg !4059, !tbaa !4060
  tail call void @free(i8* %8) #10, !dbg !4062
  %9 = add nuw i64 %6, 1, !dbg !4063
  %10 = load i32, i32* @nslots, align 4, !dbg !4052, !tbaa !1012
  %11 = sext i32 %10 to i64, !dbg !4056
  %12 = icmp slt i64 %9, %11, !dbg !4056
  br i1 %12, label %5, label %13, !dbg !4057, !llvm.loop !4065

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !4068

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4068
  %16 = load i8*, i8** %15, align 8, !dbg !4068, !tbaa !4060
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4070
  br i1 %17, label %19, label %18, !dbg !4071

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !4072
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4074, !tbaa !4075
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4076, !tbaa !4060
  br label %19, !dbg !4077

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4078
  br i1 %20, label %23, label %21, !dbg !4080

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4081
  tail call void @free(i8* %22) #10, !dbg !4083
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4084, !tbaa !801
  br label %23, !dbg !4085

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !4086, !tbaa !1012
  ret void, !dbg !4087
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4088 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4092, metadata !793), !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4093, metadata !793), !dbg !4095
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4096
  ret i8* %3, !dbg !4097
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4098 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4102, metadata !793), !dbg !4116
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4103, metadata !793), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4104, metadata !793), !dbg !4118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4105, metadata !793), !dbg !4119
  %5 = tail call i32* @__errno_location() #1, !dbg !4120
  %6 = load i32, i32* %5, align 4, !dbg !4120, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4106, metadata !793), !dbg !4121
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4122, !tbaa !801
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4107, metadata !793), !dbg !4123
  %8 = icmp slt i32 %0, 0, !dbg !4124
  br i1 %8, label %9, label %10, !dbg !4126

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !4127
  unreachable, !dbg !4127

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4128, !tbaa !1012
  %12 = icmp sgt i32 %11, %0, !dbg !4129
  br i1 %12, label %34, label %13, !dbg !4130

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4131
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4132
  br i1 %15, label %16, label %17, !dbg !4134

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4135
  unreachable, !dbg !4135

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4136
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4136
  %20 = add nsw i32 %0, 1, !dbg !4138
  %21 = sext i32 %20 to i64, !dbg !4139
  %22 = shl nsw i64 %21, 4, !dbg !4140
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !4141
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4141
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4107, metadata !793), !dbg !4123
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4142, !tbaa !801
  br i1 %14, label %25, label %26, !dbg !4143

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4144, !tbaa.struct !4146
  br label %26, !dbg !4147

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4148, !tbaa !1012
  %28 = sext i32 %27 to i64, !dbg !4149
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4149
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4150
  %31 = sub nsw i32 %20, %27, !dbg !4151
  %32 = sext i32 %31 to i64, !dbg !4152
  %33 = shl nsw i64 %32, 4, !dbg !4153
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4150
  store i32 %20, i32* @nslots, align 4, !dbg !4154, !tbaa !1012
  br label %34, !dbg !4155

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4107, metadata !793), !dbg !4123
  %36 = sext i32 %0 to i64, !dbg !4156
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4157
  %38 = load i64, i64* %37, align 8, !dbg !4157, !tbaa !4075
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4111, metadata !793), !dbg !4158
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4159
  %40 = load i8*, i8** %39, align 8, !dbg !4159, !tbaa !4060
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4113, metadata !793), !dbg !4160
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4161
  %42 = load i32, i32* %41, align 4, !dbg !4161, !tbaa !2868
  %43 = or i32 %42, 1, !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4114, metadata !793), !dbg !4163
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4164
  %45 = load i32, i32* %44, align 8, !dbg !4164, !tbaa !2806
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4165
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4166
  %48 = load i8*, i8** %47, align 8, !dbg !4166, !tbaa !2895
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4167
  %50 = load i8*, i8** %49, align 8, !dbg !4167, !tbaa !2898
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4168
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4115, metadata !793), !dbg !4169
  %52 = icmp ugt i64 %38, %51, !dbg !4170
  br i1 %52, label %63, label %53, !dbg !4172

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4111, metadata !793), !dbg !4158
  store i64 %54, i64* %37, align 8, !dbg !4175, !tbaa !4075
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4176
  br i1 %55, label %57, label %56, !dbg !4178

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !4179
  br label %57, !dbg !4179

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3997, metadata !793) #10, !dbg !4180
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4113, metadata !793), !dbg !4160
  store i8* %58, i8** %39, align 8, !dbg !4183, !tbaa !4060
  %59 = load i32, i32* %44, align 8, !dbg !4184, !tbaa !2806
  %60 = load i8*, i8** %47, align 8, !dbg !4185, !tbaa !2895
  %61 = load i8*, i8** %49, align 8, !dbg !4186, !tbaa !2898
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4187
  br label %63, !dbg !4188

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4113, metadata !793), !dbg !4160
  store i32 %6, i32* %5, align 4, !dbg !4189, !tbaa !1012
  ret i8* %64, !dbg !4190
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4191 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4195, metadata !793), !dbg !4198
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4196, metadata !793), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4197, metadata !793), !dbg !4200
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4201
  ret i8* %4, !dbg !4202
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4203 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4206, metadata !793), !dbg !4207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4092, metadata !793) #10, !dbg !4208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4093, metadata !793) #10, !dbg !4210
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4211
  ret i8* %2, !dbg !4212
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4213 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4217, metadata !793), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4218, metadata !793), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4195, metadata !793) #10, !dbg !4221
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4196, metadata !793) #10, !dbg !4223
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4197, metadata !793) #10, !dbg !4224
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4225
  ret i8* %3, !dbg !4226
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4227 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4235, metadata !4241), !dbg !4242
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4231, metadata !793), !dbg !4244
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4232, metadata !793), !dbg !4245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4233, metadata !793), !dbg !4246
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4247
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4247
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4234, metadata !1098), !dbg !4248
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4240, metadata !793) #10, !dbg !4249
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4250
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4250
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4235, metadata !793) #10, !dbg !4242
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4242
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4242
  %8 = icmp eq i32 %1, 10, !dbg !4251
  br i1 %8, label %9, label %10, !dbg !4253

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4254, !noalias !4255
  unreachable, !dbg !4254

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4235, metadata !2054) #10, !dbg !4242
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4258
  store i32 %1, i32* %11, align 8, !dbg !4258, !alias.scope !4255
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4258
  %13 = bitcast i32* %12 to i8*, !dbg !4258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4258
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4234, metadata !1098), !dbg !4248
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4260
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4261
  ret i8* %14, !dbg !4262
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4263 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4235, metadata !4241), !dbg !4272
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4267, metadata !793), !dbg !4274
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4268, metadata !793), !dbg !4275
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4269, metadata !793), !dbg !4276
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4270, metadata !793), !dbg !4277
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4278
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4278
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4271, metadata !1098), !dbg !4279
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4240, metadata !793) #10, !dbg !4280
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4281
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4281
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4235, metadata !793) #10, !dbg !4272
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4272
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4272
  %9 = icmp eq i32 %1, 10, !dbg !4282
  br i1 %9, label %10, label %11, !dbg !4283

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4284, !noalias !4285
  unreachable, !dbg !4284

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4235, metadata !2054) #10, !dbg !4272
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4288
  store i32 %1, i32* %12, align 8, !dbg !4288, !alias.scope !4285
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4288
  %14 = bitcast i32* %13 to i8*, !dbg !4288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4288
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4271, metadata !1098), !dbg !4279
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4290
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4291
  ret i8* %15, !dbg !4292
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4293 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4235, metadata !4241), !dbg !4299
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4297, metadata !793), !dbg !4302
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4298, metadata !793), !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4231, metadata !793) #10, !dbg !4304
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4232, metadata !793) #10, !dbg !4305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4233, metadata !793) #10, !dbg !4306
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4307
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4307
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4234, metadata !1098) #10, !dbg !4308
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4240, metadata !793) #10, !dbg !4309
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4310
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4310
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4235, metadata !793) #10, !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4299
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4299
  %7 = icmp eq i32 %0, 10, !dbg !4311
  br i1 %7, label %8, label %9, !dbg !4312

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4313, !noalias !4314
  unreachable, !dbg !4313

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4299
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4317
  store i32 %0, i32* %10, align 8, !dbg !4317, !alias.scope !4314
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4317
  %12 = bitcast i32* %11 to i8*, !dbg !4317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4317
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4234, metadata !1098) #10, !dbg !4308
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4319
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4320
  ret i8* %13, !dbg !4321
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4322 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4235, metadata !4241), !dbg !4329
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4326, metadata !793), !dbg !4332
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4327, metadata !793), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4328, metadata !793), !dbg !4334
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4267, metadata !793) #10, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4268, metadata !793) #10, !dbg !4336
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4269, metadata !793) #10, !dbg !4337
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4270, metadata !793) #10, !dbg !4338
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4339
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4339
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4271, metadata !1098) #10, !dbg !4340
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4240, metadata !793) #10, !dbg !4341
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4342
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4342
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4235, metadata !793) #10, !dbg !4329
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4329
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4329
  %8 = icmp eq i32 %0, 10, !dbg !4343
  br i1 %8, label %9, label %10, !dbg !4344

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4345, !noalias !4346
  unreachable, !dbg !4345

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4329
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4349
  store i32 %0, i32* %11, align 8, !dbg !4349, !alias.scope !4346
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4349
  %13 = bitcast i32* %12 to i8*, !dbg !4349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4349
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4271, metadata !1098) #10, !dbg !4340
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4351
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4352
  ret i8* %14, !dbg !4353
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4354 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4358, metadata !793), !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4359, metadata !793), !dbg !4363
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4360, metadata !793), !dbg !4364
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4365
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4366, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4361, metadata !1098), !dbg !4368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2826, metadata !793), !dbg !4369
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2827, metadata !793), !dbg !4371
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2828, metadata !793), !dbg !4372
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2829, metadata !793), !dbg !4373
  %6 = lshr i8 %2, 5, !dbg !4374
  %7 = zext i8 %6 to i64, !dbg !4374
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4375
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2830, metadata !793), !dbg !4376
  %9 = and i8 %2, 31, !dbg !4377
  %10 = zext i8 %9 to i32, !dbg !4378
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2832, metadata !793), !dbg !4379
  %11 = load i32, i32* %8, align 4, !dbg !4380, !tbaa !1012
  %12 = lshr i32 %11, %10, !dbg !4381
  %13 = and i32 %12, 1, !dbg !4382
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2833, metadata !793), !dbg !4383
  %14 = xor i32 %13, 1, !dbg !4384
  %15 = shl i32 %14, %10, !dbg !4385
  %16 = xor i32 %15, %11, !dbg !4386
  store i32 %16, i32* %8, align 4, !dbg !4386, !tbaa !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4361, metadata !1098), !dbg !4368
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4387
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4388
  ret i8* %17, !dbg !4389
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4390 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4394, metadata !793), !dbg !4396
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4395, metadata !793), !dbg !4397
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4358, metadata !793) #10, !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4359, metadata !793) #10, !dbg !4400
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4360, metadata !793) #10, !dbg !4401
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4402
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4403, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4361, metadata !1098) #10, !dbg !4404
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !793) #10, !dbg !4405
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2827, metadata !793) #10, !dbg !4407
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2828, metadata !793) #10, !dbg !4408
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2829, metadata !793) #10, !dbg !4409
  %5 = lshr i8 %1, 5, !dbg !4410
  %6 = zext i8 %5 to i64, !dbg !4410
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4411
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2830, metadata !793) #10, !dbg !4412
  %8 = and i8 %1, 31, !dbg !4413
  %9 = zext i8 %8 to i32, !dbg !4414
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2832, metadata !793) #10, !dbg !4415
  %10 = load i32, i32* %7, align 4, !dbg !4416, !tbaa !1012
  %11 = lshr i32 %10, %9, !dbg !4417
  %12 = and i32 %11, 1, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2833, metadata !793) #10, !dbg !4419
  %13 = xor i32 %12, 1, !dbg !4420
  %14 = shl i32 %13, %9, !dbg !4421
  %15 = xor i32 %14, %10, !dbg !4422
  store i32 %15, i32* %7, align 4, !dbg !4422, !tbaa !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4361, metadata !1098) #10, !dbg !4404
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4423
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4424
  ret i8* %16, !dbg !4425
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4426 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4428, metadata !793), !dbg !4429
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4394, metadata !793) #10, !dbg !4430
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4395, metadata !793) #10, !dbg !4432
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4358, metadata !793) #10, !dbg !4433
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4359, metadata !793) #10, !dbg !4435
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4360, metadata !793) #10, !dbg !4436
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4437
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4438, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4361, metadata !1098) #10, !dbg !4439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2826, metadata !793) #10, !dbg !4440
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2827, metadata !793) #10, !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2828, metadata !793) #10, !dbg !4443
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2829, metadata !793) #10, !dbg !4444
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4445
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2830, metadata !793) #10, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2832, metadata !793) #10, !dbg !4447
  %5 = load i32, i32* %4, align 4, !dbg !4448, !tbaa !1012
  %6 = or i32 %5, 67108864, !dbg !4449
  store i32 %6, i32* %4, align 4, !dbg !4449, !tbaa !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4361, metadata !1098) #10, !dbg !4439
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4450
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4451
  ret i8* %7, !dbg !4452
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4453 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4455, metadata !793), !dbg !4457
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4456, metadata !793), !dbg !4458
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4358, metadata !793) #10, !dbg !4459
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4359, metadata !793) #10, !dbg !4461
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4360, metadata !793) #10, !dbg !4462
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4463
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4464, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4361, metadata !1098) #10, !dbg !4465
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2826, metadata !793) #10, !dbg !4466
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2827, metadata !793) #10, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2828, metadata !793) #10, !dbg !4469
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2829, metadata !793) #10, !dbg !4470
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2830, metadata !793) #10, !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2832, metadata !793) #10, !dbg !4473
  %6 = load i32, i32* %5, align 4, !dbg !4474, !tbaa !1012
  %7 = or i32 %6, 67108864, !dbg !4475
  store i32 %7, i32* %5, align 4, !dbg !4475, !tbaa !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4361, metadata !1098) #10, !dbg !4465
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4476
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4477
  ret i8* %8, !dbg !4478
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4479 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4235, metadata !4241), !dbg !4485
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4481, metadata !793), !dbg !4487
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4482, metadata !793), !dbg !4488
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4483, metadata !793), !dbg !4489
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4490
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4490
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4240, metadata !793) #10, !dbg !4491
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4492
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4492
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4235, metadata !793) #10, !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !2054) #10, !dbg !4485
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4485
  %9 = icmp eq i32 %1, 10, !dbg !4493
  br i1 %9, label %10, label %11, !dbg !4494

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4495, !noalias !4496
  unreachable, !dbg !4495

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4235, metadata !2054) #10, !dbg !4485
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4499
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4500
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4501
  store i32 %1, i32* %13, align 8, !dbg !4501
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4501
  %15 = bitcast i32* %14 to i8*, !dbg !4501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4484, metadata !1098), !dbg !4502
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2826, metadata !793), !dbg !4503
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2827, metadata !793), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2828, metadata !793), !dbg !4506
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2829, metadata !793), !dbg !4507
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4508
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2830, metadata !793), !dbg !4509
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2832, metadata !793), !dbg !4510
  %17 = load i32, i32* %16, align 4, !dbg !4511, !tbaa !1012
  %18 = or i32 %17, 67108864, !dbg !4512
  store i32 %18, i32* %16, align 4, !dbg !4512, !tbaa !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4484, metadata !1098), !dbg !4502
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4513
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4514
  ret i8* %19, !dbg !4515
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4516 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4520, metadata !793), !dbg !4524
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4521, metadata !793), !dbg !4525
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4522, metadata !793), !dbg !4526
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4523, metadata !793), !dbg !4527
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4528, metadata !793) #10, !dbg !4538
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4533, metadata !793) #10, !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4534, metadata !793) #10, !dbg !4541
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4535, metadata !793) #10, !dbg !4542
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4536, metadata !793) #10, !dbg !4543
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4544
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4545, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4537, metadata !1098) #10, !dbg !4546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2876, metadata !793) #10, !dbg !4547
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2877, metadata !793) #10, !dbg !4549
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2878, metadata !793) #10, !dbg !4550
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2876, metadata !793) #10, !dbg !4547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2876, metadata !793) #10, !dbg !4547
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4551
  store i32 10, i32* %7, align 8, !dbg !4552, !tbaa !2806
  %8 = icmp ne i8* %1, null, !dbg !4553
  %9 = icmp ne i8* %2, null, !dbg !4554
  %10 = and i1 %8, %9, !dbg !4555
  br i1 %10, label %12, label %11, !dbg !4555

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4556
  unreachable, !dbg !4556

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4557
  store i8* %1, i8** %13, align 8, !dbg !4558, !tbaa !2895
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4559
  store i8* %2, i8** %14, align 8, !dbg !4560, !tbaa !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4537, metadata !1098) #10, !dbg !4546
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4561
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4562
  ret i8* %15, !dbg !4563
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4529 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4528, metadata !793), !dbg !4564
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4533, metadata !793), !dbg !4565
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4534, metadata !793), !dbg !4566
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4535, metadata !793), !dbg !4567
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4536, metadata !793), !dbg !4568
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4569
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4570, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4537, metadata !1098), !dbg !4571
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2876, metadata !793) #10, !dbg !4572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2877, metadata !793) #10, !dbg !4574
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2878, metadata !793) #10, !dbg !4575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2876, metadata !793) #10, !dbg !4572
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2876, metadata !793) #10, !dbg !4572
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4576
  store i32 10, i32* %8, align 8, !dbg !4577, !tbaa !2806
  %9 = icmp ne i8* %1, null, !dbg !4578
  %10 = icmp ne i8* %2, null, !dbg !4579
  %11 = and i1 %9, %10, !dbg !4580
  br i1 %11, label %13, label %12, !dbg !4580

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4581
  unreachable, !dbg !4581

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4582
  store i8* %1, i8** %14, align 8, !dbg !4583, !tbaa !2895
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4584
  store i8* %2, i8** %15, align 8, !dbg !4585, !tbaa !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4537, metadata !1098), !dbg !4571
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4586
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4587
  ret i8* %16, !dbg !4588
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4589 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4593, metadata !793), !dbg !4596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4594, metadata !793), !dbg !4597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4595, metadata !793), !dbg !4598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4520, metadata !793) #10, !dbg !4599
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !793) #10, !dbg !4601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4522, metadata !793) #10, !dbg !4602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4523, metadata !793) #10, !dbg !4603
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4528, metadata !793) #10, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4533, metadata !793) #10, !dbg !4606
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4534, metadata !793) #10, !dbg !4607
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4535, metadata !793) #10, !dbg !4608
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4536, metadata !793) #10, !dbg !4609
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4610
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4611, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4537, metadata !1098) #10, !dbg !4612
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2876, metadata !793) #10, !dbg !4613
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2877, metadata !793) #10, !dbg !4615
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2878, metadata !793) #10, !dbg !4616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2876, metadata !793) #10, !dbg !4613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2876, metadata !793) #10, !dbg !4613
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4617
  store i32 10, i32* %6, align 8, !dbg !4618, !tbaa !2806
  %7 = icmp ne i8* %0, null, !dbg !4619
  %8 = icmp ne i8* %1, null, !dbg !4620
  %9 = and i1 %7, %8, !dbg !4621
  br i1 %9, label %11, label %10, !dbg !4621

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4622
  unreachable, !dbg !4622

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4623
  store i8* %0, i8** %12, align 8, !dbg !4624, !tbaa !2895
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4625
  store i8* %1, i8** %13, align 8, !dbg !4626, !tbaa !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4537, metadata !1098) #10, !dbg !4612
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4627
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4628
  ret i8* %14, !dbg !4629
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4630 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4634, metadata !793), !dbg !4638
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4635, metadata !793), !dbg !4639
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4636, metadata !793), !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4637, metadata !793), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4528, metadata !793) #10, !dbg !4642
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4533, metadata !793) #10, !dbg !4644
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4534, metadata !793) #10, !dbg !4645
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4535, metadata !793) #10, !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4536, metadata !793) #10, !dbg !4647
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4648
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4649, !tbaa.struct !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4537, metadata !1098) #10, !dbg !4650
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2876, metadata !793) #10, !dbg !4651
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2877, metadata !793) #10, !dbg !4653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2878, metadata !793) #10, !dbg !4654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2876, metadata !793) #10, !dbg !4651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2876, metadata !793) #10, !dbg !4651
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4655
  store i32 10, i32* %7, align 8, !dbg !4656, !tbaa !2806
  %8 = icmp ne i8* %0, null, !dbg !4657
  %9 = icmp ne i8* %1, null, !dbg !4658
  %10 = and i1 %8, %9, !dbg !4659
  br i1 %10, label %12, label %11, !dbg !4659

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4660
  unreachable, !dbg !4660

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4661
  store i8* %0, i8** %13, align 8, !dbg !4662, !tbaa !2895
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4663
  store i8* %1, i8** %14, align 8, !dbg !4664, !tbaa !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4537, metadata !1098) #10, !dbg !4650
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4665
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4666
  ret i8* %15, !dbg !4667
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4668 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4672, metadata !793), !dbg !4675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4673, metadata !793), !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4674, metadata !793), !dbg !4677
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4678
  ret i8* %4, !dbg !4679
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4680 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4684, metadata !793), !dbg !4686
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4685, metadata !793), !dbg !4687
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4672, metadata !793) #10, !dbg !4688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4673, metadata !793) #10, !dbg !4690
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4674, metadata !793) #10, !dbg !4691
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4692
  ret i8* %3, !dbg !4693
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4694 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4698, metadata !793), !dbg !4700
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4699, metadata !793), !dbg !4701
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4672, metadata !793) #10, !dbg !4702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4673, metadata !793) #10, !dbg !4704
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4674, metadata !793) #10, !dbg !4705
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4706
  ret i8* %3, !dbg !4707
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4708 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4712, metadata !793), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4698, metadata !793) #10, !dbg !4714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4699, metadata !793) #10, !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4672, metadata !793) #10, !dbg !4717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4673, metadata !793) #10, !dbg !4719
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4674, metadata !793) #10, !dbg !4720
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4721
  ret i8* %2, !dbg !4722
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4723 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4726, metadata !793), !dbg !4727
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4728
  ret i32 %2, !dbg !4729
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4730 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4775, metadata !793), !dbg !4781
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4776, metadata !793), !dbg !4782
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4777, metadata !793), !dbg !4783
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4778, metadata !793), !dbg !4784
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4779, metadata !793), !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4780, metadata !793), !dbg !4786
  %7 = icmp eq i8* %1, null, !dbg !4787
  br i1 %7, label %10, label %8, !dbg !4789

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4790
  br label %12, !dbg !4790

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4791
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i32 5) #10, !dbg !4792
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4793
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.109, i64 0, i64 0), i32 5) #10, !dbg !4795
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4796
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
  ], !dbg !4797

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4798
  unreachable, !dbg !4798

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.110, i64 0, i64 0), i32 5) #10, !dbg !4800
  %20 = load i8*, i8** %4, align 8, !dbg !4800, !tbaa !801
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4801
  br label %146, !dbg !4803

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.111, i64 0, i64 0), i32 5) #10, !dbg !4804
  %24 = load i8*, i8** %4, align 8, !dbg !4804, !tbaa !801
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4804
  %26 = load i8*, i8** %25, align 8, !dbg !4804, !tbaa !801
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4805
  br label %146, !dbg !4806

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.112, i64 0, i64 0), i32 5) #10, !dbg !4807
  %30 = load i8*, i8** %4, align 8, !dbg !4807, !tbaa !801
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4807
  %32 = load i8*, i8** %31, align 8, !dbg !4807, !tbaa !801
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4807
  %34 = load i8*, i8** %33, align 8, !dbg !4807, !tbaa !801
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4808
  br label %146, !dbg !4809

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.113, i64 0, i64 0), i32 5) #10, !dbg !4810
  %38 = load i8*, i8** %4, align 8, !dbg !4810, !tbaa !801
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4810
  %40 = load i8*, i8** %39, align 8, !dbg !4810, !tbaa !801
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4810
  %42 = load i8*, i8** %41, align 8, !dbg !4810, !tbaa !801
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4810
  %44 = load i8*, i8** %43, align 8, !dbg !4810, !tbaa !801
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4811
  br label %146, !dbg !4812

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.114, i64 0, i64 0), i32 5) #10, !dbg !4813
  %48 = load i8*, i8** %4, align 8, !dbg !4813, !tbaa !801
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4813
  %50 = load i8*, i8** %49, align 8, !dbg !4813, !tbaa !801
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4813
  %52 = load i8*, i8** %51, align 8, !dbg !4813, !tbaa !801
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4813
  %54 = load i8*, i8** %53, align 8, !dbg !4813, !tbaa !801
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4813
  %56 = load i8*, i8** %55, align 8, !dbg !4813, !tbaa !801
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4814
  br label %146, !dbg !4815

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.115, i64 0, i64 0), i32 5) #10, !dbg !4816
  %60 = load i8*, i8** %4, align 8, !dbg !4816, !tbaa !801
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4816
  %62 = load i8*, i8** %61, align 8, !dbg !4816, !tbaa !801
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4816
  %64 = load i8*, i8** %63, align 8, !dbg !4816, !tbaa !801
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4816
  %66 = load i8*, i8** %65, align 8, !dbg !4816, !tbaa !801
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4816
  %68 = load i8*, i8** %67, align 8, !dbg !4816, !tbaa !801
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4816
  %70 = load i8*, i8** %69, align 8, !dbg !4816, !tbaa !801
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4817
  br label %146, !dbg !4818

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.116, i64 0, i64 0), i32 5) #10, !dbg !4819
  %74 = load i8*, i8** %4, align 8, !dbg !4819, !tbaa !801
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4819
  %76 = load i8*, i8** %75, align 8, !dbg !4819, !tbaa !801
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4819
  %78 = load i8*, i8** %77, align 8, !dbg !4819, !tbaa !801
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4819
  %80 = load i8*, i8** %79, align 8, !dbg !4819, !tbaa !801
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4819
  %82 = load i8*, i8** %81, align 8, !dbg !4819, !tbaa !801
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4819
  %84 = load i8*, i8** %83, align 8, !dbg !4819, !tbaa !801
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4819
  %86 = load i8*, i8** %85, align 8, !dbg !4819, !tbaa !801
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4820
  br label %146, !dbg !4821

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.117, i64 0, i64 0), i32 5) #10, !dbg !4822
  %90 = load i8*, i8** %4, align 8, !dbg !4822, !tbaa !801
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4822
  %92 = load i8*, i8** %91, align 8, !dbg !4822, !tbaa !801
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4822
  %94 = load i8*, i8** %93, align 8, !dbg !4822, !tbaa !801
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4822
  %96 = load i8*, i8** %95, align 8, !dbg !4822, !tbaa !801
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4822
  %98 = load i8*, i8** %97, align 8, !dbg !4822, !tbaa !801
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4822
  %100 = load i8*, i8** %99, align 8, !dbg !4822, !tbaa !801
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4822
  %102 = load i8*, i8** %101, align 8, !dbg !4822, !tbaa !801
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4822
  %104 = load i8*, i8** %103, align 8, !dbg !4822, !tbaa !801
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4823
  br label %146, !dbg !4824

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.118, i64 0, i64 0), i32 5) #10, !dbg !4825
  %108 = load i8*, i8** %4, align 8, !dbg !4825, !tbaa !801
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4825
  %110 = load i8*, i8** %109, align 8, !dbg !4825, !tbaa !801
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4825
  %112 = load i8*, i8** %111, align 8, !dbg !4825, !tbaa !801
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4825
  %114 = load i8*, i8** %113, align 8, !dbg !4825, !tbaa !801
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4825
  %116 = load i8*, i8** %115, align 8, !dbg !4825, !tbaa !801
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4825
  %118 = load i8*, i8** %117, align 8, !dbg !4825, !tbaa !801
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4825
  %120 = load i8*, i8** %119, align 8, !dbg !4825, !tbaa !801
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4825
  %122 = load i8*, i8** %121, align 8, !dbg !4825, !tbaa !801
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4825
  %124 = load i8*, i8** %123, align 8, !dbg !4825, !tbaa !801
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4826
  br label %146, !dbg !4827

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.119, i64 0, i64 0), i32 5) #10, !dbg !4828
  %128 = load i8*, i8** %4, align 8, !dbg !4828, !tbaa !801
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4828
  %130 = load i8*, i8** %129, align 8, !dbg !4828, !tbaa !801
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4828
  %132 = load i8*, i8** %131, align 8, !dbg !4828, !tbaa !801
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4828
  %134 = load i8*, i8** %133, align 8, !dbg !4828, !tbaa !801
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4828
  %136 = load i8*, i8** %135, align 8, !dbg !4828, !tbaa !801
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4828
  %138 = load i8*, i8** %137, align 8, !dbg !4828, !tbaa !801
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4828
  %140 = load i8*, i8** %139, align 8, !dbg !4828, !tbaa !801
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4828
  %142 = load i8*, i8** %141, align 8, !dbg !4828, !tbaa !801
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4828
  %144 = load i8*, i8** %143, align 8, !dbg !4828, !tbaa !801
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4829
  br label %146, !dbg !4830

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4831
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4832 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4836, metadata !793), !dbg !4842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4837, metadata !793), !dbg !4843
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4838, metadata !793), !dbg !4844
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4839, metadata !793), !dbg !4845
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4840, metadata !793), !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4841, metadata !793), !dbg !4847
  br label %6, !dbg !4848

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4841, metadata !793), !dbg !4847
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4850
  %9 = load i8*, i8** %8, align 8, !dbg !4850, !tbaa !801
  %10 = icmp eq i8* %9, null, !dbg !4853
  %11 = add i64 %7, 1, !dbg !4855
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4841, metadata !793), !dbg !4847
  br i1 %10, label %12, label %6, !dbg !4853, !llvm.loop !4857

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4860
  ret void, !dbg !4861
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4862 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4873, metadata !793), !dbg !4881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4874, metadata !793), !dbg !4882
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4875, metadata !793), !dbg !4883
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4876, metadata !793), !dbg !4884
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4877, metadata !793), !dbg !4885
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4886
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4886
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4879, metadata !793), !dbg !4887
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4878, metadata !793), !dbg !4888
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4889
  %12 = icmp ult i32 %11, 41, !dbg !4889
  br i1 %12, label %13, label %18, !dbg !4889

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4893
  %15 = sext i32 %11 to i64, !dbg !4893
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4893
  %17 = add i32 %11, 8, !dbg !4893
  store i32 %17, i32* %8, align 8, !dbg !4893
  br label %21, !dbg !4893

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4895
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4895
  store i8* %20, i8** %10, align 8, !dbg !4895
  br label %21, !dbg !4895

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4889
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4897
  %25 = load i8*, i8** %24, align 8, !dbg !4897
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4899
  store i8* %25, i8** %26, align 16, !dbg !4900, !tbaa !801
  %27 = icmp eq i8* %25, null, !dbg !4901
  br i1 %27, label %30, label %28, !dbg !4902

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %29 = icmp ult i32 %22, 41, !dbg !4889
  br i1 %29, label %35, label %32, !dbg !4889

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4904
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4905
  ret void, !dbg !4905

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4895
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4895
  store i8* %34, i8** %10, align 8, !dbg !4895
  br label %40, !dbg !4895

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4893
  %37 = sext i32 %22 to i64, !dbg !4893
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4893
  %39 = add i32 %22, 8, !dbg !4893
  store i32 %39, i32* %8, align 8, !dbg !4893
  br label %40, !dbg !4893

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4889
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4897
  %44 = load i8*, i8** %43, align 8, !dbg !4897
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4899
  store i8* %44, i8** %45, align 8, !dbg !4900, !tbaa !801
  %46 = icmp eq i8* %44, null, !dbg !4901
  br i1 %46, label %30, label %47, !dbg !4902

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %48 = icmp ult i32 %41, 41, !dbg !4889
  br i1 %48, label %52, label %49, !dbg !4889

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4895
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4895
  store i8* %51, i8** %10, align 8, !dbg !4895
  br label %57, !dbg !4895

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4893
  %54 = sext i32 %41 to i64, !dbg !4893
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4893
  %56 = add i32 %41, 8, !dbg !4893
  store i32 %56, i32* %8, align 8, !dbg !4893
  br label %57, !dbg !4893

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4889
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4897
  %61 = load i8*, i8** %60, align 8, !dbg !4897
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4899
  store i8* %61, i8** %62, align 16, !dbg !4900, !tbaa !801
  %63 = icmp eq i8* %61, null, !dbg !4901
  br i1 %63, label %30, label %64, !dbg !4902

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %65 = icmp ult i32 %58, 41, !dbg !4889
  br i1 %65, label %69, label %66, !dbg !4889

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4895
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4895
  store i8* %68, i8** %10, align 8, !dbg !4895
  br label %74, !dbg !4895

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4893
  %71 = sext i32 %58 to i64, !dbg !4893
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4893
  %73 = add i32 %58, 8, !dbg !4893
  store i32 %73, i32* %8, align 8, !dbg !4893
  br label %74, !dbg !4893

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4889
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4897
  %78 = load i8*, i8** %77, align 8, !dbg !4897
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4899
  store i8* %78, i8** %79, align 8, !dbg !4900, !tbaa !801
  %80 = icmp eq i8* %78, null, !dbg !4901
  br i1 %80, label %30, label %81, !dbg !4902

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %82 = icmp ult i32 %75, 41, !dbg !4889
  br i1 %82, label %86, label %83, !dbg !4889

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4895
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4895
  store i8* %85, i8** %10, align 8, !dbg !4895
  br label %91, !dbg !4895

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4893
  %88 = sext i32 %75 to i64, !dbg !4893
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4893
  %90 = add i32 %75, 8, !dbg !4893
  store i32 %90, i32* %8, align 8, !dbg !4893
  br label %91, !dbg !4893

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4889
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4897
  %95 = load i8*, i8** %94, align 8, !dbg !4897
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4899
  store i8* %95, i8** %96, align 16, !dbg !4900, !tbaa !801
  %97 = icmp eq i8* %95, null, !dbg !4901
  br i1 %97, label %30, label %98, !dbg !4902

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %99 = icmp ult i32 %92, 41, !dbg !4889
  br i1 %99, label %103, label %100, !dbg !4889

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4895
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4895
  store i8* %102, i8** %10, align 8, !dbg !4895
  br label %108, !dbg !4895

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4893
  %105 = sext i32 %92 to i64, !dbg !4893
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4893
  %107 = add i32 %92, 8, !dbg !4893
  store i32 %107, i32* %8, align 8, !dbg !4893
  br label %108, !dbg !4893

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4897
  %111 = load i8*, i8** %110, align 8, !dbg !4897
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4899
  store i8* %111, i8** %112, align 8, !dbg !4900, !tbaa !801
  %113 = icmp eq i8* %111, null, !dbg !4901
  br i1 %113, label %30, label %114, !dbg !4902

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %115 = load i8*, i8** %10, align 8, !dbg !4895
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4895
  store i8* %116, i8** %10, align 8, !dbg !4895
  %117 = bitcast i8* %115 to i8**, !dbg !4897
  %118 = load i8*, i8** %117, align 8, !dbg !4897
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4899
  store i8* %118, i8** %119, align 16, !dbg !4900, !tbaa !801
  %120 = icmp eq i8* %118, null, !dbg !4901
  br i1 %120, label %30, label %121, !dbg !4902

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %122 = load i8*, i8** %10, align 8, !dbg !4895
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4895
  store i8* %123, i8** %10, align 8, !dbg !4895
  %124 = bitcast i8* %122 to i8**, !dbg !4897
  %125 = load i8*, i8** %124, align 8, !dbg !4897
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4899
  store i8* %125, i8** %126, align 8, !dbg !4900, !tbaa !801
  %127 = icmp eq i8* %125, null, !dbg !4901
  br i1 %127, label %30, label %128, !dbg !4902

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %129 = load i8*, i8** %10, align 8, !dbg !4895
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4895
  store i8* %130, i8** %10, align 8, !dbg !4895
  %131 = bitcast i8* %129 to i8**, !dbg !4897
  %132 = load i8*, i8** %131, align 8, !dbg !4897
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4899
  store i8* %132, i8** %133, align 16, !dbg !4900, !tbaa !801
  %134 = icmp eq i8* %132, null, !dbg !4901
  br i1 %134, label %30, label %135, !dbg !4902

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %136 = load i8*, i8** %10, align 8, !dbg !4895
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4895
  store i8* %137, i8** %10, align 8, !dbg !4895
  %138 = bitcast i8* %136 to i8**, !dbg !4897
  %139 = load i8*, i8** %138, align 8, !dbg !4897
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4899
  store i8* %139, i8** %140, align 8, !dbg !4900, !tbaa !801
  %141 = icmp eq i8* %139, null, !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4878, metadata !793), !dbg !4888
  %142 = select i1 %141, i64 9, i64 10, !dbg !4902
  br label %30, !dbg !4902
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4906 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4910, metadata !793), !dbg !4919
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4911, metadata !793), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4912, metadata !793), !dbg !4921
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4913, metadata !793), !dbg !4922
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4923
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4923
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4914, metadata !793), !dbg !4924
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4925
  call void @llvm.va_start(i8* nonnull %6), !dbg !4925
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4926
  call void @llvm.va_end(i8* nonnull %6), !dbg !4927
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4928
  ret void, !dbg !4928
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4929 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #10, !dbg !4930
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.123, i64 0, i64 0)) #10, !dbg !4931
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.124, i64 0, i64 0), i32 5) #10, !dbg !4933
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.125, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.126, i64 0, i64 0)) #10, !dbg !4934
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.127, i64 0, i64 0), i32 5) #10, !dbg !4935
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4935, !tbaa !801
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4936
  ret void, !dbg !4937
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4938 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4942, metadata !793), !dbg !4944
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4943, metadata !793), !dbg !4945
  %3 = udiv i64 9223372036854775807, %1, !dbg !4946
  %4 = icmp ult i64 %3, %0, !dbg !4946
  br i1 %4, label %5, label %6, !dbg !4948

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4949
  unreachable, !dbg !4949

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4951, metadata !793) #10, !dbg !4958
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4960
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4957, metadata !793) #10, !dbg !4961
  %9 = icmp eq i8* %8, null, !dbg !4962
  %10 = icmp ne i64 %7, 0, !dbg !4964
  %11 = and i1 %10, %9, !dbg !4966
  br i1 %11, label %12, label %13, !dbg !4966

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4967
  unreachable, !dbg !4967

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4968
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4952 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4951, metadata !793), !dbg !4969
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4970
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4957, metadata !793), !dbg !4971
  %3 = icmp eq i8* %2, null, !dbg !4972
  %4 = icmp ne i64 %0, 0, !dbg !4973
  %5 = and i1 %4, %3, !dbg !4974
  br i1 %5, label %6, label %7, !dbg !4974

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4975
  unreachable, !dbg !4975

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4976
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4977 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4981, metadata !793), !dbg !4984
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4982, metadata !793), !dbg !4985
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4983, metadata !793), !dbg !4986
  %4 = udiv i64 9223372036854775807, %2, !dbg !4987
  %5 = icmp ult i64 %4, %1, !dbg !4987
  br i1 %5, label %6, label %7, !dbg !4989

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4990
  unreachable, !dbg !4990

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4991
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793) #10, !dbg !4998
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4997, metadata !793) #10, !dbg !5000
  %9 = icmp eq i64 %8, 0, !dbg !5001
  %10 = icmp ne i8* %0, null, !dbg !5003
  %11 = and i1 %10, %9, !dbg !5005
  br i1 %11, label %12, label %13, !dbg !5005

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !5006
  br label %19, !dbg !5008

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !5009
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4992, metadata !793) #10, !dbg !4998
  %15 = icmp eq i8* %14, null, !dbg !5010
  %16 = icmp ne i64 %8, 0, !dbg !5012
  %17 = and i1 %16, %15, !dbg !5014
  br i1 %17, label %18, label %19, !dbg !5014

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5015
  unreachable, !dbg !5015

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !5016
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4993 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793), !dbg !5017
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4997, metadata !793), !dbg !5018
  %3 = icmp eq i64 %1, 0, !dbg !5019
  %4 = icmp ne i8* %0, null, !dbg !5020
  %5 = and i1 %4, %3, !dbg !5021
  br i1 %5, label %6, label %7, !dbg !5021

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !5022
  br label %13, !dbg !5023

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !5024
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4992, metadata !793), !dbg !5017
  %9 = icmp eq i8* %8, null, !dbg !5025
  %10 = icmp ne i64 %1, 0, !dbg !5026
  %11 = and i1 %10, %9, !dbg !5027
  br i1 %11, label %12, label %13, !dbg !5027

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !5028
  unreachable, !dbg !5028

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5029
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !753 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !758, metadata !793), !dbg !5030
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !759, metadata !793), !dbg !5031
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !760, metadata !793), !dbg !5032
  %4 = load i64, i64* %1, align 8, !dbg !5033, !tbaa !1083
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !761, metadata !793), !dbg !5034
  %5 = icmp eq i8* %0, null, !dbg !5035
  br i1 %5, label %6, label %13, !dbg !5037

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5038
  br i1 %7, label %8, label %17, !dbg !5041

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5042
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !761, metadata !793), !dbg !5034
  %10 = icmp ugt i64 %2, 128, !dbg !5044
  %11 = zext i1 %10 to i64, !dbg !5044
  %12 = add nuw nsw i64 %9, %11, !dbg !5045
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !761, metadata !793), !dbg !5034
  br label %17, !dbg !5046

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5047
  %15 = icmp ugt i64 %14, %4, !dbg !5050
  br i1 %15, label %20, label %16, !dbg !5051

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5052
  unreachable, !dbg !5052

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !761, metadata !793), !dbg !5034
  store i64 %18, i64* %1, align 8, !dbg !5053, !tbaa !1083
  %19 = mul i64 %18, %2, !dbg !5054
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793) #10, !dbg !5055
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4997, metadata !793) #10, !dbg !5057
  br label %27, !dbg !5058

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5059
  %22 = add i64 %4, 1, !dbg !5060
  %23 = add i64 %22, %21, !dbg !5061
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !761, metadata !793), !dbg !5034
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !761, metadata !793), !dbg !5034
  store i64 %23, i64* %1, align 8, !dbg !5053, !tbaa !1083
  %24 = mul i64 %23, %2, !dbg !5054
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793) #10, !dbg !5055
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4997, metadata !793) #10, !dbg !5057
  %25 = icmp eq i64 %24, 0, !dbg !5062
  br i1 %25, label %26, label %27, !dbg !5058

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !5063
  br label %34, !dbg !5064

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5065
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4992, metadata !793) #10, !dbg !5055
  %30 = icmp eq i8* %29, null, !dbg !5066
  %31 = icmp ne i64 %28, 0, !dbg !5067
  %32 = and i1 %31, %30, !dbg !5068
  br i1 %32, label %33, label %34, !dbg !5068

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !5069
  unreachable, !dbg !5069

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5070
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5071 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5073, metadata !793), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4951, metadata !793) #10, !dbg !5075
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4957, metadata !793) #10, !dbg !5078
  %3 = icmp eq i8* %2, null, !dbg !5079
  %4 = icmp ne i64 %0, 0, !dbg !5080
  %5 = and i1 %4, %3, !dbg !5081
  br i1 %5, label %6, label %7, !dbg !5081

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5082
  unreachable, !dbg !5082

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5083
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5084 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5088, metadata !793), !dbg !5090
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5089, metadata !793), !dbg !5091
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !758, metadata !793) #10, !dbg !5092
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !759, metadata !793) #10, !dbg !5094
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !760, metadata !793) #10, !dbg !5095
  %3 = load i64, i64* %1, align 8, !dbg !5096, !tbaa !1083
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  %4 = icmp eq i8* %0, null, !dbg !5098
  br i1 %4, label %5, label %8, !dbg !5099

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5101
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  store i64 %7, i64* %1, align 8, !dbg !5102, !tbaa !1083
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793) #10, !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4997, metadata !793) #10, !dbg !5105
  br label %17, !dbg !5106

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5107
  br i1 %9, label %11, label %10, !dbg !5108

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !5109
  unreachable, !dbg !5109

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5110
  %13 = add i64 %3, 1, !dbg !5111
  %14 = add i64 %13, %12, !dbg !5112
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !761, metadata !793) #10, !dbg !5097
  store i64 %14, i64* %1, align 8, !dbg !5102, !tbaa !1083
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4992, metadata !793) #10, !dbg !5103
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4997, metadata !793) #10, !dbg !5105
  %15 = icmp eq i64 %14, 0, !dbg !5113
  br i1 %15, label %16, label %17, !dbg !5106

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !5114
  br label %24, !dbg !5115

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5116
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4992, metadata !793) #10, !dbg !5103
  %20 = icmp eq i8* %19, null, !dbg !5117
  %21 = icmp ne i64 %18, 0, !dbg !5118
  %22 = and i1 %21, %20, !dbg !5119
  br i1 %22, label %23, label %24, !dbg !5119

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !5120
  unreachable, !dbg !5120

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5121
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5122 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5124, metadata !793), !dbg !5125
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4951, metadata !793) #10, !dbg !5126
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5128
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4957, metadata !793) #10, !dbg !5129
  %3 = icmp eq i8* %2, null, !dbg !5130
  %4 = icmp ne i64 %0, 0, !dbg !5131
  %5 = and i1 %4, %3, !dbg !5132
  br i1 %5, label %6, label %7, !dbg !5132

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5133
  unreachable, !dbg !5133

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5134
  ret i8* %2, !dbg !5135
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5136 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5138, metadata !793), !dbg !5141
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5139, metadata !793), !dbg !5142
  %3 = udiv i64 9223372036854775807, %1, !dbg !5143
  %4 = icmp ult i64 %3, %0, !dbg !5143
  br i1 %4, label %8, label %5, !dbg !5145

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5146
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5140, metadata !793), !dbg !5148
  %7 = icmp eq i8* %6, null, !dbg !5149
  br i1 %7, label %8, label %9, !dbg !5150

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !5152
  unreachable, !dbg !5152

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5153
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5154 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5156, metadata !793), !dbg !5158
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5157, metadata !793), !dbg !5159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4951, metadata !793) #10, !dbg !5160
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5162
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4957, metadata !793) #10, !dbg !5163
  %4 = icmp eq i8* %3, null, !dbg !5164
  %5 = icmp ne i64 %1, 0, !dbg !5165
  %6 = and i1 %5, %4, !dbg !5166
  br i1 %6, label %7, label %8, !dbg !5166

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5167
  unreachable, !dbg !5167

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5168
  ret i8* %3, !dbg !5169
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5172, metadata !793), !dbg !5173
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !5174
  %3 = add i64 %2, 1, !dbg !5175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5156, metadata !793) #10, !dbg !5176
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5157, metadata !793) #10, !dbg !5179
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4951, metadata !793) #10, !dbg !5180
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5182
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4957, metadata !793) #10, !dbg !5183
  %5 = icmp eq i8* %4, null, !dbg !5184
  %6 = icmp ne i64 %3, 0, !dbg !5185
  %7 = and i1 %6, %5, !dbg !5186
  br i1 %7, label %8, label %9, !dbg !5186

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5187
  unreachable, !dbg !5187

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5188
  ret i8* %4, !dbg !5189
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5190 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5192, !tbaa !1012
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #10, !dbg !5193
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #10, !dbg !5194
  tail call void @abort() #14, !dbg !5196
  unreachable, !dbg !5196
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5197 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5200, metadata !793), !dbg !5206
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5201, metadata !793), !dbg !5207
  %3 = icmp eq i64 %0, 0, !dbg !5208
  %4 = icmp eq i64 %1, 0, !dbg !5209
  %5 = or i1 %3, %4, !dbg !5211
  br i1 %5, label %12, label %6, !dbg !5211

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5212
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5203, metadata !793), !dbg !5213
  %8 = udiv i64 %7, %1, !dbg !5214
  %9 = icmp eq i64 %8, %0, !dbg !5216
  br i1 %9, label %12, label %10, !dbg !5217

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5218
  store i32 12, i32* %11, align 4, !dbg !5220, !tbaa !1012
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5200, metadata !793), !dbg !5206
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5201, metadata !793), !dbg !5207
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5221
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5202, metadata !793), !dbg !5222
  br label %16, !dbg !5223

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5224
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5225 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5270, metadata !793), !dbg !5274
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5271, metadata !793), !dbg !5275
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5273, metadata !793), !dbg !5276
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5277
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5272, metadata !793), !dbg !5278
  %3 = icmp slt i32 %2, 0, !dbg !5279
  br i1 %3, label %4, label %6, !dbg !5281

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5282
  br label %24, !dbg !5283

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5284
  %8 = icmp eq i32 %7, 0, !dbg !5284
  br i1 %8, label %13, label %9, !dbg !5286

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5287
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5289
  %12 = icmp eq i64 %11, -1, !dbg !5291
  br i1 %12, label %16, label %13, !dbg !5292

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5293
  %15 = icmp eq i32 %14, 0, !dbg !5293
  br i1 %15, label %16, label %18, !dbg !5294

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5271, metadata !793), !dbg !5275
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5296
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5273, metadata !793), !dbg !5276
  br label %24, !dbg !5297

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5298
  %20 = load i32, i32* %19, align 4, !dbg !5298, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5271, metadata !793), !dbg !5275
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5271, metadata !793), !dbg !5275
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5296
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5273, metadata !793), !dbg !5276
  %22 = icmp eq i32 %20, 0, !dbg !5299
  br i1 %22, label %24, label %23, !dbg !5297

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5301, !tbaa !1012
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5273, metadata !793), !dbg !5276
  br label %24, !dbg !5303

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5304
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !353 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !361, metadata !793), !dbg !5305
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !362, metadata !793), !dbg !5306
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5307
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !5307
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !363, metadata !793), !dbg !5308
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !374, metadata !793), !dbg !5309
  call void @llvm.va_start(i8* nonnull %4), !dbg !5310
  %5 = icmp eq i32 %1, 1030, !dbg !5311
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5311

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5312

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5313
  %12 = load i8*, i8** %11, align 16, !dbg !5313
  %13 = sext i32 %7 to i64, !dbg !5313
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5313
  %15 = add i32 %7, 8, !dbg !5313
  store i32 %15, i32* %6, align 16, !dbg !5313
  br label %20, !dbg !5313

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5315
  %18 = load i8*, i8** %17, align 8, !dbg !5315
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5315
  store i8* %19, i8** %17, align 8, !dbg !5315
  br label %20, !dbg !5315

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5317
  %23 = load i32, i32* %22, align 4, !dbg !5317
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !375, metadata !793), !dbg !5319
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5320, !tbaa !1012
  %25 = icmp sgt i32 %24, -1, !dbg !5322
  br i1 %25, label %26, label %39, !dbg !5323

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !5324
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !374, metadata !793), !dbg !5309
  %28 = icmp sgt i32 %27, -1, !dbg !5326
  br i1 %28, label %36, label %29, !dbg !5328

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !5329
  %31 = load i32, i32* %30, align 4, !dbg !5329, !tbaa !1012
  %32 = icmp eq i32 %31, 22, !dbg !5331
  br i1 %32, label %33, label %36, !dbg !5332

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5334
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !374, metadata !793), !dbg !5309
  %35 = icmp slt i32 %34, 0, !dbg !5336
  br i1 %35, label %75, label %36, !dbg !5338

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !374, metadata !793), !dbg !5309
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !1012
  br label %42, !dbg !5339

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5340
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !374, metadata !793), !dbg !5309
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5341
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !374, metadata !793), !dbg !5309
  %45 = icmp sgt i32 %44, -1, !dbg !5343
  %46 = icmp eq i32 %43, -1, !dbg !5344
  %47 = and i1 %45, %46, !dbg !5345
  br i1 %47, label %48, label %75, !dbg !5345

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !5346
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !378, metadata !793), !dbg !5347
  %50 = icmp slt i32 %49, 0, !dbg !5348
  br i1 %50, label %55, label %51, !dbg !5349

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5350
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !5352
  %54 = icmp eq i32 %53, -1, !dbg !5353
  br i1 %54, label %55, label %75, !dbg !5354

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !5356
  %57 = load i32, i32* %56, align 4, !dbg !5356, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !381, metadata !793), !dbg !5357
  %58 = call i32 @close(i32 %44) #10, !dbg !5358
  store i32 %57, i32* %56, align 4, !dbg !5359, !tbaa !1012
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !374, metadata !793), !dbg !5309
  br label %75, !dbg !5360

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5361

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5362
  %62 = load i8*, i8** %61, align 16, !dbg !5362
  %63 = sext i32 %7 to i64, !dbg !5362
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5362
  %65 = add i32 %7, 8, !dbg !5362
  store i32 %65, i32* %6, align 16, !dbg !5362
  br label %70, !dbg !5362

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5364
  %68 = load i8*, i8** %67, align 8, !dbg !5364
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5364
  store i8* %69, i8** %67, align 8, !dbg !5364
  br label %70, !dbg !5364

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5366
  %73 = load i8*, i8** %72, align 8, !dbg !5366
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !384, metadata !793), !dbg !5368
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !5369
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !374, metadata !793), !dbg !5309
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !374, metadata !793), !dbg !5309
  call void @llvm.va_end(i8* nonnull %4), !dbg !5370
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !5371
  ret i32 %76, !dbg !5372
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5373 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5418, metadata !793), !dbg !5419
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5420
  br i1 %2, label %6, label %3, !dbg !5422

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5423
  %5 = icmp eq i32 %4, 0, !dbg !5423
  br i1 %5, label %6, label %8, !dbg !5425

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5427
  br label %17, !dbg !5428

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5429, metadata !793) #10, !dbg !5434
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5436
  %10 = load i32, i32* %9, align 8, !dbg !5436, !tbaa !1490
  %11 = and i32 %10, 256, !dbg !5438
  %12 = icmp eq i32 %11, 0, !dbg !5438
  br i1 %12, label %15, label %13, !dbg !5439

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5440
  br label %15, !dbg !5440

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5441
  br label %17, !dbg !5442

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5443
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5444 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5489, metadata !793), !dbg !5495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5490, metadata !793), !dbg !5496
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5491, metadata !793), !dbg !5497
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5498
  %5 = load i8*, i8** %4, align 8, !dbg !5498, !tbaa !5499
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5500
  %7 = load i8*, i8** %6, align 8, !dbg !5500, !tbaa !5501
  %8 = icmp eq i8* %5, %7, !dbg !5502
  br i1 %8, label %9, label %28, !dbg !5503

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5504
  %11 = load i8*, i8** %10, align 8, !dbg !5504, !tbaa !1405
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5506
  %13 = load i8*, i8** %12, align 8, !dbg !5506, !tbaa !5507
  %14 = icmp eq i8* %11, %13, !dbg !5508
  br i1 %14, label %15, label %28, !dbg !5509

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5510
  %17 = load i8*, i8** %16, align 8, !dbg !5510, !tbaa !5511
  %18 = icmp eq i8* %17, null, !dbg !5512
  br i1 %18, label %19, label %28, !dbg !5513

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5515
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5516
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5492, metadata !793), !dbg !5518
  %22 = icmp eq i64 %21, -1, !dbg !5519
  br i1 %22, label %30, label %23, !dbg !5521

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5522
  %25 = load i32, i32* %24, align 8, !dbg !5523, !tbaa !1490
  %26 = and i32 %25, -17, !dbg !5523
  store i32 %26, i32* %24, align 8, !dbg !5523, !tbaa !1490
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5524
  store i64 %21, i64* %27, align 8, !dbg !5525, !tbaa !5526
  br label %30, !dbg !5527

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5528
  br label %30, !dbg !5529

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5530
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5531 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5548, metadata !793), !dbg !5557
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5549, metadata !793), !dbg !5558
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5550, metadata !793), !dbg !5559
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5551, metadata !793), !dbg !5560
  %6 = bitcast i32* %5 to i8*, !dbg !5561
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5561
  %7 = icmp eq i32* %0, null, !dbg !5562
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5548, metadata !793), !dbg !5557
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5564
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5548, metadata !793), !dbg !5557
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5565
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5552, metadata !793), !dbg !5566
  %10 = icmp ugt i64 %9, -3, !dbg !5567
  %11 = icmp ne i64 %2, 0, !dbg !5568
  %12 = and i1 %11, %10, !dbg !5570
  br i1 %12, label %13, label %18, !dbg !5570

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5571
  br i1 %14, label %18, label %15, !dbg !5573

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5575, !tbaa !1048
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5554, metadata !793), !dbg !5576
  %17 = zext i8 %16 to i32, !dbg !5577
  store i32 %17, i32* %8, align 4, !dbg !5578, !tbaa !1012
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5579
  ret i64 %19, !dbg !5579
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5580 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5625, metadata !793), !dbg !5630
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5631
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5632, metadata !793), !dbg !5635
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5637
  %4 = load i32, i32* %3, align 8, !dbg !5637, !tbaa !1490
  %5 = and i32 %4, 32, !dbg !5637
  %6 = icmp eq i32 %5, 0, !dbg !5638
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5639
  %8 = icmp ne i32 %7, 0, !dbg !5640
  br i1 %6, label %9, label %19, !dbg !5641

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5643
  %11 = icmp ne i64 %2, 0, !dbg !5643
  %12 = or i1 %11, %10, !dbg !5643
  %13 = sext i1 %8 to i32, !dbg !5643
  br i1 %12, label %22, label %14, !dbg !5643

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5645
  %16 = load i32, i32* %15, align 4, !dbg !5645, !tbaa !1012
  %17 = icmp ne i32 %16, 9, !dbg !5647
  %18 = sext i1 %17 to i32, !dbg !5647
  br label %22, !dbg !5647

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5649

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5651
  store i32 0, i32* %21, align 4, !dbg !5653, !tbaa !1012
  br label %22, !dbg !5651

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5654
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5655 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5660, metadata !793), !dbg !5680
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5661, metadata !793), !dbg !5681
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5662, metadata !793), !dbg !5683
  %3 = icmp eq i8* %2, null, !dbg !5684
  br i1 %3, label %15, label %4, !dbg !5685

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5670, metadata !793), !dbg !5686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5671, metadata !793), !dbg !5687
  %5 = load i8, i8* %2, align 1, !dbg !5688, !tbaa !1048
  %6 = icmp eq i8 %5, 67, !dbg !5690
  br i1 %6, label %7, label %11, !dbg !5693

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5695
  %9 = load i8, i8* %8, align 1, !dbg !5695, !tbaa !1048
  %10 = icmp eq i8 %9, 0, !dbg !5698
  br i1 %10, label %14, label %11, !dbg !5700

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5676, metadata !793), !dbg !5702
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #10, !dbg !5703
  %13 = icmp eq i32 %12, 0, !dbg !5705
  br i1 %13, label %14, label %15, !dbg !5707

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5661, metadata !793), !dbg !5681
  br label %15, !dbg !5709

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5710
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5711 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5723, metadata !793), !dbg !5797
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5790, metadata !793), !dbg !5799
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5800
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5715, metadata !793), !dbg !5801
  %4 = icmp eq i8* %3, null, !dbg !5802
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %3, !dbg !5804
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5715, metadata !793), !dbg !5801
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5805, !tbaa !801
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5737, metadata !793) #10, !dbg !5806
  %7 = icmp eq i8* %6, null, !dbg !5807
  br i1 %7, label %8, label %127, !dbg !5808

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.160, i64 0, i64 0)) #10, !dbg !5809
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5738, metadata !793) #10, !dbg !5810
  %10 = icmp eq i8* %9, null, !dbg !5811
  br i1 %10, label %14, label %11, !dbg !5813

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5814, !tbaa !1048
  %13 = icmp eq i8 %12, 0, !dbg !5816
  br i1 %13, label %14, label %15, !dbg !5817

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5819

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.161, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5738, metadata !793) #10, !dbg !5810
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5820
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5741, metadata !793) #10, !dbg !5821
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5743, metadata !793) #10, !dbg !5822
  %18 = icmp eq i64 %17, 0, !dbg !5823
  br i1 %18, label %24, label %19, !dbg !5824

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5825
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5825
  %22 = load i8, i8* %21, align 1, !dbg !5825, !tbaa !1048
  %23 = icmp ne i8 %22, 47, !dbg !5827
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5828
  %27 = add i64 %17, 14, !dbg !5829
  %28 = add i64 %27, %26, !dbg !5830
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5831
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5740, metadata !793) #10, !dbg !5832
  %30 = icmp eq i8* %29, null, !dbg !5833
  br i1 %30, label %125, label %31, !dbg !5833

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5834
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5837

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5838, !tbaa !1048
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5840
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5841
  br label %37, !dbg !5842

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5840
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.162, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5841
  br label %37, !dbg !5842

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5843
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5745, metadata !793) #10, !dbg !5844
  %39 = icmp slt i32 %38, 0, !dbg !5845
  br i1 %39, label %123, label %40, !dbg !5846

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.163, i64 0, i64 0)) #10, !dbg !5847
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5746, metadata !793) #10, !dbg !5848
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5849
  br i1 %42, label %48, label %43, !dbg !5850

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5851

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5852
  br label %123, !dbg !5854

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5856
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5858, metadata !793) #10, !dbg !5863
  %53 = load i8*, i8** %46, align 8, !dbg !5865, !tbaa !5501
  %54 = load i8*, i8** %47, align 8, !dbg !5865, !tbaa !5499
  %55 = icmp ult i8* %53, %54, !dbg !5865
  br i1 %55, label %58, label %56, !dbg !5865, !prof !1408

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5866
  br label %62, !dbg !5866

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5868
  store i8* %59, i8** %46, align 8, !dbg !5868, !tbaa !5501
  %60 = load i8, i8* %53, align 1, !dbg !5868, !tbaa !1048
  %61 = zext i8 %60 to i32, !dbg !5868
  br label %62, !dbg !5868

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5870
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5789, metadata !793) #10, !dbg !5872
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5873

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5874

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5858, metadata !793) #10, !dbg !5874
  %66 = load i8*, i8** %46, align 8, !dbg !5878, !tbaa !5501
  %67 = load i8*, i8** %47, align 8, !dbg !5878, !tbaa !5499
  %68 = icmp ult i8* %66, %67, !dbg !5878
  br i1 %68, label %71, label %69, !dbg !5878, !prof !1408

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5879
  br label %75, !dbg !5879

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5880
  store i8* %72, i8** %46, align 8, !dbg !5880, !tbaa !5501
  %73 = load i8, i8* %66, align 1, !dbg !5880, !tbaa !1048
  %74 = zext i8 %73 to i32, !dbg !5880
  br label %75, !dbg !5880

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5881
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5789, metadata !793) #10, !dbg !5872
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5882, !llvm.loop !5884

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5887
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.164, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5888
  %80 = icmp slt i32 %79, 2, !dbg !5890
  br i1 %80, label %115, label %81, !dbg !5891

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5892
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5794, metadata !793) #10, !dbg !5893
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5894
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5795, metadata !793) #10, !dbg !5895
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5796, metadata !793) #10, !dbg !5896
  %84 = icmp eq i64 %51, 0, !dbg !5897
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5899

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  %89 = add i64 %86, 2, !dbg !5900
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5902
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  br label %95, !dbg !5903

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5904
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  %93 = add i64 %92, 1, !dbg !5906
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5907
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  %98 = icmp eq i8* %97, null, !dbg !5908
  br i1 %98, label %99, label %100, !dbg !5910

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  call void @free(i8* %52) #10, !dbg !5911
  br label %116, !dbg !5913

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5914
  %102 = xor i64 %83, -1, !dbg !5915
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5915
  %104 = xor i64 %82, -1, !dbg !5916
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5916
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5917, metadata !793) #10, !dbg !5926
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5925, metadata !793) #10, !dbg !5926
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5928
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5929
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5917, metadata !793) #10, !dbg !5930
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5925, metadata !793) #10, !dbg !5930
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5932
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5933
  br label %111, !dbg !5934

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5851

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5934
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5934
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5851

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5851

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5787, metadata !793) #10, !dbg !5851
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5788, metadata !793) #10, !dbg !5855
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5934
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5934
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5935
  %120 = icmp eq i64 %117, 0, !dbg !5936
  br i1 %120, label %123, label %121, !dbg !5938

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5939
  store i8 0, i8* %122, align 1, !dbg !5941, !tbaa !1048
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5737, metadata !793) #10, !dbg !5806
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5737, metadata !793) #10, !dbg !5806
  call void @free(i8* %29) #10, !dbg !5942
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5737, metadata !793) #10, !dbg !5806
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5943, !tbaa !801
  br label %127, !dbg !5944

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5716, metadata !793), !dbg !5945
  %129 = load i8, i8* %128, align 1, !dbg !5946, !tbaa !1048
  %130 = icmp eq i8 %129, 0, !dbg !5947
  br i1 %130, label %157, label %131, !dbg !5948

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5950

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5950
  %136 = icmp eq i32 %135, 0, !dbg !5951
  br i1 %136, label %143, label %137, !dbg !5952

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5953
  br i1 %138, label %139, label %147, !dbg !5955

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5956
  %141 = load i8, i8* %140, align 1, !dbg !5956, !tbaa !1048
  %142 = icmp eq i8 %141, 0, !dbg !5958
  br i1 %142, label %143, label %147, !dbg !5959

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5961
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5963
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5964
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5715, metadata !793), !dbg !5801
  br label %157, !dbg !5965

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5966
  %149 = add i64 %148, 1, !dbg !5967
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5968
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5716, metadata !793), !dbg !5945
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5969
  %152 = add i64 %151, 1, !dbg !5970
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5971
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5716, metadata !793), !dbg !5945
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5716, metadata !793), !dbg !5945
  %154 = load i8, i8* %153, align 1, !dbg !5946, !tbaa !1048
  %155 = icmp eq i8 %154, 0, !dbg !5947
  br i1 %155, label %156, label %132, !dbg !5948, !llvm.loop !5972

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5801

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5715, metadata !793), !dbg !5801
  %159 = load i8, i8* %158, align 1, !dbg !5975, !tbaa !1048
  %160 = icmp eq i8 %159, 0, !dbg !5977
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %158, !dbg !5978
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5715, metadata !793), !dbg !5801
  ret i8* %161, !dbg !5979
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

!llvm.dbg.cu = !{!2, !252, !258, !266, !276, !733, !736, !283, !290, !738, !740, !344, !748, !765, !767, !769, !357, !771, !773, !775, !778, !780, !388}
!llvm.ident = !{!783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783}
!llvm.module.flags = !{!784, !785, !786, !787}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 203, type: !238, isLocal: true, isDefinition: true)
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
!73 = !{!74, !77, !79, !81, !0, !110, !112, !114, !116, !118, !120, !236}
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
!121 = distinct !DIGlobalVariable(name: "bin2hex", scope: !122, file: !3, line: 723, type: !233, isLocal: true, isDefinition: true)
!122 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 644, type: !123, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!76, !68}
!125 = !{!126, !127, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !209, !212, !213, !215, !216, !218, !219, !220, !224, !225, !231}
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
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !180)
!190 = !DILocalVariable(name: "bin_buffer", scope: !122, file: !3, line: 655, type: !71)
!191 = !DILocalVariable(name: "line_number", scope: !122, file: !3, line: 656, type: !40)
!192 = !DILocalVariable(name: "line", scope: !122, file: !3, line: 657, type: !58)
!193 = !DILocalVariable(name: "line_chars_allocated", scope: !122, file: !3, line: 658, type: !61)
!194 = !DILocalVariable(name: "is_stdin", scope: !122, file: !3, line: 659, type: !76)
!195 = !DILocalVariable(name: "__s1_len", scope: !196, file: !3, line: 659, type: !61)
!196 = distinct !DILexicalBlock(scope: !122, file: !3, line: 659, column: 19)
!197 = !DILocalVariable(name: "__s2_len", scope: !196, file: !3, line: 659, type: !61)
!198 = !DILocalVariable(name: "__s2", scope: !199, file: !3, line: 659, type: !65)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 659, column: 19)
!200 = !DILocalVariable(name: "__result", scope: !199, file: !3, line: 659, type: !70)
!201 = !DILocalVariable(name: "filename", scope: !202, file: !3, line: 682, type: !58)
!202 = distinct !DILexicalBlock(scope: !122, file: !3, line: 681, column: 5)
!203 = !DILocalVariable(name: "binary", scope: !202, file: !3, line: 683, type: !70)
!204 = !DILocalVariable(name: "hex_digest", scope: !202, file: !3, line: 684, type: !71)
!205 = !DILocalVariable(name: "line_length", scope: !202, file: !3, line: 685, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !207, line: 109, baseType: !208)
!207 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !159)
!209 = !DILocalVariable(name: "__s1_len", scope: !210, file: !3, line: 705, type: !61)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 705, column: 32)
!211 = distinct !DILexicalBlock(scope: !202, file: !3, line: 704, column: 11)
!212 = !DILocalVariable(name: "__s2_len", scope: !210, file: !3, line: 705, type: !61)
!213 = !DILocalVariable(name: "__s2", scope: !214, file: !3, line: 705, type: !65)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 705, column: 32)
!215 = !DILocalVariable(name: "__result", scope: !214, file: !3, line: 705, type: !70)
!216 = !DILocalVariable(name: "ok", scope: !217, file: !3, line: 727, type: !76)
!217 = distinct !DILexicalBlock(scope: !211, file: !3, line: 722, column: 9)
!218 = !DILocalVariable(name: "missing", scope: !217, file: !3, line: 728, type: !76)
!219 = !DILocalVariable(name: "needs_escape", scope: !217, file: !3, line: 731, type: !76)
!220 = !DILocalVariable(name: "digest_bin_bytes", scope: !221, file: !3, line: 755, type: !61)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 754, column: 13)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 748, column: 20)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 737, column: 15)
!224 = !DILocalVariable(name: "cnt", scope: !221, file: !3, line: 756, type: !61)
!225 = !DILocalVariable(name: "__res", scope: !226, file: !3, line: 762, type: !70)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 762, column: 23)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 762, column: 23)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 761, column: 17)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 760, column: 15)
!230 = distinct !DILexicalBlock(scope: !221, file: !3, line: 760, column: 15)
!231 = !DILocalVariable(name: "__res", scope: !232, file: !3, line: 764, type: !70)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 764, column: 27)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 16)
!236 = !DIGlobalVariableExpression(var: !237)
!237 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !70, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 3072, elements: !248)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !241, line: 104, size: 256, elements: !242)
!241 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!243, !244, !245, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !241, line: 106, baseType: !68, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !240, file: !241, line: 109, baseType: !70, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !240, file: !241, line: 110, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !241, line: 111, baseType: !70, size: 32, offset: 192)
!248 = !{!249}
!249 = !DISubrange(count: 12)
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "Version", scope: !252, file: !253, line: 2, type: !68, isLocal: false, isDefinition: true)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, globals: !255)
!253 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !{}
!255 = !{!250}
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "file_name", scope: !258, file: !263, line: 36, type: !68, isLocal: true, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, globals: !260)
!259 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!256, !261}
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !258, file: !263, line: 46, type: !76, isLocal: true, isDefinition: true)
!263 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!264 = !DIGlobalVariableExpression(var: !265)
!265 = distinct !DIGlobalVariable(name: "fillbuf", scope: !266, file: !270, line: 70, type: !271, isLocal: true, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !268, globals: !269)
!267 = !DIFile(filename: "./lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !{!58, !68}
!269 = !{!264}
!270 = !DIFile(filename: "lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 512, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 64)
!274 = !DIGlobalVariableExpression(var: !275)
!275 = distinct !DIGlobalVariable(name: "exit_failure", scope: !276, file: !279, line: 24, type: !280, isLocal: false, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, globals: !278)
!277 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!278 = !{!274}
!279 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!280 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!281 = !DIGlobalVariableExpression(var: !282)
!282 = distinct !DIGlobalVariable(name: "program_name", scope: !283, file: !287, line: 33, type: !68, isLocal: false, isDefinition: true)
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !285, globals: !286)
!284 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!285 = !{!60, !58}
!286 = !{!281}
!287 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!288 = !DIGlobalVariableExpression(var: !289)
!289 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !290, file: !302, line: 77, type: !338, isLocal: false, isDefinition: true)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !292, retainedTypes: !298, globals: !299)
!291 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!292 = !{!5, !293, !19}
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !294)
!294 = !{!295, !296, !297}
!295 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!296 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!297 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!298 = !{!70, !72, !61, !58}
!299 = !{!288, !300, !307, !320, !322, !327, !334, !336}
!300 = !DIGlobalVariableExpression(var: !301)
!301 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !290, file: !302, line: 93, type: !303, isLocal: false, isDefinition: true)
!302 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 320, elements: !305)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!305 = !{!306}
!306 = !DISubrange(count: 10)
!307 = !DIGlobalVariableExpression(var: !308)
!308 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !290, file: !302, line: 1043, type: !309, isLocal: false, isDefinition: true)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !302, line: 57, size: 448, elements: !310)
!310 = !{!311, !312, !313, !318, !319}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !309, file: !302, line: 60, baseType: !5, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !302, line: 63, baseType: !70, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !309, file: !302, line: 67, baseType: !314, size: 256, offset: 64)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !316)
!315 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!316 = !{!317}
!317 = !DISubrange(count: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !309, file: !302, line: 70, baseType: !68, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !309, file: !302, line: 73, baseType: !68, size: 64, offset: 384)
!320 = !DIGlobalVariableExpression(var: !321)
!321 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !290, file: !302, line: 108, type: !309, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323)
!323 = distinct !DIGlobalVariable(name: "slot0", scope: !290, file: !302, line: 834, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 256)
!327 = !DIGlobalVariableExpression(var: !328)
!328 = distinct !DIGlobalVariable(name: "slotvec", scope: !290, file: !302, line: 837, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !302, line: 826, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !330, file: !302, line: 828, baseType: !61, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !302, line: 829, baseType: !58, size: 64, offset: 64)
!334 = !DIGlobalVariableExpression(var: !335)
!335 = distinct !DIGlobalVariable(name: "nslots", scope: !290, file: !302, line: 835, type: !70, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337)
!337 = distinct !DIGlobalVariable(name: "slotvec0", scope: !290, file: !302, line: 836, type: !330, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 704, elements: !340)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!340 = !{!341}
!341 = !DISubrange(count: 11)
!342 = !DIGlobalVariableExpression(var: !343)
!343 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !344, file: !347, line: 26, type: !348, isLocal: false, isDefinition: true)
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, globals: !346)
!345 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!346 = !{!342}
!347 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 47)
!351 = !DIGlobalVariableExpression(var: !352)
!352 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !353, file: !354, line: 335, type: !70, isLocal: true, isDefinition: true)
!353 = distinct !DISubprogram(name: "rpl_fcntl", scope: !354, file: !354, line: 272, type: !355, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !357, variables: !360)
!354 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!355 = !DISubroutineType(types: !356)
!356 = !{!70, !70, !70, null}
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, globals: !359)
!358 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!359 = !{!351}
!360 = !{!361, !362, !363, !374, !375, !378, !381, !384}
!361 = !DILocalVariable(name: "fd", arg: 1, scope: !353, file: !354, line: 272, type: !70)
!362 = !DILocalVariable(name: "action", arg: 2, scope: !353, file: !354, line: 272, type: !70)
!363 = !DILocalVariable(name: "arg", scope: !353, file: !354, line: 274, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !365, line: 30, baseType: !366)
!365 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !358, line: 274, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !165)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !358, line: 274, size: 192, elements: !369)
!369 = !{!370, !371, !372, !373}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !368, file: !358, line: 274, baseType: !315, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !368, file: !358, line: 274, baseType: !315, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !368, file: !358, line: 274, baseType: !60, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !368, file: !358, line: 274, baseType: !60, size: 64, offset: 128)
!374 = !DILocalVariable(name: "result", scope: !353, file: !354, line: 275, type: !70)
!375 = !DILocalVariable(name: "target", scope: !376, file: !354, line: 322, type: !70)
!376 = distinct !DILexicalBlock(scope: !377, file: !354, line: 321, column: 7)
!377 = distinct !DILexicalBlock(scope: !353, file: !354, line: 278, column: 5)
!378 = !DILocalVariable(name: "flags", scope: !379, file: !354, line: 359, type: !70)
!379 = distinct !DILexicalBlock(scope: !380, file: !354, line: 358, column: 11)
!380 = distinct !DILexicalBlock(scope: !376, file: !354, line: 357, column: 13)
!381 = !DILocalVariable(name: "saved_errno", scope: !382, file: !354, line: 362, type: !70)
!382 = distinct !DILexicalBlock(scope: !383, file: !354, line: 361, column: 15)
!383 = distinct !DILexicalBlock(scope: !379, file: !354, line: 360, column: 17)
!384 = !DILocalVariable(name: "p", scope: !385, file: !354, line: 404, type: !60)
!385 = distinct !DILexicalBlock(scope: !377, file: !354, line: 402, column: 7)
!386 = !DIGlobalVariableExpression(var: !387)
!387 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !388, file: !731, line: 120, type: !732, isLocal: true, isDefinition: true)
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !389, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !390, retainedTypes: !729, globals: !730)
!389 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!390 = !{!391}
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 41, size: 32, elements: !393)
!392 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!394 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!395 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!396 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!397 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!398 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!399 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!400 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!401 = !DIEnumerator(name: "DAY_1", value: 131079)
!402 = !DIEnumerator(name: "DAY_2", value: 131080)
!403 = !DIEnumerator(name: "DAY_3", value: 131081)
!404 = !DIEnumerator(name: "DAY_4", value: 131082)
!405 = !DIEnumerator(name: "DAY_5", value: 131083)
!406 = !DIEnumerator(name: "DAY_6", value: 131084)
!407 = !DIEnumerator(name: "DAY_7", value: 131085)
!408 = !DIEnumerator(name: "ABMON_1", value: 131086)
!409 = !DIEnumerator(name: "ABMON_2", value: 131087)
!410 = !DIEnumerator(name: "ABMON_3", value: 131088)
!411 = !DIEnumerator(name: "ABMON_4", value: 131089)
!412 = !DIEnumerator(name: "ABMON_5", value: 131090)
!413 = !DIEnumerator(name: "ABMON_6", value: 131091)
!414 = !DIEnumerator(name: "ABMON_7", value: 131092)
!415 = !DIEnumerator(name: "ABMON_8", value: 131093)
!416 = !DIEnumerator(name: "ABMON_9", value: 131094)
!417 = !DIEnumerator(name: "ABMON_10", value: 131095)
!418 = !DIEnumerator(name: "ABMON_11", value: 131096)
!419 = !DIEnumerator(name: "ABMON_12", value: 131097)
!420 = !DIEnumerator(name: "MON_1", value: 131098)
!421 = !DIEnumerator(name: "MON_2", value: 131099)
!422 = !DIEnumerator(name: "MON_3", value: 131100)
!423 = !DIEnumerator(name: "MON_4", value: 131101)
!424 = !DIEnumerator(name: "MON_5", value: 131102)
!425 = !DIEnumerator(name: "MON_6", value: 131103)
!426 = !DIEnumerator(name: "MON_7", value: 131104)
!427 = !DIEnumerator(name: "MON_8", value: 131105)
!428 = !DIEnumerator(name: "MON_9", value: 131106)
!429 = !DIEnumerator(name: "MON_10", value: 131107)
!430 = !DIEnumerator(name: "MON_11", value: 131108)
!431 = !DIEnumerator(name: "MON_12", value: 131109)
!432 = !DIEnumerator(name: "AM_STR", value: 131110)
!433 = !DIEnumerator(name: "PM_STR", value: 131111)
!434 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!435 = !DIEnumerator(name: "D_FMT", value: 131113)
!436 = !DIEnumerator(name: "T_FMT", value: 131114)
!437 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!438 = !DIEnumerator(name: "ERA", value: 131116)
!439 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!440 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!441 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!442 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!443 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!444 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!445 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!446 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!447 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!448 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!449 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!450 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!451 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!452 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!453 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!454 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!455 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!456 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!457 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!458 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!459 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!460 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!461 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!462 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!463 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!464 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!465 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!466 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!467 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!468 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!469 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!470 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!471 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!472 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!473 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!474 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!475 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!476 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!477 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!478 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!479 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!480 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!481 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!482 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!483 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!484 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!485 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!486 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!487 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!488 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!489 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!490 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!491 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!492 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!493 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!494 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!495 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!496 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!497 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!498 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!499 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!500 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!501 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!502 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!503 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!504 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!505 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!506 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!507 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!508 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!509 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!510 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!511 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!512 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!513 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!514 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!515 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!516 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!517 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!518 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!519 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!520 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!521 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!522 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!523 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!524 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!525 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!526 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!527 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!528 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!529 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!530 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!531 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!532 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!533 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!534 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!535 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!536 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!537 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!538 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!539 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!540 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!541 = !DIEnumerator(name: "CODESET", value: 14)
!542 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!543 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!544 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!545 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!588 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!589 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!596 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!597 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!598 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!612 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!613 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!614 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!615 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!616 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!617 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!618 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!619 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!620 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!621 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!622 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!623 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!624 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!625 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!626 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!627 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!628 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!629 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!630 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!631 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!632 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!633 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!634 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!635 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!651 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!652 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!653 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!654 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!655 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!656 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!657 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!658 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!659 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!660 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!661 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!662 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!663 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!664 = !DIEnumerator(name: "THOUSEP", value: 65537)
!665 = !DIEnumerator(name: "__GROUPING", value: 65538)
!666 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!667 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!668 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!669 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!670 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!671 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!672 = !DIEnumerator(name: "__YESSTR", value: 327682)
!673 = !DIEnumerator(name: "__NOSTR", value: 327683)
!674 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!675 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!676 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!677 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!678 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!679 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!680 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!681 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!682 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!685 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!686 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!687 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!688 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!689 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!690 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!691 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!695 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!696 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!697 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!698 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!699 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!700 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!701 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!702 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!703 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!704 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!706 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!707 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!708 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!709 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!710 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!726 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!727 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!728 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!729 = !{!60, !58, !71}
!730 = !{!386}
!731 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!732 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!733 = distinct !DICompileUnit(language: DW_LANG_C99, file: !734, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !735)
!734 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!735 = !{!48}
!736 = distinct !DICompileUnit(language: DW_LANG_C99, file: !737, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254)
!737 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!738 = distinct !DICompileUnit(language: DW_LANG_C99, file: !739, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254)
!739 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!740 = distinct !DICompileUnit(language: DW_LANG_C99, file: !741, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !742, retainedTypes: !747)
!741 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!742 = !{!743}
!743 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !744, line: 41, size: 32, elements: !745)
!744 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!745 = !{!746}
!746 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!747 = !{!60}
!748 = distinct !DICompileUnit(language: DW_LANG_C99, file: !749, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !750, retainedTypes: !764)
!749 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = !{!751}
!751 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !753, file: !752, line: 192, size: 32, elements: !762)
!752 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = distinct !DISubprogram(name: "x2nrealloc", scope: !752, file: !752, line: 180, type: !754, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !757)
!754 = !DISubroutineType(types: !755)
!755 = !{!60, !60, !756, !61}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!757 = !{!758, !759, !760, !761}
!758 = !DILocalVariable(name: "p", arg: 1, scope: !753, file: !752, line: 180, type: !60)
!759 = !DILocalVariable(name: "pn", arg: 2, scope: !753, file: !752, line: 180, type: !756)
!760 = !DILocalVariable(name: "s", arg: 3, scope: !753, file: !752, line: 180, type: !61)
!761 = !DILocalVariable(name: "n", scope: !753, file: !752, line: 182, type: !61)
!762 = !{!763}
!763 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!764 = !{!61, !58, !60}
!765 = distinct !DICompileUnit(language: DW_LANG_C99, file: !766, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254)
!766 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!767 = distinct !DICompileUnit(language: DW_LANG_C99, file: !768, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !747)
!768 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!769 = distinct !DICompileUnit(language: DW_LANG_C99, file: !770, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254)
!770 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !772, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !747)
!772 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !774, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !747)
!774 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!775 = distinct !DICompileUnit(language: DW_LANG_C99, file: !776, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !777)
!776 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!777 = !{!61}
!778 = distinct !DICompileUnit(language: DW_LANG_C99, file: !779, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254)
!779 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!780 = distinct !DICompileUnit(language: DW_LANG_C99, file: !781, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !782)
!781 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!782 = !{!61, !63, !65, !68}
!783 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!784 = !{i32 2, !"Dwarf Version", i32 4}
!785 = !{i32 2, !"Debug Info Version", i32 3}
!786 = !{i32 1, !"PIC Level", i32 2}
!787 = !{i32 1, !"PIE Level", i32 2}
!788 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !789, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !70}
!791 = !{!792}
!792 = !DILocalVariable(name: "status", arg: 1, scope: !788, file: !3, line: 223, type: !70)
!793 = !DIExpression()
!794 = !DILocation(line: 223, column: 12, scope: !788)
!795 = !DILocation(line: 225, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !788, file: !3, line: 225, column: 7)
!797 = !DILocation(line: 225, column: 7, scope: !788)
!798 = !DILocation(line: 226, column: 5, scope: !799)
!799 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 1)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 226, column: 5)
!801 = !{!802, !802, i64 0}
!802 = !{!"any pointer", !803, i64 0}
!803 = !{!"omnipotent char", !804, i64 0}
!804 = !{!"Simple C/C++ TBAA"}
!805 = !DILocation(line: 226, column: 5, scope: !806)
!806 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 3)
!807 = !DILocation(line: 226, column: 5, scope: !808)
!808 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 2)
!809 = !DILocation(line: 229, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !796, file: !3, line: 228, column: 5)
!811 = !DILocation(line: 229, column: 7, scope: !812)
!812 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 1)
!813 = !DILocation(line: 580, column: 3, scope: !814, inlinedAt: !817)
!814 = distinct !DISubprogram(name: "emit_stdin_note", scope: !35, file: !35, line: 578, type: !815, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !254)
!815 = !DISubroutineType(types: !816)
!816 = !{null}
!817 = distinct !DILocation(line: 237, column: 7, scope: !810)
!818 = !DILocation(line: 580, column: 3, scope: !819, inlinedAt: !817)
!819 = !DILexicalBlockFile(scope: !814, file: !35, discriminator: 1)
!820 = !DILocation(line: 244, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !810, file: !3, line: 238, column: 11)
!822 = !DILocation(line: 244, column: 9, scope: !823)
!823 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 1)
!824 = !DILocation(line: 249, column: 7, scope: !810)
!825 = !DILocation(line: 249, column: 7, scope: !812)
!826 = !DILocation(line: 258, column: 7, scope: !810)
!827 = !DILocation(line: 258, column: 7, scope: !812)
!828 = !DILocation(line: 266, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !810, file: !3, line: 261, column: 11)
!830 = !DILocation(line: 266, column: 9, scope: !831)
!831 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 1)
!832 = !DILocation(line: 269, column: 7, scope: !810)
!833 = !DILocation(line: 269, column: 7, scope: !812)
!834 = !DILocation(line: 279, column: 7, scope: !810)
!835 = !DILocation(line: 279, column: 7, scope: !812)
!836 = !DILocation(line: 280, column: 7, scope: !810)
!837 = !DILocation(line: 280, column: 7, scope: !812)
!838 = !DILocation(line: 281, column: 7, scope: !810)
!839 = !DILocation(line: 281, column: 7, scope: !812)
!840 = !DILocation(line: 642, column: 15, scope: !83, inlinedAt: !841)
!841 = distinct !DILocation(line: 288, column: 7, scope: !810)
!842 = !DILocation(line: 651, column: 3, scope: !83, inlinedAt: !841)
!843 = !DILocation(line: 651, column: 3, scope: !844, inlinedAt: !841)
!844 = !DILexicalBlockFile(scope: !83, file: !35, discriminator: 1)
!845 = !DILocation(line: 655, column: 29, scope: !83, inlinedAt: !841)
!846 = !DILocation(line: 655, column: 15, scope: !83, inlinedAt: !841)
!847 = !DILocation(line: 656, column: 7, scope: !102, inlinedAt: !841)
!848 = !DILocation(line: 656, column: 19, scope: !102, inlinedAt: !841)
!849 = !DILocation(line: 656, column: 22, scope: !850, inlinedAt: !841)
!850 = !DILexicalBlockFile(scope: !102, file: !35, discriminator: 16)
!851 = !DILocation(line: 656, column: 7, scope: !852, inlinedAt: !841)
!852 = !DILexicalBlockFile(scope: !83, file: !35, discriminator: 16)
!853 = !DILocation(line: 662, column: 7, scope: !854, inlinedAt: !841)
!854 = distinct !DILexicalBlock(scope: !102, file: !35, line: 657, column: 5)
!855 = !DILocation(line: 662, column: 7, scope: !856, inlinedAt: !841)
!856 = !DILexicalBlockFile(scope: !854, file: !35, discriminator: 1)
!857 = !DILocation(line: 664, column: 5, scope: !854, inlinedAt: !841)
!858 = !DILocation(line: 665, column: 3, scope: !83, inlinedAt: !841)
!859 = !DILocation(line: 665, column: 3, scope: !844, inlinedAt: !841)
!860 = !DILocation(line: 667, column: 3, scope: !83, inlinedAt: !841)
!861 = !DILocation(line: 667, column: 3, scope: !844, inlinedAt: !841)
!862 = !DILocation(line: 291, column: 3, scope: !788)
!863 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 854, type: !864, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !867)
!864 = !DISubroutineType(types: !865)
!865 = !{!70, !70, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !881, !884, !887, !888, !891}
!868 = !DILocalVariable(name: "argc", arg: 1, scope: !863, file: !3, line: 854, type: !70)
!869 = !DILocalVariable(name: "argv", arg: 2, scope: !863, file: !3, line: 854, type: !866)
!870 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !863, file: !3, line: 856, type: !189)
!871 = !DILocalVariable(name: "bin_buffer", scope: !863, file: !3, line: 858, type: !71)
!872 = !DILocalVariable(name: "do_check", scope: !863, file: !3, line: 859, type: !76)
!873 = !DILocalVariable(name: "opt", scope: !863, file: !3, line: 860, type: !70)
!874 = !DILocalVariable(name: "ok", scope: !863, file: !3, line: 861, type: !76)
!875 = !DILocalVariable(name: "binary", scope: !863, file: !3, line: 862, type: !70)
!876 = !DILocalVariable(name: "prefix_tag", scope: !863, file: !3, line: 863, type: !76)
!877 = !DILocalVariable(name: "short_opts", scope: !863, file: !3, line: 882, type: !68)
!878 = !DILocalVariable(name: "operand_lim", scope: !863, file: !3, line: 1021, type: !866)
!879 = !DILocalVariable(name: "operandp", scope: !880, file: !3, line: 1025, type: !866)
!880 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1025, column: 3)
!881 = !DILocalVariable(name: "file", scope: !882, file: !3, line: 1027, type: !58)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1026, column: 5)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1025, column: 3)
!884 = !DILocalVariable(name: "file_is_binary", scope: !885, file: !3, line: 1033, type: !70)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1032, column: 9)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1029, column: 11)
!887 = !DILocalVariable(name: "missing", scope: !885, file: !3, line: 1034, type: !76)
!888 = !DILocalVariable(name: "needs_escape", scope: !889, file: !3, line: 1047, type: !76)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 1039, column: 13)
!890 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1036, column: 15)
!891 = !DILocalVariable(name: "i", scope: !889, file: !3, line: 1066, type: !61)
!892 = !DILocation(line: 653, column: 17, scope: !122, inlinedAt: !893)
!893 = distinct !DILocation(line: 1030, column: 15, scope: !886)
!894 = !DILocation(line: 854, column: 11, scope: !863)
!895 = !DILocation(line: 854, column: 24, scope: !863)
!896 = !DILocation(line: 856, column: 3, scope: !863)
!897 = !DILocation(line: 856, column: 17, scope: !863)
!898 = !DILocalVariable(name: "alignment", arg: 2, scope: !899, file: !35, line: 498, type: !61)
!899 = distinct !DISubprogram(name: "ptr_align", scope: !35, file: !35, line: 498, type: !900, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!60, !63, !61}
!902 = !{!903, !898, !904, !905}
!903 = !DILocalVariable(name: "ptr", arg: 1, scope: !899, file: !35, line: 498, type: !63)
!904 = !DILocalVariable(name: "p0", scope: !899, file: !35, line: 500, type: !68)
!905 = !DILocalVariable(name: "p1", scope: !899, file: !35, line: 501, type: !68)
!906 = !DILocation(line: 498, column: 36, scope: !899, inlinedAt: !907)
!907 = distinct !DILocation(line: 858, column: 31, scope: !863)
!908 = !DILocation(line: 501, column: 35, scope: !899, inlinedAt: !907)
!909 = !DILocation(line: 501, column: 15, scope: !899, inlinedAt: !907)
!910 = !DILocation(line: 502, column: 25, scope: !899, inlinedAt: !907)
!911 = !DILocation(line: 502, column: 37, scope: !899, inlinedAt: !907)
!912 = !DILocation(line: 502, column: 23, scope: !899, inlinedAt: !907)
!913 = !DILocation(line: 858, column: 18, scope: !863)
!914 = !DILocation(line: 859, column: 8, scope: !863)
!915 = !DILocation(line: 861, column: 8, scope: !863)
!916 = !DILocation(line: 862, column: 7, scope: !863)
!917 = !DILocation(line: 863, column: 8, scope: !863)
!918 = !DILocation(line: 867, column: 21, scope: !863)
!919 = !DILocation(line: 867, column: 3, scope: !863)
!920 = !DILocation(line: 868, column: 3, scope: !863)
!921 = !DILocation(line: 869, column: 3, scope: !863)
!922 = !DILocation(line: 870, column: 3, scope: !863)
!923 = !DILocation(line: 872, column: 3, scope: !863)
!924 = !DILocation(line: 876, column: 12, scope: !863)
!925 = !DILocation(line: 876, column: 3, scope: !863)
!926 = !DILocation(line: 885, column: 3, scope: !863)
!927 = !DILocation(line: 885, column: 17, scope: !928)
!928 = !DILexicalBlockFile(scope: !863, file: !3, discriminator: 1)
!929 = !DILocation(line: 860, column: 7, scope: !863)
!930 = !DILocation(line: 885, column: 3, scope: !928)
!931 = !DILocation(line: 905, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !863, file: !3, line: 887, column: 7)
!933 = !DILocation(line: 910, column: 9, scope: !932)
!934 = !DILocation(line: 913, column: 9, scope: !932)
!935 = !DILocation(line: 918, column: 9, scope: !932)
!936 = !DILocation(line: 921, column: 9, scope: !932)
!937 = !DILocation(line: 926, column: 9, scope: !932)
!938 = !DILocation(line: 929, column: 9, scope: !932)
!939 = !DILocation(line: 933, column: 9, scope: !932)
!940 = distinct !{!940, !926, !941}
!941 = !DILocation(line: 938, column: 7, scope: !863)
!942 = !DILocation(line: 934, column: 7, scope: !932)
!943 = !DILocation(line: 935, column: 7, scope: !932)
!944 = !DILocation(line: 935, column: 7, scope: !945)
!945 = !DILexicalBlockFile(scope: !932, file: !3, discriminator: 1)
!946 = !DILocation(line: 937, column: 9, scope: !932)
!947 = !DILocation(line: 957, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !863, file: !3, line: 957, column: 7)
!949 = !DILocation(line: 957, column: 18, scope: !948)
!950 = !DILocation(line: 957, column: 22, scope: !951)
!951 = !DILexicalBlockFile(scope: !948, file: !3, discriminator: 1)
!952 = !DILocation(line: 964, column: 19, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 958, column: 4)
!954 = !DILocation(line: 964, column: 6, scope: !955)
!955 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 1)
!956 = !DILocation(line: 965, column: 6, scope: !953)
!957 = !DILocation(line: 968, column: 21, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !3, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !863, file: !3, line: 968, column: 7)
!960 = !DILocation(line: 968, column: 18, scope: !959)
!961 = !DILocation(line: 970, column: 20, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 969, column: 5)
!963 = !DILocation(line: 970, column: 7, scope: !964)
!964 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 1)
!965 = !DILocation(line: 972, column: 7, scope: !962)
!966 = !DILocation(line: 975, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !863, file: !3, line: 975, column: 7)
!968 = !DILocation(line: 975, column: 19, scope: !967)
!969 = !DILocation(line: 977, column: 20, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 976, column: 5)
!971 = !DILocation(line: 977, column: 7, scope: !972)
!972 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!973 = !DILocation(line: 979, column: 7, scope: !970)
!974 = !DILocation(line: 982, column: 22, scope: !975)
!975 = distinct !DILexicalBlock(scope: !863, file: !3, line: 982, column: 7)
!976 = !DILocation(line: 985, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !3, line: 983, column: 5)
!978 = !DILocation(line: 984, column: 7, scope: !977)
!979 = !DILocation(line: 987, column: 7, scope: !977)
!980 = !DILocation(line: 990, column: 19, scope: !981)
!981 = distinct !DILexicalBlock(scope: !863, file: !3, line: 990, column: 7)
!982 = !DILocation(line: 993, column: 8, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !3, line: 991, column: 5)
!984 = !DILocation(line: 992, column: 7, scope: !983)
!985 = !DILocation(line: 994, column: 7, scope: !983)
!986 = !DILocation(line: 997, column: 12, scope: !987)
!987 = distinct !DILexicalBlock(scope: !863, file: !3, line: 997, column: 7)
!988 = !DILocation(line: 1000, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !3, line: 998, column: 5)
!990 = !DILocation(line: 999, column: 7, scope: !989)
!991 = !DILocation(line: 1001, column: 7, scope: !989)
!992 = !DILocation(line: 1004, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1004, column: 7)
!994 = !DILocation(line: 1007, column: 8, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1005, column: 5)
!996 = !DILocation(line: 1006, column: 7, scope: !995)
!997 = !DILocation(line: 1008, column: 7, scope: !995)
!998 = !DILocation(line: 1011, column: 17, scope: !999)
!999 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1011, column: 7)
!1000 = !DILocation(line: 1011, column: 16, scope: !999)
!1001 = !DILocation(line: 1011, column: 14, scope: !999)
!1002 = !DILocation(line: 1011, column: 7, scope: !863)
!1003 = !DILocation(line: 1014, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1012, column: 4)
!1005 = !DILocation(line: 1013, column: 6, scope: !1004)
!1006 = !DILocation(line: 1015, column: 6, scope: !1004)
!1007 = !DILocation(line: 1018, column: 7, scope: !863)
!1008 = !DILocation(line: 1021, column: 29, scope: !863)
!1009 = !DILocation(line: 1021, column: 10, scope: !863)
!1010 = !DILocation(line: 1022, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1022, column: 7)
!1012 = !{!1013, !1013, i64 0}
!1013 = !{!"int", !803, i64 0}
!1014 = !DILocation(line: 1022, column: 14, scope: !1011)
!1015 = !DILocation(line: 1022, column: 7, scope: !863)
!1016 = !DILocation(line: 1023, column: 17, scope: !1011)
!1017 = !DILocation(line: 1023, column: 20, scope: !1011)
!1018 = !DILocation(line: 1023, column: 5, scope: !1011)
!1019 = !DILocation(line: 1025, column: 31, scope: !880)
!1020 = !DILocation(line: 1025, column: 15, scope: !880)
!1021 = !DILocation(line: 1025, column: 50, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !883, file: !3, discriminator: 1)
!1023 = !DILocation(line: 1025, column: 3, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !880, file: !3, discriminator: 1)
!1025 = !DILocation(line: 1090, column: 23, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1090, column: 7)
!1027 = !DILocation(line: 1027, column: 20, scope: !882)
!1028 = !DILocation(line: 1027, column: 13, scope: !882)
!1029 = !DILocation(line: 1029, column: 11, scope: !882)
!1030 = !DILocation(line: 644, column: 27, scope: !122, inlinedAt: !893)
!1031 = !DILocation(line: 647, column: 13, scope: !122, inlinedAt: !893)
!1032 = !DILocation(line: 648, column: 13, scope: !122, inlinedAt: !893)
!1033 = !DILocation(line: 649, column: 13, scope: !122, inlinedAt: !893)
!1034 = !DILocation(line: 650, column: 13, scope: !122, inlinedAt: !893)
!1035 = !DILocation(line: 651, column: 8, scope: !122, inlinedAt: !893)
!1036 = !DILocation(line: 652, column: 8, scope: !122, inlinedAt: !893)
!1037 = !DILocation(line: 653, column: 3, scope: !122, inlinedAt: !893)
!1038 = !DILocation(line: 498, column: 36, scope: !899, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 655, column: 31, scope: !122, inlinedAt: !893)
!1040 = !DILocation(line: 501, column: 15, scope: !899, inlinedAt: !1039)
!1041 = !DILocation(line: 655, column: 18, scope: !122, inlinedAt: !893)
!1042 = !DILocation(line: 657, column: 3, scope: !122, inlinedAt: !893)
!1043 = !DILocation(line: 658, column: 3, scope: !122, inlinedAt: !893)
!1044 = !DILocation(line: 659, column: 19, scope: !196, inlinedAt: !893)
!1045 = !DILocation(line: 659, column: 19, scope: !199, inlinedAt: !893)
!1046 = !DILocation(line: 659, column: 19, scope: !1047, inlinedAt: !893)
!1047 = !DILexicalBlockFile(scope: !199, file: !3, discriminator: 2)
!1048 = !{!803, !803, i64 0}
!1049 = !DILocation(line: 659, column: 19, scope: !1050, inlinedAt: !893)
!1050 = !DILexicalBlockFile(scope: !1051, file: !3, discriminator: 3)
!1051 = distinct !DILexicalBlock(scope: !199, file: !3, line: 659, column: 19)
!1052 = !DILocation(line: 659, column: 19, scope: !1053, inlinedAt: !893)
!1053 = !DILexicalBlockFile(scope: !1051, file: !3, discriminator: 2)
!1054 = !DILocation(line: 659, column: 19, scope: !1055, inlinedAt: !893)
!1055 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 4)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 659, column: 19)
!1057 = !DILocation(line: 659, column: 19, scope: !1058, inlinedAt: !893)
!1058 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 13)
!1059 = !DILocation(line: 661, column: 7, scope: !122, inlinedAt: !893)
!1060 = !DILocation(line: 664, column: 24, scope: !1061, inlinedAt: !893)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 662, column: 5)
!1062 = distinct !DILexicalBlock(scope: !122, file: !3, line: 661, column: 7)
!1063 = !DILocation(line: 665, column: 26, scope: !1061, inlinedAt: !893)
!1064 = !DILocation(line: 646, column: 9, scope: !122, inlinedAt: !893)
!1065 = !DILocation(line: 666, column: 5, scope: !1061, inlinedAt: !893)
!1066 = !DILocation(line: 669, column: 26, scope: !1067, inlinedAt: !893)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 668, column: 5)
!1068 = !DILocation(line: 670, column: 28, scope: !1069, inlinedAt: !893)
!1069 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 670, column: 11)
!1070 = !DILocation(line: 670, column: 11, scope: !1067, inlinedAt: !893)
!1071 = !DILocation(line: 672, column: 21, scope: !1072, inlinedAt: !893)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 671, column: 9)
!1073 = !DILocation(line: 672, column: 34, scope: !1074, inlinedAt: !893)
!1074 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 1)
!1075 = !DILocation(line: 672, column: 11, scope: !1076, inlinedAt: !893)
!1076 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 2)
!1077 = !DILocation(line: 673, column: 11, scope: !1072, inlinedAt: !893)
!1078 = !DILocation(line: 656, column: 13, scope: !122, inlinedAt: !893)
!1079 = !DILocation(line: 657, column: 9, scope: !122, inlinedAt: !893)
!1080 = !DILocation(line: 678, column: 8, scope: !122, inlinedAt: !893)
!1081 = !DILocation(line: 658, column: 10, scope: !122, inlinedAt: !893)
!1082 = !DILocation(line: 679, column: 24, scope: !122, inlinedAt: !893)
!1083 = !{!1084, !1084, i64 0}
!1084 = !{!"long", !803, i64 0}
!1085 = !DILocation(line: 680, column: 3, scope: !122, inlinedAt: !893)
!1086 = distinct !{!1086, !1087, !1088}
!1087 = !DILocation(line: 680, column: 3, scope: !122)
!1088 = !DILocation(line: 790, column: 64, scope: !122)
!1089 = !DILocation(line: 687, column: 7, scope: !202, inlinedAt: !893)
!1090 = !DILocation(line: 688, column: 23, scope: !1091, inlinedAt: !893)
!1091 = distinct !DILexicalBlock(scope: !202, file: !3, line: 688, column: 11)
!1092 = !DILocation(line: 688, column: 11, scope: !202, inlinedAt: !893)
!1093 = !DILocation(line: 689, column: 9, scope: !1091, inlinedAt: !893)
!1094 = !DILocation(line: 689, column: 9, scope: !1095, inlinedAt: !893)
!1095 = !DILexicalBlockFile(scope: !1091, file: !3, discriminator: 1)
!1096 = !DILocation(line: 689, column: 9, scope: !1097, inlinedAt: !893)
!1097 = !DILexicalBlockFile(scope: !1091, file: !3, discriminator: 2)
!1098 = !DIExpression(DW_OP_deref)
!1099 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1100, file: !1101, line: 115, type: !866)
!1100 = distinct !DISubprogram(name: "getline", scope: !1101, file: !1101, line: 115, type: !1102, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1104)
!1101 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!208, !866, !756, !128}
!1104 = !{!1099, !1105, !1106}
!1105 = !DILocalVariable(name: "__n", arg: 2, scope: !1100, file: !1101, line: 115, type: !756)
!1106 = !DILocalVariable(name: "__stream", arg: 3, scope: !1100, file: !1101, line: 115, type: !128)
!1107 = !DILocation(line: 115, column: 17, scope: !1100, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 692, column: 21, scope: !202, inlinedAt: !893)
!1109 = !DILocation(line: 115, column: 36, scope: !1100, inlinedAt: !1108)
!1110 = !DILocation(line: 115, column: 47, scope: !1100, inlinedAt: !1108)
!1111 = !DILocation(line: 117, column: 10, scope: !1100, inlinedAt: !1108)
!1112 = !DILocation(line: 685, column: 15, scope: !202, inlinedAt: !893)
!1113 = !DILocation(line: 693, column: 23, scope: !1114, inlinedAt: !893)
!1114 = distinct !DILexicalBlock(scope: !202, file: !3, line: 693, column: 11)
!1115 = !DILocation(line: 693, column: 11, scope: !202, inlinedAt: !893)
!1116 = !DILocation(line: 697, column: 11, scope: !1117, inlinedAt: !893)
!1117 = distinct !DILexicalBlock(scope: !202, file: !3, line: 697, column: 11)
!1118 = !DILocation(line: 697, column: 19, scope: !1117, inlinedAt: !893)
!1119 = !DILocation(line: 697, column: 11, scope: !202, inlinedAt: !893)
!1120 = !DILocation(line: 701, column: 28, scope: !1121, inlinedAt: !893)
!1121 = distinct !DILexicalBlock(scope: !202, file: !3, line: 701, column: 11)
!1122 = !DILocation(line: 701, column: 11, scope: !1121, inlinedAt: !893)
!1123 = !DILocation(line: 701, column: 33, scope: !1121, inlinedAt: !893)
!1124 = !DILocation(line: 701, column: 11, scope: !202, inlinedAt: !893)
!1125 = !DILocation(line: 702, column: 29, scope: !1121, inlinedAt: !893)
!1126 = !DILocation(line: 702, column: 9, scope: !1121, inlinedAt: !893)
!1127 = !DILocation(line: 704, column: 23, scope: !211, inlinedAt: !893)
!1128 = !DILocalVariable(name: "s", arg: 1, scope: !1129, file: !3, line: 397, type: !58)
!1129 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 397, type: !1130, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1133)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!76, !58, !61, !1132, !246, !866}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1133 = !{!1128, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DILocalVariable(name: "s_len", arg: 2, scope: !1129, file: !3, line: 397, type: !61)
!1135 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1129, file: !3, line: 398, type: !1132)
!1136 = !DILocalVariable(name: "binary", arg: 4, scope: !1129, file: !3, line: 398, type: !246)
!1137 = !DILocalVariable(name: "file_name", arg: 5, scope: !1129, file: !3, line: 398, type: !866)
!1138 = !DILocalVariable(name: "escaped_filename", scope: !1129, file: !3, line: 400, type: !76)
!1139 = !DILocalVariable(name: "algo_name_len", scope: !1129, file: !3, line: 401, type: !61)
!1140 = !DILocalVariable(name: "i", scope: !1129, file: !3, line: 403, type: !61)
!1141 = !DILocation(line: 397, column: 16, scope: !1129, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 704, column: 14, scope: !211, inlinedAt: !893)
!1143 = !DILocation(line: 397, column: 26, scope: !1129, inlinedAt: !1142)
!1144 = !DILocation(line: 400, column: 8, scope: !1129, inlinedAt: !1142)
!1145 = !DILocation(line: 403, column: 10, scope: !1129, inlinedAt: !1142)
!1146 = !DILocation(line: 404, column: 3, scope: !1129, inlinedAt: !1142)
!1147 = !DILocation(line: 404, column: 10, scope: !1148, inlinedAt: !1142)
!1148 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 1)
!1149 = !DILocation(line: 405, column: 5, scope: !1129, inlinedAt: !1142)
!1150 = !DILocation(line: 404, column: 3, scope: !1151, inlinedAt: !1142)
!1151 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 4)
!1152 = distinct !{!1152, !1153, !1154}
!1153 = !DILocation(line: 404, column: 3, scope: !1129)
!1154 = !DILocation(line: 405, column: 7, scope: !1129)
!1155 = !DILocation(line: 409, column: 7, scope: !1156, inlinedAt: !1142)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 408, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 407, column: 7)
!1158 = !DILocation(line: 411, column: 5, scope: !1156, inlinedAt: !1142)
!1159 = !DILocation(line: 401, column: 10, scope: !1129, inlinedAt: !1142)
!1160 = !DILocation(line: 416, column: 7, scope: !1161, inlinedAt: !1142)
!1161 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 416, column: 7)
!1162 = !DILocation(line: 416, column: 7, scope: !1129, inlinedAt: !1142)
!1163 = !DILocation(line: 418, column: 9, scope: !1164, inlinedAt: !1142)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 417, column: 5)
!1165 = !DILocation(line: 453, column: 11, scope: !1166, inlinedAt: !1142)
!1166 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 453, column: 11)
!1167 = !DILocation(line: 453, column: 16, scope: !1166, inlinedAt: !1142)
!1168 = !DILocation(line: 454, column: 9, scope: !1166, inlinedAt: !1142)
!1169 = !DILocation(line: 453, column: 11, scope: !1164, inlinedAt: !1142)
!1170 = !DILocation(line: 455, column: 11, scope: !1171, inlinedAt: !1142)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 455, column: 11)
!1172 = !DILocation(line: 455, column: 16, scope: !1171, inlinedAt: !1142)
!1173 = !DILocation(line: 455, column: 11, scope: !1164, inlinedAt: !1142)
!1174 = !DILocation(line: 457, column: 11, scope: !1175, inlinedAt: !1142)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 456, column: 9)
!1176 = !DILocation(line: 459, column: 33, scope: !1175, inlinedAt: !1142)
!1177 = !DILocation(line: 459, column: 44, scope: !1175, inlinedAt: !1142)
!1178 = !DILocalVariable(name: "s", arg: 1, scope: !1179, file: !3, line: 354, type: !58)
!1179 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 354, type: !1180, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!76, !58, !61, !1132, !866, !76}
!1182 = !{!1178, !1183, !1184, !1185, !1186, !1187}
!1183 = !DILocalVariable(name: "s_len", arg: 2, scope: !1179, file: !3, line: 354, type: !61)
!1184 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1179, file: !3, line: 354, type: !1132)
!1185 = !DILocalVariable(name: "file_name", arg: 4, scope: !1179, file: !3, line: 355, type: !866)
!1186 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1179, file: !3, line: 355, type: !76)
!1187 = !DILocalVariable(name: "i", scope: !1179, file: !3, line: 357, type: !61)
!1188 = !DILocation(line: 354, column: 20, scope: !1179, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 459, column: 18, scope: !1175, inlinedAt: !1142)
!1190 = !DILocation(line: 354, column: 30, scope: !1179, inlinedAt: !1189)
!1191 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1192 = !DILocation(line: 355, column: 37, scope: !1179, inlinedAt: !1189)
!1193 = !DILocation(line: 359, column: 13, scope: !1194, inlinedAt: !1189)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 359, column: 7)
!1195 = !DILocation(line: 359, column: 7, scope: !1179, inlinedAt: !1189)
!1196 = !DILocation(line: 357, column: 10, scope: !1179, inlinedAt: !1189)
!1197 = !DILocation(line: 364, column: 10, scope: !1198, inlinedAt: !1189)
!1198 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 1)
!1199 = !DILocation(line: 364, column: 12, scope: !1198, inlinedAt: !1189)
!1200 = !DILocation(line: 364, column: 15, scope: !1201, inlinedAt: !1189)
!1201 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 2)
!1202 = !DILocation(line: 364, column: 20, scope: !1201, inlinedAt: !1189)
!1203 = !DILocation(line: 364, column: 3, scope: !1204, inlinedAt: !1189)
!1204 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 3)
!1205 = distinct !{!1205, !1206, !1207}
!1206 = !DILocation(line: 364, column: 3, scope: !1179)
!1207 = !DILocation(line: 365, column: 6, scope: !1179)
!1208 = !DILocation(line: 367, column: 7, scope: !1179, inlinedAt: !1189)
!1209 = !DILocation(line: 372, column: 24, scope: !1210, inlinedAt: !1189)
!1210 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 372, column: 7)
!1211 = !DILocalVariable(name: "s", arg: 1, scope: !1212, file: !3, line: 305, type: !58)
!1212 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 305, type: !1213, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!58, !58, !61}
!1215 = !{!1211, !1216, !1217, !1218}
!1216 = !DILocalVariable(name: "s_len", arg: 2, scope: !1212, file: !3, line: 305, type: !61)
!1217 = !DILocalVariable(name: "dst", scope: !1212, file: !3, line: 307, type: !58)
!1218 = !DILocalVariable(name: "i", scope: !1219, file: !3, line: 309, type: !61)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 309, column: 3)
!1220 = !DILocation(line: 305, column: 26, scope: !1212, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 372, column: 27, scope: !1222, inlinedAt: !1189)
!1222 = !DILexicalBlockFile(scope: !1210, file: !3, discriminator: 1)
!1223 = !DILocation(line: 305, column: 36, scope: !1212, inlinedAt: !1221)
!1224 = !DILocation(line: 307, column: 9, scope: !1212, inlinedAt: !1221)
!1225 = !DILocation(line: 309, column: 15, scope: !1219, inlinedAt: !1221)
!1226 = !DILocation(line: 309, column: 3, scope: !1227, inlinedAt: !1221)
!1227 = !DILexicalBlockFile(scope: !1219, file: !3, discriminator: 1)
!1228 = !DILocation(line: 311, column: 15, scope: !1229, inlinedAt: !1221)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 310, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 309, column: 3)
!1231 = !DILocation(line: 311, column: 7, scope: !1229, inlinedAt: !1221)
!1232 = !DILocation(line: 314, column: 17, scope: !1233, inlinedAt: !1221)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 314, column: 15)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 312, column: 9)
!1235 = !DILocation(line: 314, column: 15, scope: !1234, inlinedAt: !1221)
!1236 = !DILocation(line: 319, column: 11, scope: !1234, inlinedAt: !1221)
!1237 = !DILocation(line: 320, column: 19, scope: !1234, inlinedAt: !1221)
!1238 = !DILocation(line: 320, column: 11, scope: !1234, inlinedAt: !1221)
!1239 = !DILocation(line: 324, column: 15, scope: !1240, inlinedAt: !1221)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 321, column: 13)
!1241 = !DILocation(line: 309, column: 34, scope: !1242, inlinedAt: !1221)
!1242 = !DILexicalBlockFile(scope: !1230, file: !3, discriminator: 3)
!1243 = !DILocation(line: 309, column: 24, scope: !1244, inlinedAt: !1221)
!1244 = !DILexicalBlockFile(scope: !1230, file: !3, discriminator: 1)
!1245 = distinct !{!1245, !1246, !1247}
!1246 = !DILocation(line: 309, column: 3, scope: !1219)
!1247 = !DILocation(line: 342, column: 5, scope: !1219)
!1248 = !DILocation(line: 343, column: 11, scope: !1249, inlinedAt: !1221)
!1249 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 343, column: 7)
!1250 = !DILocation(line: 343, column: 7, scope: !1212, inlinedAt: !1221)
!1251 = !DILocation(line: 344, column: 10, scope: !1249, inlinedAt: !1221)
!1252 = !DILocation(line: 344, column: 5, scope: !1249, inlinedAt: !1221)
!1253 = !DILocation(line: 375, column: 10, scope: !1179, inlinedAt: !1189)
!1254 = !DILocation(line: 377, column: 3, scope: !1179, inlinedAt: !1189)
!1255 = !DILocation(line: 377, column: 10, scope: !1198, inlinedAt: !1189)
!1256 = !DILocation(line: 378, column: 6, scope: !1179, inlinedAt: !1189)
!1257 = !DILocation(line: 377, column: 3, scope: !1258, inlinedAt: !1189)
!1258 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 4)
!1259 = distinct !{!1259, !1260, !1261}
!1260 = !DILocation(line: 377, column: 3, scope: !1179)
!1261 = !DILocation(line: 378, column: 6, scope: !1179)
!1262 = !DILocation(line: 385, column: 10, scope: !1198, inlinedAt: !1189)
!1263 = distinct !{!1263, !1264, !1265}
!1264 = !DILocation(line: 385, column: 3, scope: !1179)
!1265 = !DILocation(line: 386, column: 6, scope: !1179)
!1266 = !DILocation(line: 469, column: 13, scope: !1267, inlinedAt: !1142)
!1267 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 469, column: 7)
!1268 = !DILocation(line: 469, column: 45, scope: !1267, inlinedAt: !1142)
!1269 = !DILocation(line: 469, column: 50, scope: !1267, inlinedAt: !1142)
!1270 = !DILocation(line: 469, column: 44, scope: !1267, inlinedAt: !1142)
!1271 = !DILocation(line: 469, column: 42, scope: !1267, inlinedAt: !1142)
!1272 = !DILocation(line: 469, column: 17, scope: !1267, inlinedAt: !1142)
!1273 = !DILocation(line: 469, column: 7, scope: !1129, inlinedAt: !1142)
!1274 = !DILocation(line: 489, column: 5, scope: !1129, inlinedAt: !1142)
!1275 = !DILocation(line: 490, column: 8, scope: !1276, inlinedAt: !1142)
!1276 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 490, column: 7)
!1277 = !DILocation(line: 493, column: 6, scope: !1129, inlinedAt: !1142)
!1278 = !DILocation(line: 493, column: 10, scope: !1129, inlinedAt: !1142)
!1279 = !DILocation(line: 496, column: 14, scope: !1280, inlinedAt: !1142)
!1280 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 496, column: 7)
!1281 = !DILocation(line: 496, column: 18, scope: !1280, inlinedAt: !1142)
!1282 = !DILocation(line: 496, column: 24, scope: !1280, inlinedAt: !1142)
!1283 = !DILocation(line: 496, column: 28, scope: !1284, inlinedAt: !1142)
!1284 = !DILexicalBlockFile(scope: !1280, file: !3, discriminator: 1)
!1285 = !DILocation(line: 496, column: 40, scope: !1284, inlinedAt: !1142)
!1286 = !DILocation(line: 504, column: 11, scope: !1287, inlinedAt: !1142)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 504, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 497, column: 5)
!1289 = !DILocation(line: 504, column: 24, scope: !1287, inlinedAt: !1142)
!1290 = !DILocation(line: 504, column: 11, scope: !1288, inlinedAt: !1142)
!1291 = !DILocation(line: 506, column: 20, scope: !1288, inlinedAt: !1142)
!1292 = !DILocation(line: 507, column: 5, scope: !1288, inlinedAt: !1142)
!1293 = !DILocation(line: 508, column: 12, scope: !1294, inlinedAt: !1142)
!1294 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 508, column: 12)
!1295 = !DILocation(line: 508, column: 25, scope: !1294, inlinedAt: !1142)
!1296 = !DILocation(line: 508, column: 12, scope: !1280, inlinedAt: !1142)
!1297 = !DILocation(line: 510, column: 20, scope: !1298, inlinedAt: !1142)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 509, column: 5)
!1299 = !DILocation(line: 511, column: 21, scope: !1298, inlinedAt: !1142)
!1300 = !DILocation(line: 512, column: 5, scope: !1298, inlinedAt: !1142)
!1301 = !DILocation(line: 516, column: 17, scope: !1129, inlinedAt: !1142)
!1302 = !DILocation(line: 518, column: 7, scope: !1129, inlinedAt: !1142)
!1303 = !DILocation(line: 519, column: 44, scope: !1304, inlinedAt: !1142)
!1304 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 518, column: 7)
!1305 = !DILocation(line: 305, column: 26, scope: !1212, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 519, column: 12, scope: !1304, inlinedAt: !1142)
!1307 = !DILocation(line: 305, column: 36, scope: !1212, inlinedAt: !1306)
!1308 = !DILocation(line: 307, column: 9, scope: !1212, inlinedAt: !1306)
!1309 = !DILocation(line: 309, column: 15, scope: !1219, inlinedAt: !1306)
!1310 = !DILocation(line: 309, column: 24, scope: !1244, inlinedAt: !1306)
!1311 = !DILocation(line: 309, column: 3, scope: !1227, inlinedAt: !1306)
!1312 = !DILocation(line: 311, column: 15, scope: !1229, inlinedAt: !1306)
!1313 = !DILocation(line: 311, column: 7, scope: !1229, inlinedAt: !1306)
!1314 = !DILocation(line: 314, column: 17, scope: !1233, inlinedAt: !1306)
!1315 = !DILocation(line: 314, column: 15, scope: !1234, inlinedAt: !1306)
!1316 = !DILocation(line: 319, column: 11, scope: !1234, inlinedAt: !1306)
!1317 = !DILocation(line: 320, column: 19, scope: !1234, inlinedAt: !1306)
!1318 = !DILocation(line: 320, column: 11, scope: !1234, inlinedAt: !1306)
!1319 = !DILocation(line: 324, column: 15, scope: !1240, inlinedAt: !1306)
!1320 = !DILocation(line: 309, column: 34, scope: !1242, inlinedAt: !1306)
!1321 = !DILocation(line: 343, column: 15, scope: !1249, inlinedAt: !1306)
!1322 = !DILocation(line: 343, column: 11, scope: !1249, inlinedAt: !1306)
!1323 = !DILocation(line: 343, column: 7, scope: !1212, inlinedAt: !1306)
!1324 = !DILocation(line: 344, column: 10, scope: !1249, inlinedAt: !1306)
!1325 = !DILocation(line: 344, column: 5, scope: !1249, inlinedAt: !1306)
!1326 = !DILocation(line: 519, column: 49, scope: !1304, inlinedAt: !1142)
!1327 = !DILocation(line: 705, column: 14, scope: !211, inlinedAt: !893)
!1328 = !DILocation(line: 705, column: 29, scope: !1329, inlinedAt: !893)
!1329 = !DILexicalBlockFile(scope: !211, file: !3, discriminator: 1)
!1330 = !DILocation(line: 705, column: 32, scope: !210, inlinedAt: !893)
!1331 = !DILocation(line: 682, column: 13, scope: !202, inlinedAt: !893)
!1332 = !DILocation(line: 705, column: 32, scope: !214, inlinedAt: !893)
!1333 = !DILocation(line: 705, column: 32, scope: !1334, inlinedAt: !893)
!1334 = !DILexicalBlockFile(scope: !214, file: !3, discriminator: 4)
!1335 = !DILocation(line: 705, column: 32, scope: !1336, inlinedAt: !893)
!1336 = !DILexicalBlockFile(scope: !1337, file: !3, discriminator: 5)
!1337 = distinct !DILexicalBlock(scope: !214, file: !3, line: 705, column: 32)
!1338 = !DILocation(line: 705, column: 32, scope: !1339, inlinedAt: !893)
!1339 = !DILexicalBlockFile(scope: !1337, file: !3, discriminator: 4)
!1340 = !DILocation(line: 705, column: 32, scope: !1341, inlinedAt: !893)
!1341 = !DILexicalBlockFile(scope: !1342, file: !3, discriminator: 6)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 705, column: 32)
!1343 = !DILocation(line: 705, column: 32, scope: !1344, inlinedAt: !893)
!1344 = !DILexicalBlockFile(scope: !211, file: !3, discriminator: 15)
!1345 = !DILocation(line: 706, column: 14, scope: !211, inlinedAt: !893)
!1346 = !DILocation(line: 684, column: 22, scope: !202, inlinedAt: !893)
!1347 = !DILocalVariable(name: "s", arg: 1, scope: !1348, file: !3, line: 527, type: !65)
!1348 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 527, type: !1349, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!76, !65}
!1351 = !{!1347, !1352}
!1352 = !DILocalVariable(name: "i", scope: !1348, file: !3, line: 529, type: !315)
!1353 = !DILocation(line: 527, column: 34, scope: !1348, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 706, column: 17, scope: !1329, inlinedAt: !893)
!1355 = !DILocation(line: 529, column: 16, scope: !1348, inlinedAt: !1354)
!1356 = !DILocation(line: 530, column: 3, scope: !1357, inlinedAt: !1354)
!1357 = !DILexicalBlockFile(scope: !1358, file: !3, discriminator: 1)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 530, column: 3)
!1359 = !DILocation(line: 532, column: 12, scope: !1360, inlinedAt: !1354)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 532, column: 11)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 531, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 530, column: 3)
!1363 = !{!1364, !1364, i64 0}
!1364 = !{!"short", !803, i64 0}
!1365 = !DILocation(line: 532, column: 11, scope: !1361, inlinedAt: !1354)
!1366 = !DILocation(line: 534, column: 7, scope: !1361, inlinedAt: !1354)
!1367 = !DILocation(line: 536, column: 10, scope: !1348, inlinedAt: !1354)
!1368 = !DILocation(line: 536, column: 13, scope: !1348, inlinedAt: !1354)
!1369 = !DILocation(line: 704, column: 11, scope: !1370, inlinedAt: !893)
!1370 = !DILexicalBlockFile(scope: !202, file: !3, discriminator: 1)
!1371 = !DILocation(line: 708, column: 11, scope: !1372, inlinedAt: !893)
!1372 = distinct !DILexicalBlock(scope: !211, file: !3, line: 707, column: 9)
!1373 = !DILocation(line: 710, column: 15, scope: !1372, inlinedAt: !893)
!1374 = !DILocation(line: 713, column: 22, scope: !1375, inlinedAt: !893)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 711, column: 13)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 710, column: 15)
!1377 = !DILocation(line: 715, column: 22, scope: !1375, inlinedAt: !893)
!1378 = !DILocation(line: 712, column: 15, scope: !1375, inlinedAt: !893)
!1379 = !DILocation(line: 717, column: 13, scope: !1375, inlinedAt: !893)
!1380 = !DILocation(line: 719, column: 11, scope: !1372, inlinedAt: !893)
!1381 = !DILocation(line: 720, column: 9, scope: !1372, inlinedAt: !893)
!1382 = !DILocation(line: 728, column: 16, scope: !217, inlinedAt: !893)
!1383 = !DILocation(line: 728, column: 11, scope: !217, inlinedAt: !893)
!1384 = !DILocation(line: 731, column: 45, scope: !217, inlinedAt: !893)
!1385 = !DILocation(line: 731, column: 48, scope: !1386, inlinedAt: !893)
!1386 = !DILexicalBlockFile(scope: !217, file: !3, discriminator: 1)
!1387 = !DILocation(line: 731, column: 45, scope: !1386, inlinedAt: !893)
!1388 = !DILocation(line: 735, column: 16, scope: !217, inlinedAt: !893)
!1389 = !DILocation(line: 737, column: 15, scope: !217, inlinedAt: !893)
!1390 = !DILocation(line: 739, column: 15, scope: !1391, inlinedAt: !893)
!1391 = distinct !DILexicalBlock(scope: !223, file: !3, line: 738, column: 13)
!1392 = !DILocation(line: 740, column: 19, scope: !1391, inlinedAt: !893)
!1393 = !DILocation(line: 742, column: 23, scope: !1394, inlinedAt: !893)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 741, column: 17)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 740, column: 19)
!1396 = !DILocalVariable(name: "__c", arg: 1, scope: !1397, file: !1101, line: 105, type: !70)
!1397 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1101, file: !1101, line: 105, type: !1398, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!70, !70}
!1400 = !{!1396}
!1401 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 743, column: 21, scope: !1403, inlinedAt: !893)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 742, column: 23)
!1404 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1402)
!1405 = !{!1406, !802, i64 40}
!1406 = !{!"_IO_FILE", !1013, i64 0, !802, i64 8, !802, i64 16, !802, i64 24, !802, i64 32, !802, i64 40, !802, i64 48, !802, i64 56, !802, i64 64, !802, i64 72, !802, i64 80, !802, i64 88, !802, i64 96, !802, i64 104, !1013, i64 112, !1013, i64 116, !1084, i64 120, !1364, i64 128, !803, i64 130, !803, i64 131, !802, i64 136, !1084, i64 144, !802, i64 152, !802, i64 160, !802, i64 168, !802, i64 176, !1084, i64 184, !1013, i64 192, !803, i64 196}
!1407 = !{!1406, !802, i64 48}
!1408 = !{!"branch_weights", i32 2000, i32 1}
!1409 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1402)
!1410 = !DILexicalBlockFile(scope: !1397, file: !1101, discriminator: 1)
!1411 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1402)
!1412 = !DILexicalBlockFile(scope: !1397, file: !1101, discriminator: 2)
!1413 = !DILocation(line: 744, column: 19, scope: !1394, inlinedAt: !893)
!1414 = !DILocation(line: 745, column: 19, scope: !1394, inlinedAt: !893)
!1415 = !DILocation(line: 745, column: 19, scope: !1416, inlinedAt: !893)
!1416 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 1)
!1417 = !DILocation(line: 746, column: 17, scope: !1394, inlinedAt: !893)
!1418 = !DILocation(line: 748, column: 35, scope: !222, inlinedAt: !893)
!1419 = !DILocation(line: 748, column: 38, scope: !1420, inlinedAt: !893)
!1420 = !DILexicalBlockFile(scope: !222, file: !3, discriminator: 1)
!1421 = !DILocation(line: 755, column: 58, scope: !221, inlinedAt: !893)
!1422 = !DILocation(line: 755, column: 22, scope: !221, inlinedAt: !893)
!1423 = !DILocation(line: 756, column: 22, scope: !221, inlinedAt: !893)
!1424 = !DILocation(line: 760, column: 15, scope: !1425, inlinedAt: !893)
!1425 = !DILexicalBlockFile(scope: !230, file: !3, discriminator: 1)
!1426 = !DILocation(line: 762, column: 23, scope: !1427, inlinedAt: !893)
!1427 = distinct !DILexicalBlock(scope: !226, file: !3, line: 762, column: 23)
!1428 = !DILocation(line: 762, column: 23, scope: !226, inlinedAt: !893)
!1429 = !DILocation(line: 763, column: 34, scope: !227, inlinedAt: !893)
!1430 = !DILocation(line: 763, column: 50, scope: !227, inlinedAt: !893)
!1431 = !DILocation(line: 763, column: 26, scope: !227, inlinedAt: !893)
!1432 = !DILocation(line: 763, column: 23, scope: !227, inlinedAt: !893)
!1433 = !DILocation(line: 764, column: 23, scope: !227, inlinedAt: !893)
!1434 = !DILocation(line: 764, column: 27, scope: !1435, inlinedAt: !893)
!1435 = !DILexicalBlockFile(scope: !1436, file: !3, discriminator: 1)
!1436 = distinct !DILexicalBlock(scope: !232, file: !3, line: 764, column: 27)
!1437 = !DILocation(line: 764, column: 27, scope: !232, inlinedAt: !893)
!1438 = !DILocation(line: 765, column: 55, scope: !227, inlinedAt: !893)
!1439 = !DILocation(line: 765, column: 31, scope: !227, inlinedAt: !893)
!1440 = !DILocation(line: 765, column: 30, scope: !227, inlinedAt: !893)
!1441 = !DILocation(line: 765, column: 27, scope: !227, inlinedAt: !893)
!1442 = !DILocation(line: 762, column: 23, scope: !1443, inlinedAt: !893)
!1443 = !DILexicalBlockFile(scope: !228, file: !3, discriminator: 1)
!1444 = !DILocation(line: 760, column: 53, scope: !1445, inlinedAt: !893)
!1445 = !DILexicalBlockFile(scope: !229, file: !3, discriminator: 2)
!1446 = !DILocation(line: 760, column: 33, scope: !1447, inlinedAt: !893)
!1447 = !DILexicalBlockFile(scope: !229, file: !3, discriminator: 1)
!1448 = distinct !{!1448, !1449, !1450}
!1449 = !DILocation(line: 760, column: 15, scope: !230)
!1450 = !DILocation(line: 767, column: 17, scope: !230)
!1451 = !DILocation(line: 768, column: 23, scope: !1452, inlinedAt: !893)
!1452 = distinct !DILexicalBlock(scope: !221, file: !3, line: 768, column: 19)
!1453 = !DILocation(line: 769, column: 17, scope: !1452, inlinedAt: !893)
!1454 = !DILocation(line: 768, column: 19, scope: !221, inlinedAt: !893)
!1455 = !DILocation(line: 773, column: 19, scope: !221, inlinedAt: !893)
!1456 = !DILocation(line: 775, column: 47, scope: !1457, inlinedAt: !893)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 775, column: 23)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 774, column: 17)
!1459 = distinct !DILexicalBlock(scope: !221, file: !3, line: 773, column: 19)
!1460 = !DILocation(line: 775, column: 23, scope: !1461, inlinedAt: !893)
!1461 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 1)
!1462 = !DILocation(line: 777, column: 27, scope: !1463, inlinedAt: !893)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 776, column: 21)
!1464 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 778, column: 25, scope: !1466, inlinedAt: !893)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 777, column: 27)
!1467 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1465)
!1468 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1465)
!1469 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1465)
!1470 = !DILocation(line: 779, column: 23, scope: !1463, inlinedAt: !893)
!1471 = !DILocation(line: 782, column: 23, scope: !1458, inlinedAt: !893)
!1472 = !DILocation(line: 783, column: 21, scope: !1473, inlinedAt: !893)
!1473 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 782, column: 23)
!1474 = !DILocation(line: 783, column: 21, scope: !1475, inlinedAt: !893)
!1475 = !DILexicalBlockFile(scope: !1473, file: !3, discriminator: 1)
!1476 = !DILocation(line: 784, column: 28, scope: !1473, inlinedAt: !893)
!1477 = !DILocation(line: 785, column: 21, scope: !1478, inlinedAt: !893)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 784, column: 28)
!1479 = !DILocation(line: 785, column: 21, scope: !1480, inlinedAt: !893)
!1480 = !DILexicalBlockFile(scope: !1478, file: !3, discriminator: 1)
!1481 = !DILocation(line: 788, column: 9, scope: !211, inlinedAt: !893)
!1482 = !DILocalVariable(name: "__stream", arg: 1, scope: !1483, file: !1101, line: 125, type: !128)
!1483 = distinct !DISubprogram(name: "feof_unlocked", scope: !1101, file: !1101, line: 125, type: !1484, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!70, !128}
!1486 = !{!1482}
!1487 = !DILocation(line: 125, column: 1, scope: !1483, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 790, column: 11, scope: !122, inlinedAt: !893)
!1489 = !DILocation(line: 127, column: 10, scope: !1483, inlinedAt: !1488)
!1490 = !{!1406, !1013, i64 0}
!1491 = !DILocation(line: 790, column: 35, scope: !122, inlinedAt: !893)
!1492 = !DILocalVariable(name: "__stream", arg: 1, scope: !1493, file: !1101, line: 132, type: !128)
!1493 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1101, file: !1101, line: 132, type: !1484, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1494)
!1494 = !{!1492}
!1495 = !DILocation(line: 132, column: 1, scope: !1493, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 790, column: 39, scope: !1497, inlinedAt: !893)
!1497 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 1)
!1498 = !DILocation(line: 792, column: 9, scope: !122, inlinedAt: !893)
!1499 = !DILocation(line: 792, column: 3, scope: !122, inlinedAt: !893)
!1500 = !DILocation(line: 132, column: 1, scope: !1493, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 794, column: 7, scope: !1502, inlinedAt: !893)
!1502 = distinct !DILexicalBlock(scope: !122, file: !3, line: 794, column: 7)
!1503 = !DILocation(line: 134, column: 10, scope: !1493, inlinedAt: !1501)
!1504 = !DILocation(line: 794, column: 7, scope: !1502, inlinedAt: !893)
!1505 = !DILocation(line: 794, column: 7, scope: !122, inlinedAt: !893)
!1506 = !DILocation(line: 796, column: 20, scope: !1507, inlinedAt: !893)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 795, column: 5)
!1508 = !DILocation(line: 796, column: 41, scope: !1509, inlinedAt: !893)
!1509 = !DILexicalBlockFile(scope: !1507, file: !3, discriminator: 1)
!1510 = !DILocation(line: 796, column: 7, scope: !1511, inlinedAt: !893)
!1511 = !DILexicalBlockFile(scope: !1507, file: !3, discriminator: 2)
!1512 = !DILocation(line: 797, column: 7, scope: !1507, inlinedAt: !893)
!1513 = !DILocation(line: 800, column: 17, scope: !1514, inlinedAt: !893)
!1514 = distinct !DILexicalBlock(scope: !122, file: !3, line: 800, column: 7)
!1515 = !DILocation(line: 800, column: 20, scope: !1516, inlinedAt: !893)
!1516 = !DILexicalBlockFile(scope: !1514, file: !3, discriminator: 1)
!1517 = !DILocation(line: 800, column: 46, scope: !1516, inlinedAt: !893)
!1518 = !DILocation(line: 800, column: 7, scope: !1497, inlinedAt: !893)
!1519 = !DILocation(line: 802, column: 17, scope: !1520, inlinedAt: !893)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 801, column: 5)
!1521 = !DILocation(line: 802, column: 30, scope: !1522, inlinedAt: !893)
!1522 = !DILexicalBlockFile(scope: !1520, file: !3, discriminator: 1)
!1523 = !DILocation(line: 802, column: 7, scope: !1524, inlinedAt: !893)
!1524 = !DILexicalBlockFile(scope: !1520, file: !3, discriminator: 2)
!1525 = !DILocation(line: 803, column: 7, scope: !1520, inlinedAt: !893)
!1526 = !DILocation(line: 806, column: 9, scope: !1527, inlinedAt: !893)
!1527 = distinct !DILexicalBlock(scope: !122, file: !3, line: 806, column: 7)
!1528 = !DILocation(line: 806, column: 7, scope: !122, inlinedAt: !893)
!1529 = !DILocation(line: 809, column: 20, scope: !1530, inlinedAt: !893)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 807, column: 5)
!1531 = !DILocation(line: 810, column: 14, scope: !1530, inlinedAt: !893)
!1532 = !DILocation(line: 809, column: 7, scope: !1533, inlinedAt: !893)
!1533 = !DILexicalBlockFile(scope: !1530, file: !3, discriminator: 1)
!1534 = !DILocation(line: 847, column: 11, scope: !122, inlinedAt: !893)
!1535 = !DILocation(line: 814, column: 11, scope: !1536, inlinedAt: !893)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 813, column: 5)
!1537 = !DILocation(line: 847, column: 14, scope: !1497, inlinedAt: !893)
!1538 = !DILocation(line: 816, column: 36, scope: !1539, inlinedAt: !893)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 816, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 815, column: 9)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 814, column: 11)
!1542 = !DILocation(line: 816, column: 15, scope: !1540, inlinedAt: !893)
!1543 = !DILocation(line: 818, column: 21, scope: !1544, inlinedAt: !893)
!1544 = !DILexicalBlockFile(scope: !1539, file: !3, discriminator: 1)
!1545 = !DILocation(line: 817, column: 13, scope: !1539, inlinedAt: !893)
!1546 = !DILocation(line: 824, column: 39, scope: !1547, inlinedAt: !893)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 824, column: 15)
!1548 = !DILocation(line: 824, column: 15, scope: !1540, inlinedAt: !893)
!1549 = !DILocation(line: 826, column: 21, scope: !1550, inlinedAt: !893)
!1550 = !DILexicalBlockFile(scope: !1547, file: !3, discriminator: 1)
!1551 = !DILocation(line: 825, column: 13, scope: !1547, inlinedAt: !893)
!1552 = !DILocation(line: 832, column: 38, scope: !1553, inlinedAt: !893)
!1553 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 832, column: 15)
!1554 = !DILocation(line: 832, column: 15, scope: !1540, inlinedAt: !893)
!1555 = !DILocation(line: 834, column: 21, scope: !1556, inlinedAt: !893)
!1556 = !DILexicalBlockFile(scope: !1553, file: !3, discriminator: 1)
!1557 = !DILocation(line: 833, column: 13, scope: !1553, inlinedAt: !893)
!1558 = !DILocation(line: 840, column: 35, scope: !1559, inlinedAt: !893)
!1559 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 1)
!1560 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 840, column: 15)
!1561 = !DILocation(line: 840, column: 30, scope: !1560, inlinedAt: !893)
!1562 = !DILocation(line: 841, column: 26, scope: !1560, inlinedAt: !893)
!1563 = !DILocation(line: 842, column: 20, scope: !1560, inlinedAt: !893)
!1564 = !DILocation(line: 841, column: 13, scope: !1559, inlinedAt: !893)
!1565 = !DILocation(line: 848, column: 11, scope: !122, inlinedAt: !893)
!1566 = !DILocation(line: 850, column: 55, scope: !1567, inlinedAt: !893)
!1567 = !DILexicalBlockFile(scope: !122, file: !3, discriminator: 2)
!1568 = !DILocation(line: 850, column: 23, scope: !1497, inlinedAt: !893)
!1569 = !DILocation(line: 851, column: 1, scope: !122, inlinedAt: !893)
!1570 = !DILocation(line: 1030, column: 15, scope: !886)
!1571 = !DILocation(line: 1030, column: 12, scope: !886)
!1572 = !DILocation(line: 1030, column: 9, scope: !886)
!1573 = !DILocation(line: 1034, column: 16, scope: !885)
!1574 = !DILocation(line: 1034, column: 11, scope: !885)
!1575 = !DILocation(line: 1036, column: 17, scope: !890)
!1576 = !DILocation(line: 1036, column: 15, scope: !885)
!1577 = !DILocation(line: 1047, column: 35, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 2)
!1579 = !DILocation(line: 1047, column: 55, scope: !1578)
!1580 = !DILocation(line: 1047, column: 58, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 3)
!1582 = !DILocation(line: 1047, column: 55, scope: !1581)
!1583 = !DILocation(line: 1049, column: 19, scope: !889)
!1584 = !DILocation(line: 1051, column: 23, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1050, column: 17)
!1586 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1049, column: 19)
!1587 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1052, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1051, column: 23)
!1590 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1588)
!1591 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1588)
!1592 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1588)
!1593 = !DILocation(line: 1059, column: 19, scope: !1585)
!1594 = !DILocation(line: 1061, column: 19, scope: !1585)
!1595 = !DILocation(line: 1062, column: 19, scope: !1585)
!1596 = !DILocation(line: 1063, column: 19, scope: !1585)
!1597 = !DILocation(line: 1070, column: 31, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1070, column: 19)
!1599 = !DILocation(line: 1070, column: 19, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 1)
!1601 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1071, column: 17, scope: !1598)
!1603 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1602)
!1604 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1602)
!1605 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1602)
!1606 = !DILocation(line: 1066, column: 22, scope: !889)
!1607 = !DILocation(line: 1073, column: 15, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !3, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1073, column: 15)
!1610 = !DILocation(line: 1074, column: 17, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1073, column: 15)
!1612 = !DILocation(line: 1073, column: 55, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1611, file: !3, discriminator: 2)
!1614 = !DILocation(line: 1073, column: 49, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1611, file: !3, discriminator: 1)
!1616 = !DILocation(line: 1073, column: 29, scope: !1615)
!1617 = distinct !{!1617, !1618, !1619}
!1618 = !DILocation(line: 1073, column: 15, scope: !1609)
!1619 = !DILocation(line: 1074, column: 17, scope: !1609)
!1620 = !DILocation(line: 1076, column: 19, scope: !889)
!1621 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 1078, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1077, column: 17)
!1624 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1076, column: 19)
!1625 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1622)
!1626 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1622)
!1627 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1622)
!1628 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 1080, column: 19, scope: !1623)
!1630 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1629)
!1631 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1629)
!1632 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1629)
!1633 = !DILocation(line: 1082, column: 19, scope: !1623)
!1634 = !DILocation(line: 1083, column: 17, scope: !1623)
!1635 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 1085, column: 15, scope: !889)
!1637 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1636)
!1638 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1636)
!1639 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1636)
!1640 = !DILocation(line: 1087, column: 9, scope: !886)
!1641 = !DILocation(line: 1025, column: 73, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !883, file: !3, discriminator: 3)
!1643 = distinct !{!1643, !1644, !1645}
!1644 = !DILocation(line: 1025, column: 3, scope: !880)
!1645 = !DILocation(line: 1088, column: 5, scope: !880)
!1646 = !DILocation(line: 1090, column: 34, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1648 = !DILocation(line: 1090, column: 26, scope: !1647)
!1649 = !DILocation(line: 1090, column: 41, scope: !1647)
!1650 = !DILocation(line: 1090, column: 7, scope: !928)
!1651 = !DILocation(line: 1091, column: 5, scope: !1026)
!1652 = !DILocation(line: 1091, column: 5, scope: !1647)
!1653 = !DILocation(line: 1091, column: 5, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 2)
!1655 = !DILocation(line: 1093, column: 10, scope: !863)
!1656 = !DILocation(line: 1094, column: 1, scope: !863)
!1657 = !DILocation(line: 530, column: 38, scope: !1658, inlinedAt: !1354)
!1658 = !DILexicalBlockFile(scope: !1362, file: !3, discriminator: 2)
!1659 = !DILocation(line: 530, column: 17, scope: !1660, inlinedAt: !1354)
!1660 = !DILexicalBlockFile(scope: !1362, file: !3, discriminator: 1)
!1661 = distinct !{!1661, !1662, !1663}
!1662 = !DILocation(line: 530, column: 3, scope: !1358)
!1663 = !DILocation(line: 535, column: 5, scope: !1358)
!1664 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 583, type: !1665, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1668)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!76, !68, !246, !71, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1678, !1679, !1681}
!1669 = !DILocalVariable(name: "filename", arg: 1, scope: !1664, file: !3, line: 583, type: !68)
!1670 = !DILocalVariable(name: "binary", arg: 2, scope: !1664, file: !3, line: 583, type: !246)
!1671 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1664, file: !3, line: 583, type: !71)
!1672 = !DILocalVariable(name: "missing", arg: 4, scope: !1664, file: !3, line: 584, type: !1667)
!1673 = !DILocalVariable(name: "fp", scope: !1664, file: !3, line: 586, type: !128)
!1674 = !DILocalVariable(name: "err", scope: !1664, file: !3, line: 587, type: !70)
!1675 = !DILocalVariable(name: "is_stdin", scope: !1664, file: !3, line: 588, type: !76)
!1676 = !DILocalVariable(name: "__s1_len", scope: !1677, file: !3, line: 588, type: !61)
!1677 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 588, column: 19)
!1678 = !DILocalVariable(name: "__s2_len", scope: !1677, file: !3, line: 588, type: !61)
!1679 = !DILocalVariable(name: "__s2", scope: !1680, file: !3, line: 588, type: !65)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 588, column: 19)
!1681 = !DILocalVariable(name: "__result", scope: !1680, file: !3, line: 588, type: !70)
!1682 = !DILocation(line: 583, column: 41, scope: !1664)
!1683 = !DILocation(line: 588, column: 19, scope: !1677)
!1684 = !DILocation(line: 588, column: 19, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !3, discriminator: 2)
!1686 = !DILocation(line: 588, column: 19, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1688, file: !3, discriminator: 3)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 588, column: 19)
!1689 = !DILocation(line: 588, column: 19, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1688, file: !3, discriminator: 2)
!1691 = !DILocation(line: 590, column: 12, scope: !1664)
!1692 = !{!1693, !1693, i64 0}
!1693 = !{!"_Bool", !803, i64 0}
!1694 = !DILocation(line: 592, column: 7, scope: !1664)
!1695 = !DILocation(line: 588, column: 19, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !3, discriminator: 4)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 588, column: 19)
!1698 = !DILocation(line: 588, column: 19, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1677, file: !3, discriminator: 11)
!1700 = !DILocation(line: 595, column: 12, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 593, column: 5)
!1702 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 592, column: 7)
!1703 = !DILocation(line: 586, column: 9, scope: !1664)
!1704 = !DILocation(line: 603, column: 5, scope: !1701)
!1705 = !DILocation(line: 606, column: 12, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 605, column: 5)
!1707 = !DILocation(line: 607, column: 14, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 607, column: 11)
!1709 = !DILocation(line: 607, column: 11, scope: !1706)
!1710 = !DILocation(line: 609, column: 33, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1712, file: !3, discriminator: 1)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 609, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 608, column: 9)
!1714 = !DILocation(line: 609, column: 30, scope: !1712)
!1715 = !DILocation(line: 609, column: 39, scope: !1711)
!1716 = !DILocation(line: 609, column: 15, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 1)
!1718 = !DILocation(line: 611, column: 24, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 610, column: 13)
!1720 = !DILocation(line: 612, column: 15, scope: !1719)
!1721 = !DILocation(line: 614, column: 21, scope: !1713)
!1722 = !DILocation(line: 614, column: 34, scope: !1717)
!1723 = !DILocation(line: 614, column: 11, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 2)
!1725 = !DILocation(line: 615, column: 11, scope: !1713)
!1726 = !DILocation(line: 619, column: 3, scope: !1664)
!1727 = !DILocation(line: 624, column: 9, scope: !1664)
!1728 = !DILocation(line: 587, column: 7, scope: !1664)
!1729 = !DILocation(line: 626, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 626, column: 7)
!1731 = !DILocation(line: 626, column: 7, scope: !1664)
!1732 = !DILocation(line: 628, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 627, column: 5)
!1734 = !DILocation(line: 628, column: 30, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1733, file: !3, discriminator: 1)
!1736 = !DILocation(line: 628, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1733, file: !3, discriminator: 2)
!1738 = !DILocation(line: 629, column: 17, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 629, column: 11)
!1740 = !DILocation(line: 629, column: 14, scope: !1739)
!1741 = !DILocation(line: 629, column: 11, scope: !1733)
!1742 = !DILocation(line: 630, column: 9, scope: !1739)
!1743 = !DILocation(line: 634, column: 17, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 634, column: 7)
!1745 = !DILocation(line: 634, column: 20, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1744, file: !3, discriminator: 1)
!1747 = !DILocation(line: 634, column: 32, scope: !1746)
!1748 = !DILocation(line: 634, column: 7, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1664, file: !3, discriminator: 1)
!1750 = !DILocation(line: 636, column: 17, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 635, column: 5)
!1752 = !DILocation(line: 636, column: 30, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1751, file: !3, discriminator: 1)
!1754 = !DILocation(line: 636, column: 7, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1751, file: !3, discriminator: 2)
!1756 = !DILocation(line: 637, column: 7, scope: !1751)
!1757 = !DILocation(line: 641, column: 1, scope: !1664)
!1758 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 542, type: !1759, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !68, !76}
!1761 = !{!1762, !1763}
!1762 = !DILocalVariable(name: "file", arg: 1, scope: !1758, file: !3, line: 542, type: !68)
!1763 = !DILocalVariable(name: "escape", arg: 2, scope: !1758, file: !3, line: 542, type: !76)
!1764 = !DILocation(line: 542, column: 29, scope: !1758)
!1765 = !DILocation(line: 542, column: 40, scope: !1758)
!1766 = !DILocation(line: 544, column: 7, scope: !1758)
!1767 = !DILocation(line: 550, column: 10, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1758, file: !3, discriminator: 1)
!1769 = !DILocation(line: 550, column: 3, scope: !1768)
!1770 = !DILocation(line: 552, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 551, column: 5)
!1772 = !DILocation(line: 546, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 545, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 544, column: 7)
!1775 = !DILocation(line: 547, column: 7, scope: !1773)
!1776 = !DILocation(line: 552, column: 7, scope: !1771)
!1777 = !DILocation(line: 555, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 553, column: 9)
!1779 = !DILocation(line: 556, column: 11, scope: !1778)
!1780 = !DILocation(line: 559, column: 11, scope: !1778)
!1781 = !DILocation(line: 560, column: 11, scope: !1778)
!1782 = !DILocation(line: 105, column: 23, scope: !1397, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 563, column: 11, scope: !1778)
!1784 = !DILocation(line: 107, column: 10, scope: !1397, inlinedAt: !1783)
!1785 = !DILocation(line: 107, column: 10, scope: !1410, inlinedAt: !1783)
!1786 = !DILocation(line: 107, column: 10, scope: !1412, inlinedAt: !1783)
!1787 = !DILocation(line: 566, column: 11, scope: !1771)
!1788 = distinct !{!1788, !1789, !1790}
!1789 = !DILocation(line: 550, column: 3, scope: !1758)
!1790 = !DILocation(line: 567, column: 5, scope: !1758)
!1791 = !DILocation(line: 568, column: 1, scope: !1758)
!1792 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !263, file: !263, line: 41, type: !84, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1793)
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "file", arg: 1, scope: !1792, file: !263, line: 41, type: !68)
!1795 = !DILocation(line: 41, column: 41, scope: !1792)
!1796 = !DILocation(line: 43, column: 13, scope: !1792)
!1797 = !DILocation(line: 44, column: 1, scope: !1792)
!1798 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !263, file: !263, line: 78, type: !1799, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !76}
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "ignore", arg: 1, scope: !1798, file: !263, line: 78, type: !76)
!1803 = !DILocation(line: 78, column: 37, scope: !1798)
!1804 = !DILocation(line: 80, column: 16, scope: !1798)
!1805 = !DILocation(line: 81, column: 1, scope: !1798)
!1806 = distinct !DISubprogram(name: "close_stdout", scope: !263, file: !263, line: 107, type: !815, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !258, variables: !1807)
!1807 = !{!1808}
!1808 = !DILocalVariable(name: "write_error", scope: !1809, file: !263, line: 112, type: !68)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !263, line: 111, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !263, line: 109, column: 7)
!1811 = !DILocation(line: 109, column: 21, scope: !1810)
!1812 = !DILocation(line: 109, column: 7, scope: !1810)
!1813 = !DILocation(line: 109, column: 29, scope: !1810)
!1814 = !DILocation(line: 110, column: 7, scope: !1810)
!1815 = !DILocation(line: 110, column: 12, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1810, file: !263, discriminator: 1)
!1817 = !{i8 0, i8 2}
!1818 = !DILocation(line: 114, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1809, file: !263, line: 113, column: 11)
!1820 = !DILocation(line: 110, column: 25, scope: !1816)
!1821 = !DILocation(line: 110, column: 28, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1810, file: !263, discriminator: 2)
!1823 = !DILocation(line: 110, column: 34, scope: !1822)
!1824 = !DILocation(line: 109, column: 7, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1806, file: !263, discriminator: 1)
!1826 = !DILocation(line: 112, column: 33, scope: !1809)
!1827 = !DILocation(line: 112, column: 19, scope: !1809)
!1828 = !DILocation(line: 113, column: 11, scope: !1819)
!1829 = !DILocation(line: 113, column: 11, scope: !1809)
!1830 = !DILocation(line: 114, column: 36, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1819, file: !263, discriminator: 1)
!1832 = !DILocation(line: 114, column: 9, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1819, file: !263, discriminator: 2)
!1834 = !DILocation(line: 114, column: 9, scope: !1819)
!1835 = !DILocation(line: 117, column: 9, scope: !1831)
!1836 = !DILocation(line: 119, column: 14, scope: !1809)
!1837 = !DILocation(line: 119, column: 7, scope: !1809)
!1838 = !DILocation(line: 122, column: 22, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1806, file: !263, line: 122, column: 8)
!1840 = !DILocation(line: 122, column: 8, scope: !1839)
!1841 = !DILocation(line: 122, column: 30, scope: !1839)
!1842 = !DILocation(line: 122, column: 8, scope: !1806)
!1843 = !DILocation(line: 123, column: 13, scope: !1839)
!1844 = !DILocation(line: 123, column: 6, scope: !1839)
!1845 = !DILocation(line: 124, column: 1, scope: !1806)
!1846 = distinct !DISubprogram(name: "md5_init_ctx", scope: !270, file: !270, line: 76, type: !1847, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !1867)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "md5_ctx", file: !1851, line: 69, size: 1248, elements: !1852)
!1851 = !DIFile(filename: "./lib/md5.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1852 = !{!1853, !1855, !1856, !1857, !1858, !1862, !1863}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1850, file: !1851, line: 71, baseType: !1854, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 53, baseType: !315)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1850, file: !1851, line: 72, baseType: !1854, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1850, file: !1851, line: 73, baseType: !1854, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1850, file: !1851, line: 74, baseType: !1854, size: 32, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1850, file: !1851, line: 76, baseType: !1859, size: 64, offset: 128)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 64, elements: !1860)
!1860 = !{!1861}
!1861 = !DISubrange(count: 2)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1850, file: !1851, line: 77, baseType: !1854, size: 32, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1850, file: !1851, line: 78, baseType: !1864, size: 1024, offset: 224)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 1024, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 32)
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "ctx", arg: 1, scope: !1846, file: !270, line: 76, type: !1849)
!1869 = !DILocation(line: 76, column: 31, scope: !1846)
!1870 = !DILocation(line: 78, column: 10, scope: !1846)
!1871 = !DILocation(line: 83, column: 19, scope: !1846)
!1872 = !DILocation(line: 83, column: 33, scope: !1846)
!1873 = !DILocation(line: 83, column: 3, scope: !1846)
!1874 = !DILocation(line: 83, column: 17, scope: !1846)
!1875 = !DILocation(line: 84, column: 8, scope: !1846)
!1876 = !DILocation(line: 84, column: 15, scope: !1846)
!1877 = !{!1878, !1013, i64 24}
!1878 = !{!"md5_ctx", !1013, i64 0, !1013, i64 4, !1013, i64 8, !1013, i64 12, !803, i64 16, !1013, i64 24, !803, i64 28}
!1879 = !DILocation(line: 85, column: 1, scope: !1846)
!1880 = distinct !DISubprogram(name: "md5_read_ctx", scope: !270, file: !270, line: 99, type: !1881, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !1885)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!60, !1883, !60}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1885 = !{!1886, !1887, !1888}
!1886 = !DILocalVariable(name: "ctx", arg: 1, scope: !1880, file: !270, line: 99, type: !1883)
!1887 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1880, file: !270, line: 99, type: !60)
!1888 = !DILocalVariable(name: "r", scope: !1880, file: !270, line: 101, type: !58)
!1889 = !DILocation(line: 99, column: 37, scope: !1880)
!1890 = !DILocation(line: 99, column: 48, scope: !1880)
!1891 = !DILocation(line: 101, column: 9, scope: !1880)
!1892 = !DILocation(line: 102, column: 38, scope: !1880)
!1893 = !{!1878, !1013, i64 0}
!1894 = !DILocalVariable(name: "cp", arg: 1, scope: !1895, file: !270, line: 91, type: !58)
!1895 = distinct !DISubprogram(name: "set_uint32", scope: !270, file: !270, line: 91, type: !1896, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !58, !1854}
!1898 = !{!1894, !1899}
!1899 = !DILocalVariable(name: "v", arg: 2, scope: !1895, file: !270, line: 91, type: !1854)
!1900 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 102, column: 3, scope: !1880)
!1902 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1901)
!1903 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1901)
!1904 = !DILocation(line: 103, column: 17, scope: !1880)
!1905 = !DILocation(line: 103, column: 38, scope: !1880)
!1906 = !{!1878, !1013, i64 4}
!1907 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 103, column: 3, scope: !1880)
!1909 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1908)
!1910 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1908)
!1911 = !DILocation(line: 104, column: 17, scope: !1880)
!1912 = !DILocation(line: 104, column: 38, scope: !1880)
!1913 = !{!1878, !1013, i64 8}
!1914 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 104, column: 3, scope: !1880)
!1916 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1915)
!1917 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1915)
!1918 = !DILocation(line: 105, column: 17, scope: !1880)
!1919 = !DILocation(line: 105, column: 38, scope: !1880)
!1920 = !{!1878, !1013, i64 12}
!1921 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 105, column: 3, scope: !1880)
!1923 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1922)
!1924 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1922)
!1925 = !DILocation(line: 107, column: 3, scope: !1880)
!1926 = distinct !DISubprogram(name: "md5_finish_ctx", scope: !270, file: !270, line: 113, type: !1927, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!60, !1849, !60}
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DILocalVariable(name: "ctx", arg: 1, scope: !1926, file: !270, line: 113, type: !1849)
!1931 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1926, file: !270, line: 113, type: !60)
!1932 = !DILocalVariable(name: "bytes", scope: !1926, file: !270, line: 116, type: !1854)
!1933 = !DILocalVariable(name: "size", scope: !1926, file: !270, line: 117, type: !61)
!1934 = !DILocation(line: 113, column: 33, scope: !1926)
!1935 = !DILocation(line: 113, column: 44, scope: !1926)
!1936 = !DILocation(line: 116, column: 25, scope: !1926)
!1937 = !DILocation(line: 116, column: 12, scope: !1926)
!1938 = !DILocation(line: 117, column: 24, scope: !1926)
!1939 = !DILocation(line: 117, column: 17, scope: !1926)
!1940 = !DILocation(line: 117, column: 10, scope: !1926)
!1941 = !DILocation(line: 120, column: 3, scope: !1926)
!1942 = !DILocation(line: 120, column: 17, scope: !1926)
!1943 = !DILocation(line: 121, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1926, file: !270, line: 121, column: 7)
!1945 = !DILocation(line: 121, column: 7, scope: !1926)
!1946 = !DILocation(line: 122, column: 5, scope: !1944)
!1947 = !DILocation(line: 125, column: 27, scope: !1926)
!1948 = !DILocation(line: 125, column: 20, scope: !1926)
!1949 = !DILocation(line: 125, column: 3, scope: !1926)
!1950 = !DILocation(line: 125, column: 25, scope: !1926)
!1951 = !DILocation(line: 126, column: 27, scope: !1926)
!1952 = !DILocation(line: 126, column: 20, scope: !1926)
!1953 = !DILocation(line: 126, column: 3, scope: !1926)
!1954 = !DILocation(line: 126, column: 25, scope: !1926)
!1955 = !DILocation(line: 128, column: 12, scope: !1926)
!1956 = !DILocation(line: 128, column: 63, scope: !1926)
!1957 = !DILocation(line: 128, column: 67, scope: !1926)
!1958 = !DILocation(line: 128, column: 3, scope: !1926)
!1959 = !DILocation(line: 131, column: 40, scope: !1926)
!1960 = !DILocation(line: 131, column: 3, scope: !1926)
!1961 = !DILocation(line: 99, column: 37, scope: !1880, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 133, column: 10, scope: !1926)
!1963 = !DILocation(line: 99, column: 48, scope: !1880, inlinedAt: !1962)
!1964 = !DILocation(line: 101, column: 9, scope: !1880, inlinedAt: !1962)
!1965 = !DILocation(line: 102, column: 38, scope: !1880, inlinedAt: !1962)
!1966 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 102, column: 3, scope: !1880, inlinedAt: !1962)
!1968 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1967)
!1969 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1967)
!1970 = !DILocation(line: 103, column: 17, scope: !1880, inlinedAt: !1962)
!1971 = !DILocation(line: 103, column: 38, scope: !1880, inlinedAt: !1962)
!1972 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 103, column: 3, scope: !1880, inlinedAt: !1962)
!1974 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1973)
!1975 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1973)
!1976 = !DILocation(line: 104, column: 17, scope: !1880, inlinedAt: !1962)
!1977 = !DILocation(line: 104, column: 38, scope: !1880, inlinedAt: !1962)
!1978 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 104, column: 3, scope: !1880, inlinedAt: !1962)
!1980 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1979)
!1981 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1979)
!1982 = !DILocation(line: 105, column: 17, scope: !1880, inlinedAt: !1962)
!1983 = !DILocation(line: 105, column: 38, scope: !1880, inlinedAt: !1962)
!1984 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 105, column: 3, scope: !1880, inlinedAt: !1962)
!1986 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !1985)
!1987 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !1985)
!1988 = !DILocation(line: 133, column: 3, scope: !1926)
!1989 = distinct !DISubprogram(name: "md5_process_block", scope: !270, file: !270, line: 311, type: !1990, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !63, !61, !1849}
!1992 = !{!1993, !1994, !1995, !1996, !1998, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2011, !2012, !2013, !2014}
!1993 = !DILocalVariable(name: "buffer", arg: 1, scope: !1989, file: !270, line: 311, type: !63)
!1994 = !DILocalVariable(name: "len", arg: 2, scope: !1989, file: !270, line: 311, type: !61)
!1995 = !DILocalVariable(name: "ctx", arg: 3, scope: !1989, file: !270, line: 311, type: !1849)
!1996 = !DILocalVariable(name: "correct_words", scope: !1989, file: !270, line: 313, type: !1997)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 512, elements: !234)
!1998 = !DILocalVariable(name: "words", scope: !1989, file: !270, line: 314, type: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!2001 = !DILocalVariable(name: "nwords", scope: !1989, file: !270, line: 315, type: !61)
!2002 = !DILocalVariable(name: "endp", scope: !1989, file: !270, line: 316, type: !1999)
!2003 = !DILocalVariable(name: "A", scope: !1989, file: !270, line: 317, type: !1854)
!2004 = !DILocalVariable(name: "B", scope: !1989, file: !270, line: 318, type: !1854)
!2005 = !DILocalVariable(name: "C", scope: !1989, file: !270, line: 319, type: !1854)
!2006 = !DILocalVariable(name: "D", scope: !1989, file: !270, line: 320, type: !1854)
!2007 = !DILocalVariable(name: "lolen", scope: !1989, file: !270, line: 321, type: !1854)
!2008 = !DILocalVariable(name: "cwp", scope: !2009, file: !270, line: 333, type: !2010)
!2009 = distinct !DILexicalBlock(scope: !1989, file: !270, line: 332, column: 5)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!2011 = !DILocalVariable(name: "A_save", scope: !2009, file: !270, line: 334, type: !1854)
!2012 = !DILocalVariable(name: "B_save", scope: !2009, file: !270, line: 335, type: !1854)
!2013 = !DILocalVariable(name: "C_save", scope: !2009, file: !270, line: 336, type: !1854)
!2014 = !DILocalVariable(name: "D_save", scope: !2009, file: !270, line: 337, type: !1854)
!2015 = !DILocation(line: 311, column: 32, scope: !1989)
!2016 = !DILocation(line: 311, column: 47, scope: !1989)
!2017 = !DILocation(line: 311, column: 68, scope: !1989)
!2018 = !DILocation(line: 313, column: 12, scope: !1989)
!2019 = !DILocation(line: 314, column: 27, scope: !1989)
!2020 = !DILocation(line: 314, column: 19, scope: !1989)
!2021 = !DILocation(line: 315, column: 23, scope: !1989)
!2022 = !DILocation(line: 315, column: 10, scope: !1989)
!2023 = !DILocation(line: 316, column: 32, scope: !1989)
!2024 = !DILocation(line: 316, column: 19, scope: !1989)
!2025 = !DILocation(line: 317, column: 21, scope: !1989)
!2026 = !DILocation(line: 317, column: 12, scope: !1989)
!2027 = !DILocation(line: 318, column: 21, scope: !1989)
!2028 = !DILocation(line: 318, column: 12, scope: !1989)
!2029 = !DILocation(line: 319, column: 21, scope: !1989)
!2030 = !DILocation(line: 319, column: 12, scope: !1989)
!2031 = !DILocation(line: 320, column: 21, scope: !1989)
!2032 = !DILocation(line: 320, column: 12, scope: !1989)
!2033 = !DILocation(line: 321, column: 20, scope: !1989)
!2034 = !DILocation(line: 321, column: 12, scope: !1989)
!2035 = !DILocation(line: 326, column: 3, scope: !1989)
!2036 = !DILocation(line: 326, column: 17, scope: !1989)
!2037 = !DILocation(line: 327, column: 25, scope: !1989)
!2038 = !DILocation(line: 327, column: 54, scope: !1989)
!2039 = !DILocation(line: 327, column: 39, scope: !1989)
!2040 = !DILocation(line: 327, column: 37, scope: !1989)
!2041 = !DILocation(line: 327, column: 3, scope: !1989)
!2042 = !DILocation(line: 327, column: 17, scope: !1989)
!2043 = !DILocation(line: 331, column: 16, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1989, file: !270, discriminator: 1)
!2045 = !DILocation(line: 331, column: 3, scope: !2044)
!2046 = !DILocation(line: 333, column: 17, scope: !2009)
!2047 = !DILocation(line: 334, column: 16, scope: !2009)
!2048 = !DILocation(line: 335, column: 16, scope: !2009)
!2049 = !DILocation(line: 336, column: 16, scope: !2009)
!2050 = !DILocation(line: 337, column: 16, scope: !2009)
!2051 = !DILocation(line: 371, column: 7, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !270, discriminator: 1)
!2053 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 371, column: 7)
!2054 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2055 = !DILocation(line: 372, column: 7, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2057, file: !270, discriminator: 1)
!2057 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 372, column: 7)
!2058 = !DIExpression(DW_OP_LLVM_fragment, 32, 32)
!2059 = !DILocation(line: 373, column: 7, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2061, file: !270, discriminator: 1)
!2061 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 373, column: 7)
!2062 = !DIExpression(DW_OP_LLVM_fragment, 64, 32)
!2063 = !DILocation(line: 374, column: 7, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !270, discriminator: 1)
!2065 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 374, column: 7)
!2066 = !DIExpression(DW_OP_LLVM_fragment, 96, 32)
!2067 = !DILocation(line: 375, column: 7, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2069, file: !270, discriminator: 1)
!2069 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 375, column: 7)
!2070 = !DIExpression(DW_OP_LLVM_fragment, 128, 32)
!2071 = !DILocation(line: 376, column: 7, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2073, file: !270, discriminator: 1)
!2073 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 376, column: 7)
!2074 = !DIExpression(DW_OP_LLVM_fragment, 160, 32)
!2075 = !DILocation(line: 377, column: 7, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2077, file: !270, discriminator: 1)
!2077 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 377, column: 7)
!2078 = !DIExpression(DW_OP_LLVM_fragment, 192, 32)
!2079 = !DILocation(line: 378, column: 7, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2081, file: !270, discriminator: 1)
!2081 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 378, column: 7)
!2082 = !DIExpression(DW_OP_LLVM_fragment, 224, 32)
!2083 = !DILocation(line: 379, column: 7, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2085, file: !270, discriminator: 1)
!2085 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 379, column: 7)
!2086 = !DIExpression(DW_OP_LLVM_fragment, 256, 32)
!2087 = !DILocation(line: 380, column: 7, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2089, file: !270, discriminator: 1)
!2089 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 380, column: 7)
!2090 = !DIExpression(DW_OP_LLVM_fragment, 288, 32)
!2091 = !DILocation(line: 381, column: 7, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2093, file: !270, discriminator: 1)
!2093 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 381, column: 7)
!2094 = !DIExpression(DW_OP_LLVM_fragment, 320, 32)
!2095 = !DILocation(line: 382, column: 7, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2097, file: !270, discriminator: 1)
!2097 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 382, column: 7)
!2098 = !DIExpression(DW_OP_LLVM_fragment, 352, 32)
!2099 = !DILocation(line: 383, column: 7, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2101, file: !270, discriminator: 1)
!2101 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 383, column: 7)
!2102 = !DIExpression(DW_OP_LLVM_fragment, 384, 32)
!2103 = !DILocation(line: 384, column: 7, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2105, file: !270, discriminator: 1)
!2105 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 384, column: 7)
!2106 = !DIExpression(DW_OP_LLVM_fragment, 416, 32)
!2107 = !DILocation(line: 385, column: 7, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2109, file: !270, discriminator: 1)
!2109 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 385, column: 7)
!2110 = !DIExpression(DW_OP_LLVM_fragment, 448, 32)
!2111 = !DILocation(line: 386, column: 7, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !270, discriminator: 1)
!2113 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 386, column: 7)
!2114 = !DIExpression(DW_OP_LLVM_fragment, 480, 32)
!2115 = !DILocation(line: 402, column: 7, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !270, discriminator: 1)
!2117 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 402, column: 7)
!2118 = !DILocation(line: 403, column: 7, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !270, discriminator: 1)
!2120 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 403, column: 7)
!2121 = !DILocation(line: 404, column: 7, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !270, discriminator: 1)
!2123 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 404, column: 7)
!2124 = !DILocation(line: 405, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !270, discriminator: 1)
!2126 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 405, column: 7)
!2127 = !DILocation(line: 406, column: 7, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !270, discriminator: 1)
!2129 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 406, column: 7)
!2130 = !DILocation(line: 407, column: 7, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !270, discriminator: 1)
!2132 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 407, column: 7)
!2133 = !DILocation(line: 408, column: 7, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !270, discriminator: 1)
!2135 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 408, column: 7)
!2136 = !DILocation(line: 409, column: 7, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !270, discriminator: 1)
!2138 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 409, column: 7)
!2139 = !DILocation(line: 410, column: 7, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2141, file: !270, discriminator: 1)
!2141 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 410, column: 7)
!2142 = !DILocation(line: 411, column: 7, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !270, discriminator: 1)
!2144 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 411, column: 7)
!2145 = !DILocation(line: 412, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !270, discriminator: 1)
!2147 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 412, column: 7)
!2148 = !DILocation(line: 413, column: 7, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2150, file: !270, discriminator: 1)
!2150 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 413, column: 7)
!2151 = !DILocation(line: 414, column: 7, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2153, file: !270, discriminator: 1)
!2153 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 414, column: 7)
!2154 = !DILocation(line: 415, column: 7, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2156, file: !270, discriminator: 1)
!2156 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 415, column: 7)
!2157 = !DILocation(line: 416, column: 7, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !270, discriminator: 1)
!2159 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 416, column: 7)
!2160 = !DILocation(line: 417, column: 7, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2162, file: !270, discriminator: 1)
!2162 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 417, column: 7)
!2163 = !DILocation(line: 420, column: 7, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2165, file: !270, discriminator: 1)
!2165 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 420, column: 7)
!2166 = !DILocation(line: 421, column: 7, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !270, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 421, column: 7)
!2169 = !DILocation(line: 422, column: 7, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2171, file: !270, discriminator: 1)
!2171 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 422, column: 7)
!2172 = !DILocation(line: 423, column: 7, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !270, discriminator: 1)
!2174 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 423, column: 7)
!2175 = !DILocation(line: 424, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2177, file: !270, discriminator: 1)
!2177 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 424, column: 7)
!2178 = !DILocation(line: 425, column: 7, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2180, file: !270, discriminator: 1)
!2180 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 425, column: 7)
!2181 = !DILocation(line: 426, column: 7, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2183, file: !270, discriminator: 1)
!2183 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 426, column: 7)
!2184 = !DILocation(line: 427, column: 7, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2186, file: !270, discriminator: 1)
!2186 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 427, column: 7)
!2187 = !DILocation(line: 428, column: 7, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !270, discriminator: 1)
!2189 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 428, column: 7)
!2190 = !DILocation(line: 429, column: 7, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !270, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 429, column: 7)
!2193 = !DILocation(line: 430, column: 7, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2195, file: !270, discriminator: 1)
!2195 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 430, column: 7)
!2196 = !DILocation(line: 431, column: 7, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !270, discriminator: 1)
!2198 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 431, column: 7)
!2199 = !DILocation(line: 432, column: 7, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !270, discriminator: 1)
!2201 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 432, column: 7)
!2202 = !DILocation(line: 433, column: 7, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !270, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 433, column: 7)
!2205 = !DILocation(line: 434, column: 7, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2207, file: !270, discriminator: 1)
!2207 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 434, column: 7)
!2208 = !DILocation(line: 435, column: 7, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2210, file: !270, discriminator: 1)
!2210 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 435, column: 7)
!2211 = !DILocation(line: 438, column: 7, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !270, discriminator: 1)
!2213 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 438, column: 7)
!2214 = !DILocation(line: 439, column: 7, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !270, discriminator: 1)
!2216 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 439, column: 7)
!2217 = !DILocation(line: 440, column: 7, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2219, file: !270, discriminator: 1)
!2219 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 440, column: 7)
!2220 = !DILocation(line: 441, column: 7, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2222, file: !270, discriminator: 1)
!2222 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 441, column: 7)
!2223 = !DILocation(line: 442, column: 7, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2225, file: !270, discriminator: 1)
!2225 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 442, column: 7)
!2226 = !DILocation(line: 443, column: 7, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2228, file: !270, discriminator: 1)
!2228 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 443, column: 7)
!2229 = !DILocation(line: 444, column: 7, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !270, discriminator: 1)
!2231 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 444, column: 7)
!2232 = !DILocation(line: 445, column: 7, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2234, file: !270, discriminator: 1)
!2234 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 445, column: 7)
!2235 = !DILocation(line: 446, column: 7, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2237, file: !270, discriminator: 1)
!2237 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 446, column: 7)
!2238 = !DILocation(line: 447, column: 7, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2240, file: !270, discriminator: 1)
!2240 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 447, column: 7)
!2241 = !DILocation(line: 448, column: 7, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2243, file: !270, discriminator: 1)
!2243 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 448, column: 7)
!2244 = !DILocation(line: 449, column: 7, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2246, file: !270, discriminator: 1)
!2246 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 449, column: 7)
!2247 = !DILocation(line: 450, column: 7, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2249, file: !270, discriminator: 1)
!2249 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 450, column: 7)
!2250 = !DILocation(line: 451, column: 7, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2252, file: !270, discriminator: 1)
!2252 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 451, column: 7)
!2253 = !DILocation(line: 452, column: 7, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2255, file: !270, discriminator: 1)
!2255 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 452, column: 7)
!2256 = !DILocation(line: 453, column: 7, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !270, discriminator: 1)
!2258 = distinct !DILexicalBlock(scope: !2009, file: !270, line: 453, column: 7)
!2259 = !DILocation(line: 456, column: 9, scope: !2009)
!2260 = !DILocation(line: 457, column: 9, scope: !2009)
!2261 = !DILocation(line: 458, column: 9, scope: !2009)
!2262 = !DILocation(line: 459, column: 9, scope: !2009)
!2263 = distinct !{!2263, !2264, !2265}
!2264 = !DILocation(line: 331, column: 3, scope: !1989)
!2265 = !DILocation(line: 460, column: 5, scope: !1989)
!2266 = !DILocation(line: 463, column: 10, scope: !1989)
!2267 = !DILocation(line: 464, column: 10, scope: !1989)
!2268 = !DILocation(line: 465, column: 10, scope: !1989)
!2269 = !DILocation(line: 466, column: 10, scope: !1989)
!2270 = !DILocation(line: 467, column: 1, scope: !1989)
!2271 = distinct !DISubprogram(name: "md5_stream", scope: !270, file: !270, line: 141, type: !2272, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2314)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!70, !2274, !60}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2276, file: !132, line: 242, baseType: !70, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2276, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2276, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2276, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2276, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2276, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2276, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2276, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2276, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2276, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2276, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2276, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2276, file: !132, line: 260, baseType: !2291, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2293)
!2293 = !{!2294, !2295, !2297}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2292, file: !132, line: 157, baseType: !2291, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2292, file: !132, line: 158, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2292, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2276, file: !132, line: 262, baseType: !2296, size: 64, offset: 832)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2276, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2276, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2276, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2276, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2276, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2276, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2276, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2276, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2276, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2276, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2276, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2276, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2276, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2276, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2276, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320}
!2315 = !DILocalVariable(name: "stream", arg: 1, scope: !2271, file: !270, line: 141, type: !2274)
!2316 = !DILocalVariable(name: "resblock", arg: 2, scope: !2271, file: !270, line: 141, type: !60)
!2317 = !DILocalVariable(name: "ctx", scope: !2271, file: !270, line: 143, type: !1850)
!2318 = !DILocalVariable(name: "sum", scope: !2271, file: !270, line: 144, type: !61)
!2319 = !DILocalVariable(name: "buffer", scope: !2271, file: !270, line: 146, type: !58)
!2320 = !DILocalVariable(name: "n", scope: !2321, file: !270, line: 159, type: !61)
!2321 = distinct !DILexicalBlock(scope: !2271, file: !270, line: 155, column: 5)
!2322 = !DILocation(line: 141, column: 19, scope: !2271)
!2323 = !DILocation(line: 141, column: 33, scope: !2271)
!2324 = !DILocation(line: 143, column: 3, scope: !2271)
!2325 = !DILocation(line: 146, column: 18, scope: !2271)
!2326 = !DILocation(line: 146, column: 9, scope: !2271)
!2327 = !DILocation(line: 147, column: 8, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2271, file: !270, line: 147, column: 7)
!2329 = !DILocation(line: 147, column: 7, scope: !2271)
!2330 = !DILocation(line: 143, column: 18, scope: !2271)
!2331 = !DILocation(line: 76, column: 31, scope: !1846, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 151, column: 3, scope: !2271)
!2333 = !DILocation(line: 78, column: 10, scope: !1846, inlinedAt: !2332)
!2334 = !DILocation(line: 83, column: 19, scope: !1846, inlinedAt: !2332)
!2335 = !DILocation(line: 83, column: 33, scope: !1846, inlinedAt: !2332)
!2336 = !DILocation(line: 83, column: 3, scope: !1846, inlinedAt: !2332)
!2337 = !DILocation(line: 83, column: 17, scope: !1846, inlinedAt: !2332)
!2338 = !DILocation(line: 84, column: 8, scope: !1846, inlinedAt: !2332)
!2339 = !DILocation(line: 84, column: 15, scope: !1846, inlinedAt: !2332)
!2340 = !DILocation(line: 154, column: 3, scope: !2271)
!2341 = !DILocation(line: 144, column: 10, scope: !2271)
!2342 = !DILocation(line: 163, column: 7, scope: !2321)
!2343 = !DILocation(line: 165, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2321, file: !270, line: 164, column: 9)
!2345 = !DILocation(line: 159, column: 14, scope: !2321)
!2346 = !DILocation(line: 167, column: 15, scope: !2344)
!2347 = !DILocation(line: 169, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !270, line: 169, column: 15)
!2349 = !DILocation(line: 169, column: 15, scope: !2344)
!2350 = !DILocation(line: 172, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2344, file: !270, line: 172, column: 15)
!2352 = !DILocation(line: 172, column: 15, scope: !2344)
!2353 = !DILocalVariable(name: "__stream", arg: 1, scope: !2354, file: !1101, line: 132, type: !2274)
!2354 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1101, file: !1101, line: 132, type: !2355, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!70, !2274}
!2357 = !{!2353}
!2358 = !DILocation(line: 132, column: 1, scope: !2354, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 177, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !270, line: 177, column: 19)
!2361 = distinct !DILexicalBlock(scope: !2351, file: !270, line: 173, column: 13)
!2362 = !DILocation(line: 134, column: 10, scope: !2354, inlinedAt: !2359)
!2363 = !DILocation(line: 177, column: 19, scope: !2360)
!2364 = !DILocation(line: 177, column: 19, scope: !2361)
!2365 = !DILocation(line: 179, column: 19, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !270, line: 178, column: 17)
!2367 = !DILocalVariable(name: "__stream", arg: 1, scope: !2368, file: !1101, line: 125, type: !2274)
!2368 = distinct !DISubprogram(name: "feof_unlocked", scope: !1101, file: !1101, line: 125, type: !2355, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2369)
!2369 = !{!2367}
!2370 = !DILocation(line: 125, column: 1, scope: !2368, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 188, column: 15, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2344, file: !270, line: 188, column: 15)
!2373 = !DILocation(line: 127, column: 10, scope: !2368, inlinedAt: !2371)
!2374 = !DILocation(line: 188, column: 15, scope: !2372)
!2375 = !DILocation(line: 188, column: 15, scope: !2344)
!2376 = distinct !{!2376, !2342, !2377}
!2377 = !DILocation(line: 190, column: 9, scope: !2321)
!2378 = !DILocation(line: 195, column: 7, scope: !2321)
!2379 = !DILocation(line: 201, column: 11, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2271, file: !270, line: 201, column: 7)
!2381 = !DILocation(line: 201, column: 7, scope: !2271)
!2382 = !DILocation(line: 202, column: 5, scope: !2380)
!2383 = !DILocation(line: 113, column: 33, scope: !1926, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 205, column: 3, scope: !2271)
!2385 = !DILocation(line: 113, column: 44, scope: !1926, inlinedAt: !2384)
!2386 = !DILocation(line: 116, column: 25, scope: !1926, inlinedAt: !2384)
!2387 = !DILocation(line: 116, column: 12, scope: !1926, inlinedAt: !2384)
!2388 = !DILocation(line: 117, column: 24, scope: !1926, inlinedAt: !2384)
!2389 = !DILocation(line: 117, column: 17, scope: !1926, inlinedAt: !2384)
!2390 = !DILocation(line: 117, column: 10, scope: !1926, inlinedAt: !2384)
!2391 = !DILocation(line: 120, column: 17, scope: !1926, inlinedAt: !2384)
!2392 = !DILocation(line: 121, column: 21, scope: !1944, inlinedAt: !2384)
!2393 = !DILocation(line: 121, column: 7, scope: !1926, inlinedAt: !2384)
!2394 = !DILocation(line: 122, column: 5, scope: !1944, inlinedAt: !2384)
!2395 = !DILocation(line: 125, column: 27, scope: !1926, inlinedAt: !2384)
!2396 = !DILocation(line: 125, column: 20, scope: !1926, inlinedAt: !2384)
!2397 = !DILocation(line: 125, column: 3, scope: !1926, inlinedAt: !2384)
!2398 = !DILocation(line: 125, column: 25, scope: !1926, inlinedAt: !2384)
!2399 = !DILocation(line: 126, column: 27, scope: !1926, inlinedAt: !2384)
!2400 = !DILocation(line: 126, column: 20, scope: !1926, inlinedAt: !2384)
!2401 = !DILocation(line: 126, column: 3, scope: !1926, inlinedAt: !2384)
!2402 = !DILocation(line: 126, column: 25, scope: !1926, inlinedAt: !2384)
!2403 = !DILocation(line: 128, column: 12, scope: !1926, inlinedAt: !2384)
!2404 = !DILocation(line: 128, column: 63, scope: !1926, inlinedAt: !2384)
!2405 = !DILocation(line: 128, column: 67, scope: !1926, inlinedAt: !2384)
!2406 = !DILocation(line: 128, column: 3, scope: !1926, inlinedAt: !2384)
!2407 = !DILocation(line: 131, column: 40, scope: !1926, inlinedAt: !2384)
!2408 = !DILocation(line: 131, column: 3, scope: !1926, inlinedAt: !2384)
!2409 = !DILocation(line: 99, column: 37, scope: !1880, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 133, column: 10, scope: !1926, inlinedAt: !2384)
!2411 = !DILocation(line: 99, column: 48, scope: !1880, inlinedAt: !2410)
!2412 = !DILocation(line: 101, column: 9, scope: !1880, inlinedAt: !2410)
!2413 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 102, column: 3, scope: !1880, inlinedAt: !2410)
!2415 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2414)
!2416 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 103, column: 3, scope: !1880, inlinedAt: !2410)
!2418 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 104, column: 3, scope: !1880, inlinedAt: !2410)
!2420 = !DILocation(line: 102, column: 38, scope: !1880, inlinedAt: !2410)
!2421 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 105, column: 3, scope: !1880, inlinedAt: !2410)
!2423 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !2414)
!2424 = !DILocation(line: 206, column: 3, scope: !2271)
!2425 = !DILocation(line: 207, column: 3, scope: !2271)
!2426 = !DILocation(line: 208, column: 1, scope: !2271)
!2427 = distinct !DISubprogram(name: "md5_process_bytes", scope: !270, file: !270, line: 232, type: !1990, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2435, !2436}
!2429 = !DILocalVariable(name: "buffer", arg: 1, scope: !2427, file: !270, line: 232, type: !63)
!2430 = !DILocalVariable(name: "len", arg: 2, scope: !2427, file: !270, line: 232, type: !61)
!2431 = !DILocalVariable(name: "ctx", arg: 3, scope: !2427, file: !270, line: 232, type: !1849)
!2432 = !DILocalVariable(name: "left_over", scope: !2433, file: !270, line: 238, type: !61)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !270, line: 237, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2427, file: !270, line: 236, column: 7)
!2435 = !DILocalVariable(name: "add", scope: !2433, file: !270, line: 239, type: !61)
!2436 = !DILocalVariable(name: "left_over", scope: !2437, file: !270, line: 283, type: !61)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !270, line: 282, column: 5)
!2438 = distinct !DILexicalBlock(scope: !2427, file: !270, line: 281, column: 7)
!2439 = !DILocation(line: 232, column: 32, scope: !2427)
!2440 = !DILocation(line: 232, column: 47, scope: !2427)
!2441 = !DILocation(line: 232, column: 68, scope: !2427)
!2442 = !DILocation(line: 236, column: 12, scope: !2434)
!2443 = !DILocation(line: 236, column: 19, scope: !2434)
!2444 = !DILocation(line: 236, column: 7, scope: !2427)
!2445 = !DILocation(line: 238, column: 26, scope: !2433)
!2446 = !DILocation(line: 238, column: 14, scope: !2433)
!2447 = !DILocation(line: 239, column: 24, scope: !2433)
!2448 = !DILocation(line: 239, column: 36, scope: !2433)
!2449 = !DILocation(line: 239, column: 20, scope: !2433)
!2450 = !DILocation(line: 239, column: 14, scope: !2433)
!2451 = !DILocation(line: 241, column: 16, scope: !2433)
!2452 = !DILocation(line: 241, column: 7, scope: !2433)
!2453 = !DILocation(line: 242, column: 19, scope: !2433)
!2454 = !DILocation(line: 244, column: 23, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2433, file: !270, line: 244, column: 11)
!2456 = !DILocation(line: 244, column: 11, scope: !2433)
!2457 = !DILocation(line: 246, column: 55, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !270, line: 245, column: 9)
!2459 = !DILocation(line: 246, column: 11, scope: !2458)
!2460 = !DILocation(line: 248, column: 23, scope: !2458)
!2461 = !DILocation(line: 251, column: 61, scope: !2458)
!2462 = !DILocation(line: 251, column: 20, scope: !2458)
!2463 = !DILocation(line: 252, column: 19, scope: !2458)
!2464 = !DILocation(line: 250, column: 11, scope: !2458)
!2465 = !DILocation(line: 253, column: 9, scope: !2458)
!2466 = !DILocation(line: 255, column: 38, scope: !2433)
!2467 = !DILocation(line: 256, column: 11, scope: !2433)
!2468 = !DILocation(line: 257, column: 5, scope: !2433)
!2469 = !DILocation(line: 260, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2427, file: !270, line: 260, column: 7)
!2471 = !DILocation(line: 260, column: 7, scope: !2427)
!2472 = !DILocation(line: 274, column: 42, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !270, line: 273, column: 9)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !270, line: 261, column: 5)
!2475 = !DILocation(line: 274, column: 11, scope: !2473)
!2476 = !DILocation(line: 275, column: 42, scope: !2473)
!2477 = !DILocation(line: 276, column: 15, scope: !2473)
!2478 = !DILocation(line: 278, column: 5, scope: !2474)
!2479 = !DILocation(line: 281, column: 11, scope: !2438)
!2480 = !DILocation(line: 281, column: 7, scope: !2427)
!2481 = !DILocation(line: 283, column: 31, scope: !2437)
!2482 = !DILocation(line: 283, column: 26, scope: !2437)
!2483 = !DILocation(line: 283, column: 14, scope: !2437)
!2484 = !DILocation(line: 285, column: 31, scope: !2437)
!2485 = !DILocation(line: 285, column: 16, scope: !2437)
!2486 = !DILocation(line: 285, column: 7, scope: !2437)
!2487 = !DILocation(line: 286, column: 17, scope: !2437)
!2488 = !DILocation(line: 287, column: 21, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2437, file: !270, line: 287, column: 11)
!2490 = !DILocation(line: 287, column: 11, scope: !2437)
!2491 = !DILocation(line: 289, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !270, line: 288, column: 9)
!2493 = !DILocation(line: 290, column: 21, scope: !2492)
!2494 = !DILocation(line: 291, column: 33, scope: !2492)
!2495 = !DILocation(line: 291, column: 11, scope: !2492)
!2496 = !DILocation(line: 292, column: 9, scope: !2492)
!2497 = !DILocation(line: 293, column: 21, scope: !2437)
!2498 = !DILocation(line: 293, column: 19, scope: !2437)
!2499 = !DILocation(line: 294, column: 5, scope: !2437)
!2500 = !DILocation(line: 295, column: 1, scope: !2427)
!2501 = distinct !DISubprogram(name: "md5_buffer", scope: !270, file: !270, line: 216, type: !2502, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !266, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!60, !68, !61, !60}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "buffer", arg: 1, scope: !2501, file: !270, line: 216, type: !68)
!2506 = !DILocalVariable(name: "len", arg: 2, scope: !2501, file: !270, line: 216, type: !61)
!2507 = !DILocalVariable(name: "resblock", arg: 3, scope: !2501, file: !270, line: 216, type: !60)
!2508 = !DILocalVariable(name: "ctx", scope: !2501, file: !270, line: 218, type: !1850)
!2509 = !DILocation(line: 216, column: 25, scope: !2501)
!2510 = !DILocation(line: 216, column: 40, scope: !2501)
!2511 = !DILocation(line: 216, column: 51, scope: !2501)
!2512 = !DILocation(line: 218, column: 3, scope: !2501)
!2513 = !DILocation(line: 218, column: 18, scope: !2501)
!2514 = !DILocation(line: 76, column: 31, scope: !1846, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 221, column: 3, scope: !2501)
!2516 = !DILocation(line: 78, column: 10, scope: !1846, inlinedAt: !2515)
!2517 = !DILocation(line: 83, column: 19, scope: !1846, inlinedAt: !2515)
!2518 = !DILocation(line: 83, column: 33, scope: !1846, inlinedAt: !2515)
!2519 = !DILocation(line: 83, column: 3, scope: !1846, inlinedAt: !2515)
!2520 = !DILocation(line: 83, column: 17, scope: !1846, inlinedAt: !2515)
!2521 = !DILocation(line: 84, column: 8, scope: !1846, inlinedAt: !2515)
!2522 = !DILocation(line: 84, column: 15, scope: !1846, inlinedAt: !2515)
!2523 = !DILocation(line: 224, column: 3, scope: !2501)
!2524 = !DILocation(line: 113, column: 33, scope: !1926, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 227, column: 10, scope: !2501)
!2526 = !DILocation(line: 113, column: 44, scope: !1926, inlinedAt: !2525)
!2527 = !DILocation(line: 116, column: 25, scope: !1926, inlinedAt: !2525)
!2528 = !DILocation(line: 116, column: 12, scope: !1926, inlinedAt: !2525)
!2529 = !DILocation(line: 117, column: 24, scope: !1926, inlinedAt: !2525)
!2530 = !DILocation(line: 117, column: 17, scope: !1926, inlinedAt: !2525)
!2531 = !DILocation(line: 117, column: 10, scope: !1926, inlinedAt: !2525)
!2532 = !DILocation(line: 120, column: 17, scope: !1926, inlinedAt: !2525)
!2533 = !DILocation(line: 121, column: 21, scope: !1944, inlinedAt: !2525)
!2534 = !DILocation(line: 121, column: 7, scope: !1926, inlinedAt: !2525)
!2535 = !DILocation(line: 122, column: 5, scope: !1944, inlinedAt: !2525)
!2536 = !DILocation(line: 126, column: 27, scope: !1926, inlinedAt: !2525)
!2537 = !DILocation(line: 125, column: 27, scope: !1926, inlinedAt: !2525)
!2538 = !DILocation(line: 125, column: 20, scope: !1926, inlinedAt: !2525)
!2539 = !DILocation(line: 125, column: 3, scope: !1926, inlinedAt: !2525)
!2540 = !DILocation(line: 125, column: 25, scope: !1926, inlinedAt: !2525)
!2541 = !DILocation(line: 126, column: 20, scope: !1926, inlinedAt: !2525)
!2542 = !DILocation(line: 126, column: 3, scope: !1926, inlinedAt: !2525)
!2543 = !DILocation(line: 126, column: 25, scope: !1926, inlinedAt: !2525)
!2544 = !DILocation(line: 128, column: 12, scope: !1926, inlinedAt: !2525)
!2545 = !DILocation(line: 128, column: 63, scope: !1926, inlinedAt: !2525)
!2546 = !DILocation(line: 128, column: 67, scope: !1926, inlinedAt: !2525)
!2547 = !DILocation(line: 128, column: 3, scope: !1926, inlinedAt: !2525)
!2548 = !DILocation(line: 131, column: 40, scope: !1926, inlinedAt: !2525)
!2549 = !DILocation(line: 131, column: 3, scope: !1926, inlinedAt: !2525)
!2550 = !DILocation(line: 99, column: 37, scope: !1880, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 133, column: 10, scope: !1926, inlinedAt: !2525)
!2552 = !DILocation(line: 99, column: 48, scope: !1880, inlinedAt: !2551)
!2553 = !DILocation(line: 101, column: 9, scope: !1880, inlinedAt: !2551)
!2554 = !DILocation(line: 91, column: 19, scope: !1895, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 102, column: 3, scope: !1880, inlinedAt: !2551)
!2556 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2555)
!2557 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 103, column: 3, scope: !1880, inlinedAt: !2551)
!2559 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 104, column: 3, scope: !1880, inlinedAt: !2551)
!2561 = !DILocation(line: 102, column: 38, scope: !1880, inlinedAt: !2551)
!2562 = !DILocation(line: 91, column: 32, scope: !1895, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 105, column: 3, scope: !1880, inlinedAt: !2551)
!2564 = !DILocation(line: 93, column: 3, scope: !1895, inlinedAt: !2555)
!2565 = !DILocation(line: 228, column: 1, scope: !2501)
!2566 = !DILocation(line: 227, column: 3, scope: !2501)
!2567 = distinct !DISubprogram(name: "fdadvise", scope: !2568, file: !2568, line: 31, type: !2569, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !733, variables: !2573)
!2568 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !70, !2571, !2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !130, line: 91, baseType: !158)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!2573 = !{!2574, !2575, !2576, !2577, !2578}
!2574 = !DILocalVariable(name: "fd", arg: 1, scope: !2567, file: !2568, line: 31, type: !70)
!2575 = !DILocalVariable(name: "offset", arg: 2, scope: !2567, file: !2568, line: 31, type: !2571)
!2576 = !DILocalVariable(name: "len", arg: 3, scope: !2567, file: !2568, line: 31, type: !2571)
!2577 = !DILocalVariable(name: "advice", arg: 4, scope: !2567, file: !2568, line: 31, type: !2572)
!2578 = !DILocalVariable(name: "__x", scope: !2579, file: !2568, line: 34, type: !70)
!2579 = distinct !DILexicalBlock(scope: !2567, file: !2568, line: 34, column: 3)
!2580 = !DILocation(line: 31, column: 15, scope: !2567)
!2581 = !DILocation(line: 31, column: 25, scope: !2567)
!2582 = !DILocation(line: 31, column: 39, scope: !2567)
!2583 = !DILocation(line: 31, column: 54, scope: !2567)
!2584 = !DILocation(line: 34, column: 3, scope: !2579)
!2585 = !DILocation(line: 36, column: 1, scope: !2567)
!2586 = distinct !DISubprogram(name: "fadvise", scope: !2568, file: !2568, line: 39, type: !2587, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !733, variables: !2629)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2589, !2572}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2591)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2591, file: !132, line: 242, baseType: !70, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2591, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2591, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2591, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2591, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2591, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2591, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2591, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2591, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2591, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2591, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2591, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2591, file: !132, line: 260, baseType: !2606, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2608)
!2608 = !{!2609, !2610, !2612}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2607, file: !132, line: 157, baseType: !2606, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2607, file: !132, line: 158, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2607, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2591, file: !132, line: 262, baseType: !2611, size: 64, offset: 832)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2591, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2591, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2591, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2591, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2591, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2591, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2591, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2591, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2591, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2591, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2591, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2591, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2591, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2591, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2591, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "fp", arg: 1, scope: !2586, file: !2568, line: 39, type: !2589)
!2631 = !DILocalVariable(name: "advice", arg: 2, scope: !2586, file: !2568, line: 39, type: !2572)
!2632 = !DILocation(line: 39, column: 16, scope: !2586)
!2633 = !DILocation(line: 39, column: 30, scope: !2586)
!2634 = !DILocation(line: 41, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2586, file: !2568, line: 41, column: 7)
!2636 = !DILocation(line: 41, column: 7, scope: !2586)
!2637 = !DILocation(line: 42, column: 15, scope: !2635)
!2638 = !DILocation(line: 31, column: 15, scope: !2567, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 42, column: 5, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2635, file: !2568, discriminator: 1)
!2641 = !DILocation(line: 31, column: 25, scope: !2567, inlinedAt: !2639)
!2642 = !DILocation(line: 31, column: 39, scope: !2567, inlinedAt: !2639)
!2643 = !DILocation(line: 31, column: 54, scope: !2567, inlinedAt: !2639)
!2644 = !DILocation(line: 34, column: 3, scope: !2579, inlinedAt: !2639)
!2645 = !DILocation(line: 42, column: 5, scope: !2635)
!2646 = !DILocation(line: 43, column: 1, scope: !2586)
!2647 = distinct !DISubprogram(name: "fopen_safer", scope: !2648, file: !2648, line: 31, type: !2649, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !736, variables: !2691)
!2648 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!2651, !68, !68}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2653, file: !132, line: 242, baseType: !70, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2653, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2653, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2653, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2653, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2653, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2653, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2653, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2653, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2653, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2653, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2653, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2653, file: !132, line: 260, baseType: !2668, size: 64, offset: 768)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !2670)
!2670 = !{!2671, !2672, !2674}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2669, file: !132, line: 157, baseType: !2668, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2669, file: !132, line: 158, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2669, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2653, file: !132, line: 262, baseType: !2673, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2653, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2653, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2653, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2653, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2653, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2653, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2653, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2653, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2653, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2653, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2653, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2653, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2653, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2653, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2653, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!2691 = !{!2692, !2693, !2694, !2695, !2698, !2701, !2704}
!2692 = !DILocalVariable(name: "file", arg: 1, scope: !2647, file: !2648, line: 31, type: !68)
!2693 = !DILocalVariable(name: "mode", arg: 2, scope: !2647, file: !2648, line: 31, type: !68)
!2694 = !DILocalVariable(name: "fp", scope: !2647, file: !2648, line: 33, type: !2651)
!2695 = !DILocalVariable(name: "fd", scope: !2696, file: !2648, line: 37, type: !70)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !2648, line: 36, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2647, file: !2648, line: 35, column: 7)
!2698 = !DILocalVariable(name: "f", scope: !2699, file: !2648, line: 41, type: !70)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2648, line: 40, column: 9)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !2648, line: 39, column: 11)
!2701 = !DILocalVariable(name: "e", scope: !2702, file: !2648, line: 45, type: !70)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !2648, line: 44, column: 13)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !2648, line: 43, column: 15)
!2704 = !DILocalVariable(name: "e", scope: !2705, file: !2648, line: 54, type: !70)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !2648, line: 53, column: 13)
!2706 = distinct !DILexicalBlock(scope: !2699, file: !2648, line: 51, column: 15)
!2707 = !DILocation(line: 31, column: 26, scope: !2647)
!2708 = !DILocation(line: 31, column: 44, scope: !2647)
!2709 = !DILocation(line: 33, column: 14, scope: !2647)
!2710 = !DILocation(line: 33, column: 9, scope: !2647)
!2711 = !DILocation(line: 35, column: 7, scope: !2697)
!2712 = !DILocation(line: 35, column: 7, scope: !2647)
!2713 = !DILocation(line: 37, column: 16, scope: !2696)
!2714 = !DILocation(line: 37, column: 11, scope: !2696)
!2715 = !DILocation(line: 39, column: 19, scope: !2700)
!2716 = !DILocation(line: 41, column: 19, scope: !2699)
!2717 = !DILocation(line: 41, column: 15, scope: !2699)
!2718 = !DILocation(line: 43, column: 17, scope: !2703)
!2719 = !DILocation(line: 43, column: 15, scope: !2699)
!2720 = !DILocation(line: 45, column: 23, scope: !2702)
!2721 = !DILocation(line: 45, column: 19, scope: !2702)
!2722 = !DILocation(line: 46, column: 15, scope: !2702)
!2723 = !DILocation(line: 47, column: 21, scope: !2702)
!2724 = !DILocation(line: 51, column: 15, scope: !2706)
!2725 = !DILocation(line: 51, column: 27, scope: !2706)
!2726 = !DILocation(line: 52, column: 15, scope: !2706)
!2727 = !DILocation(line: 52, column: 26, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2706, file: !2648, discriminator: 1)
!2729 = !DILocation(line: 52, column: 24, scope: !2728)
!2730 = !DILocation(line: 51, column: 15, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2699, file: !2648, discriminator: 1)
!2732 = !DILocation(line: 54, column: 23, scope: !2705)
!2733 = !DILocation(line: 54, column: 19, scope: !2705)
!2734 = !DILocation(line: 55, column: 15, scope: !2705)
!2735 = !DILocation(line: 56, column: 21, scope: !2705)
!2736 = !DILocation(line: 63, column: 1, scope: !2647)
!2737 = distinct !DISubprogram(name: "set_program_name", scope: !287, file: !287, line: 39, type: !84, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !283, variables: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DILocalVariable(name: "argv0", arg: 1, scope: !2737, file: !287, line: 39, type: !68)
!2740 = !DILocalVariable(name: "slash", scope: !2737, file: !287, line: 46, type: !68)
!2741 = !DILocalVariable(name: "base", scope: !2737, file: !287, line: 47, type: !68)
!2742 = !DILocation(line: 39, column: 31, scope: !2737)
!2743 = !DILocation(line: 51, column: 13, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2737, file: !287, line: 51, column: 7)
!2745 = !DILocation(line: 51, column: 7, scope: !2737)
!2746 = !DILocation(line: 55, column: 14, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !287, line: 52, column: 5)
!2748 = !DILocation(line: 54, column: 7, scope: !2747)
!2749 = !DILocation(line: 56, column: 7, scope: !2747)
!2750 = !DILocation(line: 59, column: 11, scope: !2737)
!2751 = !DILocation(line: 46, column: 15, scope: !2737)
!2752 = !DILocation(line: 60, column: 17, scope: !2737)
!2753 = !DILocation(line: 60, column: 33, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2737, file: !287, discriminator: 1)
!2755 = !DILocation(line: 60, column: 11, scope: !2737)
!2756 = !DILocation(line: 47, column: 15, scope: !2737)
!2757 = !DILocation(line: 61, column: 12, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2737, file: !287, line: 61, column: 7)
!2759 = !DILocation(line: 61, column: 20, scope: !2758)
!2760 = !DILocation(line: 61, column: 25, scope: !2758)
!2761 = !DILocation(line: 61, column: 28, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2758, file: !287, discriminator: 1)
!2763 = !DILocation(line: 61, column: 61, scope: !2762)
!2764 = !DILocation(line: 61, column: 7, scope: !2754)
!2765 = !DILocation(line: 64, column: 11, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !287, line: 64, column: 11)
!2767 = distinct !DILexicalBlock(scope: !2758, file: !287, line: 62, column: 5)
!2768 = !DILocation(line: 64, column: 36, scope: !2766)
!2769 = !DILocation(line: 64, column: 11, scope: !2767)
!2770 = !DILocation(line: 66, column: 24, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !287, line: 65, column: 9)
!2772 = !DILocation(line: 70, column: 41, scope: !2771)
!2773 = !DILocation(line: 72, column: 9, scope: !2771)
!2774 = !DILocation(line: 84, column: 16, scope: !2737)
!2775 = !DILocation(line: 90, column: 27, scope: !2737)
!2776 = !DILocation(line: 92, column: 1, scope: !2737)
!2777 = distinct !DISubprogram(name: "clone_quoting_options", scope: !302, file: !302, line: 114, type: !2778, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2781)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!2780, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!2781 = !{!2782, !2783, !2784}
!2782 = !DILocalVariable(name: "o", arg: 1, scope: !2777, file: !302, line: 114, type: !2780)
!2783 = !DILocalVariable(name: "e", scope: !2777, file: !302, line: 116, type: !70)
!2784 = !DILocalVariable(name: "p", scope: !2777, file: !302, line: 117, type: !2780)
!2785 = !DILocation(line: 114, column: 48, scope: !2777)
!2786 = !DILocation(line: 116, column: 11, scope: !2777)
!2787 = !DILocation(line: 116, column: 7, scope: !2777)
!2788 = !DILocation(line: 117, column: 40, scope: !2777)
!2789 = !DILocation(line: 117, column: 40, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2777, file: !302, discriminator: 3)
!2791 = !DILocation(line: 117, column: 31, scope: !2790)
!2792 = !DILocation(line: 117, column: 27, scope: !2777)
!2793 = !DILocation(line: 119, column: 9, scope: !2777)
!2794 = !DILocation(line: 120, column: 3, scope: !2777)
!2795 = distinct !DISubprogram(name: "get_quoting_style", scope: !302, file: !302, line: 125, type: !2796, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2800)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!5, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "o", arg: 1, scope: !2795, file: !302, line: 125, type: !2798)
!2802 = !DILocation(line: 125, column: 50, scope: !2795)
!2803 = !DILocation(line: 127, column: 11, scope: !2795)
!2804 = !DILocation(line: 127, column: 46, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2795, file: !302, discriminator: 3)
!2806 = !{!2807, !803, i64 0}
!2807 = !{!"quoting_options", !803, i64 0, !1013, i64 4, !803, i64 8, !802, i64 40, !802, i64 48}
!2808 = !DILocation(line: 127, column: 3, scope: !2805)
!2809 = distinct !DISubprogram(name: "set_quoting_style", scope: !302, file: !302, line: 133, type: !2810, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !2780, !5}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "o", arg: 1, scope: !2809, file: !302, line: 133, type: !2780)
!2814 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !302, line: 133, type: !5)
!2815 = !DILocation(line: 133, column: 44, scope: !2809)
!2816 = !DILocation(line: 133, column: 66, scope: !2809)
!2817 = !DILocation(line: 135, column: 4, scope: !2809)
!2818 = !DILocation(line: 135, column: 39, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2809, file: !302, discriminator: 3)
!2820 = !DILocation(line: 135, column: 45, scope: !2819)
!2821 = !DILocation(line: 136, column: 1, scope: !2809)
!2822 = distinct !DISubprogram(name: "set_char_quoting", scope: !302, file: !302, line: 144, type: !2823, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!70, !2780, !59, !70}
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2832, !2833}
!2826 = !DILocalVariable(name: "o", arg: 1, scope: !2822, file: !302, line: 144, type: !2780)
!2827 = !DILocalVariable(name: "c", arg: 2, scope: !2822, file: !302, line: 144, type: !59)
!2828 = !DILocalVariable(name: "i", arg: 3, scope: !2822, file: !302, line: 144, type: !70)
!2829 = !DILocalVariable(name: "uc", scope: !2822, file: !302, line: 146, type: !67)
!2830 = !DILocalVariable(name: "p", scope: !2822, file: !302, line: 147, type: !2831)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2832 = !DILocalVariable(name: "shift", scope: !2822, file: !302, line: 149, type: !70)
!2833 = !DILocalVariable(name: "r", scope: !2822, file: !302, line: 150, type: !70)
!2834 = !DILocation(line: 144, column: 43, scope: !2822)
!2835 = !DILocation(line: 144, column: 51, scope: !2822)
!2836 = !DILocation(line: 144, column: 58, scope: !2822)
!2837 = !DILocation(line: 146, column: 17, scope: !2822)
!2838 = !DILocation(line: 148, column: 6, scope: !2822)
!2839 = !DILocation(line: 148, column: 62, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2822, file: !302, discriminator: 3)
!2841 = !DILocation(line: 148, column: 57, scope: !2840)
!2842 = !DILocation(line: 147, column: 17, scope: !2822)
!2843 = !DILocation(line: 149, column: 18, scope: !2822)
!2844 = !DILocation(line: 149, column: 15, scope: !2822)
!2845 = !DILocation(line: 149, column: 7, scope: !2822)
!2846 = !DILocation(line: 150, column: 12, scope: !2822)
!2847 = !DILocation(line: 150, column: 15, scope: !2822)
!2848 = !DILocation(line: 150, column: 25, scope: !2822)
!2849 = !DILocation(line: 150, column: 7, scope: !2822)
!2850 = !DILocation(line: 151, column: 13, scope: !2822)
!2851 = !DILocation(line: 151, column: 18, scope: !2822)
!2852 = !DILocation(line: 151, column: 23, scope: !2822)
!2853 = !DILocation(line: 151, column: 6, scope: !2822)
!2854 = !DILocation(line: 152, column: 3, scope: !2822)
!2855 = distinct !DISubprogram(name: "set_quoting_flags", scope: !302, file: !302, line: 160, type: !2856, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!70, !2780, !70}
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "o", arg: 1, scope: !2855, file: !302, line: 160, type: !2780)
!2860 = !DILocalVariable(name: "i", arg: 2, scope: !2855, file: !302, line: 160, type: !70)
!2861 = !DILocalVariable(name: "r", scope: !2855, file: !302, line: 162, type: !70)
!2862 = !DILocation(line: 160, column: 44, scope: !2855)
!2863 = !DILocation(line: 160, column: 51, scope: !2855)
!2864 = !DILocation(line: 163, column: 8, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2855, file: !302, line: 163, column: 7)
!2866 = !DILocation(line: 163, column: 7, scope: !2855)
!2867 = !DILocation(line: 165, column: 10, scope: !2855)
!2868 = !{!2807, !1013, i64 4}
!2869 = !DILocation(line: 162, column: 7, scope: !2855)
!2870 = !DILocation(line: 166, column: 12, scope: !2855)
!2871 = !DILocation(line: 167, column: 3, scope: !2855)
!2872 = distinct !DISubprogram(name: "set_custom_quoting", scope: !302, file: !302, line: 171, type: !2873, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !2780, !68, !68}
!2875 = !{!2876, !2877, !2878}
!2876 = !DILocalVariable(name: "o", arg: 1, scope: !2872, file: !302, line: 171, type: !2780)
!2877 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2872, file: !302, line: 172, type: !68)
!2878 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2872, file: !302, line: 172, type: !68)
!2879 = !DILocation(line: 171, column: 45, scope: !2872)
!2880 = !DILocation(line: 172, column: 33, scope: !2872)
!2881 = !DILocation(line: 172, column: 57, scope: !2872)
!2882 = !DILocation(line: 174, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2872, file: !302, line: 174, column: 7)
!2884 = !DILocation(line: 174, column: 7, scope: !2872)
!2885 = !DILocation(line: 176, column: 6, scope: !2872)
!2886 = !DILocation(line: 176, column: 12, scope: !2872)
!2887 = !DILocation(line: 177, column: 8, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2872, file: !302, line: 177, column: 7)
!2889 = !DILocation(line: 177, column: 23, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2888, file: !302, discriminator: 1)
!2891 = !DILocation(line: 177, column: 19, scope: !2888)
!2892 = !DILocation(line: 178, column: 5, scope: !2888)
!2893 = !DILocation(line: 179, column: 6, scope: !2872)
!2894 = !DILocation(line: 179, column: 17, scope: !2872)
!2895 = !{!2807, !802, i64 40}
!2896 = !DILocation(line: 180, column: 6, scope: !2872)
!2897 = !DILocation(line: 180, column: 18, scope: !2872)
!2898 = !{!2807, !802, i64 48}
!2899 = !DILocation(line: 181, column: 1, scope: !2872)
!2900 = distinct !DISubprogram(name: "quotearg_buffer", scope: !302, file: !302, line: 776, type: !2901, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!61, !58, !61, !68, !61, !2798}
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2904 = !DILocalVariable(name: "buffer", arg: 1, scope: !2900, file: !302, line: 776, type: !58)
!2905 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2900, file: !302, line: 776, type: !61)
!2906 = !DILocalVariable(name: "arg", arg: 3, scope: !2900, file: !302, line: 777, type: !68)
!2907 = !DILocalVariable(name: "argsize", arg: 4, scope: !2900, file: !302, line: 777, type: !61)
!2908 = !DILocalVariable(name: "o", arg: 5, scope: !2900, file: !302, line: 778, type: !2798)
!2909 = !DILocalVariable(name: "p", scope: !2900, file: !302, line: 780, type: !2798)
!2910 = !DILocalVariable(name: "e", scope: !2900, file: !302, line: 781, type: !70)
!2911 = !DILocalVariable(name: "r", scope: !2900, file: !302, line: 782, type: !61)
!2912 = !DILocation(line: 776, column: 24, scope: !2900)
!2913 = !DILocation(line: 776, column: 39, scope: !2900)
!2914 = !DILocation(line: 777, column: 30, scope: !2900)
!2915 = !DILocation(line: 777, column: 42, scope: !2900)
!2916 = !DILocation(line: 778, column: 48, scope: !2900)
!2917 = !DILocation(line: 780, column: 37, scope: !2900)
!2918 = !DILocation(line: 780, column: 33, scope: !2900)
!2919 = !DILocation(line: 781, column: 11, scope: !2900)
!2920 = !DILocation(line: 781, column: 7, scope: !2900)
!2921 = !DILocation(line: 783, column: 43, scope: !2900)
!2922 = !DILocation(line: 783, column: 53, scope: !2900)
!2923 = !DILocation(line: 783, column: 60, scope: !2900)
!2924 = !DILocation(line: 784, column: 43, scope: !2900)
!2925 = !DILocation(line: 784, column: 58, scope: !2900)
!2926 = !DILocation(line: 782, column: 14, scope: !2900)
!2927 = !DILocation(line: 782, column: 10, scope: !2900)
!2928 = !DILocation(line: 785, column: 9, scope: !2900)
!2929 = !DILocation(line: 786, column: 3, scope: !2900)
!2930 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !302, file: !302, line: 248, type: !2931, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !2935)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!61, !58, !61, !68, !61, !5, !70, !2933, !68, !68}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2960, !2961, !2962, !2963, !2964, !2967, !2968, !2985, !2988, !2989, !2996}
!2936 = !DILocalVariable(name: "buffer", arg: 1, scope: !2930, file: !302, line: 248, type: !58)
!2937 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2930, file: !302, line: 248, type: !61)
!2938 = !DILocalVariable(name: "arg", arg: 3, scope: !2930, file: !302, line: 249, type: !68)
!2939 = !DILocalVariable(name: "argsize", arg: 4, scope: !2930, file: !302, line: 249, type: !61)
!2940 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2930, file: !302, line: 250, type: !5)
!2941 = !DILocalVariable(name: "flags", arg: 6, scope: !2930, file: !302, line: 250, type: !70)
!2942 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2930, file: !302, line: 251, type: !2933)
!2943 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2930, file: !302, line: 252, type: !68)
!2944 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2930, file: !302, line: 253, type: !68)
!2945 = !DILocalVariable(name: "i", scope: !2930, file: !302, line: 255, type: !61)
!2946 = !DILocalVariable(name: "len", scope: !2930, file: !302, line: 256, type: !61)
!2947 = !DILocalVariable(name: "orig_buffersize", scope: !2930, file: !302, line: 257, type: !61)
!2948 = !DILocalVariable(name: "quote_string", scope: !2930, file: !302, line: 258, type: !68)
!2949 = !DILocalVariable(name: "quote_string_len", scope: !2930, file: !302, line: 259, type: !61)
!2950 = !DILocalVariable(name: "backslash_escapes", scope: !2930, file: !302, line: 260, type: !76)
!2951 = !DILocalVariable(name: "unibyte_locale", scope: !2930, file: !302, line: 261, type: !76)
!2952 = !DILocalVariable(name: "elide_outer_quotes", scope: !2930, file: !302, line: 262, type: !76)
!2953 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2930, file: !302, line: 263, type: !76)
!2954 = !DILocalVariable(name: "encountered_single_quote", scope: !2930, file: !302, line: 264, type: !76)
!2955 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2930, file: !302, line: 265, type: !76)
!2956 = !DILocalVariable(name: "c", scope: !2957, file: !302, line: 394, type: !67)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !302, line: 393, column: 5)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !302, line: 392, column: 3)
!2959 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 392, column: 3)
!2960 = !DILocalVariable(name: "esc", scope: !2957, file: !302, line: 395, type: !67)
!2961 = !DILocalVariable(name: "is_right_quote", scope: !2957, file: !302, line: 396, type: !76)
!2962 = !DILocalVariable(name: "escaping", scope: !2957, file: !302, line: 397, type: !76)
!2963 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2957, file: !302, line: 398, type: !76)
!2964 = !DILocalVariable(name: "m", scope: !2965, file: !302, line: 602, type: !61)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 600, column: 11)
!2966 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 418, column: 9)
!2967 = !DILocalVariable(name: "printable", scope: !2965, file: !302, line: 604, type: !76)
!2968 = !DILocalVariable(name: "mbstate", scope: !2969, file: !302, line: 613, type: !2971)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !302, line: 612, column: 15)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !302, line: 606, column: 17)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2972, line: 107, baseType: !2973)
!2972 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2972, line: 95, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2972, line: 83, size: 64, elements: !2975)
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2974, file: !2972, line: 85, baseType: !70, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2974, file: !2972, line: 94, baseType: !2978, size: 32, offset: 32)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !2972, line: 86, size: 32, elements: !2979)
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2978, file: !2972, line: 89, baseType: !315, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2978, file: !2972, line: 93, baseType: !2982, size: 32)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !2983)
!2983 = !{!2984}
!2984 = !DISubrange(count: 4)
!2985 = !DILocalVariable(name: "w", scope: !2986, file: !302, line: 623, type: !2987)
!2986 = distinct !DILexicalBlock(scope: !2969, file: !302, line: 622, column: 19)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !62, line: 90, baseType: !70)
!2988 = !DILocalVariable(name: "bytes", scope: !2986, file: !302, line: 624, type: !61)
!2989 = !DILocalVariable(name: "j", scope: !2990, file: !302, line: 649, type: !61)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !302, line: 648, column: 27)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !302, line: 646, column: 29)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !302, line: 641, column: 23)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !302, line: 633, column: 30)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !302, line: 628, column: 30)
!2995 = distinct !DILexicalBlock(scope: !2986, file: !302, line: 626, column: 25)
!2996 = !DILocalVariable(name: "ilim", scope: !2997, file: !302, line: 676, type: !61)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !302, line: 673, column: 15)
!2998 = distinct !DILexicalBlock(scope: !2965, file: !302, line: 672, column: 17)
!2999 = !DILocation(line: 248, column: 33, scope: !2930)
!3000 = !DILocation(line: 248, column: 48, scope: !2930)
!3001 = !DILocation(line: 249, column: 39, scope: !2930)
!3002 = !DILocation(line: 249, column: 51, scope: !2930)
!3003 = !DILocation(line: 250, column: 46, scope: !2930)
!3004 = !DILocation(line: 250, column: 65, scope: !2930)
!3005 = !DILocation(line: 251, column: 47, scope: !2930)
!3006 = !DILocation(line: 252, column: 39, scope: !2930)
!3007 = !DILocation(line: 253, column: 39, scope: !2930)
!3008 = !DILocation(line: 256, column: 10, scope: !2930)
!3009 = !DILocation(line: 257, column: 10, scope: !2930)
!3010 = !DILocation(line: 258, column: 15, scope: !2930)
!3011 = !DILocation(line: 259, column: 10, scope: !2930)
!3012 = !DILocation(line: 260, column: 8, scope: !2930)
!3013 = !DILocation(line: 261, column: 25, scope: !2930)
!3014 = !DILocation(line: 261, column: 36, scope: !2930)
!3015 = !DILocation(line: 262, column: 8, scope: !2930)
!3016 = !DILocation(line: 263, column: 8, scope: !2930)
!3017 = !DILocation(line: 264, column: 8, scope: !2930)
!3018 = !DILocation(line: 265, column: 8, scope: !2930)
!3019 = !DILocation(line: 265, column: 3, scope: !2930)
!3020 = !DILocation(line: 308, column: 3, scope: !2930)
!3021 = !DILocation(line: 315, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 309, column: 5)
!3023 = !DILocation(line: 315, column: 12, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3022, file: !302, line: 315, column: 11)
!3025 = !DILocation(line: 316, column: 9, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !3027, file: !302, discriminator: 1)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !302, line: 316, column: 9)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !302, line: 316, column: 9)
!3029 = !DILocation(line: 316, column: 9, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !3028, file: !302, discriminator: 1)
!3031 = !DILocation(line: 316, column: 9, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3027, file: !302, discriminator: 2)
!3033 = !DILocation(line: 354, column: 26, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !302, line: 332, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !302, line: 331, column: 13)
!3036 = distinct !DILexicalBlock(scope: !3022, file: !302, line: 330, column: 7)
!3037 = !DILocation(line: 355, column: 27, scope: !3034)
!3038 = !DILocation(line: 356, column: 11, scope: !3034)
!3039 = !DILocation(line: 357, column: 14, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !302, line: 357, column: 13)
!3041 = !DILocation(line: 357, column: 13, scope: !3036)
!3042 = !DILocation(line: 358, column: 43, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3044, file: !302, discriminator: 1)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !302, line: 358, column: 11)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !302, line: 358, column: 11)
!3046 = !DILocation(line: 358, column: 11, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3045, file: !302, discriminator: 1)
!3048 = !DILocation(line: 359, column: 13, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3050, file: !302, discriminator: 1)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !302, line: 359, column: 13)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !302, line: 359, column: 13)
!3052 = !DILocation(line: 359, column: 13, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3051, file: !302, discriminator: 1)
!3054 = !DILocation(line: 359, column: 13, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3050, file: !302, discriminator: 2)
!3056 = !DILocation(line: 359, column: 13, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3051, file: !302, discriminator: 3)
!3058 = !DILocation(line: 358, column: 70, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3044, file: !302, discriminator: 2)
!3060 = distinct !{!3060, !3061, !3062}
!3061 = !DILocation(line: 358, column: 11, scope: !3045)
!3062 = !DILocation(line: 359, column: 13, scope: !3045)
!3063 = !DILocation(line: 362, column: 28, scope: !3036)
!3064 = !DILocation(line: 364, column: 7, scope: !3022)
!3065 = !DILocation(line: 367, column: 7, scope: !3022)
!3066 = !DILocation(line: 370, column: 7, scope: !3022)
!3067 = !DILocation(line: 373, column: 12, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3022, file: !302, line: 373, column: 11)
!3069 = !DILocation(line: 373, column: 11, scope: !3022)
!3070 = !DILocation(line: 378, column: 12, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3022, file: !302, line: 378, column: 11)
!3072 = !DILocation(line: 378, column: 11, scope: !3022)
!3073 = !DILocation(line: 379, column: 9, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3075, file: !302, discriminator: 1)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !302, line: 379, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !302, line: 379, column: 9)
!3077 = !DILocation(line: 379, column: 9, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3076, file: !302, discriminator: 1)
!3079 = !DILocation(line: 379, column: 9, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3075, file: !302, discriminator: 2)
!3081 = !DILocation(line: 386, column: 7, scope: !3022)
!3082 = !DILocation(line: 389, column: 7, scope: !3022)
!3083 = !DILocation(line: 255, column: 10, scope: !2930)
!3084 = !DILocation(line: 392, column: 8, scope: !2959)
!3085 = !DILocation(line: 392, column: 27, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !2958, file: !302, discriminator: 1)
!3087 = !DILocation(line: 392, column: 19, scope: !3086)
!3088 = !DILocation(line: 392, column: 60, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !2958, file: !302, discriminator: 3)
!3090 = !DILocation(line: 392, column: 3, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !2959, file: !302, discriminator: 4)
!3092 = !DILocation(line: 392, column: 41, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !2958, file: !302, discriminator: 2)
!3094 = !DILocation(line: 392, column: 48, scope: !3093)
!3095 = !DILocation(line: 396, column: 12, scope: !2957)
!3096 = !DILocation(line: 397, column: 12, scope: !2957)
!3097 = !DILocation(line: 398, column: 12, scope: !2957)
!3098 = !DILocation(line: 401, column: 11, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 400, column: 11)
!3100 = !DILocation(line: 403, column: 17, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3099, file: !302, discriminator: 1)
!3102 = !DILocation(line: 404, column: 39, scope: !3099)
!3103 = !DILocation(line: 408, column: 32, scope: !3099)
!3104 = !DILocation(line: 404, column: 19, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3099, file: !302, discriminator: 2)
!3106 = !DILocation(line: 404, column: 15, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3099, file: !302, discriminator: 4)
!3108 = !DILocation(line: 409, column: 11, scope: !3099)
!3109 = !DILocation(line: 409, column: 26, scope: !3101)
!3110 = !DILocation(line: 409, column: 14, scope: !3101)
!3111 = !DILocation(line: 400, column: 11, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !2957, file: !302, discriminator: 1)
!3113 = !DILocation(line: 416, column: 11, scope: !2957)
!3114 = !DILocation(line: 394, column: 21, scope: !2957)
!3115 = !DILocation(line: 417, column: 7, scope: !2957)
!3116 = !DILocation(line: 420, column: 15, scope: !2966)
!3117 = !DILocation(line: 422, column: 15, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3119, file: !302, discriminator: 1)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !302, line: 422, column: 15)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !302, line: 421, column: 13)
!3121 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 420, column: 15)
!3122 = !DILocation(line: 422, column: 15, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3124, file: !302, discriminator: 4)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !302, line: 422, column: 15)
!3125 = !DILocation(line: 422, column: 15, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3124, file: !302, discriminator: 3)
!3127 = !DILocation(line: 422, column: 15, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3129, file: !302, discriminator: 6)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !302, line: 422, column: 15)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !302, line: 422, column: 15)
!3131 = distinct !DILexicalBlock(scope: !3124, file: !302, line: 422, column: 15)
!3132 = !DILocation(line: 422, column: 15, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3130, file: !302, discriminator: 6)
!3134 = !DILocation(line: 422, column: 15, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3129, file: !302, discriminator: 7)
!3136 = !DILocation(line: 422, column: 15, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3130, file: !302, discriminator: 8)
!3138 = !DILocation(line: 422, column: 15, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3140, file: !302, discriminator: 11)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !302, line: 422, column: 15)
!3141 = distinct !DILexicalBlock(scope: !3131, file: !302, line: 422, column: 15)
!3142 = !DILocation(line: 422, column: 15, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3141, file: !302, discriminator: 11)
!3144 = !DILocation(line: 422, column: 15, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3140, file: !302, discriminator: 12)
!3146 = !DILocation(line: 422, column: 15, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3141, file: !302, discriminator: 13)
!3148 = !DILocation(line: 422, column: 15, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !302, discriminator: 16)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !302, line: 422, column: 15)
!3151 = distinct !DILexicalBlock(scope: !3131, file: !302, line: 422, column: 15)
!3152 = !DILocation(line: 422, column: 15, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3151, file: !302, discriminator: 16)
!3154 = !DILocation(line: 422, column: 15, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3150, file: !302, discriminator: 17)
!3156 = !DILocation(line: 422, column: 15, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3151, file: !302, discriminator: 18)
!3158 = !DILocation(line: 422, column: 15, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3131, file: !302, discriminator: 20)
!3160 = !DILocation(line: 422, column: 15, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !3162, file: !302, discriminator: 22)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !302, line: 422, column: 15)
!3163 = distinct !DILexicalBlock(scope: !3119, file: !302, line: 422, column: 15)
!3164 = !DILocation(line: 422, column: 15, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3163, file: !302, discriminator: 22)
!3166 = !DILocation(line: 422, column: 15, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3162, file: !302, discriminator: 23)
!3168 = !DILocation(line: 422, column: 15, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3163, file: !302, discriminator: 24)
!3170 = !DILocation(line: 430, column: 19, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3120, file: !302, line: 429, column: 19)
!3172 = !DILocation(line: 430, column: 24, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3171, file: !302, discriminator: 1)
!3174 = !DILocation(line: 430, column: 28, scope: !3173)
!3175 = !DILocation(line: 430, column: 38, scope: !3173)
!3176 = !DILocation(line: 430, column: 48, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3171, file: !302, discriminator: 2)
!3178 = !DILocation(line: 430, column: 59, scope: !3177)
!3179 = !DILocation(line: 432, column: 19, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3181, file: !302, discriminator: 1)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !302, line: 432, column: 19)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !302, line: 432, column: 19)
!3183 = distinct !DILexicalBlock(scope: !3171, file: !302, line: 431, column: 17)
!3184 = !DILocation(line: 432, column: 19, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3182, file: !302, discriminator: 1)
!3186 = !DILocation(line: 432, column: 19, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3181, file: !302, discriminator: 2)
!3188 = !DILocation(line: 432, column: 19, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3182, file: !302, discriminator: 3)
!3190 = !DILocation(line: 433, column: 19, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !302, discriminator: 1)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !302, line: 433, column: 19)
!3193 = distinct !DILexicalBlock(scope: !3183, file: !302, line: 433, column: 19)
!3194 = !DILocation(line: 433, column: 19, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3193, file: !302, discriminator: 1)
!3196 = !DILocation(line: 433, column: 19, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3192, file: !302, discriminator: 2)
!3198 = !DILocation(line: 433, column: 19, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3193, file: !302, discriminator: 3)
!3200 = !DILocation(line: 434, column: 17, scope: !3183)
!3201 = !DILocation(line: 441, column: 20, scope: !3121)
!3202 = !DILocation(line: 446, column: 11, scope: !2966)
!3203 = !DILocation(line: 449, column: 19, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 447, column: 13)
!3205 = !DILocation(line: 455, column: 19, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !302, line: 454, column: 19)
!3207 = !DILocation(line: 455, column: 24, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3206, file: !302, discriminator: 1)
!3209 = !DILocation(line: 455, column: 28, scope: !3208)
!3210 = !DILocation(line: 455, column: 38, scope: !3208)
!3211 = !DILocation(line: 455, column: 47, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3206, file: !302, discriminator: 2)
!3213 = !DILocation(line: 455, column: 41, scope: !3212)
!3214 = !DILocation(line: 455, column: 52, scope: !3212)
!3215 = !DILocation(line: 454, column: 19, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3204, file: !302, discriminator: 1)
!3217 = !DILocation(line: 456, column: 25, scope: !3206)
!3218 = !DILocation(line: 456, column: 17, scope: !3206)
!3219 = !DILocation(line: 463, column: 25, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3206, file: !302, line: 457, column: 19)
!3221 = !DILocation(line: 467, column: 21, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3223, file: !302, discriminator: 1)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !302, line: 467, column: 21)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !302, line: 467, column: 21)
!3225 = !DILocation(line: 467, column: 21, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3224, file: !302, discriminator: 1)
!3227 = !DILocation(line: 467, column: 21, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3223, file: !302, discriminator: 2)
!3229 = !DILocation(line: 467, column: 21, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3224, file: !302, discriminator: 3)
!3231 = !DILocation(line: 468, column: 21, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3233, file: !302, discriminator: 1)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !302, line: 468, column: 21)
!3234 = distinct !DILexicalBlock(scope: !3220, file: !302, line: 468, column: 21)
!3235 = !DILocation(line: 468, column: 21, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3234, file: !302, discriminator: 1)
!3237 = !DILocation(line: 468, column: 21, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3233, file: !302, discriminator: 2)
!3239 = !DILocation(line: 468, column: 21, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3234, file: !302, discriminator: 3)
!3241 = !DILocation(line: 469, column: 21, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3243, file: !302, discriminator: 1)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !302, line: 469, column: 21)
!3244 = distinct !DILexicalBlock(scope: !3220, file: !302, line: 469, column: 21)
!3245 = !DILocation(line: 469, column: 21, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3244, file: !302, discriminator: 1)
!3247 = !DILocation(line: 469, column: 21, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3243, file: !302, discriminator: 2)
!3249 = !DILocation(line: 469, column: 21, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3244, file: !302, discriminator: 3)
!3251 = !DILocation(line: 470, column: 21, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3253, file: !302, discriminator: 1)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !302, line: 470, column: 21)
!3254 = distinct !DILexicalBlock(scope: !3220, file: !302, line: 470, column: 21)
!3255 = !DILocation(line: 470, column: 21, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3254, file: !302, discriminator: 1)
!3257 = !DILocation(line: 470, column: 21, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3253, file: !302, discriminator: 2)
!3259 = !DILocation(line: 470, column: 21, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3254, file: !302, discriminator: 3)
!3261 = !DILocation(line: 471, column: 21, scope: !3220)
!3262 = !DILocation(line: 395, column: 21, scope: !2957)
!3263 = !DILocation(line: 484, column: 31, scope: !2966)
!3264 = !DILocation(line: 485, column: 31, scope: !2966)
!3265 = !DILocation(line: 487, column: 31, scope: !2966)
!3266 = !DILocation(line: 488, column: 31, scope: !2966)
!3267 = !DILocation(line: 489, column: 31, scope: !2966)
!3268 = !DILocation(line: 492, column: 15, scope: !2966)
!3269 = !DILocation(line: 494, column: 19, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !302, line: 493, column: 13)
!3271 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 492, column: 15)
!3272 = !DILocation(line: 501, column: 33, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 501, column: 15)
!3274 = !DILocation(line: 506, column: 15, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 505, column: 15)
!3276 = !DILocation(line: 510, column: 15, scope: !2966)
!3277 = !DILocation(line: 518, column: 26, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 518, column: 15)
!3279 = !DILocation(line: 518, column: 15, scope: !2966)
!3280 = !DILocation(line: 518, column: 40, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3278, file: !302, discriminator: 1)
!3282 = !DILocation(line: 518, column: 47, scope: !3281)
!3283 = !DILocation(line: 522, column: 17, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 522, column: 15)
!3285 = !DILocation(line: 518, column: 18, scope: !3281)
!3286 = !DILocation(line: 518, column: 65, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3278, file: !302, discriminator: 2)
!3288 = !DILocation(line: 518, column: 15, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !2966, file: !302, discriminator: 2)
!3290 = !DILocation(line: 522, column: 15, scope: !2966)
!3291 = !DILocation(line: 526, column: 11, scope: !2966)
!3292 = !DILocation(line: 541, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 540, column: 15)
!3294 = !DILocation(line: 548, column: 15, scope: !2966)
!3295 = !DILocation(line: 550, column: 19, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !302, line: 549, column: 13)
!3297 = distinct !DILexicalBlock(scope: !2966, file: !302, line: 548, column: 15)
!3298 = !DILocation(line: 553, column: 19, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3296, file: !302, line: 553, column: 19)
!3300 = !DILocation(line: 553, column: 35, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3299, file: !302, discriminator: 1)
!3302 = !DILocation(line: 553, column: 30, scope: !3299)
!3303 = !DILocation(line: 562, column: 15, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3305, file: !302, discriminator: 1)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !302, line: 562, column: 15)
!3306 = distinct !DILexicalBlock(scope: !3296, file: !302, line: 562, column: 15)
!3307 = !DILocation(line: 562, column: 15, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3306, file: !302, discriminator: 1)
!3309 = !DILocation(line: 562, column: 15, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3305, file: !302, discriminator: 2)
!3311 = !DILocation(line: 562, column: 15, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3306, file: !302, discriminator: 3)
!3313 = !DILocation(line: 563, column: 15, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3315, file: !302, discriminator: 1)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !302, line: 563, column: 15)
!3316 = distinct !DILexicalBlock(scope: !3296, file: !302, line: 563, column: 15)
!3317 = !DILocation(line: 563, column: 15, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3316, file: !302, discriminator: 1)
!3319 = !DILocation(line: 563, column: 15, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3315, file: !302, discriminator: 2)
!3321 = !DILocation(line: 563, column: 15, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3316, file: !302, discriminator: 3)
!3323 = !DILocation(line: 564, column: 15, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3325, file: !302, discriminator: 1)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !302, line: 564, column: 15)
!3326 = distinct !DILexicalBlock(scope: !3296, file: !302, line: 564, column: 15)
!3327 = !DILocation(line: 564, column: 15, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !3326, file: !302, discriminator: 1)
!3329 = !DILocation(line: 564, column: 15, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3325, file: !302, discriminator: 2)
!3331 = !DILocation(line: 564, column: 15, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !3326, file: !302, discriminator: 3)
!3333 = !DILocation(line: 566, column: 13, scope: !3296)
!3334 = !DILocation(line: 606, column: 17, scope: !2965)
!3335 = !DILocation(line: 602, column: 20, scope: !2965)
!3336 = !DILocation(line: 609, column: 29, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !2970, file: !302, line: 607, column: 15)
!3338 = !DILocation(line: 609, column: 27, scope: !3337)
!3339 = !DILocation(line: 604, column: 18, scope: !2965)
!3340 = !DILocation(line: 610, column: 15, scope: !3337)
!3341 = !DILocation(line: 613, column: 17, scope: !2969)
!3342 = !DILocation(line: 614, column: 17, scope: !2969)
!3343 = !DILocation(line: 618, column: 29, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !2969, file: !302, line: 618, column: 21)
!3345 = !DILocation(line: 618, column: 21, scope: !2969)
!3346 = distinct !{!3346, !3347, !3348}
!3347 = !DILocation(line: 621, column: 17, scope: !2969)
!3348 = !DILocation(line: 667, column: 44, scope: !2969)
!3349 = !DILocation(line: 619, column: 29, scope: !3344)
!3350 = !DILocation(line: 619, column: 19, scope: !3344)
!3351 = !DILocation(line: 623, column: 21, scope: !2986)
!3352 = !DILocation(line: 624, column: 56, scope: !2986)
!3353 = !DILocation(line: 624, column: 50, scope: !2986)
!3354 = !DILocation(line: 625, column: 53, scope: !2986)
!3355 = !DILocation(line: 613, column: 27, scope: !2969)
!3356 = !DILocation(line: 623, column: 29, scope: !2986)
!3357 = !DILocation(line: 624, column: 36, scope: !2986)
!3358 = !DILocation(line: 624, column: 28, scope: !2986)
!3359 = !DILocation(line: 626, column: 25, scope: !2986)
!3360 = !DILocation(line: 636, column: 38, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3362, file: !302, discriminator: 1)
!3362 = distinct !DILexicalBlock(scope: !2993, file: !302, line: 634, column: 23)
!3363 = !DILocation(line: 636, column: 48, scope: !3361)
!3364 = !DILocation(line: 636, column: 51, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3362, file: !302, discriminator: 2)
!3366 = !DILocation(line: 636, column: 48, scope: !3365)
!3367 = !DILocation(line: 636, column: 25, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3362, file: !302, discriminator: 3)
!3369 = !DILocation(line: 637, column: 28, scope: !3362)
!3370 = !DILocation(line: 636, column: 34, scope: !3361)
!3371 = distinct !{!3371, !3372, !3369}
!3372 = !DILocation(line: 636, column: 25, scope: !3362)
!3373 = !DILocation(line: 650, column: 43, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3375, file: !302, discriminator: 1)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !302, line: 650, column: 29)
!3376 = distinct !DILexicalBlock(scope: !2990, file: !302, line: 650, column: 29)
!3377 = !DILocation(line: 647, column: 29, scope: !2991)
!3378 = !DILocation(line: 649, column: 36, scope: !2990)
!3379 = !DILocation(line: 651, column: 49, scope: !3375)
!3380 = !DILocation(line: 651, column: 39, scope: !3375)
!3381 = !DILocation(line: 651, column: 31, scope: !3375)
!3382 = !DILocation(line: 650, column: 53, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3375, file: !302, discriminator: 2)
!3384 = !DILocation(line: 650, column: 29, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3376, file: !302, discriminator: 1)
!3386 = distinct !{!3386, !3387, !3388}
!3387 = !DILocation(line: 650, column: 29, scope: !3376)
!3388 = !DILocation(line: 659, column: 33, scope: !3376)
!3389 = !DILocation(line: 666, column: 19, scope: !2969)
!3390 = !DILocation(line: 662, column: 41, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !2992, file: !302, line: 662, column: 29)
!3392 = !DILocation(line: 662, column: 31, scope: !3391)
!3393 = !DILocation(line: 662, column: 29, scope: !2992)
!3394 = !DILocation(line: 664, column: 27, scope: !2992)
!3395 = !DILocation(line: 667, column: 26, scope: !2969)
!3396 = !DILocation(line: 667, column: 24, scope: !2969)
!3397 = !DILocation(line: 666, column: 19, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !2986, file: !302, discriminator: 3)
!3399 = !DILocation(line: 668, column: 15, scope: !2970)
!3400 = !DILocation(line: 670, column: 40, scope: !2965)
!3401 = !DILocation(line: 672, column: 19, scope: !2998)
!3402 = !DILocation(line: 672, column: 45, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !2998, file: !302, discriminator: 1)
!3404 = !DILocation(line: 672, column: 23, scope: !2998)
!3405 = !DILocation(line: 676, column: 33, scope: !2997)
!3406 = !DILocation(line: 676, column: 24, scope: !2997)
!3407 = !DILocation(line: 678, column: 17, scope: !2997)
!3408 = !DILocation(line: 680, column: 43, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !302, line: 680, column: 25)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !302, line: 679, column: 19)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !302, line: 678, column: 17)
!3412 = distinct !DILexicalBlock(scope: !2997, file: !302, line: 678, column: 17)
!3413 = !DILocation(line: 682, column: 25, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3415, file: !302, discriminator: 1)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !302, line: 682, column: 25)
!3416 = distinct !DILexicalBlock(scope: !3409, file: !302, line: 681, column: 23)
!3417 = !DILocation(line: 682, column: 25, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3419, file: !302, discriminator: 4)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !302, line: 682, column: 25)
!3420 = !DILocation(line: 682, column: 25, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3419, file: !302, discriminator: 3)
!3422 = !DILocation(line: 682, column: 25, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3424, file: !302, discriminator: 6)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !302, line: 682, column: 25)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !302, line: 682, column: 25)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !302, line: 682, column: 25)
!3427 = !DILocation(line: 682, column: 25, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3425, file: !302, discriminator: 6)
!3429 = !DILocation(line: 682, column: 25, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !3424, file: !302, discriminator: 7)
!3431 = !DILocation(line: 682, column: 25, scope: !3432)
!3432 = !DILexicalBlockFile(scope: !3425, file: !302, discriminator: 8)
!3433 = !DILocation(line: 682, column: 25, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3435, file: !302, discriminator: 11)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !302, line: 682, column: 25)
!3436 = distinct !DILexicalBlock(scope: !3426, file: !302, line: 682, column: 25)
!3437 = !DILocation(line: 682, column: 25, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3436, file: !302, discriminator: 11)
!3439 = !DILocation(line: 682, column: 25, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3435, file: !302, discriminator: 12)
!3441 = !DILocation(line: 682, column: 25, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3436, file: !302, discriminator: 13)
!3443 = !DILocation(line: 682, column: 25, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3445, file: !302, discriminator: 16)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !302, line: 682, column: 25)
!3446 = distinct !DILexicalBlock(scope: !3426, file: !302, line: 682, column: 25)
!3447 = !DILocation(line: 682, column: 25, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3446, file: !302, discriminator: 16)
!3449 = !DILocation(line: 682, column: 25, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3445, file: !302, discriminator: 17)
!3451 = !DILocation(line: 682, column: 25, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3446, file: !302, discriminator: 18)
!3453 = !DILocation(line: 682, column: 25, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3426, file: !302, discriminator: 20)
!3455 = !DILocation(line: 682, column: 25, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3457, file: !302, discriminator: 22)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !302, line: 682, column: 25)
!3458 = distinct !DILexicalBlock(scope: !3415, file: !302, line: 682, column: 25)
!3459 = !DILocation(line: 682, column: 25, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3458, file: !302, discriminator: 22)
!3461 = !DILocation(line: 682, column: 25, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3457, file: !302, discriminator: 23)
!3463 = !DILocation(line: 682, column: 25, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3458, file: !302, discriminator: 24)
!3465 = !DILocation(line: 683, column: 25, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3467, file: !302, discriminator: 1)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !302, line: 683, column: 25)
!3468 = distinct !DILexicalBlock(scope: !3416, file: !302, line: 683, column: 25)
!3469 = !DILocation(line: 683, column: 25, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3468, file: !302, discriminator: 1)
!3471 = !DILocation(line: 683, column: 25, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3467, file: !302, discriminator: 2)
!3473 = !DILocation(line: 683, column: 25, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3468, file: !302, discriminator: 3)
!3475 = !DILocation(line: 684, column: 25, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3477, file: !302, discriminator: 1)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !302, line: 684, column: 25)
!3478 = distinct !DILexicalBlock(scope: !3416, file: !302, line: 684, column: 25)
!3479 = !DILocation(line: 684, column: 25, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3478, file: !302, discriminator: 1)
!3481 = !DILocation(line: 684, column: 25, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !3477, file: !302, discriminator: 2)
!3483 = !DILocation(line: 684, column: 25, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3478, file: !302, discriminator: 3)
!3485 = !DILocation(line: 685, column: 38, scope: !3416)
!3486 = !DILocation(line: 685, column: 33, scope: !3416)
!3487 = !DILocation(line: 686, column: 23, scope: !3416)
!3488 = !DILocation(line: 687, column: 30, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3409, file: !302, line: 687, column: 30)
!3490 = !DILocation(line: 687, column: 30, scope: !3409)
!3491 = !DILocation(line: 689, column: 25, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !302, discriminator: 1)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !302, line: 689, column: 25)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !302, line: 689, column: 25)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !302, line: 688, column: 23)
!3496 = !DILocation(line: 689, column: 25, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3494, file: !302, discriminator: 1)
!3498 = !DILocation(line: 689, column: 25, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3493, file: !302, discriminator: 2)
!3500 = !DILocation(line: 689, column: 25, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3494, file: !302, discriminator: 3)
!3502 = !DILocation(line: 691, column: 23, scope: !3495)
!3503 = !DILocation(line: 692, column: 35, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3410, file: !302, line: 692, column: 25)
!3505 = !DILocation(line: 692, column: 30, scope: !3504)
!3506 = !DILocation(line: 692, column: 25, scope: !3410)
!3507 = !DILocation(line: 694, column: 21, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3509, file: !302, discriminator: 1)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !302, line: 694, column: 21)
!3510 = distinct !DILexicalBlock(scope: !3410, file: !302, line: 694, column: 21)
!3511 = !DILocation(line: 694, column: 21, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3509, file: !302, discriminator: 2)
!3513 = !DILocation(line: 694, column: 21, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3515, file: !302, discriminator: 4)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !302, line: 694, column: 21)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !302, line: 694, column: 21)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !302, line: 694, column: 21)
!3518 = !DILocation(line: 694, column: 21, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3516, file: !302, discriminator: 4)
!3520 = !DILocation(line: 694, column: 21, scope: !3521)
!3521 = !DILexicalBlockFile(scope: !3515, file: !302, discriminator: 5)
!3522 = !DILocation(line: 694, column: 21, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3516, file: !302, discriminator: 6)
!3524 = !DILocation(line: 694, column: 21, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3526, file: !302, discriminator: 9)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !302, line: 694, column: 21)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !302, line: 694, column: 21)
!3528 = !DILocation(line: 694, column: 21, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3527, file: !302, discriminator: 9)
!3530 = !DILocation(line: 694, column: 21, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3526, file: !302, discriminator: 10)
!3532 = !DILocation(line: 694, column: 21, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3527, file: !302, discriminator: 11)
!3534 = !DILocation(line: 694, column: 21, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3517, file: !302, discriminator: 13)
!3536 = !DILocation(line: 695, column: 21, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3538, file: !302, discriminator: 1)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !302, line: 695, column: 21)
!3539 = distinct !DILexicalBlock(scope: !3410, file: !302, line: 695, column: 21)
!3540 = !DILocation(line: 695, column: 21, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3539, file: !302, discriminator: 1)
!3542 = !DILocation(line: 695, column: 21, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3538, file: !302, discriminator: 2)
!3544 = !DILocation(line: 695, column: 21, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3539, file: !302, discriminator: 3)
!3546 = !DILocation(line: 696, column: 25, scope: !3410)
!3547 = !DILocation(line: 678, column: 17, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3411, file: !302, discriminator: 1)
!3549 = distinct !{!3549, !3550, !3551}
!3550 = !DILocation(line: 678, column: 17, scope: !3412)
!3551 = !DILocation(line: 697, column: 19, scope: !3412)
!3552 = !DILocation(line: 704, column: 34, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 704, column: 11)
!3554 = !DILocation(line: 706, column: 14, scope: !3553)
!3555 = !DILocation(line: 707, column: 14, scope: !3553)
!3556 = !DILocation(line: 707, column: 35, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3553, file: !302, discriminator: 1)
!3558 = !DILocation(line: 707, column: 17, scope: !3557)
!3559 = !DILocation(line: 707, column: 53, scope: !3557)
!3560 = !DILocation(line: 707, column: 47, scope: !3557)
!3561 = !DILocation(line: 707, column: 65, scope: !3557)
!3562 = !DILocation(line: 708, column: 15, scope: !3557)
!3563 = !DILocation(line: 708, column: 11, scope: !3553)
!3564 = !DILocation(line: 704, column: 11, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !2957, file: !302, discriminator: 2)
!3566 = !DILocation(line: 712, column: 7, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3568, file: !302, discriminator: 1)
!3568 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 712, column: 7)
!3569 = !DILocation(line: 712, column: 7, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3571, file: !302, discriminator: 4)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !302, line: 712, column: 7)
!3572 = !DILocation(line: 712, column: 7, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3571, file: !302, discriminator: 3)
!3574 = !DILocation(line: 712, column: 7, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3576, file: !302, discriminator: 6)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !302, line: 712, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !302, line: 712, column: 7)
!3578 = distinct !DILexicalBlock(scope: !3571, file: !302, line: 712, column: 7)
!3579 = !DILocation(line: 712, column: 7, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3577, file: !302, discriminator: 6)
!3581 = !DILocation(line: 712, column: 7, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3576, file: !302, discriminator: 7)
!3583 = !DILocation(line: 712, column: 7, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3577, file: !302, discriminator: 8)
!3585 = !DILocation(line: 712, column: 7, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3587, file: !302, discriminator: 11)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !302, line: 712, column: 7)
!3588 = distinct !DILexicalBlock(scope: !3578, file: !302, line: 712, column: 7)
!3589 = !DILocation(line: 712, column: 7, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3588, file: !302, discriminator: 11)
!3591 = !DILocation(line: 712, column: 7, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3587, file: !302, discriminator: 12)
!3593 = !DILocation(line: 712, column: 7, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3588, file: !302, discriminator: 13)
!3595 = !DILocation(line: 712, column: 7, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3597, file: !302, discriminator: 16)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !302, line: 712, column: 7)
!3598 = distinct !DILexicalBlock(scope: !3578, file: !302, line: 712, column: 7)
!3599 = !DILocation(line: 712, column: 7, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3598, file: !302, discriminator: 16)
!3601 = !DILocation(line: 712, column: 7, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3597, file: !302, discriminator: 17)
!3603 = !DILocation(line: 712, column: 7, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !3598, file: !302, discriminator: 18)
!3605 = !DILocation(line: 712, column: 7, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3578, file: !302, discriminator: 20)
!3607 = !DILocation(line: 712, column: 7, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3609, file: !302, discriminator: 22)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !302, line: 712, column: 7)
!3610 = distinct !DILexicalBlock(scope: !3568, file: !302, line: 712, column: 7)
!3611 = !DILocation(line: 712, column: 7, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !3610, file: !302, discriminator: 22)
!3613 = !DILocation(line: 712, column: 7, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3609, file: !302, discriminator: 23)
!3615 = !DILocation(line: 712, column: 7, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !3610, file: !302, discriminator: 24)
!3617 = !DILocation(line: 715, column: 7, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3619, file: !302, discriminator: 1)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !302, line: 715, column: 7)
!3620 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 715, column: 7)
!3621 = !DILocation(line: 715, column: 7, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3619, file: !302, discriminator: 2)
!3623 = !DILocation(line: 715, column: 7, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3625, file: !302, discriminator: 4)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !302, line: 715, column: 7)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !302, line: 715, column: 7)
!3627 = distinct !DILexicalBlock(scope: !3619, file: !302, line: 715, column: 7)
!3628 = !DILocation(line: 715, column: 7, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3626, file: !302, discriminator: 4)
!3630 = !DILocation(line: 715, column: 7, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3625, file: !302, discriminator: 5)
!3632 = !DILocation(line: 715, column: 7, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3626, file: !302, discriminator: 6)
!3634 = !DILocation(line: 715, column: 7, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3636, file: !302, discriminator: 9)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !302, line: 715, column: 7)
!3637 = distinct !DILexicalBlock(scope: !3627, file: !302, line: 715, column: 7)
!3638 = !DILocation(line: 715, column: 7, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !3637, file: !302, discriminator: 9)
!3640 = !DILocation(line: 715, column: 7, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3636, file: !302, discriminator: 10)
!3642 = !DILocation(line: 715, column: 7, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3637, file: !302, discriminator: 11)
!3644 = !DILocation(line: 715, column: 7, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3627, file: !302, discriminator: 13)
!3646 = !DILocation(line: 716, column: 7, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3648, file: !302, discriminator: 1)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !302, line: 716, column: 7)
!3649 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 716, column: 7)
!3650 = !DILocation(line: 716, column: 7, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3649, file: !302, discriminator: 1)
!3652 = !DILocation(line: 716, column: 7, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3648, file: !302, discriminator: 2)
!3654 = !DILocation(line: 716, column: 7, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3649, file: !302, discriminator: 3)
!3656 = !DILocation(line: 718, column: 13, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !2957, file: !302, line: 718, column: 11)
!3658 = !DILocation(line: 718, column: 11, scope: !2957)
!3659 = !DILocation(line: 720, column: 5, scope: !2958)
!3660 = !DILocation(line: 392, column: 75, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !2958, file: !302, discriminator: 5)
!3662 = !DILocation(line: 392, column: 3, scope: !3661)
!3663 = distinct !{!3663, !3664, !3665}
!3664 = !DILocation(line: 392, column: 3, scope: !2959)
!3665 = !DILocation(line: 720, column: 5, scope: !2959)
!3666 = !DILocation(line: 722, column: 11, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 722, column: 7)
!3668 = !DILocation(line: 722, column: 16, scope: !3667)
!3669 = !DILocation(line: 730, column: 51, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 730, column: 7)
!3671 = !DILocation(line: 731, column: 10, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3670, file: !302, discriminator: 1)
!3673 = !DILocation(line: 733, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !302, line: 733, column: 11)
!3675 = distinct !DILexicalBlock(scope: !3670, file: !302, line: 732, column: 5)
!3676 = !DILocation(line: 733, column: 11, scope: !3675)
!3677 = !DILocation(line: 734, column: 16, scope: !3674)
!3678 = !DILocation(line: 734, column: 9, scope: !3674)
!3679 = !DILocation(line: 738, column: 18, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3674, file: !302, line: 738, column: 16)
!3681 = !DILocation(line: 738, column: 32, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3680, file: !302, discriminator: 1)
!3683 = !DILocation(line: 738, column: 29, scope: !3680)
!3684 = !DILocation(line: 747, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 747, column: 7)
!3686 = !DILocation(line: 747, column: 20, scope: !3685)
!3687 = !DILocation(line: 748, column: 12, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3689, file: !302, discriminator: 1)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !302, line: 748, column: 5)
!3690 = distinct !DILexicalBlock(scope: !3685, file: !302, line: 748, column: 5)
!3691 = !DILocation(line: 748, column: 5, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3690, file: !302, discriminator: 1)
!3693 = !DILocation(line: 749, column: 7, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3695, file: !302, discriminator: 1)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !302, line: 749, column: 7)
!3696 = distinct !DILexicalBlock(scope: !3689, file: !302, line: 749, column: 7)
!3697 = !DILocation(line: 749, column: 7, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !3696, file: !302, discriminator: 1)
!3699 = !DILocation(line: 749, column: 7, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3695, file: !302, discriminator: 2)
!3701 = !DILocation(line: 749, column: 7, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3696, file: !302, discriminator: 3)
!3703 = !DILocation(line: 748, column: 39, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3689, file: !302, discriminator: 2)
!3705 = distinct !{!3705, !3706, !3707}
!3706 = !DILocation(line: 748, column: 5, scope: !3690)
!3707 = !DILocation(line: 749, column: 7, scope: !3690)
!3708 = !DILocation(line: 751, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 751, column: 7)
!3710 = !DILocation(line: 751, column: 7, scope: !2930)
!3711 = !DILocation(line: 752, column: 5, scope: !3709)
!3712 = !DILocation(line: 752, column: 17, scope: !3709)
!3713 = !DILocation(line: 758, column: 21, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !2930, file: !302, line: 758, column: 7)
!3715 = !DILocation(line: 758, column: 54, scope: !3716)
!3716 = !DILexicalBlockFile(scope: !3714, file: !302, discriminator: 1)
!3717 = !DILocation(line: 758, column: 51, scope: !3714)
!3718 = !DILocation(line: 762, column: 42, scope: !2930)
!3719 = !DILocation(line: 760, column: 10, scope: !2930)
!3720 = !DILocation(line: 760, column: 3, scope: !2930)
!3721 = !DILocation(line: 764, column: 1, scope: !2930)
!3722 = distinct !DISubprogram(name: "gettext_quote", scope: !302, file: !302, line: 199, type: !3723, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!68, !68, !5}
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DILocalVariable(name: "msgid", arg: 1, scope: !3722, file: !302, line: 199, type: !68)
!3727 = !DILocalVariable(name: "s", arg: 2, scope: !3722, file: !302, line: 199, type: !5)
!3728 = !DILocalVariable(name: "translation", scope: !3722, file: !302, line: 201, type: !68)
!3729 = !DILocalVariable(name: "locale_code", scope: !3722, file: !302, line: 202, type: !68)
!3730 = !DILocation(line: 199, column: 28, scope: !3722)
!3731 = !DILocation(line: 199, column: 54, scope: !3722)
!3732 = !DILocation(line: 201, column: 29, scope: !3722)
!3733 = !DILocation(line: 201, column: 15, scope: !3722)
!3734 = !DILocation(line: 204, column: 19, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3722, file: !302, line: 204, column: 7)
!3736 = !DILocation(line: 204, column: 7, scope: !3722)
!3737 = !DILocation(line: 225, column: 17, scope: !3722)
!3738 = !DILocation(line: 202, column: 15, scope: !3722)
!3739 = !DILocalVariable(name: "s2", arg: 2, scope: !3740, file: !3741, line: 160, type: !68)
!3740 = distinct !DISubprogram(name: "strcaseeq0", scope: !3741, file: !3741, line: 160, type: !3742, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3744)
!3741 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59, !59, !59}
!3744 = !{!3745, !3739, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3745 = !DILocalVariable(name: "s1", arg: 1, scope: !3740, file: !3741, line: 160, type: !68)
!3746 = !DILocalVariable(name: "s20", arg: 3, scope: !3740, file: !3741, line: 160, type: !59)
!3747 = !DILocalVariable(name: "s21", arg: 4, scope: !3740, file: !3741, line: 160, type: !59)
!3748 = !DILocalVariable(name: "s22", arg: 5, scope: !3740, file: !3741, line: 160, type: !59)
!3749 = !DILocalVariable(name: "s23", arg: 6, scope: !3740, file: !3741, line: 160, type: !59)
!3750 = !DILocalVariable(name: "s24", arg: 7, scope: !3740, file: !3741, line: 160, type: !59)
!3751 = !DILocalVariable(name: "s25", arg: 8, scope: !3740, file: !3741, line: 160, type: !59)
!3752 = !DILocalVariable(name: "s26", arg: 9, scope: !3740, file: !3741, line: 160, type: !59)
!3753 = !DILocalVariable(name: "s27", arg: 10, scope: !3740, file: !3741, line: 160, type: !59)
!3754 = !DILocalVariable(name: "s28", arg: 11, scope: !3740, file: !3741, line: 160, type: !59)
!3755 = !DILocation(line: 160, column: 41, scope: !3740, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 226, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3722, file: !302, line: 226, column: 7)
!3758 = !DILocation(line: 160, column: 120, scope: !3740, inlinedAt: !3756)
!3759 = !DILocation(line: 160, column: 130, scope: !3740, inlinedAt: !3756)
!3760 = !DILocation(line: 162, column: 7, scope: !3761, inlinedAt: !3756)
!3761 = !DILexicalBlockFile(scope: !3762, file: !3741, discriminator: 1)
!3762 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 162, column: 7)
!3763 = !DILocalVariable(name: "s2", arg: 2, scope: !3764, file: !3741, line: 146, type: !68)
!3764 = distinct !DISubprogram(name: "strcaseeq1", scope: !3741, file: !3741, line: 146, type: !3765, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59, !59}
!3767 = !{!3768, !3763, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776}
!3768 = !DILocalVariable(name: "s1", arg: 1, scope: !3764, file: !3741, line: 146, type: !68)
!3769 = !DILocalVariable(name: "s21", arg: 3, scope: !3764, file: !3741, line: 146, type: !59)
!3770 = !DILocalVariable(name: "s22", arg: 4, scope: !3764, file: !3741, line: 146, type: !59)
!3771 = !DILocalVariable(name: "s23", arg: 5, scope: !3764, file: !3741, line: 146, type: !59)
!3772 = !DILocalVariable(name: "s24", arg: 6, scope: !3764, file: !3741, line: 146, type: !59)
!3773 = !DILocalVariable(name: "s25", arg: 7, scope: !3764, file: !3741, line: 146, type: !59)
!3774 = !DILocalVariable(name: "s26", arg: 8, scope: !3764, file: !3741, line: 146, type: !59)
!3775 = !DILocalVariable(name: "s27", arg: 9, scope: !3764, file: !3741, line: 146, type: !59)
!3776 = !DILocalVariable(name: "s28", arg: 10, scope: !3764, file: !3741, line: 146, type: !59)
!3777 = !DILocation(line: 146, column: 41, scope: !3764, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 167, column: 16, scope: !3779, inlinedAt: !3756)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !3741, line: 164, column: 11)
!3780 = distinct !DILexicalBlock(scope: !3762, file: !3741, line: 163, column: 5)
!3781 = !DILocation(line: 146, column: 110, scope: !3764, inlinedAt: !3778)
!3782 = !DILocation(line: 146, column: 120, scope: !3764, inlinedAt: !3778)
!3783 = !DILocation(line: 148, column: 7, scope: !3784, inlinedAt: !3778)
!3784 = !DILexicalBlockFile(scope: !3785, file: !3741, discriminator: 1)
!3785 = distinct !DILexicalBlock(scope: !3764, file: !3741, line: 148, column: 7)
!3786 = !DILocalVariable(name: "s2", arg: 2, scope: !3787, file: !3741, line: 132, type: !68)
!3787 = distinct !DISubprogram(name: "strcaseeq2", scope: !3741, file: !3741, line: 132, type: !3788, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59, !59}
!3790 = !{!3791, !3786, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3791 = !DILocalVariable(name: "s1", arg: 1, scope: !3787, file: !3741, line: 132, type: !68)
!3792 = !DILocalVariable(name: "s22", arg: 3, scope: !3787, file: !3741, line: 132, type: !59)
!3793 = !DILocalVariable(name: "s23", arg: 4, scope: !3787, file: !3741, line: 132, type: !59)
!3794 = !DILocalVariable(name: "s24", arg: 5, scope: !3787, file: !3741, line: 132, type: !59)
!3795 = !DILocalVariable(name: "s25", arg: 6, scope: !3787, file: !3741, line: 132, type: !59)
!3796 = !DILocalVariable(name: "s26", arg: 7, scope: !3787, file: !3741, line: 132, type: !59)
!3797 = !DILocalVariable(name: "s27", arg: 8, scope: !3787, file: !3741, line: 132, type: !59)
!3798 = !DILocalVariable(name: "s28", arg: 9, scope: !3787, file: !3741, line: 132, type: !59)
!3799 = !DILocation(line: 132, column: 41, scope: !3787, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 153, column: 16, scope: !3801, inlinedAt: !3778)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3741, line: 150, column: 11)
!3802 = distinct !DILexicalBlock(scope: !3785, file: !3741, line: 149, column: 5)
!3803 = !DILocation(line: 132, column: 100, scope: !3787, inlinedAt: !3800)
!3804 = !DILocation(line: 132, column: 110, scope: !3787, inlinedAt: !3800)
!3805 = !DILocation(line: 134, column: 7, scope: !3806, inlinedAt: !3800)
!3806 = !DILexicalBlockFile(scope: !3807, file: !3741, discriminator: 1)
!3807 = distinct !DILexicalBlock(scope: !3787, file: !3741, line: 134, column: 7)
!3808 = !DILocalVariable(name: "s2", arg: 2, scope: !3809, file: !3741, line: 118, type: !68)
!3809 = distinct !DISubprogram(name: "strcaseeq3", scope: !3741, file: !3741, line: 118, type: !3810, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!70, !68, !68, !59, !59, !59, !59, !59, !59}
!3812 = !{!3813, !3808, !3814, !3815, !3816, !3817, !3818, !3819}
!3813 = !DILocalVariable(name: "s1", arg: 1, scope: !3809, file: !3741, line: 118, type: !68)
!3814 = !DILocalVariable(name: "s23", arg: 3, scope: !3809, file: !3741, line: 118, type: !59)
!3815 = !DILocalVariable(name: "s24", arg: 4, scope: !3809, file: !3741, line: 118, type: !59)
!3816 = !DILocalVariable(name: "s25", arg: 5, scope: !3809, file: !3741, line: 118, type: !59)
!3817 = !DILocalVariable(name: "s26", arg: 6, scope: !3809, file: !3741, line: 118, type: !59)
!3818 = !DILocalVariable(name: "s27", arg: 7, scope: !3809, file: !3741, line: 118, type: !59)
!3819 = !DILocalVariable(name: "s28", arg: 8, scope: !3809, file: !3741, line: 118, type: !59)
!3820 = !DILocation(line: 118, column: 41, scope: !3809, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 139, column: 16, scope: !3822, inlinedAt: !3800)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3741, line: 136, column: 11)
!3823 = distinct !DILexicalBlock(scope: !3807, file: !3741, line: 135, column: 5)
!3824 = !DILocation(line: 118, column: 90, scope: !3809, inlinedAt: !3821)
!3825 = !DILocation(line: 118, column: 100, scope: !3809, inlinedAt: !3821)
!3826 = !DILocation(line: 120, column: 7, scope: !3827, inlinedAt: !3821)
!3827 = !DILexicalBlockFile(scope: !3828, file: !3741, discriminator: 2)
!3828 = distinct !DILexicalBlock(scope: !3809, file: !3741, line: 120, column: 7)
!3829 = !DILocation(line: 120, column: 7, scope: !3830, inlinedAt: !3821)
!3830 = !DILexicalBlockFile(scope: !3809, file: !3741, discriminator: 2)
!3831 = !DILocalVariable(name: "s2", arg: 2, scope: !3832, file: !3741, line: 104, type: !68)
!3832 = distinct !DISubprogram(name: "strcaseeq4", scope: !3741, file: !3741, line: 104, type: !3833, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!70, !68, !68, !59, !59, !59, !59, !59}
!3835 = !{!3836, !3831, !3837, !3838, !3839, !3840, !3841}
!3836 = !DILocalVariable(name: "s1", arg: 1, scope: !3832, file: !3741, line: 104, type: !68)
!3837 = !DILocalVariable(name: "s24", arg: 3, scope: !3832, file: !3741, line: 104, type: !59)
!3838 = !DILocalVariable(name: "s25", arg: 4, scope: !3832, file: !3741, line: 104, type: !59)
!3839 = !DILocalVariable(name: "s26", arg: 5, scope: !3832, file: !3741, line: 104, type: !59)
!3840 = !DILocalVariable(name: "s27", arg: 6, scope: !3832, file: !3741, line: 104, type: !59)
!3841 = !DILocalVariable(name: "s28", arg: 7, scope: !3832, file: !3741, line: 104, type: !59)
!3842 = !DILocation(line: 104, column: 41, scope: !3832, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 125, column: 16, scope: !3844, inlinedAt: !3821)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3741, line: 122, column: 11)
!3845 = distinct !DILexicalBlock(scope: !3828, file: !3741, line: 121, column: 5)
!3846 = !DILocation(line: 104, column: 80, scope: !3832, inlinedAt: !3843)
!3847 = !DILocation(line: 104, column: 90, scope: !3832, inlinedAt: !3843)
!3848 = !DILocation(line: 106, column: 7, scope: !3849, inlinedAt: !3843)
!3849 = !DILexicalBlockFile(scope: !3850, file: !3741, discriminator: 2)
!3850 = distinct !DILexicalBlock(scope: !3832, file: !3741, line: 106, column: 7)
!3851 = !DILocation(line: 106, column: 7, scope: !3852, inlinedAt: !3843)
!3852 = !DILexicalBlockFile(scope: !3832, file: !3741, discriminator: 2)
!3853 = !DILocalVariable(name: "s2", arg: 2, scope: !3854, file: !3741, line: 90, type: !68)
!3854 = distinct !DISubprogram(name: "strcaseeq5", scope: !3741, file: !3741, line: 90, type: !3855, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!70, !68, !68, !59, !59, !59, !59}
!3857 = !{!3858, !3853, !3859, !3860, !3861, !3862}
!3858 = !DILocalVariable(name: "s1", arg: 1, scope: !3854, file: !3741, line: 90, type: !68)
!3859 = !DILocalVariable(name: "s25", arg: 3, scope: !3854, file: !3741, line: 90, type: !59)
!3860 = !DILocalVariable(name: "s26", arg: 4, scope: !3854, file: !3741, line: 90, type: !59)
!3861 = !DILocalVariable(name: "s27", arg: 5, scope: !3854, file: !3741, line: 90, type: !59)
!3862 = !DILocalVariable(name: "s28", arg: 6, scope: !3854, file: !3741, line: 90, type: !59)
!3863 = !DILocation(line: 90, column: 41, scope: !3854, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 111, column: 16, scope: !3865, inlinedAt: !3843)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3741, line: 108, column: 11)
!3866 = distinct !DILexicalBlock(scope: !3850, file: !3741, line: 107, column: 5)
!3867 = !DILocation(line: 90, column: 70, scope: !3854, inlinedAt: !3864)
!3868 = !DILocation(line: 90, column: 80, scope: !3854, inlinedAt: !3864)
!3869 = !DILocation(line: 92, column: 7, scope: !3870, inlinedAt: !3864)
!3870 = !DILexicalBlockFile(scope: !3871, file: !3741, discriminator: 2)
!3871 = distinct !DILexicalBlock(scope: !3854, file: !3741, line: 92, column: 7)
!3872 = !DILocation(line: 92, column: 7, scope: !3873, inlinedAt: !3864)
!3873 = !DILexicalBlockFile(scope: !3854, file: !3741, discriminator: 2)
!3874 = !DILocation(line: 227, column: 12, scope: !3757)
!3875 = !DILocation(line: 227, column: 21, scope: !3757)
!3876 = !DILocation(line: 227, column: 5, scope: !3757)
!3877 = !DILocation(line: 146, column: 41, scope: !3764, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 167, column: 16, scope: !3779, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 228, column: 7, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3722, file: !302, line: 228, column: 7)
!3881 = !DILocation(line: 146, column: 110, scope: !3764, inlinedAt: !3878)
!3882 = !DILocation(line: 146, column: 120, scope: !3764, inlinedAt: !3878)
!3883 = !DILocation(line: 148, column: 7, scope: !3784, inlinedAt: !3878)
!3884 = !DILocation(line: 132, column: 41, scope: !3787, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 153, column: 16, scope: !3801, inlinedAt: !3878)
!3886 = !DILocation(line: 132, column: 100, scope: !3787, inlinedAt: !3885)
!3887 = !DILocation(line: 132, column: 110, scope: !3787, inlinedAt: !3885)
!3888 = !DILocation(line: 134, column: 7, scope: !3889, inlinedAt: !3885)
!3889 = !DILexicalBlockFile(scope: !3807, file: !3741, discriminator: 2)
!3890 = !DILocation(line: 134, column: 7, scope: !3891, inlinedAt: !3885)
!3891 = !DILexicalBlockFile(scope: !3787, file: !3741, discriminator: 2)
!3892 = !DILocation(line: 118, column: 41, scope: !3809, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 139, column: 16, scope: !3822, inlinedAt: !3885)
!3894 = !DILocation(line: 118, column: 90, scope: !3809, inlinedAt: !3893)
!3895 = !DILocation(line: 118, column: 100, scope: !3809, inlinedAt: !3893)
!3896 = !DILocation(line: 120, column: 7, scope: !3827, inlinedAt: !3893)
!3897 = !DILocation(line: 120, column: 7, scope: !3830, inlinedAt: !3893)
!3898 = !DILocation(line: 104, column: 41, scope: !3832, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 125, column: 16, scope: !3844, inlinedAt: !3893)
!3900 = !DILocation(line: 104, column: 80, scope: !3832, inlinedAt: !3899)
!3901 = !DILocation(line: 104, column: 90, scope: !3832, inlinedAt: !3899)
!3902 = !DILocation(line: 106, column: 7, scope: !3849, inlinedAt: !3899)
!3903 = !DILocation(line: 106, column: 7, scope: !3852, inlinedAt: !3899)
!3904 = !DILocation(line: 90, column: 41, scope: !3854, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 111, column: 16, scope: !3865, inlinedAt: !3899)
!3906 = !DILocation(line: 90, column: 70, scope: !3854, inlinedAt: !3905)
!3907 = !DILocation(line: 90, column: 80, scope: !3854, inlinedAt: !3905)
!3908 = !DILocation(line: 92, column: 7, scope: !3870, inlinedAt: !3905)
!3909 = !DILocation(line: 92, column: 7, scope: !3873, inlinedAt: !3905)
!3910 = !DILocalVariable(name: "s2", arg: 2, scope: !3911, file: !3741, line: 76, type: !68)
!3911 = distinct !DISubprogram(name: "strcaseeq6", scope: !3741, file: !3741, line: 76, type: !3912, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!70, !68, !68, !59, !59, !59}
!3914 = !{!3915, !3910, !3916, !3917, !3918}
!3915 = !DILocalVariable(name: "s1", arg: 1, scope: !3911, file: !3741, line: 76, type: !68)
!3916 = !DILocalVariable(name: "s26", arg: 3, scope: !3911, file: !3741, line: 76, type: !59)
!3917 = !DILocalVariable(name: "s27", arg: 4, scope: !3911, file: !3741, line: 76, type: !59)
!3918 = !DILocalVariable(name: "s28", arg: 5, scope: !3911, file: !3741, line: 76, type: !59)
!3919 = !DILocation(line: 76, column: 41, scope: !3911, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 97, column: 16, scope: !3921, inlinedAt: !3905)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3741, line: 94, column: 11)
!3922 = distinct !DILexicalBlock(scope: !3871, file: !3741, line: 93, column: 5)
!3923 = !DILocation(line: 76, column: 60, scope: !3911, inlinedAt: !3920)
!3924 = !DILocation(line: 76, column: 70, scope: !3911, inlinedAt: !3920)
!3925 = !DILocation(line: 78, column: 7, scope: !3926, inlinedAt: !3920)
!3926 = !DILexicalBlockFile(scope: !3927, file: !3741, discriminator: 2)
!3927 = distinct !DILexicalBlock(scope: !3911, file: !3741, line: 78, column: 7)
!3928 = !DILocation(line: 78, column: 7, scope: !3929, inlinedAt: !3920)
!3929 = !DILexicalBlockFile(scope: !3911, file: !3741, discriminator: 2)
!3930 = !DILocalVariable(name: "s2", arg: 2, scope: !3931, file: !3741, line: 62, type: !68)
!3931 = distinct !DISubprogram(name: "strcaseeq7", scope: !3741, file: !3741, line: 62, type: !3932, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!70, !68, !68, !59, !59}
!3934 = !{!3935, !3930, !3936, !3937}
!3935 = !DILocalVariable(name: "s1", arg: 1, scope: !3931, file: !3741, line: 62, type: !68)
!3936 = !DILocalVariable(name: "s27", arg: 3, scope: !3931, file: !3741, line: 62, type: !59)
!3937 = !DILocalVariable(name: "s28", arg: 4, scope: !3931, file: !3741, line: 62, type: !59)
!3938 = !DILocation(line: 62, column: 41, scope: !3931, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 83, column: 16, scope: !3940, inlinedAt: !3920)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3741, line: 80, column: 11)
!3941 = distinct !DILexicalBlock(scope: !3927, file: !3741, line: 79, column: 5)
!3942 = !DILocation(line: 62, column: 50, scope: !3931, inlinedAt: !3939)
!3943 = !DILocation(line: 62, column: 60, scope: !3931, inlinedAt: !3939)
!3944 = !DILocation(line: 64, column: 7, scope: !3945, inlinedAt: !3939)
!3945 = !DILexicalBlockFile(scope: !3946, file: !3741, discriminator: 2)
!3946 = distinct !DILexicalBlock(scope: !3931, file: !3741, line: 64, column: 7)
!3947 = !DILocation(line: 228, column: 7, scope: !3722)
!3948 = !DILocation(line: 229, column: 12, scope: !3880)
!3949 = !DILocation(line: 229, column: 21, scope: !3880)
!3950 = !DILocation(line: 229, column: 5, scope: !3880)
!3951 = !DILocation(line: 231, column: 13, scope: !3722)
!3952 = !DILocation(line: 231, column: 11, scope: !3722)
!3953 = !DILocation(line: 231, column: 3, scope: !3722)
!3954 = !DILocation(line: 232, column: 1, scope: !3722)
!3955 = distinct !DISubprogram(name: "quotearg_alloc", scope: !302, file: !302, line: 791, type: !3956, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!58, !68, !61, !2798}
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "arg", arg: 1, scope: !3955, file: !302, line: 791, type: !68)
!3960 = !DILocalVariable(name: "argsize", arg: 2, scope: !3955, file: !302, line: 791, type: !61)
!3961 = !DILocalVariable(name: "o", arg: 3, scope: !3955, file: !302, line: 792, type: !2798)
!3962 = !DILocation(line: 791, column: 29, scope: !3955)
!3963 = !DILocation(line: 791, column: 41, scope: !3955)
!3964 = !DILocation(line: 792, column: 47, scope: !3955)
!3965 = !DILocalVariable(name: "arg", arg: 1, scope: !3966, file: !302, line: 804, type: !68)
!3966 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !302, file: !302, line: 804, type: !3967, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!58, !68, !61, !756, !2798}
!3969 = !{!3965, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3970 = !DILocalVariable(name: "argsize", arg: 2, scope: !3966, file: !302, line: 804, type: !61)
!3971 = !DILocalVariable(name: "size", arg: 3, scope: !3966, file: !302, line: 804, type: !756)
!3972 = !DILocalVariable(name: "o", arg: 4, scope: !3966, file: !302, line: 805, type: !2798)
!3973 = !DILocalVariable(name: "p", scope: !3966, file: !302, line: 807, type: !2798)
!3974 = !DILocalVariable(name: "e", scope: !3966, file: !302, line: 808, type: !70)
!3975 = !DILocalVariable(name: "flags", scope: !3966, file: !302, line: 810, type: !70)
!3976 = !DILocalVariable(name: "bufsize", scope: !3966, file: !302, line: 811, type: !61)
!3977 = !DILocalVariable(name: "buf", scope: !3966, file: !302, line: 815, type: !58)
!3978 = !DILocation(line: 804, column: 33, scope: !3966, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 794, column: 10, scope: !3955)
!3980 = !DILocation(line: 804, column: 45, scope: !3966, inlinedAt: !3979)
!3981 = !DILocation(line: 804, column: 62, scope: !3966, inlinedAt: !3979)
!3982 = !DILocation(line: 805, column: 51, scope: !3966, inlinedAt: !3979)
!3983 = !DILocation(line: 807, column: 37, scope: !3966, inlinedAt: !3979)
!3984 = !DILocation(line: 807, column: 33, scope: !3966, inlinedAt: !3979)
!3985 = !DILocation(line: 808, column: 11, scope: !3966, inlinedAt: !3979)
!3986 = !DILocation(line: 808, column: 7, scope: !3966, inlinedAt: !3979)
!3987 = !DILocation(line: 810, column: 18, scope: !3966, inlinedAt: !3979)
!3988 = !DILocation(line: 810, column: 24, scope: !3966, inlinedAt: !3979)
!3989 = !DILocation(line: 810, column: 7, scope: !3966, inlinedAt: !3979)
!3990 = !DILocation(line: 811, column: 69, scope: !3966, inlinedAt: !3979)
!3991 = !DILocation(line: 812, column: 53, scope: !3966, inlinedAt: !3979)
!3992 = !DILocation(line: 813, column: 49, scope: !3966, inlinedAt: !3979)
!3993 = !DILocation(line: 814, column: 49, scope: !3966, inlinedAt: !3979)
!3994 = !DILocation(line: 811, column: 20, scope: !3966, inlinedAt: !3979)
!3995 = !DILocation(line: 814, column: 62, scope: !3966, inlinedAt: !3979)
!3996 = !DILocation(line: 811, column: 10, scope: !3966, inlinedAt: !3979)
!3997 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !752, line: 220, type: !61)
!3998 = distinct !DISubprogram(name: "xcharalloc", scope: !752, file: !752, line: 220, type: !3999, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!58, !61}
!4001 = !{!3997}
!4002 = !DILocation(line: 220, column: 20, scope: !3998, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 815, column: 15, scope: !3966, inlinedAt: !3979)
!4004 = !DILocation(line: 222, column: 10, scope: !3998, inlinedAt: !4003)
!4005 = !DILocation(line: 815, column: 9, scope: !3966, inlinedAt: !3979)
!4006 = !DILocation(line: 816, column: 60, scope: !3966, inlinedAt: !3979)
!4007 = !DILocation(line: 818, column: 32, scope: !3966, inlinedAt: !3979)
!4008 = !DILocation(line: 818, column: 47, scope: !3966, inlinedAt: !3979)
!4009 = !DILocation(line: 816, column: 3, scope: !3966, inlinedAt: !3979)
!4010 = !DILocation(line: 819, column: 9, scope: !3966, inlinedAt: !3979)
!4011 = !DILocation(line: 794, column: 3, scope: !3955)
!4012 = !DILocation(line: 804, column: 33, scope: !3966)
!4013 = !DILocation(line: 804, column: 45, scope: !3966)
!4014 = !DILocation(line: 804, column: 62, scope: !3966)
!4015 = !DILocation(line: 805, column: 51, scope: !3966)
!4016 = !DILocation(line: 807, column: 37, scope: !3966)
!4017 = !DILocation(line: 807, column: 33, scope: !3966)
!4018 = !DILocation(line: 808, column: 11, scope: !3966)
!4019 = !DILocation(line: 808, column: 7, scope: !3966)
!4020 = !DILocation(line: 810, column: 18, scope: !3966)
!4021 = !DILocation(line: 810, column: 27, scope: !3966)
!4022 = !DILocation(line: 810, column: 24, scope: !3966)
!4023 = !DILocation(line: 810, column: 7, scope: !3966)
!4024 = !DILocation(line: 811, column: 69, scope: !3966)
!4025 = !DILocation(line: 812, column: 53, scope: !3966)
!4026 = !DILocation(line: 813, column: 49, scope: !3966)
!4027 = !DILocation(line: 814, column: 49, scope: !3966)
!4028 = !DILocation(line: 811, column: 20, scope: !3966)
!4029 = !DILocation(line: 814, column: 62, scope: !3966)
!4030 = !DILocation(line: 811, column: 10, scope: !3966)
!4031 = !DILocation(line: 220, column: 20, scope: !3998, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 815, column: 15, scope: !3966)
!4033 = !DILocation(line: 222, column: 10, scope: !3998, inlinedAt: !4032)
!4034 = !DILocation(line: 815, column: 9, scope: !3966)
!4035 = !DILocation(line: 816, column: 60, scope: !3966)
!4036 = !DILocation(line: 818, column: 32, scope: !3966)
!4037 = !DILocation(line: 818, column: 47, scope: !3966)
!4038 = !DILocation(line: 816, column: 3, scope: !3966)
!4039 = !DILocation(line: 819, column: 9, scope: !3966)
!4040 = !DILocation(line: 820, column: 7, scope: !3966)
!4041 = !DILocation(line: 821, column: 11, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3966, file: !302, line: 820, column: 7)
!4043 = !DILocation(line: 821, column: 5, scope: !4042)
!4044 = !DILocation(line: 822, column: 3, scope: !3966)
!4045 = distinct !DISubprogram(name: "quotearg_free", scope: !302, file: !302, line: 840, type: !815, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4046)
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "sv", scope: !4045, file: !302, line: 842, type: !329)
!4048 = !DILocalVariable(name: "i", scope: !4045, file: !302, line: 843, type: !70)
!4049 = !DILocation(line: 842, column: 24, scope: !4045)
!4050 = !DILocation(line: 842, column: 19, scope: !4045)
!4051 = !DILocation(line: 843, column: 7, scope: !4045)
!4052 = !DILocation(line: 844, column: 19, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4054, file: !302, discriminator: 1)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !302, line: 844, column: 3)
!4055 = distinct !DILexicalBlock(scope: !4045, file: !302, line: 844, column: 3)
!4056 = !DILocation(line: 844, column: 17, scope: !4053)
!4057 = !DILocation(line: 844, column: 3, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4055, file: !302, discriminator: 1)
!4059 = !DILocation(line: 845, column: 17, scope: !4054)
!4060 = !{!4061, !802, i64 8}
!4061 = !{!"slotvec", !1084, i64 0, !802, i64 8}
!4062 = !DILocation(line: 845, column: 5, scope: !4054)
!4063 = !DILocation(line: 844, column: 28, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !4054, file: !302, discriminator: 2)
!4065 = distinct !{!4065, !4066, !4067}
!4066 = !DILocation(line: 844, column: 3, scope: !4055)
!4067 = !DILocation(line: 845, column: 20, scope: !4055)
!4068 = !DILocation(line: 846, column: 13, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4045, file: !302, line: 846, column: 7)
!4070 = !DILocation(line: 846, column: 17, scope: !4069)
!4071 = !DILocation(line: 846, column: 7, scope: !4045)
!4072 = !DILocation(line: 848, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !302, line: 847, column: 5)
!4074 = !DILocation(line: 849, column: 21, scope: !4073)
!4075 = !{!4061, !1084, i64 0}
!4076 = !DILocation(line: 850, column: 20, scope: !4073)
!4077 = !DILocation(line: 851, column: 5, scope: !4073)
!4078 = !DILocation(line: 852, column: 10, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4045, file: !302, line: 852, column: 7)
!4080 = !DILocation(line: 852, column: 7, scope: !4045)
!4081 = !DILocation(line: 854, column: 13, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4079, file: !302, line: 853, column: 5)
!4083 = !DILocation(line: 854, column: 7, scope: !4082)
!4084 = !DILocation(line: 855, column: 15, scope: !4082)
!4085 = !DILocation(line: 856, column: 5, scope: !4082)
!4086 = !DILocation(line: 857, column: 10, scope: !4045)
!4087 = !DILocation(line: 858, column: 1, scope: !4045)
!4088 = distinct !DISubprogram(name: "quotearg_n", scope: !302, file: !302, line: 922, type: !4089, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!58, !70, !68}
!4091 = !{!4092, !4093}
!4092 = !DILocalVariable(name: "n", arg: 1, scope: !4088, file: !302, line: 922, type: !70)
!4093 = !DILocalVariable(name: "arg", arg: 2, scope: !4088, file: !302, line: 922, type: !68)
!4094 = !DILocation(line: 922, column: 17, scope: !4088)
!4095 = !DILocation(line: 922, column: 32, scope: !4088)
!4096 = !DILocation(line: 924, column: 10, scope: !4088)
!4097 = !DILocation(line: 924, column: 3, scope: !4088)
!4098 = distinct !DISubprogram(name: "quotearg_n_options", scope: !302, file: !302, line: 869, type: !4099, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!58, !70, !68, !61, !2798}
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4111, !4113, !4114, !4115}
!4102 = !DILocalVariable(name: "n", arg: 1, scope: !4098, file: !302, line: 869, type: !70)
!4103 = !DILocalVariable(name: "arg", arg: 2, scope: !4098, file: !302, line: 869, type: !68)
!4104 = !DILocalVariable(name: "argsize", arg: 3, scope: !4098, file: !302, line: 869, type: !61)
!4105 = !DILocalVariable(name: "options", arg: 4, scope: !4098, file: !302, line: 870, type: !2798)
!4106 = !DILocalVariable(name: "e", scope: !4098, file: !302, line: 872, type: !70)
!4107 = !DILocalVariable(name: "sv", scope: !4098, file: !302, line: 874, type: !329)
!4108 = !DILocalVariable(name: "preallocated", scope: !4109, file: !302, line: 881, type: !76)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !302, line: 880, column: 5)
!4110 = distinct !DILexicalBlock(scope: !4098, file: !302, line: 879, column: 7)
!4111 = !DILocalVariable(name: "size", scope: !4112, file: !302, line: 894, type: !61)
!4112 = distinct !DILexicalBlock(scope: !4098, file: !302, line: 893, column: 3)
!4113 = !DILocalVariable(name: "val", scope: !4112, file: !302, line: 895, type: !58)
!4114 = !DILocalVariable(name: "flags", scope: !4112, file: !302, line: 897, type: !70)
!4115 = !DILocalVariable(name: "qsize", scope: !4112, file: !302, line: 898, type: !61)
!4116 = !DILocation(line: 869, column: 25, scope: !4098)
!4117 = !DILocation(line: 869, column: 40, scope: !4098)
!4118 = !DILocation(line: 869, column: 52, scope: !4098)
!4119 = !DILocation(line: 870, column: 51, scope: !4098)
!4120 = !DILocation(line: 872, column: 11, scope: !4098)
!4121 = !DILocation(line: 872, column: 7, scope: !4098)
!4122 = !DILocation(line: 874, column: 24, scope: !4098)
!4123 = !DILocation(line: 874, column: 19, scope: !4098)
!4124 = !DILocation(line: 876, column: 9, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4098, file: !302, line: 876, column: 7)
!4126 = !DILocation(line: 876, column: 7, scope: !4098)
!4127 = !DILocation(line: 877, column: 5, scope: !4125)
!4128 = !DILocation(line: 879, column: 7, scope: !4110)
!4129 = !DILocation(line: 879, column: 14, scope: !4110)
!4130 = !DILocation(line: 879, column: 7, scope: !4098)
!4131 = !DILocation(line: 881, column: 31, scope: !4109)
!4132 = !DILocation(line: 883, column: 67, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4109, file: !302, line: 883, column: 11)
!4134 = !DILocation(line: 883, column: 11, scope: !4109)
!4135 = !DILocation(line: 884, column: 9, scope: !4133)
!4136 = !DILocation(line: 886, column: 32, scope: !4137)
!4137 = !DILexicalBlockFile(scope: !4109, file: !302, discriminator: 3)
!4138 = !DILocation(line: 886, column: 61, scope: !4137)
!4139 = !DILocation(line: 886, column: 58, scope: !4137)
!4140 = !DILocation(line: 886, column: 66, scope: !4137)
!4141 = !DILocation(line: 886, column: 22, scope: !4137)
!4142 = !DILocation(line: 886, column: 15, scope: !4137)
!4143 = !DILocation(line: 887, column: 11, scope: !4109)
!4144 = !DILocation(line: 888, column: 15, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4109, file: !302, line: 887, column: 11)
!4146 = !{i64 0, i64 8, !1083, i64 8, i64 8, !801}
!4147 = !DILocation(line: 888, column: 9, scope: !4145)
!4148 = !DILocation(line: 889, column: 20, scope: !4109)
!4149 = !DILocation(line: 889, column: 18, scope: !4109)
!4150 = !DILocation(line: 889, column: 7, scope: !4109)
!4151 = !DILocation(line: 889, column: 38, scope: !4109)
!4152 = !DILocation(line: 889, column: 31, scope: !4109)
!4153 = !DILocation(line: 889, column: 48, scope: !4109)
!4154 = !DILocation(line: 890, column: 14, scope: !4109)
!4155 = !DILocation(line: 891, column: 5, scope: !4109)
!4156 = !DILocation(line: 894, column: 19, scope: !4112)
!4157 = !DILocation(line: 894, column: 25, scope: !4112)
!4158 = !DILocation(line: 894, column: 12, scope: !4112)
!4159 = !DILocation(line: 895, column: 23, scope: !4112)
!4160 = !DILocation(line: 895, column: 11, scope: !4112)
!4161 = !DILocation(line: 897, column: 26, scope: !4112)
!4162 = !DILocation(line: 897, column: 32, scope: !4112)
!4163 = !DILocation(line: 897, column: 9, scope: !4112)
!4164 = !DILocation(line: 899, column: 55, scope: !4112)
!4165 = !DILocation(line: 900, column: 46, scope: !4112)
!4166 = !DILocation(line: 901, column: 55, scope: !4112)
!4167 = !DILocation(line: 902, column: 55, scope: !4112)
!4168 = !DILocation(line: 898, column: 20, scope: !4112)
!4169 = !DILocation(line: 898, column: 12, scope: !4112)
!4170 = !DILocation(line: 904, column: 14, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4112, file: !302, line: 904, column: 9)
!4172 = !DILocation(line: 904, column: 9, scope: !4112)
!4173 = !DILocation(line: 906, column: 35, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4171, file: !302, line: 905, column: 7)
!4175 = !DILocation(line: 906, column: 20, scope: !4174)
!4176 = !DILocation(line: 907, column: 17, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !302, line: 907, column: 13)
!4178 = !DILocation(line: 907, column: 13, scope: !4174)
!4179 = !DILocation(line: 908, column: 11, scope: !4177)
!4180 = !DILocation(line: 220, column: 20, scope: !3998, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 909, column: 27, scope: !4174)
!4182 = !DILocation(line: 222, column: 10, scope: !3998, inlinedAt: !4181)
!4183 = !DILocation(line: 909, column: 19, scope: !4174)
!4184 = !DILocation(line: 910, column: 69, scope: !4174)
!4185 = !DILocation(line: 912, column: 44, scope: !4174)
!4186 = !DILocation(line: 913, column: 44, scope: !4174)
!4187 = !DILocation(line: 910, column: 9, scope: !4174)
!4188 = !DILocation(line: 914, column: 7, scope: !4174)
!4189 = !DILocation(line: 916, column: 11, scope: !4112)
!4190 = !DILocation(line: 917, column: 5, scope: !4112)
!4191 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !302, file: !302, line: 928, type: !4192, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4194)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!58, !70, !68, !61}
!4194 = !{!4195, !4196, !4197}
!4195 = !DILocalVariable(name: "n", arg: 1, scope: !4191, file: !302, line: 928, type: !70)
!4196 = !DILocalVariable(name: "arg", arg: 2, scope: !4191, file: !302, line: 928, type: !68)
!4197 = !DILocalVariable(name: "argsize", arg: 3, scope: !4191, file: !302, line: 928, type: !61)
!4198 = !DILocation(line: 928, column: 21, scope: !4191)
!4199 = !DILocation(line: 928, column: 36, scope: !4191)
!4200 = !DILocation(line: 928, column: 48, scope: !4191)
!4201 = !DILocation(line: 930, column: 10, scope: !4191)
!4202 = !DILocation(line: 930, column: 3, scope: !4191)
!4203 = distinct !DISubprogram(name: "quotearg", scope: !302, file: !302, line: 934, type: !4204, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4205)
!4204 = !DISubroutineType(types: !268)
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "arg", arg: 1, scope: !4203, file: !302, line: 934, type: !68)
!4207 = !DILocation(line: 934, column: 23, scope: !4203)
!4208 = !DILocation(line: 922, column: 17, scope: !4088, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 936, column: 10, scope: !4203)
!4210 = !DILocation(line: 922, column: 32, scope: !4088, inlinedAt: !4209)
!4211 = !DILocation(line: 924, column: 10, scope: !4088, inlinedAt: !4209)
!4212 = !DILocation(line: 936, column: 3, scope: !4203)
!4213 = distinct !DISubprogram(name: "quotearg_mem", scope: !302, file: !302, line: 940, type: !4214, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!58, !68, !61}
!4216 = !{!4217, !4218}
!4217 = !DILocalVariable(name: "arg", arg: 1, scope: !4213, file: !302, line: 940, type: !68)
!4218 = !DILocalVariable(name: "argsize", arg: 2, scope: !4213, file: !302, line: 940, type: !61)
!4219 = !DILocation(line: 940, column: 27, scope: !4213)
!4220 = !DILocation(line: 940, column: 39, scope: !4213)
!4221 = !DILocation(line: 928, column: 21, scope: !4191, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 942, column: 10, scope: !4213)
!4223 = !DILocation(line: 928, column: 36, scope: !4191, inlinedAt: !4222)
!4224 = !DILocation(line: 928, column: 48, scope: !4191, inlinedAt: !4222)
!4225 = !DILocation(line: 930, column: 10, scope: !4191, inlinedAt: !4222)
!4226 = !DILocation(line: 942, column: 3, scope: !4213)
!4227 = distinct !DISubprogram(name: "quotearg_n_style", scope: !302, file: !302, line: 946, type: !4228, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!58, !70, !5, !68}
!4230 = !{!4231, !4232, !4233, !4234}
!4231 = !DILocalVariable(name: "n", arg: 1, scope: !4227, file: !302, line: 946, type: !70)
!4232 = !DILocalVariable(name: "s", arg: 2, scope: !4227, file: !302, line: 946, type: !5)
!4233 = !DILocalVariable(name: "arg", arg: 3, scope: !4227, file: !302, line: 946, type: !68)
!4234 = !DILocalVariable(name: "o", scope: !4227, file: !302, line: 948, type: !2799)
!4235 = !DILocalVariable(name: "o", scope: !4236, file: !302, line: 187, type: !309)
!4236 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !302, file: !302, line: 185, type: !4237, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!309, !5}
!4239 = !{!4240, !4235}
!4240 = !DILocalVariable(name: "style", arg: 1, scope: !4236, file: !302, line: 185, type: !5)
!4241 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4242 = !DILocation(line: 187, column: 26, scope: !4236, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 948, column: 36, scope: !4227)
!4244 = !DILocation(line: 946, column: 23, scope: !4227)
!4245 = !DILocation(line: 946, column: 45, scope: !4227)
!4246 = !DILocation(line: 946, column: 60, scope: !4227)
!4247 = !DILocation(line: 948, column: 3, scope: !4227)
!4248 = !DILocation(line: 948, column: 32, scope: !4227)
!4249 = !DILocation(line: 185, column: 48, scope: !4236, inlinedAt: !4243)
!4250 = !DILocation(line: 187, column: 3, scope: !4236, inlinedAt: !4243)
!4251 = !DILocation(line: 188, column: 13, scope: !4252, inlinedAt: !4243)
!4252 = distinct !DILexicalBlock(scope: !4236, file: !302, line: 188, column: 7)
!4253 = !DILocation(line: 188, column: 7, scope: !4236, inlinedAt: !4243)
!4254 = !DILocation(line: 189, column: 5, scope: !4252, inlinedAt: !4243)
!4255 = !{!4256}
!4256 = distinct !{!4256, !4257, !"quoting_options_from_style: argument 0"}
!4257 = distinct !{!4257, !"quoting_options_from_style"}
!4258 = !DILocation(line: 191, column: 10, scope: !4236, inlinedAt: !4243)
!4259 = !DILocation(line: 192, column: 1, scope: !4236, inlinedAt: !4243)
!4260 = !DILocation(line: 949, column: 10, scope: !4227)
!4261 = !DILocation(line: 950, column: 1, scope: !4227)
!4262 = !DILocation(line: 949, column: 3, scope: !4227)
!4263 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !302, file: !302, line: 953, type: !4264, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!58, !70, !5, !68, !61}
!4266 = !{!4267, !4268, !4269, !4270, !4271}
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4263, file: !302, line: 953, type: !70)
!4268 = !DILocalVariable(name: "s", arg: 2, scope: !4263, file: !302, line: 953, type: !5)
!4269 = !DILocalVariable(name: "arg", arg: 3, scope: !4263, file: !302, line: 954, type: !68)
!4270 = !DILocalVariable(name: "argsize", arg: 4, scope: !4263, file: !302, line: 954, type: !61)
!4271 = !DILocalVariable(name: "o", scope: !4263, file: !302, line: 956, type: !2799)
!4272 = !DILocation(line: 187, column: 26, scope: !4236, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 956, column: 36, scope: !4263)
!4274 = !DILocation(line: 953, column: 27, scope: !4263)
!4275 = !DILocation(line: 953, column: 49, scope: !4263)
!4276 = !DILocation(line: 954, column: 35, scope: !4263)
!4277 = !DILocation(line: 954, column: 47, scope: !4263)
!4278 = !DILocation(line: 956, column: 3, scope: !4263)
!4279 = !DILocation(line: 956, column: 32, scope: !4263)
!4280 = !DILocation(line: 185, column: 48, scope: !4236, inlinedAt: !4273)
!4281 = !DILocation(line: 187, column: 3, scope: !4236, inlinedAt: !4273)
!4282 = !DILocation(line: 188, column: 13, scope: !4252, inlinedAt: !4273)
!4283 = !DILocation(line: 188, column: 7, scope: !4236, inlinedAt: !4273)
!4284 = !DILocation(line: 189, column: 5, scope: !4252, inlinedAt: !4273)
!4285 = !{!4286}
!4286 = distinct !{!4286, !4287, !"quoting_options_from_style: argument 0"}
!4287 = distinct !{!4287, !"quoting_options_from_style"}
!4288 = !DILocation(line: 191, column: 10, scope: !4236, inlinedAt: !4273)
!4289 = !DILocation(line: 192, column: 1, scope: !4236, inlinedAt: !4273)
!4290 = !DILocation(line: 957, column: 10, scope: !4263)
!4291 = !DILocation(line: 958, column: 1, scope: !4263)
!4292 = !DILocation(line: 957, column: 3, scope: !4263)
!4293 = distinct !DISubprogram(name: "quotearg_style", scope: !302, file: !302, line: 961, type: !4294, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!58, !5, !68}
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "s", arg: 1, scope: !4293, file: !302, line: 961, type: !5)
!4298 = !DILocalVariable(name: "arg", arg: 2, scope: !4293, file: !302, line: 961, type: !68)
!4299 = !DILocation(line: 187, column: 26, scope: !4236, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 948, column: 36, scope: !4227, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 963, column: 10, scope: !4293)
!4302 = !DILocation(line: 961, column: 36, scope: !4293)
!4303 = !DILocation(line: 961, column: 51, scope: !4293)
!4304 = !DILocation(line: 946, column: 23, scope: !4227, inlinedAt: !4301)
!4305 = !DILocation(line: 946, column: 45, scope: !4227, inlinedAt: !4301)
!4306 = !DILocation(line: 946, column: 60, scope: !4227, inlinedAt: !4301)
!4307 = !DILocation(line: 948, column: 3, scope: !4227, inlinedAt: !4301)
!4308 = !DILocation(line: 948, column: 32, scope: !4227, inlinedAt: !4301)
!4309 = !DILocation(line: 185, column: 48, scope: !4236, inlinedAt: !4300)
!4310 = !DILocation(line: 187, column: 3, scope: !4236, inlinedAt: !4300)
!4311 = !DILocation(line: 188, column: 13, scope: !4252, inlinedAt: !4300)
!4312 = !DILocation(line: 188, column: 7, scope: !4236, inlinedAt: !4300)
!4313 = !DILocation(line: 189, column: 5, scope: !4252, inlinedAt: !4300)
!4314 = !{!4315}
!4315 = distinct !{!4315, !4316, !"quoting_options_from_style: argument 0"}
!4316 = distinct !{!4316, !"quoting_options_from_style"}
!4317 = !DILocation(line: 191, column: 10, scope: !4236, inlinedAt: !4300)
!4318 = !DILocation(line: 192, column: 1, scope: !4236, inlinedAt: !4300)
!4319 = !DILocation(line: 949, column: 10, scope: !4227, inlinedAt: !4301)
!4320 = !DILocation(line: 950, column: 1, scope: !4227, inlinedAt: !4301)
!4321 = !DILocation(line: 963, column: 3, scope: !4293)
!4322 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !302, file: !302, line: 967, type: !4323, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!58, !5, !68, !61}
!4325 = !{!4326, !4327, !4328}
!4326 = !DILocalVariable(name: "s", arg: 1, scope: !4322, file: !302, line: 967, type: !5)
!4327 = !DILocalVariable(name: "arg", arg: 2, scope: !4322, file: !302, line: 967, type: !68)
!4328 = !DILocalVariable(name: "argsize", arg: 3, scope: !4322, file: !302, line: 967, type: !61)
!4329 = !DILocation(line: 187, column: 26, scope: !4236, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 956, column: 36, scope: !4263, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 969, column: 10, scope: !4322)
!4332 = !DILocation(line: 967, column: 40, scope: !4322)
!4333 = !DILocation(line: 967, column: 55, scope: !4322)
!4334 = !DILocation(line: 967, column: 67, scope: !4322)
!4335 = !DILocation(line: 953, column: 27, scope: !4263, inlinedAt: !4331)
!4336 = !DILocation(line: 953, column: 49, scope: !4263, inlinedAt: !4331)
!4337 = !DILocation(line: 954, column: 35, scope: !4263, inlinedAt: !4331)
!4338 = !DILocation(line: 954, column: 47, scope: !4263, inlinedAt: !4331)
!4339 = !DILocation(line: 956, column: 3, scope: !4263, inlinedAt: !4331)
!4340 = !DILocation(line: 956, column: 32, scope: !4263, inlinedAt: !4331)
!4341 = !DILocation(line: 185, column: 48, scope: !4236, inlinedAt: !4330)
!4342 = !DILocation(line: 187, column: 3, scope: !4236, inlinedAt: !4330)
!4343 = !DILocation(line: 188, column: 13, scope: !4252, inlinedAt: !4330)
!4344 = !DILocation(line: 188, column: 7, scope: !4236, inlinedAt: !4330)
!4345 = !DILocation(line: 189, column: 5, scope: !4252, inlinedAt: !4330)
!4346 = !{!4347}
!4347 = distinct !{!4347, !4348, !"quoting_options_from_style: argument 0"}
!4348 = distinct !{!4348, !"quoting_options_from_style"}
!4349 = !DILocation(line: 191, column: 10, scope: !4236, inlinedAt: !4330)
!4350 = !DILocation(line: 192, column: 1, scope: !4236, inlinedAt: !4330)
!4351 = !DILocation(line: 957, column: 10, scope: !4263, inlinedAt: !4331)
!4352 = !DILocation(line: 958, column: 1, scope: !4263, inlinedAt: !4331)
!4353 = !DILocation(line: 969, column: 3, scope: !4322)
!4354 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !302, file: !302, line: 973, type: !4355, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!58, !68, !61, !59}
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DILocalVariable(name: "arg", arg: 1, scope: !4354, file: !302, line: 973, type: !68)
!4359 = !DILocalVariable(name: "argsize", arg: 2, scope: !4354, file: !302, line: 973, type: !61)
!4360 = !DILocalVariable(name: "ch", arg: 3, scope: !4354, file: !302, line: 973, type: !59)
!4361 = !DILocalVariable(name: "options", scope: !4354, file: !302, line: 975, type: !309)
!4362 = !DILocation(line: 973, column: 32, scope: !4354)
!4363 = !DILocation(line: 973, column: 44, scope: !4354)
!4364 = !DILocation(line: 973, column: 58, scope: !4354)
!4365 = !DILocation(line: 975, column: 3, scope: !4354)
!4366 = !DILocation(line: 976, column: 13, scope: !4354)
!4367 = !{i64 0, i64 4, !1048, i64 4, i64 4, !1012, i64 8, i64 32, !1048, i64 40, i64 8, !801, i64 48, i64 8, !801}
!4368 = !DILocation(line: 975, column: 26, scope: !4354)
!4369 = !DILocation(line: 144, column: 43, scope: !2822, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 977, column: 3, scope: !4354)
!4371 = !DILocation(line: 144, column: 51, scope: !2822, inlinedAt: !4370)
!4372 = !DILocation(line: 144, column: 58, scope: !2822, inlinedAt: !4370)
!4373 = !DILocation(line: 146, column: 17, scope: !2822, inlinedAt: !4370)
!4374 = !DILocation(line: 148, column: 62, scope: !2840, inlinedAt: !4370)
!4375 = !DILocation(line: 148, column: 57, scope: !2840, inlinedAt: !4370)
!4376 = !DILocation(line: 147, column: 17, scope: !2822, inlinedAt: !4370)
!4377 = !DILocation(line: 149, column: 18, scope: !2822, inlinedAt: !4370)
!4378 = !DILocation(line: 149, column: 15, scope: !2822, inlinedAt: !4370)
!4379 = !DILocation(line: 149, column: 7, scope: !2822, inlinedAt: !4370)
!4380 = !DILocation(line: 150, column: 12, scope: !2822, inlinedAt: !4370)
!4381 = !DILocation(line: 150, column: 15, scope: !2822, inlinedAt: !4370)
!4382 = !DILocation(line: 150, column: 25, scope: !2822, inlinedAt: !4370)
!4383 = !DILocation(line: 150, column: 7, scope: !2822, inlinedAt: !4370)
!4384 = !DILocation(line: 151, column: 18, scope: !2822, inlinedAt: !4370)
!4385 = !DILocation(line: 151, column: 23, scope: !2822, inlinedAt: !4370)
!4386 = !DILocation(line: 151, column: 6, scope: !2822, inlinedAt: !4370)
!4387 = !DILocation(line: 978, column: 10, scope: !4354)
!4388 = !DILocation(line: 979, column: 1, scope: !4354)
!4389 = !DILocation(line: 978, column: 3, scope: !4354)
!4390 = distinct !DISubprogram(name: "quotearg_char", scope: !302, file: !302, line: 982, type: !4391, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!58, !68, !59}
!4393 = !{!4394, !4395}
!4394 = !DILocalVariable(name: "arg", arg: 1, scope: !4390, file: !302, line: 982, type: !68)
!4395 = !DILocalVariable(name: "ch", arg: 2, scope: !4390, file: !302, line: 982, type: !59)
!4396 = !DILocation(line: 982, column: 28, scope: !4390)
!4397 = !DILocation(line: 982, column: 38, scope: !4390)
!4398 = !DILocation(line: 973, column: 32, scope: !4354, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 984, column: 10, scope: !4390)
!4400 = !DILocation(line: 973, column: 44, scope: !4354, inlinedAt: !4399)
!4401 = !DILocation(line: 973, column: 58, scope: !4354, inlinedAt: !4399)
!4402 = !DILocation(line: 975, column: 3, scope: !4354, inlinedAt: !4399)
!4403 = !DILocation(line: 976, column: 13, scope: !4354, inlinedAt: !4399)
!4404 = !DILocation(line: 975, column: 26, scope: !4354, inlinedAt: !4399)
!4405 = !DILocation(line: 144, column: 43, scope: !2822, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 977, column: 3, scope: !4354, inlinedAt: !4399)
!4407 = !DILocation(line: 144, column: 51, scope: !2822, inlinedAt: !4406)
!4408 = !DILocation(line: 144, column: 58, scope: !2822, inlinedAt: !4406)
!4409 = !DILocation(line: 146, column: 17, scope: !2822, inlinedAt: !4406)
!4410 = !DILocation(line: 148, column: 62, scope: !2840, inlinedAt: !4406)
!4411 = !DILocation(line: 148, column: 57, scope: !2840, inlinedAt: !4406)
!4412 = !DILocation(line: 147, column: 17, scope: !2822, inlinedAt: !4406)
!4413 = !DILocation(line: 149, column: 18, scope: !2822, inlinedAt: !4406)
!4414 = !DILocation(line: 149, column: 15, scope: !2822, inlinedAt: !4406)
!4415 = !DILocation(line: 149, column: 7, scope: !2822, inlinedAt: !4406)
!4416 = !DILocation(line: 150, column: 12, scope: !2822, inlinedAt: !4406)
!4417 = !DILocation(line: 150, column: 15, scope: !2822, inlinedAt: !4406)
!4418 = !DILocation(line: 150, column: 25, scope: !2822, inlinedAt: !4406)
!4419 = !DILocation(line: 150, column: 7, scope: !2822, inlinedAt: !4406)
!4420 = !DILocation(line: 151, column: 18, scope: !2822, inlinedAt: !4406)
!4421 = !DILocation(line: 151, column: 23, scope: !2822, inlinedAt: !4406)
!4422 = !DILocation(line: 151, column: 6, scope: !2822, inlinedAt: !4406)
!4423 = !DILocation(line: 978, column: 10, scope: !4354, inlinedAt: !4399)
!4424 = !DILocation(line: 979, column: 1, scope: !4354, inlinedAt: !4399)
!4425 = !DILocation(line: 984, column: 3, scope: !4390)
!4426 = distinct !DISubprogram(name: "quotearg_colon", scope: !302, file: !302, line: 988, type: !4204, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4427)
!4427 = !{!4428}
!4428 = !DILocalVariable(name: "arg", arg: 1, scope: !4426, file: !302, line: 988, type: !68)
!4429 = !DILocation(line: 988, column: 29, scope: !4426)
!4430 = !DILocation(line: 982, column: 28, scope: !4390, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 990, column: 10, scope: !4426)
!4432 = !DILocation(line: 982, column: 38, scope: !4390, inlinedAt: !4431)
!4433 = !DILocation(line: 973, column: 32, scope: !4354, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 984, column: 10, scope: !4390, inlinedAt: !4431)
!4435 = !DILocation(line: 973, column: 44, scope: !4354, inlinedAt: !4434)
!4436 = !DILocation(line: 973, column: 58, scope: !4354, inlinedAt: !4434)
!4437 = !DILocation(line: 975, column: 3, scope: !4354, inlinedAt: !4434)
!4438 = !DILocation(line: 976, column: 13, scope: !4354, inlinedAt: !4434)
!4439 = !DILocation(line: 975, column: 26, scope: !4354, inlinedAt: !4434)
!4440 = !DILocation(line: 144, column: 43, scope: !2822, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 977, column: 3, scope: !4354, inlinedAt: !4434)
!4442 = !DILocation(line: 144, column: 51, scope: !2822, inlinedAt: !4441)
!4443 = !DILocation(line: 144, column: 58, scope: !2822, inlinedAt: !4441)
!4444 = !DILocation(line: 146, column: 17, scope: !2822, inlinedAt: !4441)
!4445 = !DILocation(line: 148, column: 57, scope: !2840, inlinedAt: !4441)
!4446 = !DILocation(line: 147, column: 17, scope: !2822, inlinedAt: !4441)
!4447 = !DILocation(line: 149, column: 7, scope: !2822, inlinedAt: !4441)
!4448 = !DILocation(line: 150, column: 12, scope: !2822, inlinedAt: !4441)
!4449 = !DILocation(line: 151, column: 6, scope: !2822, inlinedAt: !4441)
!4450 = !DILocation(line: 978, column: 10, scope: !4354, inlinedAt: !4434)
!4451 = !DILocation(line: 979, column: 1, scope: !4354, inlinedAt: !4434)
!4452 = !DILocation(line: 990, column: 3, scope: !4426)
!4453 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !302, file: !302, line: 994, type: !4214, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4454)
!4454 = !{!4455, !4456}
!4455 = !DILocalVariable(name: "arg", arg: 1, scope: !4453, file: !302, line: 994, type: !68)
!4456 = !DILocalVariable(name: "argsize", arg: 2, scope: !4453, file: !302, line: 994, type: !61)
!4457 = !DILocation(line: 994, column: 33, scope: !4453)
!4458 = !DILocation(line: 994, column: 45, scope: !4453)
!4459 = !DILocation(line: 973, column: 32, scope: !4354, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 996, column: 10, scope: !4453)
!4461 = !DILocation(line: 973, column: 44, scope: !4354, inlinedAt: !4460)
!4462 = !DILocation(line: 973, column: 58, scope: !4354, inlinedAt: !4460)
!4463 = !DILocation(line: 975, column: 3, scope: !4354, inlinedAt: !4460)
!4464 = !DILocation(line: 976, column: 13, scope: !4354, inlinedAt: !4460)
!4465 = !DILocation(line: 975, column: 26, scope: !4354, inlinedAt: !4460)
!4466 = !DILocation(line: 144, column: 43, scope: !2822, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 977, column: 3, scope: !4354, inlinedAt: !4460)
!4468 = !DILocation(line: 144, column: 51, scope: !2822, inlinedAt: !4467)
!4469 = !DILocation(line: 144, column: 58, scope: !2822, inlinedAt: !4467)
!4470 = !DILocation(line: 146, column: 17, scope: !2822, inlinedAt: !4467)
!4471 = !DILocation(line: 148, column: 57, scope: !2840, inlinedAt: !4467)
!4472 = !DILocation(line: 147, column: 17, scope: !2822, inlinedAt: !4467)
!4473 = !DILocation(line: 149, column: 7, scope: !2822, inlinedAt: !4467)
!4474 = !DILocation(line: 150, column: 12, scope: !2822, inlinedAt: !4467)
!4475 = !DILocation(line: 151, column: 6, scope: !2822, inlinedAt: !4467)
!4476 = !DILocation(line: 978, column: 10, scope: !4354, inlinedAt: !4460)
!4477 = !DILocation(line: 979, column: 1, scope: !4354, inlinedAt: !4460)
!4478 = !DILocation(line: 996, column: 3, scope: !4453)
!4479 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !302, file: !302, line: 1000, type: !4228, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4480)
!4480 = !{!4481, !4482, !4483, !4484}
!4481 = !DILocalVariable(name: "n", arg: 1, scope: !4479, file: !302, line: 1000, type: !70)
!4482 = !DILocalVariable(name: "s", arg: 2, scope: !4479, file: !302, line: 1000, type: !5)
!4483 = !DILocalVariable(name: "arg", arg: 3, scope: !4479, file: !302, line: 1000, type: !68)
!4484 = !DILocalVariable(name: "options", scope: !4479, file: !302, line: 1002, type: !309)
!4485 = !DILocation(line: 187, column: 26, scope: !4236, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 1003, column: 13, scope: !4479)
!4487 = !DILocation(line: 1000, column: 29, scope: !4479)
!4488 = !DILocation(line: 1000, column: 51, scope: !4479)
!4489 = !DILocation(line: 1000, column: 66, scope: !4479)
!4490 = !DILocation(line: 1002, column: 3, scope: !4479)
!4491 = !DILocation(line: 185, column: 48, scope: !4236, inlinedAt: !4486)
!4492 = !DILocation(line: 187, column: 3, scope: !4236, inlinedAt: !4486)
!4493 = !DILocation(line: 188, column: 13, scope: !4252, inlinedAt: !4486)
!4494 = !DILocation(line: 188, column: 7, scope: !4236, inlinedAt: !4486)
!4495 = !DILocation(line: 189, column: 5, scope: !4252, inlinedAt: !4486)
!4496 = !{!4497}
!4497 = distinct !{!4497, !4498, !"quoting_options_from_style: argument 0"}
!4498 = distinct !{!4498, !"quoting_options_from_style"}
!4499 = !DILocation(line: 191, column: 10, scope: !4236, inlinedAt: !4486)
!4500 = !DILocation(line: 192, column: 1, scope: !4236, inlinedAt: !4486)
!4501 = !DILocation(line: 1003, column: 13, scope: !4479)
!4502 = !DILocation(line: 1002, column: 26, scope: !4479)
!4503 = !DILocation(line: 144, column: 43, scope: !2822, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 1004, column: 3, scope: !4479)
!4505 = !DILocation(line: 144, column: 51, scope: !2822, inlinedAt: !4504)
!4506 = !DILocation(line: 144, column: 58, scope: !2822, inlinedAt: !4504)
!4507 = !DILocation(line: 146, column: 17, scope: !2822, inlinedAt: !4504)
!4508 = !DILocation(line: 148, column: 57, scope: !2840, inlinedAt: !4504)
!4509 = !DILocation(line: 147, column: 17, scope: !2822, inlinedAt: !4504)
!4510 = !DILocation(line: 149, column: 7, scope: !2822, inlinedAt: !4504)
!4511 = !DILocation(line: 150, column: 12, scope: !2822, inlinedAt: !4504)
!4512 = !DILocation(line: 151, column: 6, scope: !2822, inlinedAt: !4504)
!4513 = !DILocation(line: 1005, column: 10, scope: !4479)
!4514 = !DILocation(line: 1006, column: 1, scope: !4479)
!4515 = !DILocation(line: 1005, column: 3, scope: !4479)
!4516 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !302, file: !302, line: 1009, type: !4517, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!58, !70, !68, !68, !68}
!4519 = !{!4520, !4521, !4522, !4523}
!4520 = !DILocalVariable(name: "n", arg: 1, scope: !4516, file: !302, line: 1009, type: !70)
!4521 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4516, file: !302, line: 1009, type: !68)
!4522 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4516, file: !302, line: 1010, type: !68)
!4523 = !DILocalVariable(name: "arg", arg: 4, scope: !4516, file: !302, line: 1010, type: !68)
!4524 = !DILocation(line: 1009, column: 24, scope: !4516)
!4525 = !DILocation(line: 1009, column: 39, scope: !4516)
!4526 = !DILocation(line: 1010, column: 32, scope: !4516)
!4527 = !DILocation(line: 1010, column: 57, scope: !4516)
!4528 = !DILocalVariable(name: "n", arg: 1, scope: !4529, file: !302, line: 1017, type: !70)
!4529 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !302, file: !302, line: 1017, type: !4530, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!58, !70, !68, !68, !68, !61}
!4532 = !{!4528, !4533, !4534, !4535, !4536, !4537}
!4533 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4529, file: !302, line: 1017, type: !68)
!4534 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4529, file: !302, line: 1018, type: !68)
!4535 = !DILocalVariable(name: "arg", arg: 4, scope: !4529, file: !302, line: 1019, type: !68)
!4536 = !DILocalVariable(name: "argsize", arg: 5, scope: !4529, file: !302, line: 1019, type: !61)
!4537 = !DILocalVariable(name: "o", scope: !4529, file: !302, line: 1021, type: !309)
!4538 = !DILocation(line: 1017, column: 28, scope: !4529, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 1012, column: 10, scope: !4516)
!4540 = !DILocation(line: 1017, column: 43, scope: !4529, inlinedAt: !4539)
!4541 = !DILocation(line: 1018, column: 36, scope: !4529, inlinedAt: !4539)
!4542 = !DILocation(line: 1019, column: 36, scope: !4529, inlinedAt: !4539)
!4543 = !DILocation(line: 1019, column: 48, scope: !4529, inlinedAt: !4539)
!4544 = !DILocation(line: 1021, column: 3, scope: !4529, inlinedAt: !4539)
!4545 = !DILocation(line: 1021, column: 30, scope: !4529, inlinedAt: !4539)
!4546 = !DILocation(line: 1021, column: 26, scope: !4529, inlinedAt: !4539)
!4547 = !DILocation(line: 171, column: 45, scope: !2872, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 1022, column: 3, scope: !4529, inlinedAt: !4539)
!4549 = !DILocation(line: 172, column: 33, scope: !2872, inlinedAt: !4548)
!4550 = !DILocation(line: 172, column: 57, scope: !2872, inlinedAt: !4548)
!4551 = !DILocation(line: 176, column: 6, scope: !2872, inlinedAt: !4548)
!4552 = !DILocation(line: 176, column: 12, scope: !2872, inlinedAt: !4548)
!4553 = !DILocation(line: 177, column: 8, scope: !2888, inlinedAt: !4548)
!4554 = !DILocation(line: 177, column: 23, scope: !2890, inlinedAt: !4548)
!4555 = !DILocation(line: 177, column: 19, scope: !2888, inlinedAt: !4548)
!4556 = !DILocation(line: 178, column: 5, scope: !2888, inlinedAt: !4548)
!4557 = !DILocation(line: 179, column: 6, scope: !2872, inlinedAt: !4548)
!4558 = !DILocation(line: 179, column: 17, scope: !2872, inlinedAt: !4548)
!4559 = !DILocation(line: 180, column: 6, scope: !2872, inlinedAt: !4548)
!4560 = !DILocation(line: 180, column: 18, scope: !2872, inlinedAt: !4548)
!4561 = !DILocation(line: 1023, column: 10, scope: !4529, inlinedAt: !4539)
!4562 = !DILocation(line: 1024, column: 1, scope: !4529, inlinedAt: !4539)
!4563 = !DILocation(line: 1012, column: 3, scope: !4516)
!4564 = !DILocation(line: 1017, column: 28, scope: !4529)
!4565 = !DILocation(line: 1017, column: 43, scope: !4529)
!4566 = !DILocation(line: 1018, column: 36, scope: !4529)
!4567 = !DILocation(line: 1019, column: 36, scope: !4529)
!4568 = !DILocation(line: 1019, column: 48, scope: !4529)
!4569 = !DILocation(line: 1021, column: 3, scope: !4529)
!4570 = !DILocation(line: 1021, column: 30, scope: !4529)
!4571 = !DILocation(line: 1021, column: 26, scope: !4529)
!4572 = !DILocation(line: 171, column: 45, scope: !2872, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 1022, column: 3, scope: !4529)
!4574 = !DILocation(line: 172, column: 33, scope: !2872, inlinedAt: !4573)
!4575 = !DILocation(line: 172, column: 57, scope: !2872, inlinedAt: !4573)
!4576 = !DILocation(line: 176, column: 6, scope: !2872, inlinedAt: !4573)
!4577 = !DILocation(line: 176, column: 12, scope: !2872, inlinedAt: !4573)
!4578 = !DILocation(line: 177, column: 8, scope: !2888, inlinedAt: !4573)
!4579 = !DILocation(line: 177, column: 23, scope: !2890, inlinedAt: !4573)
!4580 = !DILocation(line: 177, column: 19, scope: !2888, inlinedAt: !4573)
!4581 = !DILocation(line: 178, column: 5, scope: !2888, inlinedAt: !4573)
!4582 = !DILocation(line: 179, column: 6, scope: !2872, inlinedAt: !4573)
!4583 = !DILocation(line: 179, column: 17, scope: !2872, inlinedAt: !4573)
!4584 = !DILocation(line: 180, column: 6, scope: !2872, inlinedAt: !4573)
!4585 = !DILocation(line: 180, column: 18, scope: !2872, inlinedAt: !4573)
!4586 = !DILocation(line: 1023, column: 10, scope: !4529)
!4587 = !DILocation(line: 1024, column: 1, scope: !4529)
!4588 = !DILocation(line: 1023, column: 3, scope: !4529)
!4589 = distinct !DISubprogram(name: "quotearg_custom", scope: !302, file: !302, line: 1027, type: !4590, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!58, !68, !68, !68}
!4592 = !{!4593, !4594, !4595}
!4593 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4589, file: !302, line: 1027, type: !68)
!4594 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4589, file: !302, line: 1027, type: !68)
!4595 = !DILocalVariable(name: "arg", arg: 3, scope: !4589, file: !302, line: 1028, type: !68)
!4596 = !DILocation(line: 1027, column: 30, scope: !4589)
!4597 = !DILocation(line: 1027, column: 54, scope: !4589)
!4598 = !DILocation(line: 1028, column: 30, scope: !4589)
!4599 = !DILocation(line: 1009, column: 24, scope: !4516, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 1030, column: 10, scope: !4589)
!4601 = !DILocation(line: 1009, column: 39, scope: !4516, inlinedAt: !4600)
!4602 = !DILocation(line: 1010, column: 32, scope: !4516, inlinedAt: !4600)
!4603 = !DILocation(line: 1010, column: 57, scope: !4516, inlinedAt: !4600)
!4604 = !DILocation(line: 1017, column: 28, scope: !4529, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 1012, column: 10, scope: !4516, inlinedAt: !4600)
!4606 = !DILocation(line: 1017, column: 43, scope: !4529, inlinedAt: !4605)
!4607 = !DILocation(line: 1018, column: 36, scope: !4529, inlinedAt: !4605)
!4608 = !DILocation(line: 1019, column: 36, scope: !4529, inlinedAt: !4605)
!4609 = !DILocation(line: 1019, column: 48, scope: !4529, inlinedAt: !4605)
!4610 = !DILocation(line: 1021, column: 3, scope: !4529, inlinedAt: !4605)
!4611 = !DILocation(line: 1021, column: 30, scope: !4529, inlinedAt: !4605)
!4612 = !DILocation(line: 1021, column: 26, scope: !4529, inlinedAt: !4605)
!4613 = !DILocation(line: 171, column: 45, scope: !2872, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 1022, column: 3, scope: !4529, inlinedAt: !4605)
!4615 = !DILocation(line: 172, column: 33, scope: !2872, inlinedAt: !4614)
!4616 = !DILocation(line: 172, column: 57, scope: !2872, inlinedAt: !4614)
!4617 = !DILocation(line: 176, column: 6, scope: !2872, inlinedAt: !4614)
!4618 = !DILocation(line: 176, column: 12, scope: !2872, inlinedAt: !4614)
!4619 = !DILocation(line: 177, column: 8, scope: !2888, inlinedAt: !4614)
!4620 = !DILocation(line: 177, column: 23, scope: !2890, inlinedAt: !4614)
!4621 = !DILocation(line: 177, column: 19, scope: !2888, inlinedAt: !4614)
!4622 = !DILocation(line: 178, column: 5, scope: !2888, inlinedAt: !4614)
!4623 = !DILocation(line: 179, column: 6, scope: !2872, inlinedAt: !4614)
!4624 = !DILocation(line: 179, column: 17, scope: !2872, inlinedAt: !4614)
!4625 = !DILocation(line: 180, column: 6, scope: !2872, inlinedAt: !4614)
!4626 = !DILocation(line: 180, column: 18, scope: !2872, inlinedAt: !4614)
!4627 = !DILocation(line: 1023, column: 10, scope: !4529, inlinedAt: !4605)
!4628 = !DILocation(line: 1024, column: 1, scope: !4529, inlinedAt: !4605)
!4629 = !DILocation(line: 1030, column: 3, scope: !4589)
!4630 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !302, file: !302, line: 1034, type: !4631, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!58, !68, !68, !68, !61}
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4630, file: !302, line: 1034, type: !68)
!4635 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4630, file: !302, line: 1034, type: !68)
!4636 = !DILocalVariable(name: "arg", arg: 3, scope: !4630, file: !302, line: 1035, type: !68)
!4637 = !DILocalVariable(name: "argsize", arg: 4, scope: !4630, file: !302, line: 1035, type: !61)
!4638 = !DILocation(line: 1034, column: 34, scope: !4630)
!4639 = !DILocation(line: 1034, column: 58, scope: !4630)
!4640 = !DILocation(line: 1035, column: 34, scope: !4630)
!4641 = !DILocation(line: 1035, column: 46, scope: !4630)
!4642 = !DILocation(line: 1017, column: 28, scope: !4529, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 1037, column: 10, scope: !4630)
!4644 = !DILocation(line: 1017, column: 43, scope: !4529, inlinedAt: !4643)
!4645 = !DILocation(line: 1018, column: 36, scope: !4529, inlinedAt: !4643)
!4646 = !DILocation(line: 1019, column: 36, scope: !4529, inlinedAt: !4643)
!4647 = !DILocation(line: 1019, column: 48, scope: !4529, inlinedAt: !4643)
!4648 = !DILocation(line: 1021, column: 3, scope: !4529, inlinedAt: !4643)
!4649 = !DILocation(line: 1021, column: 30, scope: !4529, inlinedAt: !4643)
!4650 = !DILocation(line: 1021, column: 26, scope: !4529, inlinedAt: !4643)
!4651 = !DILocation(line: 171, column: 45, scope: !2872, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 1022, column: 3, scope: !4529, inlinedAt: !4643)
!4653 = !DILocation(line: 172, column: 33, scope: !2872, inlinedAt: !4652)
!4654 = !DILocation(line: 172, column: 57, scope: !2872, inlinedAt: !4652)
!4655 = !DILocation(line: 176, column: 6, scope: !2872, inlinedAt: !4652)
!4656 = !DILocation(line: 176, column: 12, scope: !2872, inlinedAt: !4652)
!4657 = !DILocation(line: 177, column: 8, scope: !2888, inlinedAt: !4652)
!4658 = !DILocation(line: 177, column: 23, scope: !2890, inlinedAt: !4652)
!4659 = !DILocation(line: 177, column: 19, scope: !2888, inlinedAt: !4652)
!4660 = !DILocation(line: 178, column: 5, scope: !2888, inlinedAt: !4652)
!4661 = !DILocation(line: 179, column: 6, scope: !2872, inlinedAt: !4652)
!4662 = !DILocation(line: 179, column: 17, scope: !2872, inlinedAt: !4652)
!4663 = !DILocation(line: 180, column: 6, scope: !2872, inlinedAt: !4652)
!4664 = !DILocation(line: 180, column: 18, scope: !2872, inlinedAt: !4652)
!4665 = !DILocation(line: 1023, column: 10, scope: !4529, inlinedAt: !4643)
!4666 = !DILocation(line: 1024, column: 1, scope: !4529, inlinedAt: !4643)
!4667 = !DILocation(line: 1037, column: 3, scope: !4630)
!4668 = distinct !DISubprogram(name: "quote_n_mem", scope: !302, file: !302, line: 1052, type: !4669, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!68, !70, !68, !61}
!4671 = !{!4672, !4673, !4674}
!4672 = !DILocalVariable(name: "n", arg: 1, scope: !4668, file: !302, line: 1052, type: !70)
!4673 = !DILocalVariable(name: "arg", arg: 2, scope: !4668, file: !302, line: 1052, type: !68)
!4674 = !DILocalVariable(name: "argsize", arg: 3, scope: !4668, file: !302, line: 1052, type: !61)
!4675 = !DILocation(line: 1052, column: 18, scope: !4668)
!4676 = !DILocation(line: 1052, column: 33, scope: !4668)
!4677 = !DILocation(line: 1052, column: 45, scope: !4668)
!4678 = !DILocation(line: 1054, column: 10, scope: !4668)
!4679 = !DILocation(line: 1054, column: 3, scope: !4668)
!4680 = distinct !DISubprogram(name: "quote_mem", scope: !302, file: !302, line: 1058, type: !4681, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4683)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!68, !68, !61}
!4683 = !{!4684, !4685}
!4684 = !DILocalVariable(name: "arg", arg: 1, scope: !4680, file: !302, line: 1058, type: !68)
!4685 = !DILocalVariable(name: "argsize", arg: 2, scope: !4680, file: !302, line: 1058, type: !61)
!4686 = !DILocation(line: 1058, column: 24, scope: !4680)
!4687 = !DILocation(line: 1058, column: 36, scope: !4680)
!4688 = !DILocation(line: 1052, column: 18, scope: !4668, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 1060, column: 10, scope: !4680)
!4690 = !DILocation(line: 1052, column: 33, scope: !4668, inlinedAt: !4689)
!4691 = !DILocation(line: 1052, column: 45, scope: !4668, inlinedAt: !4689)
!4692 = !DILocation(line: 1054, column: 10, scope: !4668, inlinedAt: !4689)
!4693 = !DILocation(line: 1060, column: 3, scope: !4680)
!4694 = distinct !DISubprogram(name: "quote_n", scope: !302, file: !302, line: 1064, type: !4695, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4697)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!68, !70, !68}
!4697 = !{!4698, !4699}
!4698 = !DILocalVariable(name: "n", arg: 1, scope: !4694, file: !302, line: 1064, type: !70)
!4699 = !DILocalVariable(name: "arg", arg: 2, scope: !4694, file: !302, line: 1064, type: !68)
!4700 = !DILocation(line: 1064, column: 14, scope: !4694)
!4701 = !DILocation(line: 1064, column: 29, scope: !4694)
!4702 = !DILocation(line: 1052, column: 18, scope: !4668, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 1066, column: 10, scope: !4694)
!4704 = !DILocation(line: 1052, column: 33, scope: !4668, inlinedAt: !4703)
!4705 = !DILocation(line: 1052, column: 45, scope: !4668, inlinedAt: !4703)
!4706 = !DILocation(line: 1054, column: 10, scope: !4668, inlinedAt: !4703)
!4707 = !DILocation(line: 1066, column: 3, scope: !4694)
!4708 = distinct !DISubprogram(name: "quote", scope: !302, file: !302, line: 1070, type: !4709, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !290, variables: !4711)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!68, !68}
!4711 = !{!4712}
!4712 = !DILocalVariable(name: "arg", arg: 1, scope: !4708, file: !302, line: 1070, type: !68)
!4713 = !DILocation(line: 1070, column: 20, scope: !4708)
!4714 = !DILocation(line: 1064, column: 14, scope: !4694, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 1072, column: 10, scope: !4708)
!4716 = !DILocation(line: 1064, column: 29, scope: !4694, inlinedAt: !4715)
!4717 = !DILocation(line: 1052, column: 18, scope: !4668, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 1066, column: 10, scope: !4694, inlinedAt: !4715)
!4719 = !DILocation(line: 1052, column: 33, scope: !4668, inlinedAt: !4718)
!4720 = !DILocation(line: 1052, column: 45, scope: !4668, inlinedAt: !4718)
!4721 = !DILocation(line: 1054, column: 10, scope: !4668, inlinedAt: !4718)
!4722 = !DILocation(line: 1072, column: 3, scope: !4708)
!4723 = distinct !DISubprogram(name: "dup_safer", scope: !4724, file: !4724, line: 31, type: !1398, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !738, variables: !4725)
!4724 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4725 = !{!4726}
!4726 = !DILocalVariable(name: "fd", arg: 1, scope: !4723, file: !4724, line: 31, type: !70)
!4727 = !DILocation(line: 31, column: 16, scope: !4723)
!4728 = !DILocation(line: 33, column: 10, scope: !4723)
!4729 = !DILocation(line: 33, column: 3, scope: !4723)
!4730 = distinct !DISubprogram(name: "version_etc_arn", scope: !744, file: !744, line: 62, type: !4731, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !740, variables: !4774)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !4733, !68, !68, !68, !4773, !61}
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !4735)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !4736)
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4735, file: !132, line: 242, baseType: !70, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4735, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4735, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4735, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4735, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4735, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4735, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4735, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4735, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4735, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4735, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4735, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4735, file: !132, line: 260, baseType: !4750, size: 64, offset: 768)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !4752)
!4752 = !{!4753, !4754, !4756}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4751, file: !132, line: 157, baseType: !4750, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4751, file: !132, line: 158, baseType: !4755, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4751, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4735, file: !132, line: 262, baseType: !4755, size: 64, offset: 832)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4735, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4735, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4735, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4735, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4735, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4735, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4735, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4735, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4735, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4735, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4735, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4735, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4735, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4735, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4735, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!4774 = !{!4775, !4776, !4777, !4778, !4779, !4780}
!4775 = !DILocalVariable(name: "stream", arg: 1, scope: !4730, file: !744, line: 62, type: !4733)
!4776 = !DILocalVariable(name: "command_name", arg: 2, scope: !4730, file: !744, line: 63, type: !68)
!4777 = !DILocalVariable(name: "package", arg: 3, scope: !4730, file: !744, line: 63, type: !68)
!4778 = !DILocalVariable(name: "version", arg: 4, scope: !4730, file: !744, line: 64, type: !68)
!4779 = !DILocalVariable(name: "authors", arg: 5, scope: !4730, file: !744, line: 65, type: !4773)
!4780 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4730, file: !744, line: 65, type: !61)
!4781 = !DILocation(line: 62, column: 24, scope: !4730)
!4782 = !DILocation(line: 63, column: 30, scope: !4730)
!4783 = !DILocation(line: 63, column: 56, scope: !4730)
!4784 = !DILocation(line: 64, column: 30, scope: !4730)
!4785 = !DILocation(line: 65, column: 39, scope: !4730)
!4786 = !DILocation(line: 65, column: 55, scope: !4730)
!4787 = !DILocation(line: 67, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4730, file: !744, line: 67, column: 7)
!4789 = !DILocation(line: 67, column: 7, scope: !4730)
!4790 = !DILocation(line: 68, column: 5, scope: !4788)
!4791 = !DILocation(line: 70, column: 5, scope: !4788)
!4792 = !DILocation(line: 84, column: 3, scope: !4730)
!4793 = !DILocation(line: 84, column: 3, scope: !4794)
!4794 = !DILexicalBlockFile(scope: !4730, file: !744, discriminator: 1)
!4795 = !DILocation(line: 86, column: 3, scope: !4730)
!4796 = !DILocation(line: 86, column: 3, scope: !4794)
!4797 = !DILocation(line: 95, column: 3, scope: !4730)
!4798 = !DILocation(line: 99, column: 7, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4730, file: !744, line: 96, column: 5)
!4800 = !DILocation(line: 102, column: 7, scope: !4799)
!4801 = !DILocation(line: 102, column: 7, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !4799, file: !744, discriminator: 1)
!4803 = !DILocation(line: 103, column: 7, scope: !4799)
!4804 = !DILocation(line: 106, column: 7, scope: !4799)
!4805 = !DILocation(line: 106, column: 7, scope: !4802)
!4806 = !DILocation(line: 107, column: 7, scope: !4799)
!4807 = !DILocation(line: 110, column: 7, scope: !4799)
!4808 = !DILocation(line: 110, column: 7, scope: !4802)
!4809 = !DILocation(line: 112, column: 7, scope: !4799)
!4810 = !DILocation(line: 117, column: 7, scope: !4799)
!4811 = !DILocation(line: 117, column: 7, scope: !4802)
!4812 = !DILocation(line: 119, column: 7, scope: !4799)
!4813 = !DILocation(line: 124, column: 7, scope: !4799)
!4814 = !DILocation(line: 124, column: 7, scope: !4802)
!4815 = !DILocation(line: 126, column: 7, scope: !4799)
!4816 = !DILocation(line: 131, column: 7, scope: !4799)
!4817 = !DILocation(line: 131, column: 7, scope: !4802)
!4818 = !DILocation(line: 134, column: 7, scope: !4799)
!4819 = !DILocation(line: 139, column: 7, scope: !4799)
!4820 = !DILocation(line: 139, column: 7, scope: !4802)
!4821 = !DILocation(line: 142, column: 7, scope: !4799)
!4822 = !DILocation(line: 147, column: 7, scope: !4799)
!4823 = !DILocation(line: 147, column: 7, scope: !4802)
!4824 = !DILocation(line: 151, column: 7, scope: !4799)
!4825 = !DILocation(line: 156, column: 7, scope: !4799)
!4826 = !DILocation(line: 156, column: 7, scope: !4802)
!4827 = !DILocation(line: 160, column: 7, scope: !4799)
!4828 = !DILocation(line: 167, column: 7, scope: !4799)
!4829 = !DILocation(line: 167, column: 7, scope: !4802)
!4830 = !DILocation(line: 171, column: 7, scope: !4799)
!4831 = !DILocation(line: 173, column: 1, scope: !4730)
!4832 = distinct !DISubprogram(name: "version_etc_ar", scope: !744, file: !744, line: 180, type: !4833, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !740, variables: !4835)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !4733, !68, !68, !68, !4773}
!4835 = !{!4836, !4837, !4838, !4839, !4840, !4841}
!4836 = !DILocalVariable(name: "stream", arg: 1, scope: !4832, file: !744, line: 180, type: !4733)
!4837 = !DILocalVariable(name: "command_name", arg: 2, scope: !4832, file: !744, line: 181, type: !68)
!4838 = !DILocalVariable(name: "package", arg: 3, scope: !4832, file: !744, line: 181, type: !68)
!4839 = !DILocalVariable(name: "version", arg: 4, scope: !4832, file: !744, line: 182, type: !68)
!4840 = !DILocalVariable(name: "authors", arg: 5, scope: !4832, file: !744, line: 182, type: !4773)
!4841 = !DILocalVariable(name: "n_authors", scope: !4832, file: !744, line: 184, type: !61)
!4842 = !DILocation(line: 180, column: 23, scope: !4832)
!4843 = !DILocation(line: 181, column: 29, scope: !4832)
!4844 = !DILocation(line: 181, column: 55, scope: !4832)
!4845 = !DILocation(line: 182, column: 29, scope: !4832)
!4846 = !DILocation(line: 182, column: 59, scope: !4832)
!4847 = !DILocation(line: 184, column: 10, scope: !4832)
!4848 = !DILocation(line: 186, column: 8, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4832, file: !744, line: 186, column: 3)
!4850 = !DILocation(line: 186, column: 23, scope: !4851)
!4851 = !DILexicalBlockFile(scope: !4852, file: !744, discriminator: 1)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !744, line: 186, column: 3)
!4853 = !DILocation(line: 186, column: 3, scope: !4854)
!4854 = !DILexicalBlockFile(scope: !4849, file: !744, discriminator: 1)
!4855 = !DILocation(line: 186, column: 52, scope: !4856)
!4856 = !DILexicalBlockFile(scope: !4852, file: !744, discriminator: 3)
!4857 = distinct !{!4857, !4858, !4859}
!4858 = !DILocation(line: 186, column: 3, scope: !4849)
!4859 = !DILocation(line: 187, column: 5, scope: !4849)
!4860 = !DILocation(line: 188, column: 3, scope: !4832)
!4861 = !DILocation(line: 189, column: 1, scope: !4832)
!4862 = distinct !DISubprogram(name: "version_etc_va", scope: !744, file: !744, line: 196, type: !4863, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !740, variables: !4872)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{null, !4733, !68, !68, !68, !4865}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !741, line: 189, size: 192, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4866, file: !741, line: 189, baseType: !315, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4866, file: !741, line: 189, baseType: !315, size: 32, offset: 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4866, file: !741, line: 189, baseType: !60, size: 64, offset: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4866, file: !741, line: 189, baseType: !60, size: 64, offset: 128)
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878, !4879}
!4873 = !DILocalVariable(name: "stream", arg: 1, scope: !4862, file: !744, line: 196, type: !4733)
!4874 = !DILocalVariable(name: "command_name", arg: 2, scope: !4862, file: !744, line: 197, type: !68)
!4875 = !DILocalVariable(name: "package", arg: 3, scope: !4862, file: !744, line: 197, type: !68)
!4876 = !DILocalVariable(name: "version", arg: 4, scope: !4862, file: !744, line: 198, type: !68)
!4877 = !DILocalVariable(name: "authors", arg: 5, scope: !4862, file: !744, line: 198, type: !4865)
!4878 = !DILocalVariable(name: "n_authors", scope: !4862, file: !744, line: 200, type: !61)
!4879 = !DILocalVariable(name: "authtab", scope: !4862, file: !744, line: 201, type: !4880)
!4880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !305)
!4881 = !DILocation(line: 196, column: 23, scope: !4862)
!4882 = !DILocation(line: 197, column: 29, scope: !4862)
!4883 = !DILocation(line: 197, column: 55, scope: !4862)
!4884 = !DILocation(line: 198, column: 29, scope: !4862)
!4885 = !DILocation(line: 198, column: 46, scope: !4862)
!4886 = !DILocation(line: 201, column: 3, scope: !4862)
!4887 = !DILocation(line: 201, column: 15, scope: !4862)
!4888 = !DILocation(line: 200, column: 10, scope: !4862)
!4889 = !DILocation(line: 205, column: 35, scope: !4890)
!4890 = !DILexicalBlockFile(scope: !4891, file: !744, discriminator: 1)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !744, line: 203, column: 3)
!4892 = distinct !DILexicalBlock(scope: !4862, file: !744, line: 203, column: 3)
!4893 = !DILocation(line: 205, column: 35, scope: !4894)
!4894 = !DILexicalBlockFile(scope: !4891, file: !744, discriminator: 2)
!4895 = !DILocation(line: 205, column: 35, scope: !4896)
!4896 = !DILexicalBlockFile(scope: !4891, file: !744, discriminator: 3)
!4897 = !DILocation(line: 205, column: 35, scope: !4898)
!4898 = !DILexicalBlockFile(scope: !4891, file: !744, discriminator: 4)
!4899 = !DILocation(line: 205, column: 14, scope: !4898)
!4900 = !DILocation(line: 205, column: 33, scope: !4898)
!4901 = !DILocation(line: 205, column: 67, scope: !4898)
!4902 = !DILocation(line: 203, column: 3, scope: !4903)
!4903 = !DILexicalBlockFile(scope: !4892, file: !744, discriminator: 1)
!4904 = !DILocation(line: 208, column: 3, scope: !4862)
!4905 = !DILocation(line: 210, column: 1, scope: !4862)
!4906 = distinct !DISubprogram(name: "version_etc", scope: !744, file: !744, line: 227, type: !4907, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !740, variables: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !4733, !68, !68, !68, null}
!4909 = !{!4910, !4911, !4912, !4913, !4914}
!4910 = !DILocalVariable(name: "stream", arg: 1, scope: !4906, file: !744, line: 227, type: !4733)
!4911 = !DILocalVariable(name: "command_name", arg: 2, scope: !4906, file: !744, line: 228, type: !68)
!4912 = !DILocalVariable(name: "package", arg: 3, scope: !4906, file: !744, line: 228, type: !68)
!4913 = !DILocalVariable(name: "version", arg: 4, scope: !4906, file: !744, line: 229, type: !68)
!4914 = !DILocalVariable(name: "authors", scope: !4906, file: !744, line: 231, type: !4915)
!4915 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !130, line: 80, baseType: !4916)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !365, line: 50, baseType: !4917)
!4917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !741, line: 231, baseType: !4918)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4866, size: 192, elements: !165)
!4919 = !DILocation(line: 227, column: 20, scope: !4906)
!4920 = !DILocation(line: 228, column: 26, scope: !4906)
!4921 = !DILocation(line: 228, column: 52, scope: !4906)
!4922 = !DILocation(line: 229, column: 26, scope: !4906)
!4923 = !DILocation(line: 231, column: 3, scope: !4906)
!4924 = !DILocation(line: 231, column: 11, scope: !4906)
!4925 = !DILocation(line: 233, column: 3, scope: !4906)
!4926 = !DILocation(line: 234, column: 3, scope: !4906)
!4927 = !DILocation(line: 235, column: 3, scope: !4906)
!4928 = !DILocation(line: 236, column: 1, scope: !4906)
!4929 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !744, file: !744, line: 239, type: !815, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !740, variables: !254)
!4930 = !DILocation(line: 245, column: 3, scope: !4929)
!4931 = !DILocation(line: 245, column: 3, scope: !4932)
!4932 = !DILexicalBlockFile(scope: !4929, file: !744, discriminator: 1)
!4933 = !DILocation(line: 251, column: 3, scope: !4929)
!4934 = !DILocation(line: 251, column: 3, scope: !4932)
!4935 = !DILocation(line: 256, column: 3, scope: !4929)
!4936 = !DILocation(line: 256, column: 3, scope: !4932)
!4937 = !DILocation(line: 258, column: 1, scope: !4929)
!4938 = distinct !DISubprogram(name: "xnmalloc", scope: !752, file: !752, line: 105, type: !4939, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!60, !61, !61}
!4941 = !{!4942, !4943}
!4942 = !DILocalVariable(name: "n", arg: 1, scope: !4938, file: !752, line: 105, type: !61)
!4943 = !DILocalVariable(name: "s", arg: 2, scope: !4938, file: !752, line: 105, type: !61)
!4944 = !DILocation(line: 105, column: 18, scope: !4938)
!4945 = !DILocation(line: 105, column: 28, scope: !4938)
!4946 = !DILocation(line: 107, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4938, file: !752, line: 107, column: 7)
!4948 = !DILocation(line: 107, column: 7, scope: !4938)
!4949 = !DILocation(line: 108, column: 5, scope: !4947)
!4950 = !DILocation(line: 109, column: 21, scope: !4938)
!4951 = !DILocalVariable(name: "n", arg: 1, scope: !4952, file: !4953, line: 39, type: !61)
!4952 = distinct !DISubprogram(name: "xmalloc", scope: !4953, file: !4953, line: 39, type: !4954, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !4956)
!4953 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!60, !61}
!4956 = !{!4951, !4957}
!4957 = !DILocalVariable(name: "p", scope: !4952, file: !4953, line: 41, type: !60)
!4958 = !DILocation(line: 39, column: 17, scope: !4952, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 109, column: 10, scope: !4938)
!4960 = !DILocation(line: 41, column: 13, scope: !4952, inlinedAt: !4959)
!4961 = !DILocation(line: 41, column: 9, scope: !4952, inlinedAt: !4959)
!4962 = !DILocation(line: 42, column: 8, scope: !4963, inlinedAt: !4959)
!4963 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 42, column: 7)
!4964 = !DILocation(line: 42, column: 15, scope: !4965, inlinedAt: !4959)
!4965 = !DILexicalBlockFile(scope: !4963, file: !4953, discriminator: 1)
!4966 = !DILocation(line: 42, column: 10, scope: !4963, inlinedAt: !4959)
!4967 = !DILocation(line: 43, column: 5, scope: !4963, inlinedAt: !4959)
!4968 = !DILocation(line: 109, column: 3, scope: !4938)
!4969 = !DILocation(line: 39, column: 17, scope: !4952)
!4970 = !DILocation(line: 41, column: 13, scope: !4952)
!4971 = !DILocation(line: 41, column: 9, scope: !4952)
!4972 = !DILocation(line: 42, column: 8, scope: !4963)
!4973 = !DILocation(line: 42, column: 15, scope: !4965)
!4974 = !DILocation(line: 42, column: 10, scope: !4963)
!4975 = !DILocation(line: 43, column: 5, scope: !4963)
!4976 = !DILocation(line: 44, column: 3, scope: !4952)
!4977 = distinct !DISubprogram(name: "xnrealloc", scope: !752, file: !752, line: 118, type: !4978, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !4980)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!60, !60, !61, !61}
!4980 = !{!4981, !4982, !4983}
!4981 = !DILocalVariable(name: "p", arg: 1, scope: !4977, file: !752, line: 118, type: !60)
!4982 = !DILocalVariable(name: "n", arg: 2, scope: !4977, file: !752, line: 118, type: !61)
!4983 = !DILocalVariable(name: "s", arg: 3, scope: !4977, file: !752, line: 118, type: !61)
!4984 = !DILocation(line: 118, column: 18, scope: !4977)
!4985 = !DILocation(line: 118, column: 28, scope: !4977)
!4986 = !DILocation(line: 118, column: 38, scope: !4977)
!4987 = !DILocation(line: 120, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4977, file: !752, line: 120, column: 7)
!4989 = !DILocation(line: 120, column: 7, scope: !4977)
!4990 = !DILocation(line: 121, column: 5, scope: !4988)
!4991 = !DILocation(line: 122, column: 25, scope: !4977)
!4992 = !DILocalVariable(name: "p", arg: 1, scope: !4993, file: !4953, line: 51, type: !60)
!4993 = distinct !DISubprogram(name: "xrealloc", scope: !4953, file: !4953, line: 51, type: !4994, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !4996)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!60, !60, !61}
!4996 = !{!4992, !4997}
!4997 = !DILocalVariable(name: "n", arg: 2, scope: !4993, file: !4953, line: 51, type: !61)
!4998 = !DILocation(line: 51, column: 17, scope: !4993, inlinedAt: !4999)
!4999 = distinct !DILocation(line: 122, column: 10, scope: !4977)
!5000 = !DILocation(line: 51, column: 27, scope: !4993, inlinedAt: !4999)
!5001 = !DILocation(line: 53, column: 8, scope: !5002, inlinedAt: !4999)
!5002 = distinct !DILexicalBlock(scope: !4993, file: !4953, line: 53, column: 7)
!5003 = !DILocation(line: 53, column: 13, scope: !5004, inlinedAt: !4999)
!5004 = !DILexicalBlockFile(scope: !5002, file: !4953, discriminator: 1)
!5005 = !DILocation(line: 53, column: 10, scope: !5002, inlinedAt: !4999)
!5006 = !DILocation(line: 57, column: 7, scope: !5007, inlinedAt: !4999)
!5007 = distinct !DILexicalBlock(scope: !5002, file: !4953, line: 54, column: 5)
!5008 = !DILocation(line: 58, column: 7, scope: !5007, inlinedAt: !4999)
!5009 = !DILocation(line: 61, column: 7, scope: !4993, inlinedAt: !4999)
!5010 = !DILocation(line: 62, column: 8, scope: !5011, inlinedAt: !4999)
!5011 = distinct !DILexicalBlock(scope: !4993, file: !4953, line: 62, column: 7)
!5012 = !DILocation(line: 62, column: 13, scope: !5013, inlinedAt: !4999)
!5013 = !DILexicalBlockFile(scope: !5011, file: !4953, discriminator: 1)
!5014 = !DILocation(line: 62, column: 10, scope: !5011, inlinedAt: !4999)
!5015 = !DILocation(line: 63, column: 5, scope: !5011, inlinedAt: !4999)
!5016 = !DILocation(line: 122, column: 3, scope: !4977)
!5017 = !DILocation(line: 51, column: 17, scope: !4993)
!5018 = !DILocation(line: 51, column: 27, scope: !4993)
!5019 = !DILocation(line: 53, column: 8, scope: !5002)
!5020 = !DILocation(line: 53, column: 13, scope: !5004)
!5021 = !DILocation(line: 53, column: 10, scope: !5002)
!5022 = !DILocation(line: 57, column: 7, scope: !5007)
!5023 = !DILocation(line: 58, column: 7, scope: !5007)
!5024 = !DILocation(line: 61, column: 7, scope: !4993)
!5025 = !DILocation(line: 62, column: 8, scope: !5011)
!5026 = !DILocation(line: 62, column: 13, scope: !5013)
!5027 = !DILocation(line: 62, column: 10, scope: !5011)
!5028 = !DILocation(line: 63, column: 5, scope: !5011)
!5029 = !DILocation(line: 65, column: 1, scope: !4993)
!5030 = !DILocation(line: 180, column: 19, scope: !753)
!5031 = !DILocation(line: 180, column: 30, scope: !753)
!5032 = !DILocation(line: 180, column: 41, scope: !753)
!5033 = !DILocation(line: 182, column: 14, scope: !753)
!5034 = !DILocation(line: 182, column: 10, scope: !753)
!5035 = !DILocation(line: 184, column: 9, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !753, file: !752, line: 184, column: 7)
!5037 = !DILocation(line: 184, column: 7, scope: !753)
!5038 = !DILocation(line: 186, column: 13, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !752, line: 186, column: 11)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !752, line: 185, column: 5)
!5041 = !DILocation(line: 186, column: 11, scope: !5040)
!5042 = !DILocation(line: 194, column: 30, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !752, line: 187, column: 9)
!5044 = !DILocation(line: 195, column: 16, scope: !5043)
!5045 = !DILocation(line: 195, column: 13, scope: !5043)
!5046 = !DILocation(line: 196, column: 9, scope: !5043)
!5047 = !DILocation(line: 204, column: 69, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !752, line: 204, column: 11)
!5049 = distinct !DILexicalBlock(scope: !5036, file: !752, line: 199, column: 5)
!5050 = !DILocation(line: 205, column: 11, scope: !5048)
!5051 = !DILocation(line: 204, column: 11, scope: !5049)
!5052 = !DILocation(line: 206, column: 9, scope: !5048)
!5053 = !DILocation(line: 210, column: 7, scope: !753)
!5054 = !DILocation(line: 211, column: 25, scope: !753)
!5055 = !DILocation(line: 51, column: 17, scope: !4993, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 211, column: 10, scope: !753)
!5057 = !DILocation(line: 51, column: 27, scope: !4993, inlinedAt: !5056)
!5058 = !DILocation(line: 53, column: 10, scope: !5002, inlinedAt: !5056)
!5059 = !DILocation(line: 207, column: 14, scope: !5049)
!5060 = !DILocation(line: 207, column: 18, scope: !5049)
!5061 = !DILocation(line: 207, column: 9, scope: !5049)
!5062 = !DILocation(line: 53, column: 8, scope: !5002, inlinedAt: !5056)
!5063 = !DILocation(line: 57, column: 7, scope: !5007, inlinedAt: !5056)
!5064 = !DILocation(line: 58, column: 7, scope: !5007, inlinedAt: !5056)
!5065 = !DILocation(line: 61, column: 7, scope: !4993, inlinedAt: !5056)
!5066 = !DILocation(line: 62, column: 8, scope: !5011, inlinedAt: !5056)
!5067 = !DILocation(line: 62, column: 13, scope: !5013, inlinedAt: !5056)
!5068 = !DILocation(line: 62, column: 10, scope: !5011, inlinedAt: !5056)
!5069 = !DILocation(line: 63, column: 5, scope: !5011, inlinedAt: !5056)
!5070 = !DILocation(line: 211, column: 3, scope: !753)
!5071 = distinct !DISubprogram(name: "xcharalloc", scope: !752, file: !752, line: 220, type: !3999, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5072)
!5072 = !{!5073}
!5073 = !DILocalVariable(name: "n", arg: 1, scope: !5071, file: !752, line: 220, type: !61)
!5074 = !DILocation(line: 220, column: 20, scope: !5071)
!5075 = !DILocation(line: 39, column: 17, scope: !4952, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 222, column: 10, scope: !5071)
!5077 = !DILocation(line: 41, column: 13, scope: !4952, inlinedAt: !5076)
!5078 = !DILocation(line: 41, column: 9, scope: !4952, inlinedAt: !5076)
!5079 = !DILocation(line: 42, column: 8, scope: !4963, inlinedAt: !5076)
!5080 = !DILocation(line: 42, column: 15, scope: !4965, inlinedAt: !5076)
!5081 = !DILocation(line: 42, column: 10, scope: !4963, inlinedAt: !5076)
!5082 = !DILocation(line: 43, column: 5, scope: !4963, inlinedAt: !5076)
!5083 = !DILocation(line: 222, column: 3, scope: !5071)
!5084 = distinct !DISubprogram(name: "x2realloc", scope: !4953, file: !4953, line: 74, type: !5085, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5087)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!60, !60, !756}
!5087 = !{!5088, !5089}
!5088 = !DILocalVariable(name: "p", arg: 1, scope: !5084, file: !4953, line: 74, type: !60)
!5089 = !DILocalVariable(name: "pn", arg: 2, scope: !5084, file: !4953, line: 74, type: !756)
!5090 = !DILocation(line: 74, column: 18, scope: !5084)
!5091 = !DILocation(line: 74, column: 29, scope: !5084)
!5092 = !DILocation(line: 180, column: 19, scope: !753, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 76, column: 10, scope: !5084)
!5094 = !DILocation(line: 180, column: 30, scope: !753, inlinedAt: !5093)
!5095 = !DILocation(line: 180, column: 41, scope: !753, inlinedAt: !5093)
!5096 = !DILocation(line: 182, column: 14, scope: !753, inlinedAt: !5093)
!5097 = !DILocation(line: 182, column: 10, scope: !753, inlinedAt: !5093)
!5098 = !DILocation(line: 184, column: 9, scope: !5036, inlinedAt: !5093)
!5099 = !DILocation(line: 184, column: 7, scope: !753, inlinedAt: !5093)
!5100 = !DILocation(line: 186, column: 13, scope: !5039, inlinedAt: !5093)
!5101 = !DILocation(line: 186, column: 11, scope: !5040, inlinedAt: !5093)
!5102 = !DILocation(line: 210, column: 7, scope: !753, inlinedAt: !5093)
!5103 = !DILocation(line: 51, column: 17, scope: !4993, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 211, column: 10, scope: !753, inlinedAt: !5093)
!5105 = !DILocation(line: 51, column: 27, scope: !4993, inlinedAt: !5104)
!5106 = !DILocation(line: 53, column: 10, scope: !5002, inlinedAt: !5104)
!5107 = !DILocation(line: 205, column: 11, scope: !5048, inlinedAt: !5093)
!5108 = !DILocation(line: 204, column: 11, scope: !5049, inlinedAt: !5093)
!5109 = !DILocation(line: 206, column: 9, scope: !5048, inlinedAt: !5093)
!5110 = !DILocation(line: 207, column: 14, scope: !5049, inlinedAt: !5093)
!5111 = !DILocation(line: 207, column: 18, scope: !5049, inlinedAt: !5093)
!5112 = !DILocation(line: 207, column: 9, scope: !5049, inlinedAt: !5093)
!5113 = !DILocation(line: 53, column: 8, scope: !5002, inlinedAt: !5104)
!5114 = !DILocation(line: 57, column: 7, scope: !5007, inlinedAt: !5104)
!5115 = !DILocation(line: 58, column: 7, scope: !5007, inlinedAt: !5104)
!5116 = !DILocation(line: 61, column: 7, scope: !4993, inlinedAt: !5104)
!5117 = !DILocation(line: 62, column: 8, scope: !5011, inlinedAt: !5104)
!5118 = !DILocation(line: 62, column: 13, scope: !5013, inlinedAt: !5104)
!5119 = !DILocation(line: 62, column: 10, scope: !5011, inlinedAt: !5104)
!5120 = !DILocation(line: 63, column: 5, scope: !5011, inlinedAt: !5104)
!5121 = !DILocation(line: 76, column: 3, scope: !5084)
!5122 = distinct !DISubprogram(name: "xzalloc", scope: !4953, file: !4953, line: 84, type: !4954, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5123)
!5123 = !{!5124}
!5124 = !DILocalVariable(name: "s", arg: 1, scope: !5122, file: !4953, line: 84, type: !61)
!5125 = !DILocation(line: 84, column: 17, scope: !5122)
!5126 = !DILocation(line: 39, column: 17, scope: !4952, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 86, column: 18, scope: !5122)
!5128 = !DILocation(line: 41, column: 13, scope: !4952, inlinedAt: !5127)
!5129 = !DILocation(line: 41, column: 9, scope: !4952, inlinedAt: !5127)
!5130 = !DILocation(line: 42, column: 8, scope: !4963, inlinedAt: !5127)
!5131 = !DILocation(line: 42, column: 15, scope: !4965, inlinedAt: !5127)
!5132 = !DILocation(line: 42, column: 10, scope: !4963, inlinedAt: !5127)
!5133 = !DILocation(line: 43, column: 5, scope: !4963, inlinedAt: !5127)
!5134 = !DILocation(line: 86, column: 10, scope: !5122)
!5135 = !DILocation(line: 86, column: 3, scope: !5122)
!5136 = distinct !DISubprogram(name: "xcalloc", scope: !4953, file: !4953, line: 93, type: !4939, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5137)
!5137 = !{!5138, !5139, !5140}
!5138 = !DILocalVariable(name: "n", arg: 1, scope: !5136, file: !4953, line: 93, type: !61)
!5139 = !DILocalVariable(name: "s", arg: 2, scope: !5136, file: !4953, line: 93, type: !61)
!5140 = !DILocalVariable(name: "p", scope: !5136, file: !4953, line: 95, type: !60)
!5141 = !DILocation(line: 93, column: 17, scope: !5136)
!5142 = !DILocation(line: 93, column: 27, scope: !5136)
!5143 = !DILocation(line: 100, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5136, file: !4953, line: 100, column: 7)
!5145 = !DILocation(line: 101, column: 7, scope: !5144)
!5146 = !DILocation(line: 101, column: 18, scope: !5147)
!5147 = !DILexicalBlockFile(scope: !5144, file: !4953, discriminator: 1)
!5148 = !DILocation(line: 95, column: 9, scope: !5136)
!5149 = !DILocation(line: 101, column: 16, scope: !5147)
!5150 = !DILocation(line: 100, column: 7, scope: !5151)
!5151 = !DILexicalBlockFile(scope: !5136, file: !4953, discriminator: 1)
!5152 = !DILocation(line: 102, column: 5, scope: !5144)
!5153 = !DILocation(line: 103, column: 3, scope: !5136)
!5154 = distinct !DISubprogram(name: "xmemdup", scope: !4953, file: !4953, line: 111, type: !900, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5155)
!5155 = !{!5156, !5157}
!5156 = !DILocalVariable(name: "p", arg: 1, scope: !5154, file: !4953, line: 111, type: !63)
!5157 = !DILocalVariable(name: "s", arg: 2, scope: !5154, file: !4953, line: 111, type: !61)
!5158 = !DILocation(line: 111, column: 22, scope: !5154)
!5159 = !DILocation(line: 111, column: 32, scope: !5154)
!5160 = !DILocation(line: 39, column: 17, scope: !4952, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 113, column: 18, scope: !5154)
!5162 = !DILocation(line: 41, column: 13, scope: !4952, inlinedAt: !5161)
!5163 = !DILocation(line: 41, column: 9, scope: !4952, inlinedAt: !5161)
!5164 = !DILocation(line: 42, column: 8, scope: !4963, inlinedAt: !5161)
!5165 = !DILocation(line: 42, column: 15, scope: !4965, inlinedAt: !5161)
!5166 = !DILocation(line: 42, column: 10, scope: !4963, inlinedAt: !5161)
!5167 = !DILocation(line: 43, column: 5, scope: !4963, inlinedAt: !5161)
!5168 = !DILocation(line: 113, column: 10, scope: !5154)
!5169 = !DILocation(line: 113, column: 3, scope: !5154)
!5170 = distinct !DISubprogram(name: "xstrdup", scope: !4953, file: !4953, line: 119, type: !4204, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5171)
!5171 = !{!5172}
!5172 = !DILocalVariable(name: "string", arg: 1, scope: !5170, file: !4953, line: 119, type: !68)
!5173 = !DILocation(line: 119, column: 22, scope: !5170)
!5174 = !DILocation(line: 121, column: 27, scope: !5170)
!5175 = !DILocation(line: 121, column: 43, scope: !5170)
!5176 = !DILocation(line: 111, column: 22, scope: !5154, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 121, column: 10, scope: !5178)
!5178 = !DILexicalBlockFile(scope: !5170, file: !4953, discriminator: 1)
!5179 = !DILocation(line: 111, column: 32, scope: !5154, inlinedAt: !5177)
!5180 = !DILocation(line: 39, column: 17, scope: !4952, inlinedAt: !5181)
!5181 = distinct !DILocation(line: 113, column: 18, scope: !5154, inlinedAt: !5177)
!5182 = !DILocation(line: 41, column: 13, scope: !4952, inlinedAt: !5181)
!5183 = !DILocation(line: 41, column: 9, scope: !4952, inlinedAt: !5181)
!5184 = !DILocation(line: 42, column: 8, scope: !4963, inlinedAt: !5181)
!5185 = !DILocation(line: 42, column: 15, scope: !4965, inlinedAt: !5181)
!5186 = !DILocation(line: 42, column: 10, scope: !4963, inlinedAt: !5181)
!5187 = !DILocation(line: 43, column: 5, scope: !4963, inlinedAt: !5181)
!5188 = !DILocation(line: 113, column: 10, scope: !5154, inlinedAt: !5177)
!5189 = !DILocation(line: 121, column: 3, scope: !5170)
!5190 = distinct !DISubprogram(name: "xalloc_die", scope: !5191, file: !5191, line: 32, type: !815, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !765, variables: !254)
!5191 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5192 = !DILocation(line: 34, column: 10, scope: !5190)
!5193 = !DILocation(line: 34, column: 33, scope: !5190)
!5194 = !DILocation(line: 34, column: 3, scope: !5195)
!5195 = !DILexicalBlockFile(scope: !5190, file: !5191, discriminator: 1)
!5196 = !DILocation(line: 40, column: 3, scope: !5190)
!5197 = distinct !DISubprogram(name: "rpl_calloc", scope: !5198, file: !5198, line: 42, type: !4939, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !5199)
!5198 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5199 = !{!5200, !5201, !5202, !5203}
!5200 = !DILocalVariable(name: "n", arg: 1, scope: !5197, file: !5198, line: 42, type: !61)
!5201 = !DILocalVariable(name: "s", arg: 2, scope: !5197, file: !5198, line: 42, type: !61)
!5202 = !DILocalVariable(name: "result", scope: !5197, file: !5198, line: 44, type: !60)
!5203 = !DILocalVariable(name: "bytes", scope: !5204, file: !5198, line: 56, type: !61)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !5198, line: 53, column: 5)
!5205 = distinct !DILexicalBlock(scope: !5197, file: !5198, line: 47, column: 7)
!5206 = !DILocation(line: 42, column: 20, scope: !5197)
!5207 = !DILocation(line: 42, column: 30, scope: !5197)
!5208 = !DILocation(line: 47, column: 9, scope: !5205)
!5209 = !DILocation(line: 47, column: 19, scope: !5210)
!5210 = !DILexicalBlockFile(scope: !5205, file: !5198, discriminator: 1)
!5211 = !DILocation(line: 47, column: 14, scope: !5205)
!5212 = !DILocation(line: 56, column: 24, scope: !5204)
!5213 = !DILocation(line: 56, column: 14, scope: !5204)
!5214 = !DILocation(line: 57, column: 17, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5204, file: !5198, line: 57, column: 11)
!5216 = !DILocation(line: 57, column: 21, scope: !5215)
!5217 = !DILocation(line: 57, column: 11, scope: !5204)
!5218 = !DILocation(line: 59, column: 11, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5215, file: !5198, line: 58, column: 9)
!5220 = !DILocation(line: 59, column: 17, scope: !5219)
!5221 = !DILocation(line: 65, column: 12, scope: !5197)
!5222 = !DILocation(line: 44, column: 9, scope: !5197)
!5223 = !DILocation(line: 72, column: 3, scope: !5197)
!5224 = !DILocation(line: 73, column: 1, scope: !5197)
!5225 = distinct !DISubprogram(name: "rpl_fclose", scope: !5226, file: !5226, line: 56, type: !5227, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !769, variables: !5269)
!5226 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!70, !5229}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5231)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5232)
!5232 = !{!5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5231, file: !132, line: 242, baseType: !70, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5231, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5231, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5231, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5231, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5231, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5231, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5231, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5231, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5231, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5231, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5231, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5231, file: !132, line: 260, baseType: !5246, size: 64, offset: 768)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5248)
!5248 = !{!5249, !5250, !5252}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5247, file: !132, line: 157, baseType: !5246, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5247, file: !132, line: 158, baseType: !5251, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5247, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5231, file: !132, line: 262, baseType: !5251, size: 64, offset: 832)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5231, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5231, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5231, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5231, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5231, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5231, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5231, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5231, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5231, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5231, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5231, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5231, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5231, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5231, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5231, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5269 = !{!5270, !5271, !5272, !5273}
!5270 = !DILocalVariable(name: "fp", arg: 1, scope: !5225, file: !5226, line: 56, type: !5229)
!5271 = !DILocalVariable(name: "saved_errno", scope: !5225, file: !5226, line: 58, type: !70)
!5272 = !DILocalVariable(name: "fd", scope: !5225, file: !5226, line: 59, type: !70)
!5273 = !DILocalVariable(name: "result", scope: !5225, file: !5226, line: 60, type: !70)
!5274 = !DILocation(line: 56, column: 19, scope: !5225)
!5275 = !DILocation(line: 58, column: 7, scope: !5225)
!5276 = !DILocation(line: 60, column: 7, scope: !5225)
!5277 = !DILocation(line: 63, column: 8, scope: !5225)
!5278 = !DILocation(line: 59, column: 7, scope: !5225)
!5279 = !DILocation(line: 64, column: 10, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5225, file: !5226, line: 64, column: 7)
!5281 = !DILocation(line: 64, column: 7, scope: !5225)
!5282 = !DILocation(line: 65, column: 12, scope: !5280)
!5283 = !DILocation(line: 65, column: 5, scope: !5280)
!5284 = !DILocation(line: 70, column: 9, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5225, file: !5226, line: 70, column: 7)
!5286 = !DILocation(line: 70, column: 23, scope: !5285)
!5287 = !DILocation(line: 70, column: 33, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !5285, file: !5226, discriminator: 1)
!5289 = !DILocation(line: 70, column: 26, scope: !5290)
!5290 = !DILexicalBlockFile(scope: !5285, file: !5226, discriminator: 3)
!5291 = !DILocation(line: 70, column: 59, scope: !5288)
!5292 = !DILocation(line: 71, column: 7, scope: !5285)
!5293 = !DILocation(line: 71, column: 10, scope: !5288)
!5294 = !DILocation(line: 70, column: 7, scope: !5295)
!5295 = !DILexicalBlockFile(scope: !5225, file: !5226, discriminator: 2)
!5296 = !DILocation(line: 98, column: 12, scope: !5225)
!5297 = !DILocation(line: 103, column: 7, scope: !5225)
!5298 = !DILocation(line: 72, column: 19, scope: !5285)
!5299 = !DILocation(line: 103, column: 19, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5225, file: !5226, line: 103, column: 7)
!5301 = !DILocation(line: 105, column: 13, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5300, file: !5226, line: 104, column: 5)
!5303 = !DILocation(line: 107, column: 5, scope: !5302)
!5304 = !DILocation(line: 110, column: 1, scope: !5225)
!5305 = !DILocation(line: 272, column: 16, scope: !353)
!5306 = !DILocation(line: 272, column: 24, scope: !353)
!5307 = !DILocation(line: 274, column: 3, scope: !353)
!5308 = !DILocation(line: 274, column: 11, scope: !353)
!5309 = !DILocation(line: 275, column: 7, scope: !353)
!5310 = !DILocation(line: 276, column: 3, scope: !353)
!5311 = !DILocation(line: 277, column: 3, scope: !353)
!5312 = !DILocation(line: 322, column: 22, scope: !376)
!5313 = !DILocation(line: 322, column: 22, scope: !5314)
!5314 = !DILexicalBlockFile(scope: !376, file: !354, discriminator: 1)
!5315 = !DILocation(line: 322, column: 22, scope: !5316)
!5316 = !DILexicalBlockFile(scope: !376, file: !354, discriminator: 2)
!5317 = !DILocation(line: 322, column: 22, scope: !5318)
!5318 = !DILexicalBlockFile(scope: !376, file: !354, discriminator: 3)
!5319 = !DILocation(line: 322, column: 13, scope: !376)
!5320 = !DILocation(line: 336, column: 18, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !376, file: !354, line: 336, column: 13)
!5322 = !DILocation(line: 336, column: 15, scope: !5321)
!5323 = !DILocation(line: 336, column: 13, scope: !376)
!5324 = !DILocation(line: 338, column: 22, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5321, file: !354, line: 337, column: 11)
!5326 = !DILocation(line: 339, column: 19, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5325, file: !354, line: 339, column: 17)
!5328 = !DILocation(line: 339, column: 29, scope: !5327)
!5329 = !DILocation(line: 339, column: 32, scope: !5330)
!5330 = !DILexicalBlockFile(scope: !5327, file: !354, discriminator: 1)
!5331 = !DILocation(line: 339, column: 38, scope: !5330)
!5332 = !DILocation(line: 339, column: 17, scope: !5333)
!5333 = !DILexicalBlockFile(scope: !5325, file: !354, discriminator: 1)
!5334 = !DILocation(line: 349, column: 26, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5327, file: !354, line: 348, column: 15)
!5336 = !DILocation(line: 350, column: 28, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5335, file: !354, line: 350, column: 21)
!5338 = !DILocation(line: 350, column: 21, scope: !5335)
!5339 = !DILocation(line: 354, column: 11, scope: !5325)
!5340 = !DILocation(line: 356, column: 20, scope: !5321)
!5341 = !DILocation(line: 357, column: 28, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !380, file: !354, discriminator: 1)
!5343 = !DILocation(line: 357, column: 15, scope: !380)
!5344 = !DILocation(line: 357, column: 47, scope: !5342)
!5345 = !DILocation(line: 357, column: 25, scope: !380)
!5346 = !DILocation(line: 359, column: 25, scope: !379)
!5347 = !DILocation(line: 359, column: 17, scope: !379)
!5348 = !DILocation(line: 360, column: 23, scope: !383)
!5349 = !DILocation(line: 360, column: 27, scope: !383)
!5350 = !DILocation(line: 360, column: 60, scope: !5351)
!5351 = !DILexicalBlockFile(scope: !383, file: !354, discriminator: 1)
!5352 = !DILocation(line: 360, column: 30, scope: !5351)
!5353 = !DILocation(line: 360, column: 74, scope: !5351)
!5354 = !DILocation(line: 360, column: 17, scope: !5355)
!5355 = !DILexicalBlockFile(scope: !379, file: !354, discriminator: 1)
!5356 = !DILocation(line: 362, column: 35, scope: !382)
!5357 = !DILocation(line: 362, column: 21, scope: !382)
!5358 = !DILocation(line: 363, column: 17, scope: !382)
!5359 = !DILocation(line: 364, column: 23, scope: !382)
!5360 = !DILocation(line: 366, column: 15, scope: !382)
!5361 = !DILocation(line: 404, column: 19, scope: !385)
!5362 = !DILocation(line: 404, column: 19, scope: !5363)
!5363 = !DILexicalBlockFile(scope: !385, file: !354, discriminator: 1)
!5364 = !DILocation(line: 404, column: 19, scope: !5365)
!5365 = !DILexicalBlockFile(scope: !385, file: !354, discriminator: 2)
!5366 = !DILocation(line: 404, column: 19, scope: !5367)
!5367 = !DILexicalBlockFile(scope: !385, file: !354, discriminator: 3)
!5368 = !DILocation(line: 404, column: 15, scope: !385)
!5369 = !DILocation(line: 405, column: 18, scope: !385)
!5370 = !DILocation(line: 412, column: 3, scope: !353)
!5371 = !DILocation(line: 414, column: 1, scope: !353)
!5372 = !DILocation(line: 413, column: 3, scope: !353)
!5373 = distinct !DISubprogram(name: "rpl_fflush", scope: !5374, file: !5374, line: 127, type: !5375, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !771, variables: !5417)
!5374 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!70, !5377}
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5380)
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5379, file: !132, line: 242, baseType: !70, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5379, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5379, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5379, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5379, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5379, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5379, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5379, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5379, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5379, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5379, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5379, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5379, file: !132, line: 260, baseType: !5394, size: 64, offset: 768)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5396)
!5396 = !{!5397, !5398, !5400}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5395, file: !132, line: 157, baseType: !5394, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5395, file: !132, line: 158, baseType: !5399, size: 64, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5395, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5379, file: !132, line: 262, baseType: !5399, size: 64, offset: 832)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5379, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5379, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5379, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5379, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5379, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5379, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5379, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5379, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5379, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5379, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5379, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5379, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5379, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5379, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5379, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5417 = !{!5418}
!5418 = !DILocalVariable(name: "stream", arg: 1, scope: !5373, file: !5374, line: 127, type: !5377)
!5419 = !DILocation(line: 127, column: 19, scope: !5373)
!5420 = !DILocation(line: 148, column: 14, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5373, file: !5374, line: 148, column: 7)
!5422 = !DILocation(line: 148, column: 22, scope: !5421)
!5423 = !DILocation(line: 148, column: 27, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5421, file: !5374, discriminator: 1)
!5425 = !DILocation(line: 148, column: 7, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !5373, file: !5374, discriminator: 1)
!5427 = !DILocation(line: 149, column: 12, scope: !5421)
!5428 = !DILocation(line: 149, column: 5, scope: !5421)
!5429 = !DILocalVariable(name: "fp", arg: 1, scope: !5430, file: !5374, line: 40, type: !5377)
!5430 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5374, file: !5374, line: 40, type: !5431, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !771, variables: !5433)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !5377}
!5433 = !{!5429}
!5434 = !DILocation(line: 40, column: 48, scope: !5430, inlinedAt: !5435)
!5435 = distinct !DILocation(line: 153, column: 3, scope: !5373)
!5436 = !DILocation(line: 42, column: 11, scope: !5437, inlinedAt: !5435)
!5437 = distinct !DILexicalBlock(scope: !5430, file: !5374, line: 42, column: 7)
!5438 = !DILocation(line: 42, column: 18, scope: !5437, inlinedAt: !5435)
!5439 = !DILocation(line: 42, column: 7, scope: !5430, inlinedAt: !5435)
!5440 = !DILocation(line: 44, column: 5, scope: !5437, inlinedAt: !5435)
!5441 = !DILocation(line: 155, column: 10, scope: !5373)
!5442 = !DILocation(line: 155, column: 3, scope: !5373)
!5443 = !DILocation(line: 229, column: 1, scope: !5373)
!5444 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5445, file: !5445, line: 28, type: !5446, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !773, variables: !5488)
!5445 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!70, !5448, !2571, !70}
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5450)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5450, file: !132, line: 242, baseType: !70, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5450, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5450, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5450, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5450, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5450, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5450, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5450, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5450, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5450, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5450, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5450, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5450, file: !132, line: 260, baseType: !5465, size: 64, offset: 768)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5467)
!5467 = !{!5468, !5469, !5471}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5466, file: !132, line: 157, baseType: !5465, size: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5466, file: !132, line: 158, baseType: !5470, size: 64, offset: 64)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5466, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5450, file: !132, line: 262, baseType: !5470, size: 64, offset: 832)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5450, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5450, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5450, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5450, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5450, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5450, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5450, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5450, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5450, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5450, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5450, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5450, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5450, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5450, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5450, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5488 = !{!5489, !5490, !5491, !5492}
!5489 = !DILocalVariable(name: "fp", arg: 1, scope: !5444, file: !5445, line: 28, type: !5448)
!5490 = !DILocalVariable(name: "offset", arg: 2, scope: !5444, file: !5445, line: 28, type: !2571)
!5491 = !DILocalVariable(name: "whence", arg: 3, scope: !5444, file: !5445, line: 28, type: !70)
!5492 = !DILocalVariable(name: "pos", scope: !5493, file: !5445, line: 116, type: !2571)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !5445, line: 112, column: 5)
!5494 = distinct !DILexicalBlock(scope: !5444, file: !5445, line: 51, column: 7)
!5495 = !DILocation(line: 28, column: 15, scope: !5444)
!5496 = !DILocation(line: 28, column: 25, scope: !5444)
!5497 = !DILocation(line: 28, column: 37, scope: !5444)
!5498 = !DILocation(line: 51, column: 11, scope: !5494)
!5499 = !{!1406, !802, i64 16}
!5500 = !DILocation(line: 51, column: 31, scope: !5494)
!5501 = !{!1406, !802, i64 8}
!5502 = !DILocation(line: 51, column: 24, scope: !5494)
!5503 = !DILocation(line: 52, column: 7, scope: !5494)
!5504 = !DILocation(line: 52, column: 14, scope: !5505)
!5505 = !DILexicalBlockFile(scope: !5494, file: !5445, discriminator: 1)
!5506 = !DILocation(line: 52, column: 35, scope: !5505)
!5507 = !{!1406, !802, i64 32}
!5508 = !DILocation(line: 52, column: 28, scope: !5505)
!5509 = !DILocation(line: 53, column: 7, scope: !5494)
!5510 = !DILocation(line: 53, column: 14, scope: !5505)
!5511 = !{!1406, !802, i64 72}
!5512 = !DILocation(line: 53, column: 28, scope: !5505)
!5513 = !DILocation(line: 51, column: 7, scope: !5514)
!5514 = !DILexicalBlockFile(scope: !5444, file: !5445, discriminator: 1)
!5515 = !DILocation(line: 116, column: 26, scope: !5493)
!5516 = !DILocation(line: 116, column: 19, scope: !5517)
!5517 = !DILexicalBlockFile(scope: !5493, file: !5445, discriminator: 1)
!5518 = !DILocation(line: 116, column: 13, scope: !5493)
!5519 = !DILocation(line: 117, column: 15, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5493, file: !5445, line: 117, column: 11)
!5521 = !DILocation(line: 117, column: 11, scope: !5493)
!5522 = !DILocation(line: 127, column: 11, scope: !5493)
!5523 = !DILocation(line: 127, column: 18, scope: !5493)
!5524 = !DILocation(line: 128, column: 11, scope: !5493)
!5525 = !DILocation(line: 128, column: 19, scope: !5493)
!5526 = !{!1406, !1084, i64 144}
!5527 = !DILocation(line: 159, column: 7, scope: !5493)
!5528 = !DILocation(line: 161, column: 10, scope: !5444)
!5529 = !DILocation(line: 161, column: 3, scope: !5444)
!5530 = !DILocation(line: 162, column: 1, scope: !5444)
!5531 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5532, file: !5532, line: 334, type: !5533, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !775, variables: !5547)
!5532 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!61, !5535, !68, !61, !5536}
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2972, line: 107, baseType: !5538)
!5538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2972, line: 95, baseType: !5539)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2972, line: 83, size: 64, elements: !5540)
!5540 = !{!5541, !5542}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5539, file: !2972, line: 85, baseType: !70, size: 32)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5539, file: !2972, line: 94, baseType: !5543, size: 32, offset: 32)
!5543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5539, file: !2972, line: 86, size: 32, elements: !5544)
!5544 = !{!5545, !5546}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5543, file: !2972, line: 89, baseType: !315, size: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5543, file: !2972, line: 93, baseType: !2982, size: 32)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554}
!5548 = !DILocalVariable(name: "pwc", arg: 1, scope: !5531, file: !5532, line: 334, type: !5535)
!5549 = !DILocalVariable(name: "s", arg: 2, scope: !5531, file: !5532, line: 334, type: !68)
!5550 = !DILocalVariable(name: "n", arg: 3, scope: !5531, file: !5532, line: 334, type: !61)
!5551 = !DILocalVariable(name: "ps", arg: 4, scope: !5531, file: !5532, line: 334, type: !5536)
!5552 = !DILocalVariable(name: "ret", scope: !5531, file: !5532, line: 336, type: !61)
!5553 = !DILocalVariable(name: "wc", scope: !5531, file: !5532, line: 337, type: !2987)
!5554 = !DILocalVariable(name: "uc", scope: !5555, file: !5532, line: 398, type: !67)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !5532, line: 397, column: 5)
!5556 = distinct !DILexicalBlock(scope: !5531, file: !5532, line: 396, column: 7)
!5557 = !DILocation(line: 334, column: 23, scope: !5531)
!5558 = !DILocation(line: 334, column: 40, scope: !5531)
!5559 = !DILocation(line: 334, column: 50, scope: !5531)
!5560 = !DILocation(line: 334, column: 64, scope: !5531)
!5561 = !DILocation(line: 337, column: 3, scope: !5531)
!5562 = !DILocation(line: 353, column: 9, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5531, file: !5532, line: 353, column: 7)
!5564 = !DILocation(line: 353, column: 7, scope: !5531)
!5565 = !DILocation(line: 388, column: 9, scope: !5531)
!5566 = !DILocation(line: 336, column: 10, scope: !5531)
!5567 = !DILocation(line: 396, column: 19, scope: !5556)
!5568 = !DILocation(line: 396, column: 31, scope: !5569)
!5569 = !DILexicalBlockFile(scope: !5556, file: !5532, discriminator: 1)
!5570 = !DILocation(line: 396, column: 26, scope: !5556)
!5571 = !DILocation(line: 396, column: 41, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5556, file: !5532, discriminator: 2)
!5573 = !DILocation(line: 396, column: 7, scope: !5574)
!5574 = !DILexicalBlockFile(scope: !5531, file: !5532, discriminator: 2)
!5575 = !DILocation(line: 398, column: 26, scope: !5555)
!5576 = !DILocation(line: 398, column: 21, scope: !5555)
!5577 = !DILocation(line: 399, column: 14, scope: !5555)
!5578 = !DILocation(line: 399, column: 12, scope: !5555)
!5579 = !DILocation(line: 405, column: 1, scope: !5531)
!5580 = distinct !DISubprogram(name: "close_stream", scope: !5581, file: !5581, line: 56, type: !5582, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !778, variables: !5624)
!5581 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!70, !5584}
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5586)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5586, file: !132, line: 242, baseType: !70, size: 32)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5586, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5586, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5586, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5586, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5586, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5586, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5586, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5586, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5586, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5586, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5586, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5586, file: !132, line: 260, baseType: !5601, size: 64, offset: 768)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5603)
!5603 = !{!5604, !5605, !5607}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5602, file: !132, line: 157, baseType: !5601, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5602, file: !132, line: 158, baseType: !5606, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5602, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5586, file: !132, line: 262, baseType: !5606, size: 64, offset: 832)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5586, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5586, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5586, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5586, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5586, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5586, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5586, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5586, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5586, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5586, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5586, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5586, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5586, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5586, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5586, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5624 = !{!5625, !5626, !5628, !5629}
!5625 = !DILocalVariable(name: "stream", arg: 1, scope: !5580, file: !5581, line: 56, type: !5584)
!5626 = !DILocalVariable(name: "some_pending", scope: !5580, file: !5581, line: 58, type: !5627)
!5627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!5628 = !DILocalVariable(name: "prev_fail", scope: !5580, file: !5581, line: 59, type: !5627)
!5629 = !DILocalVariable(name: "fclose_fail", scope: !5580, file: !5581, line: 60, type: !5627)
!5630 = !DILocation(line: 56, column: 21, scope: !5580)
!5631 = !DILocation(line: 58, column: 30, scope: !5580)
!5632 = !DILocalVariable(name: "__stream", arg: 1, scope: !5633, file: !1101, line: 132, type: !5584)
!5633 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1101, file: !1101, line: 132, type: !5582, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !778, variables: !5634)
!5634 = !{!5632}
!5635 = !DILocation(line: 132, column: 1, scope: !5633, inlinedAt: !5636)
!5636 = distinct !DILocation(line: 59, column: 27, scope: !5580)
!5637 = !DILocation(line: 134, column: 10, scope: !5633, inlinedAt: !5636)
!5638 = !DILocation(line: 59, column: 43, scope: !5580)
!5639 = !DILocation(line: 60, column: 29, scope: !5580)
!5640 = !DILocation(line: 60, column: 45, scope: !5580)
!5641 = !DILocation(line: 70, column: 17, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5580, file: !5581, line: 70, column: 7)
!5643 = !DILocation(line: 70, column: 33, scope: !5644)
!5644 = !DILexicalBlockFile(scope: !5642, file: !5581, discriminator: 1)
!5645 = !DILocation(line: 70, column: 53, scope: !5646)
!5646 = !DILexicalBlockFile(scope: !5642, file: !5581, discriminator: 3)
!5647 = !DILocation(line: 70, column: 7, scope: !5648)
!5648 = !DILexicalBlockFile(scope: !5580, file: !5581, discriminator: 3)
!5649 = !DILocation(line: 72, column: 11, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5642, file: !5581, line: 71, column: 5)
!5651 = !DILocation(line: 73, column: 9, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5650, file: !5581, line: 72, column: 11)
!5653 = !DILocation(line: 73, column: 15, scope: !5652)
!5654 = !DILocation(line: 78, column: 1, scope: !5580)
!5655 = distinct !DISubprogram(name: "hard_locale", scope: !5656, file: !5656, line: 38, type: !5657, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !780, variables: !5659)
!5656 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!76, !70}
!5659 = !{!5660, !5661, !5662, !5663, !5670, !5671, !5673, !5674, !5676, !5677, !5679}
!5660 = !DILocalVariable(name: "category", arg: 1, scope: !5655, file: !5656, line: 38, type: !70)
!5661 = !DILocalVariable(name: "hard", scope: !5655, file: !5656, line: 40, type: !76)
!5662 = !DILocalVariable(name: "p", scope: !5655, file: !5656, line: 41, type: !68)
!5663 = !DILocalVariable(name: "__s1_len", scope: !5664, file: !5656, line: 47, type: !61)
!5664 = distinct !DILexicalBlock(scope: !5665, file: !5656, line: 47, column: 15)
!5665 = distinct !DILexicalBlock(scope: !5666, file: !5656, line: 47, column: 15)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !5656, line: 46, column: 9)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !5656, line: 45, column: 11)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !5656, line: 44, column: 5)
!5669 = distinct !DILexicalBlock(scope: !5655, file: !5656, line: 43, column: 7)
!5670 = !DILocalVariable(name: "__s2_len", scope: !5664, file: !5656, line: 47, type: !61)
!5671 = !DILocalVariable(name: "__s2", scope: !5672, file: !5656, line: 47, type: !65)
!5672 = distinct !DILexicalBlock(scope: !5664, file: !5656, line: 47, column: 15)
!5673 = !DILocalVariable(name: "__result", scope: !5672, file: !5656, line: 47, type: !70)
!5674 = !DILocalVariable(name: "__s1_len", scope: !5675, file: !5656, line: 47, type: !61)
!5675 = distinct !DILexicalBlock(scope: !5665, file: !5656, line: 47, column: 39)
!5676 = !DILocalVariable(name: "__s2_len", scope: !5675, file: !5656, line: 47, type: !61)
!5677 = !DILocalVariable(name: "__s2", scope: !5678, file: !5656, line: 47, type: !65)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !5656, line: 47, column: 39)
!5679 = !DILocalVariable(name: "__result", scope: !5678, file: !5656, line: 47, type: !70)
!5680 = !DILocation(line: 38, column: 18, scope: !5655)
!5681 = !DILocation(line: 40, column: 8, scope: !5655)
!5682 = !DILocation(line: 41, column: 19, scope: !5655)
!5683 = !DILocation(line: 41, column: 15, scope: !5655)
!5684 = !DILocation(line: 43, column: 7, scope: !5669)
!5685 = !DILocation(line: 43, column: 7, scope: !5655)
!5686 = !DILocation(line: 47, column: 15, scope: !5664)
!5687 = !DILocation(line: 47, column: 15, scope: !5672)
!5688 = !DILocation(line: 47, column: 15, scope: !5689)
!5689 = !DILexicalBlockFile(scope: !5672, file: !5656, discriminator: 2)
!5690 = !DILocation(line: 47, column: 15, scope: !5691)
!5691 = !DILexicalBlockFile(scope: !5692, file: !5656, discriminator: 3)
!5692 = distinct !DILexicalBlock(scope: !5672, file: !5656, line: 47, column: 15)
!5693 = !DILocation(line: 47, column: 15, scope: !5694)
!5694 = !DILexicalBlockFile(scope: !5692, file: !5656, discriminator: 2)
!5695 = !DILocation(line: 47, column: 15, scope: !5696)
!5696 = !DILexicalBlockFile(scope: !5697, file: !5656, discriminator: 4)
!5697 = distinct !DILexicalBlock(scope: !5692, file: !5656, line: 47, column: 15)
!5698 = !DILocation(line: 47, column: 15, scope: !5699)
!5699 = !DILexicalBlockFile(scope: !5664, file: !5656, discriminator: 11)
!5700 = !DILocation(line: 47, column: 36, scope: !5701)
!5701 = !DILexicalBlockFile(scope: !5665, file: !5656, discriminator: 13)
!5702 = !DILocation(line: 47, column: 39, scope: !5675)
!5703 = !DILocation(line: 47, column: 39, scope: !5704)
!5704 = !DILexicalBlockFile(scope: !5675, file: !5656, discriminator: 26)
!5705 = !DILocation(line: 47, column: 59, scope: !5706)
!5706 = !DILexicalBlockFile(scope: !5665, file: !5656, discriminator: 27)
!5707 = !DILocation(line: 47, column: 15, scope: !5708)
!5708 = !DILexicalBlockFile(scope: !5666, file: !5656, discriminator: 27)
!5709 = !DILocation(line: 48, column: 13, scope: !5665)
!5710 = !DILocation(line: 71, column: 3, scope: !5655)
!5711 = distinct !DISubprogram(name: "locale_charset", scope: !731, file: !731, line: 393, type: !5712, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !388, variables: !5714)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!68}
!5714 = !{!5715, !5716, !5717, !5722}
!5715 = !DILocalVariable(name: "codeset", scope: !5711, file: !731, line: 395, type: !68)
!5716 = !DILocalVariable(name: "aliases", scope: !5711, file: !731, line: 396, type: !68)
!5717 = !DILocalVariable(name: "__s1_len", scope: !5718, file: !731, line: 592, type: !61)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !731, line: 592, column: 9)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !731, line: 592, column: 9)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !731, line: 589, column: 3)
!5721 = distinct !DILexicalBlock(scope: !5711, file: !731, line: 589, column: 3)
!5722 = !DILocalVariable(name: "__s2_len", scope: !5718, file: !731, line: 592, type: !61)
!5723 = !DILocalVariable(name: "buf1", scope: !5724, file: !731, line: 196, type: !5791)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !731, line: 194, column: 21)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !731, line: 193, column: 19)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !731, line: 193, column: 19)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !731, line: 188, column: 17)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !731, line: 181, column: 19)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !731, line: 177, column: 13)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !731, line: 173, column: 15)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !731, line: 161, column: 9)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !731, line: 157, column: 11)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !731, line: 130, column: 5)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !731, line: 129, column: 7)
!5735 = distinct !DISubprogram(name: "get_charset_aliases", scope: !731, file: !731, line: 124, type: !5712, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !388, variables: !5736)
!5736 = !{!5737, !5738, !5739, !5740, !5741, !5743, !5744, !5745, !5746, !5787, !5788, !5789, !5723, !5790, !5794, !5795, !5796}
!5737 = !DILocalVariable(name: "cp", scope: !5735, file: !731, line: 126, type: !68)
!5738 = !DILocalVariable(name: "dir", scope: !5733, file: !731, line: 132, type: !68)
!5739 = !DILocalVariable(name: "base", scope: !5733, file: !731, line: 133, type: !68)
!5740 = !DILocalVariable(name: "file_name", scope: !5733, file: !731, line: 134, type: !58)
!5741 = !DILocalVariable(name: "dir_len", scope: !5742, file: !731, line: 144, type: !61)
!5742 = distinct !DILexicalBlock(scope: !5733, file: !731, line: 143, column: 7)
!5743 = !DILocalVariable(name: "base_len", scope: !5742, file: !731, line: 145, type: !61)
!5744 = !DILocalVariable(name: "add_slash", scope: !5742, file: !731, line: 146, type: !70)
!5745 = !DILocalVariable(name: "fd", scope: !5731, file: !731, line: 162, type: !70)
!5746 = !DILocalVariable(name: "fp", scope: !5729, file: !731, line: 178, type: !5747)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 49, baseType: !5749)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 241, size: 1728, elements: !5750)
!5750 = !{!5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5749, file: !132, line: 242, baseType: !70, size: 32)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5749, file: !132, line: 247, baseType: !58, size: 64, offset: 64)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5749, file: !132, line: 248, baseType: !58, size: 64, offset: 128)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5749, file: !132, line: 249, baseType: !58, size: 64, offset: 192)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5749, file: !132, line: 250, baseType: !58, size: 64, offset: 256)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5749, file: !132, line: 251, baseType: !58, size: 64, offset: 320)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5749, file: !132, line: 252, baseType: !58, size: 64, offset: 384)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5749, file: !132, line: 253, baseType: !58, size: 64, offset: 448)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5749, file: !132, line: 254, baseType: !58, size: 64, offset: 512)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5749, file: !132, line: 256, baseType: !58, size: 64, offset: 576)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5749, file: !132, line: 257, baseType: !58, size: 64, offset: 640)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5749, file: !132, line: 258, baseType: !58, size: 64, offset: 704)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5749, file: !132, line: 260, baseType: !5764, size: 64, offset: 768)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5765, size: 64)
!5765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 156, size: 192, elements: !5766)
!5766 = !{!5767, !5768, !5770}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5765, file: !132, line: 157, baseType: !5764, size: 64)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5765, file: !132, line: 158, baseType: !5769, size: 64, offset: 64)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5765, file: !132, line: 162, baseType: !70, size: 32, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5749, file: !132, line: 262, baseType: !5769, size: 64, offset: 832)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5749, file: !132, line: 264, baseType: !70, size: 32, offset: 896)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5749, file: !132, line: 268, baseType: !70, size: 32, offset: 928)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5749, file: !132, line: 270, baseType: !158, size: 64, offset: 960)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5749, file: !132, line: 274, baseType: !72, size: 16, offset: 1024)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5749, file: !132, line: 275, baseType: !162, size: 8, offset: 1040)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5749, file: !132, line: 276, baseType: !164, size: 8, offset: 1048)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5749, file: !132, line: 280, baseType: !168, size: 64, offset: 1088)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5749, file: !132, line: 289, baseType: !171, size: 64, offset: 1152)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5749, file: !132, line: 297, baseType: !60, size: 64, offset: 1216)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5749, file: !132, line: 298, baseType: !60, size: 64, offset: 1280)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5749, file: !132, line: 299, baseType: !60, size: 64, offset: 1344)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5749, file: !132, line: 300, baseType: !60, size: 64, offset: 1408)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5749, file: !132, line: 302, baseType: !61, size: 64, offset: 1472)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5749, file: !132, line: 303, baseType: !70, size: 32, offset: 1536)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5749, file: !132, line: 305, baseType: !179, size: 160, offset: 1568)
!5787 = !DILocalVariable(name: "res_ptr", scope: !5727, file: !731, line: 190, type: !58)
!5788 = !DILocalVariable(name: "res_size", scope: !5727, file: !731, line: 191, type: !61)
!5789 = !DILocalVariable(name: "c", scope: !5724, file: !731, line: 195, type: !70)
!5790 = !DILocalVariable(name: "buf2", scope: !5724, file: !731, line: 197, type: !5791)
!5791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 408, elements: !5792)
!5792 = !{!5793}
!5793 = !DISubrange(count: 51)
!5794 = !DILocalVariable(name: "l1", scope: !5724, file: !731, line: 198, type: !61)
!5795 = !DILocalVariable(name: "l2", scope: !5724, file: !731, line: 198, type: !61)
!5796 = !DILocalVariable(name: "old_res_ptr", scope: !5724, file: !731, line: 199, type: !58)
!5797 = !DILocation(line: 196, column: 28, scope: !5724, inlinedAt: !5798)
!5798 = distinct !DILocation(line: 589, column: 18, scope: !5721)
!5799 = !DILocation(line: 197, column: 28, scope: !5724, inlinedAt: !5798)
!5800 = !DILocation(line: 403, column: 13, scope: !5711)
!5801 = !DILocation(line: 395, column: 15, scope: !5711)
!5802 = !DILocation(line: 584, column: 15, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5711, file: !731, line: 584, column: 7)
!5804 = !DILocation(line: 584, column: 7, scope: !5711)
!5805 = !DILocation(line: 128, column: 8, scope: !5735, inlinedAt: !5798)
!5806 = !DILocation(line: 126, column: 15, scope: !5735, inlinedAt: !5798)
!5807 = !DILocation(line: 129, column: 10, scope: !5734, inlinedAt: !5798)
!5808 = !DILocation(line: 129, column: 7, scope: !5735, inlinedAt: !5798)
!5809 = !DILocation(line: 138, column: 13, scope: !5733, inlinedAt: !5798)
!5810 = !DILocation(line: 132, column: 19, scope: !5733, inlinedAt: !5798)
!5811 = !DILocation(line: 139, column: 15, scope: !5812, inlinedAt: !5798)
!5812 = distinct !DILexicalBlock(scope: !5733, file: !731, line: 139, column: 11)
!5813 = !DILocation(line: 139, column: 23, scope: !5812, inlinedAt: !5798)
!5814 = !DILocation(line: 139, column: 26, scope: !5815, inlinedAt: !5798)
!5815 = !DILexicalBlockFile(scope: !5812, file: !731, discriminator: 1)
!5816 = !DILocation(line: 139, column: 33, scope: !5815, inlinedAt: !5798)
!5817 = !DILocation(line: 139, column: 11, scope: !5818, inlinedAt: !5798)
!5818 = !DILexicalBlockFile(scope: !5733, file: !731, discriminator: 1)
!5819 = !DILocation(line: 140, column: 9, scope: !5812, inlinedAt: !5798)
!5820 = !DILocation(line: 144, column: 26, scope: !5742, inlinedAt: !5798)
!5821 = !DILocation(line: 144, column: 16, scope: !5742, inlinedAt: !5798)
!5822 = !DILocation(line: 145, column: 16, scope: !5742, inlinedAt: !5798)
!5823 = !DILocation(line: 146, column: 34, scope: !5742, inlinedAt: !5798)
!5824 = !DILocation(line: 146, column: 38, scope: !5742, inlinedAt: !5798)
!5825 = !DILocation(line: 146, column: 42, scope: !5826, inlinedAt: !5798)
!5826 = !DILexicalBlockFile(scope: !5742, file: !731, discriminator: 1)
!5827 = !DILocation(line: 146, column: 41, scope: !5826, inlinedAt: !5798)
!5828 = !DILocation(line: 147, column: 48, scope: !5742, inlinedAt: !5798)
!5829 = !DILocation(line: 147, column: 46, scope: !5742, inlinedAt: !5798)
!5830 = !DILocation(line: 147, column: 69, scope: !5742, inlinedAt: !5798)
!5831 = !DILocation(line: 147, column: 30, scope: !5742, inlinedAt: !5798)
!5832 = !DILocation(line: 134, column: 13, scope: !5733, inlinedAt: !5798)
!5833 = !DILocation(line: 148, column: 13, scope: !5742, inlinedAt: !5798)
!5834 = !DILocation(line: 150, column: 13, scope: !5835, inlinedAt: !5798)
!5835 = distinct !DILexicalBlock(scope: !5836, file: !731, line: 149, column: 11)
!5836 = distinct !DILexicalBlock(scope: !5742, file: !731, line: 148, column: 13)
!5837 = !DILocation(line: 151, column: 17, scope: !5835, inlinedAt: !5798)
!5838 = !DILocation(line: 152, column: 34, scope: !5839, inlinedAt: !5798)
!5839 = distinct !DILexicalBlock(scope: !5835, file: !731, line: 151, column: 17)
!5840 = !DILocation(line: 153, column: 41, scope: !5835, inlinedAt: !5798)
!5841 = !DILocation(line: 153, column: 13, scope: !5835, inlinedAt: !5798)
!5842 = !DILocation(line: 157, column: 11, scope: !5733, inlinedAt: !5798)
!5843 = !DILocation(line: 171, column: 16, scope: !5731, inlinedAt: !5798)
!5844 = !DILocation(line: 162, column: 15, scope: !5731, inlinedAt: !5798)
!5845 = !DILocation(line: 173, column: 18, scope: !5730, inlinedAt: !5798)
!5846 = !DILocation(line: 173, column: 15, scope: !5731, inlinedAt: !5798)
!5847 = !DILocation(line: 180, column: 20, scope: !5729, inlinedAt: !5798)
!5848 = !DILocation(line: 178, column: 21, scope: !5729, inlinedAt: !5798)
!5849 = !DILocation(line: 181, column: 22, scope: !5728, inlinedAt: !5798)
!5850 = !DILocation(line: 181, column: 19, scope: !5729, inlinedAt: !5798)
!5851 = !DILocation(line: 190, column: 25, scope: !5727, inlinedAt: !5798)
!5852 = !DILocation(line: 184, column: 19, scope: !5853, inlinedAt: !5798)
!5853 = distinct !DILexicalBlock(scope: !5728, file: !731, line: 182, column: 17)
!5854 = !DILocation(line: 186, column: 17, scope: !5853, inlinedAt: !5798)
!5855 = !DILocation(line: 191, column: 26, scope: !5727, inlinedAt: !5798)
!5856 = !DILocation(line: 196, column: 23, scope: !5724, inlinedAt: !5798)
!5857 = !DILocation(line: 197, column: 23, scope: !5724, inlinedAt: !5798)
!5858 = !DILocalVariable(name: "__fp", arg: 1, scope: !5859, file: !1101, line: 63, type: !5747)
!5859 = distinct !DISubprogram(name: "getc_unlocked", scope: !1101, file: !1101, line: 63, type: !5860, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !388, variables: !5862)
!5860 = !DISubroutineType(types: !5861)
!5861 = !{!70, !5747}
!5862 = !{!5858}
!5863 = !DILocation(line: 63, column: 22, scope: !5859, inlinedAt: !5864)
!5864 = distinct !DILocation(line: 201, column: 27, scope: !5724, inlinedAt: !5798)
!5865 = !DILocation(line: 65, column: 10, scope: !5859, inlinedAt: !5864)
!5866 = !DILocation(line: 65, column: 10, scope: !5867, inlinedAt: !5864)
!5867 = !DILexicalBlockFile(scope: !5859, file: !1101, discriminator: 1)
!5868 = !DILocation(line: 65, column: 10, scope: !5869, inlinedAt: !5864)
!5869 = !DILexicalBlockFile(scope: !5859, file: !1101, discriminator: 2)
!5870 = !DILocation(line: 65, column: 10, scope: !5871, inlinedAt: !5864)
!5871 = !DILexicalBlockFile(scope: !5859, file: !1101, discriminator: 3)
!5872 = !DILocation(line: 195, column: 27, scope: !5724, inlinedAt: !5798)
!5873 = !DILocation(line: 202, column: 27, scope: !5724, inlinedAt: !5798)
!5874 = !DILocation(line: 63, column: 22, scope: !5859, inlinedAt: !5875)
!5875 = distinct !DILocation(line: 210, column: 33, scope: !5876, inlinedAt: !5798)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !731, line: 207, column: 25)
!5877 = distinct !DILexicalBlock(scope: !5724, file: !731, line: 206, column: 27)
!5878 = !DILocation(line: 65, column: 10, scope: !5859, inlinedAt: !5875)
!5879 = !DILocation(line: 65, column: 10, scope: !5867, inlinedAt: !5875)
!5880 = !DILocation(line: 65, column: 10, scope: !5869, inlinedAt: !5875)
!5881 = !DILocation(line: 65, column: 10, scope: !5871, inlinedAt: !5875)
!5882 = !DILocation(line: 210, column: 29, scope: !5883, inlinedAt: !5798)
!5883 = !DILexicalBlockFile(scope: !5876, file: !731, discriminator: 1)
!5884 = distinct !{!5884, !5885, !5886}
!5885 = !DILocation(line: 193, column: 19, scope: !5726)
!5886 = !DILocation(line: 241, column: 21, scope: !5726)
!5887 = !DILocation(line: 216, column: 23, scope: !5724, inlinedAt: !5798)
!5888 = !DILocation(line: 217, column: 27, scope: !5889, inlinedAt: !5798)
!5889 = distinct !DILexicalBlock(scope: !5724, file: !731, line: 217, column: 27)
!5890 = !DILocation(line: 217, column: 64, scope: !5889, inlinedAt: !5798)
!5891 = !DILocation(line: 217, column: 27, scope: !5724, inlinedAt: !5798)
!5892 = !DILocation(line: 219, column: 28, scope: !5724, inlinedAt: !5798)
!5893 = !DILocation(line: 198, column: 30, scope: !5724, inlinedAt: !5798)
!5894 = !DILocation(line: 220, column: 28, scope: !5724, inlinedAt: !5798)
!5895 = !DILocation(line: 198, column: 34, scope: !5724, inlinedAt: !5798)
!5896 = !DILocation(line: 199, column: 29, scope: !5724, inlinedAt: !5798)
!5897 = !DILocation(line: 222, column: 36, scope: !5898, inlinedAt: !5798)
!5898 = distinct !DILexicalBlock(scope: !5724, file: !731, line: 222, column: 27)
!5899 = !DILocation(line: 222, column: 27, scope: !5724, inlinedAt: !5798)
!5900 = !DILocation(line: 225, column: 63, scope: !5901, inlinedAt: !5798)
!5901 = distinct !DILexicalBlock(scope: !5898, file: !731, line: 223, column: 25)
!5902 = !DILocation(line: 225, column: 46, scope: !5901, inlinedAt: !5798)
!5903 = !DILocation(line: 226, column: 25, scope: !5901, inlinedAt: !5798)
!5904 = !DILocation(line: 229, column: 36, scope: !5905, inlinedAt: !5798)
!5905 = distinct !DILexicalBlock(scope: !5898, file: !731, line: 228, column: 25)
!5906 = !DILocation(line: 230, column: 73, scope: !5905, inlinedAt: !5798)
!5907 = !DILocation(line: 230, column: 46, scope: !5905, inlinedAt: !5798)
!5908 = !DILocation(line: 232, column: 35, scope: !5909, inlinedAt: !5798)
!5909 = distinct !DILexicalBlock(scope: !5724, file: !731, line: 232, column: 27)
!5910 = !DILocation(line: 232, column: 27, scope: !5724, inlinedAt: !5798)
!5911 = !DILocation(line: 236, column: 27, scope: !5912, inlinedAt: !5798)
!5912 = distinct !DILexicalBlock(scope: !5909, file: !731, line: 233, column: 25)
!5913 = !DILocation(line: 237, column: 27, scope: !5912, inlinedAt: !5798)
!5914 = !DILocation(line: 239, column: 39, scope: !5724, inlinedAt: !5798)
!5915 = !DILocation(line: 239, column: 50, scope: !5724, inlinedAt: !5798)
!5916 = !DILocation(line: 239, column: 61, scope: !5724, inlinedAt: !5798)
!5917 = !DILocalVariable(name: "__dest", arg: 1, scope: !5918, file: !5919, line: 107, type: !5922)
!5918 = distinct !DISubprogram(name: "strcpy", scope: !5919, file: !5919, line: 107, type: !5920, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !388, variables: !5924)
!5919 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!58, !5922, !5923}
!5922 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!5923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!5924 = !{!5917, !5925}
!5925 = !DILocalVariable(name: "__src", arg: 2, scope: !5918, file: !5919, line: 107, type: !5923)
!5926 = !DILocation(line: 107, column: 1, scope: !5918, inlinedAt: !5927)
!5927 = distinct !DILocation(line: 239, column: 23, scope: !5724, inlinedAt: !5798)
!5928 = !DILocation(line: 109, column: 49, scope: !5918, inlinedAt: !5927)
!5929 = !DILocation(line: 109, column: 10, scope: !5918, inlinedAt: !5927)
!5930 = !DILocation(line: 107, column: 1, scope: !5918, inlinedAt: !5931)
!5931 = distinct !DILocation(line: 240, column: 23, scope: !5724, inlinedAt: !5798)
!5932 = !DILocation(line: 109, column: 49, scope: !5918, inlinedAt: !5931)
!5933 = !DILocation(line: 109, column: 10, scope: !5918, inlinedAt: !5931)
!5934 = !DILocation(line: 241, column: 21, scope: !5725, inlinedAt: !5798)
!5935 = !DILocation(line: 242, column: 19, scope: !5727, inlinedAt: !5798)
!5936 = !DILocation(line: 243, column: 32, scope: !5937, inlinedAt: !5798)
!5937 = distinct !DILexicalBlock(scope: !5727, file: !731, line: 243, column: 23)
!5938 = !DILocation(line: 243, column: 23, scope: !5727, inlinedAt: !5798)
!5939 = !DILocation(line: 247, column: 33, scope: !5940, inlinedAt: !5798)
!5940 = distinct !DILexicalBlock(scope: !5937, file: !731, line: 246, column: 21)
!5941 = !DILocation(line: 247, column: 45, scope: !5940, inlinedAt: !5798)
!5942 = !DILocation(line: 253, column: 11, scope: !5731, inlinedAt: !5798)
!5943 = !DILocation(line: 377, column: 23, scope: !5733, inlinedAt: !5798)
!5944 = !DILocation(line: 378, column: 5, scope: !5733, inlinedAt: !5798)
!5945 = !DILocation(line: 396, column: 15, scope: !5711)
!5946 = !DILocation(line: 590, column: 8, scope: !5720)
!5947 = !DILocation(line: 590, column: 17, scope: !5720)
!5948 = !DILocation(line: 589, column: 3, scope: !5949)
!5949 = !DILexicalBlockFile(scope: !5721, file: !731, discriminator: 1)
!5950 = !DILocation(line: 592, column: 9, scope: !5718)
!5951 = !DILocation(line: 592, column: 35, scope: !5719)
!5952 = !DILocation(line: 593, column: 9, scope: !5719)
!5953 = !DILocation(line: 593, column: 24, scope: !5954)
!5954 = !DILexicalBlockFile(scope: !5719, file: !731, discriminator: 1)
!5955 = !DILocation(line: 593, column: 31, scope: !5954)
!5956 = !DILocation(line: 593, column: 34, scope: !5957)
!5957 = !DILexicalBlockFile(scope: !5719, file: !731, discriminator: 2)
!5958 = !DILocation(line: 593, column: 45, scope: !5957)
!5959 = !DILocation(line: 592, column: 9, scope: !5960)
!5960 = !DILexicalBlockFile(scope: !5720, file: !731, discriminator: 1)
!5961 = !DILocation(line: 595, column: 29, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5719, file: !731, line: 594, column: 7)
!5963 = !DILocation(line: 595, column: 27, scope: !5962)
!5964 = !DILocation(line: 595, column: 46, scope: !5962)
!5965 = !DILocation(line: 596, column: 9, scope: !5962)
!5966 = !DILocation(line: 591, column: 19, scope: !5720)
!5967 = !DILocation(line: 591, column: 36, scope: !5720)
!5968 = !DILocation(line: 591, column: 16, scope: !5720)
!5969 = !DILocation(line: 591, column: 52, scope: !5960)
!5970 = !DILocation(line: 591, column: 69, scope: !5720)
!5971 = !DILocation(line: 591, column: 49, scope: !5720)
!5972 = distinct !{!5972, !5973, !5974}
!5973 = !DILocation(line: 589, column: 3, scope: !5721)
!5974 = !DILocation(line: 597, column: 7, scope: !5721)
!5975 = !DILocation(line: 602, column: 7, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5711, file: !731, line: 602, column: 7)
!5977 = !DILocation(line: 602, column: 18, scope: !5976)
!5978 = !DILocation(line: 602, column: 7, scope: !5711)
!5979 = !DILocation(line: 612, column: 3, scope: !5711)
