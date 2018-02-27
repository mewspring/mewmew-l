; ModuleID = 'coreutils-8.27/src/b2sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.blake2b_state__ = type { [8 x i64], [2 x i64], [2 x i64], [128 x i8], i64, i64, i8 }
%struct.blake2b_param__ = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, [14 x i8], [16 x i8], [16 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BLAKE2\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A  -b, --binary         read in binary mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  -c, --check          read %s sums from the FILEs and check them\0A\00", align 1
@.str.5 = private unnamed_addr constant [151 x i8] c"  -l, --length         digest length in bits; must not exceed the maximum for\0A                       the blake2 algorithm and must be a multiple of 8\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"      --tag            create a BSD-style checksum\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"  -t, --text           read in text mode (default)\0A\00", align 1
@.str.8 = private unnamed_addr constant [435 x i8] c"\0AThe following five options are useful only when verifying checksums:\0A      --ignore-missing  don't fail or report status for missing files\0A      --quiet          don't print OK for each successfully verified file\0A      --status         don't output anything, status code shows success\0A      --strict         exit non-zero for improperly formatted checksum lines\0A  -w, --warn           warn about improperly formatted checksum lines\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [297 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RFC 7693\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"l:bctw\00", align 1
@long_options = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@b2_length = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [19 x i8] c"invalid length: %s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"length is not a multiple of 8\00", align 1
@status_only = internal unnamed_addr global i1 false, align 1
@warn = internal unnamed_addr global i1 false, align 1
@quiet = internal unnamed_addr global i1 false, align 1
@ignore_missing = internal unnamed_addr global i1 false, align 1
@strict = internal unnamed_addr global i1 false, align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Samuel Neves\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8
@.str.24 = private unnamed_addr constant [41 x i8] c"maximum digest length for %s is %lu bits\00", align 1
@b2_algorithm = internal unnamed_addr global i32 0, align 4
@algorithm_in_string = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* null], align 16
@digest_hex_bytes = internal unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [35 x i8] c"--tag does not support --text mode\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"the --tag option is meaningless when verifying checksums\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"the --binary and --text options are meaningless when verifying checksums\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"the --ignore-missing option is meaningful only when verifying checksums\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"the --status option is meaningful only when verifying checksums\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"the --warn option is meaningful only when verifying checksums\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"the --quiet option is meaningful only when verifying checksums\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"the --strict option is meaningful only when verifying checksums\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@algorithm_out_string = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* null], align 16
@bsd_reversed = internal unnamed_addr global i32 -1, align 4
@.str.71 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.74 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.79 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"-%lu\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"BLAKE2b\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"blake2b\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@blake2b_IV = internal unnamed_addr constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16
@secure_zero_memory.memset_v = internal constant i8* (i8*, i32, i64)* @memset, align 8
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), align 8
@.str.40 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.43 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.44 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.45 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.46 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.47 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.133 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.134 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.135 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.136 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.137 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.138 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.139 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.140 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.141 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.142 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.143 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.144 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.145 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.146 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.149 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.150 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.151 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.152 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.153 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.154 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.165 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.172 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.173 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.177 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.194 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.198 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.199 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.200 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.201 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.202 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.203 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %55

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 512) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #12
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #12
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #12
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #12
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #12
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 5) #12
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0)) #12
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12
  %43 = icmp eq i8* %42, null
  br i1 %43, label %50, label %44

; <label>:44:                                     ; preds = %8
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i64 3) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.51, i64 0, i64 0), i32 5) #12
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #12
  br label %50

; <label>:50:                                     ; preds = %8, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i64 0, i64 0), i32 5) #12
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #12
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i64 0, i64 0), i32 5) #12
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #12
  br label %55

; <label>:55:                                     ; preds = %50, %3
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
  %3 = alloca i64, align 8
  %4 = alloca [72 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca [72 x i8], align 16
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds [72 x i8], [72 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start(i64 72, i8* nonnull %10) #12
  %11 = getelementptr inbounds [72 x i8], [72 x i8]* %8, i64 0, i64 7
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 7
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8*, i8** %1, align 8
  call void @set_program_name(i8* %16) #12
  %17 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #12
  %18 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #12
  %19 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #12
  %20 = call i32 @atexit(void ()* nonnull @close_stdout) #12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i32 @setvbuf(%struct._IO_FILE* %21, i8* null, i32 1, i64 0) #12
  br label %23

; <label>:23:                                     ; preds = %48, %2
  %24 = phi i32 [ -1, %2 ], [ %49, %48 ]
  %25 = phi i8 [ 0, %2 ], [ %50, %48 ]
  %26 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %2 ], [ %51, %48 ]
  %27 = phi i8 [ 0, %2 ], [ %52, %48 ]
  %28 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12
  switch i32 %28, label %57 [
    i32 -1, label %58
    i32 108, label %29
    i32 98, label %48
    i32 99, label %40
    i32 129, label %41
    i32 116, label %42
    i32 119, label %43
    i32 128, label %44
    i32 130, label %45
    i32 131, label %46
    i32 132, label %47
    i32 -130, label %53
    i32 -131, label %54
  ]

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #12
  %32 = call i64 @xdectoumax(i8* %30, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %31, i32 0) #12
  store i64 %32, i64* @b2_length, align 8
  %33 = load i8*, i8** @optarg, align 8
  %34 = and i64 %32, 7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %48, label %36

; <label>:36:                                     ; preds = %29
  %37 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %38 = call i8* @quote(i8* %33) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37, i8* %38) #12
  %39 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %39) #12
  unreachable

; <label>:40:                                     ; preds = %23
  br label %48

; <label>:41:                                     ; preds = %23
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %48

; <label>:42:                                     ; preds = %23
  br label %48

; <label>:43:                                     ; preds = %23
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %48

; <label>:44:                                     ; preds = %23
  store i1 true, i1* @ignore_missing, align 1
  br label %48

; <label>:45:                                     ; preds = %23
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %48

; <label>:46:                                     ; preds = %23
  store i1 true, i1* @strict, align 1
  br label %48

; <label>:47:                                     ; preds = %23
  br label %48

; <label>:48:                                     ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %29, %23
  %49 = phi i32 [ 1, %47 ], [ %24, %46 ], [ %24, %45 ], [ %24, %44 ], [ %24, %43 ], [ 0, %42 ], [ %24, %41 ], [ %24, %40 ], [ %24, %29 ], [ 1, %23 ]
  %50 = phi i8 [ 1, %47 ], [ %25, %46 ], [ %25, %45 ], [ %25, %44 ], [ %25, %43 ], [ %25, %42 ], [ %25, %41 ], [ %25, %40 ], [ %25, %29 ], [ %25, %23 ]
  %51 = phi i8* [ %26, %47 ], [ %26, %46 ], [ %26, %45 ], [ %26, %44 ], [ %26, %43 ], [ %26, %42 ], [ %26, %41 ], [ %26, %40 ], [ %33, %29 ], [ %26, %23 ]
  %52 = phi i8 [ %27, %47 ], [ %27, %46 ], [ %27, %45 ], [ %27, %44 ], [ %27, %43 ], [ %27, %42 ], [ %27, %41 ], [ 1, %40 ], [ %27, %29 ], [ %27, %23 ]
  br label %23

; <label>:53:                                     ; preds = %23
  call void @usage(i32 0) #16
  unreachable

; <label>:54:                                     ; preds = %23
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null) #12
  call void @exit(i32 0) #15
  unreachable

; <label>:57:                                     ; preds = %23
  call void @usage(i32 1) #16
  unreachable

; <label>:58:                                     ; preds = %23
  store i1 true, i1* @min_digest_line_length, align 8
  %59 = load i64, i64* @b2_length, align 8
  %60 = icmp ugt i64 %59, 512
  br i1 %60, label %61, label %70

; <label>:61:                                     ; preds = %58
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %63 = call i8* @quote(i8* %26) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62, i8* %63) #12
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32 5) #12
  %65 = load i32, i32* @b2_algorithm, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* @algorithm_in_string, i64 0, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @quote(i8* %68) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %64, i8* %69, i64 512) #12
  unreachable

; <label>:70:                                     ; preds = %58
  %71 = icmp eq i64 %59, 0
  %72 = icmp eq i8 %27, 0
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %70
  store i64 512, i64* @b2_length, align 8
  br label %75

; <label>:75:                                     ; preds = %74, %70
  %76 = phi i64 [ 512, %74 ], [ %59, %70 ]
  %77 = lshr i64 %76, 2
  store i64 %77, i64* @digest_hex_bytes, align 8
  %78 = icmp ne i8 %25, 0
  %79 = xor i1 %78, true
  %80 = icmp ne i32 %24, 0
  %81 = or i1 %80, %79
  br i1 %81, label %84, label %82

; <label>:82:                                     ; preds = %75
  %83 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %83) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:84:                                     ; preds = %75
  %85 = or i1 %72, %79
  br i1 %85, label %88, label %86

; <label>:86:                                     ; preds = %84
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:88:                                     ; preds = %84
  %89 = icmp slt i32 %24, 0
  %90 = or i1 %89, %72
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %88
  %92 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %92) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:93:                                     ; preds = %88
  %94 = load i1, i1* @ignore_missing, align 1
  %95 = and i1 %72, %94
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %93
  %97 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.28, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %97) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:98:                                     ; preds = %93
  %99 = load i1, i1* @status_only, align 1
  %100 = and i1 %72, %99
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %98
  %102 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %102) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:103:                                    ; preds = %98
  %104 = load i1, i1* @warn, align 1
  %105 = and i1 %72, %104
  br i1 %105, label %106, label %108

; <label>:106:                                    ; preds = %103
  %107 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.30, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %107) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:108:                                    ; preds = %103
  %109 = load i1, i1* @quiet, align 1
  %110 = and i1 %72, %109
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %108
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %112) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:113:                                    ; preds = %108
  %114 = load i1, i1* @strict, align 1
  %115 = icmp ne i8 %27, 0
  %116 = xor i1 %115, true
  %117 = and i1 %114, %116
  br i1 %117, label %118, label %120

; <label>:118:                                    ; preds = %113
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %119) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:120:                                    ; preds = %113
  %121 = icmp sgt i32 %24, 0
  %122 = sext i32 %0 to i64
  %123 = getelementptr inbounds i8*, i8** %1, i64 %122
  %124 = load i32, i32* @optind, align 4
  %125 = icmp eq i32 %124, %0
  br i1 %125, label %126, label %128

; <label>:126:                                    ; preds = %120
  %127 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8** %123, align 8
  br label %128

; <label>:128:                                    ; preds = %126, %120
  %129 = phi i8** [ %127, %126 ], [ %123, %120 ]
  %130 = sext i32 %124 to i64
  %131 = getelementptr inbounds i8*, i8** %1, i64 %130
  %132 = icmp ult i8** %131, %129
  br i1 %132, label %133, label %146

; <label>:133:                                    ; preds = %128
  %134 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 0
  %135 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 7
  %136 = ptrtoint i8* %135 to i64
  %137 = and i64 %136, 7
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = bitcast i8** %5 to i8*
  %141 = bitcast i64* %6 to i8*
  %142 = bitcast i64* %3 to i8*
  %143 = select i1 %121, i32 42, i32 32
  %144 = trunc i32 %143 to i8
  br label %149

; <label>:145:                                    ; preds = %768
  br label %146

; <label>:146:                                    ; preds = %145, %128
  %147 = phi i8 [ 1, %128 ], [ %769, %145 ]
  %148 = load i1, i1* @have_read_stdin, align 1
  br i1 %148, label %772, label %780

; <label>:149:                                    ; preds = %133, %768
  %150 = phi i8** [ %131, %133 ], [ %770, %768 ]
  %151 = phi i8 [ 1, %133 ], [ %769, %768 ]
  %152 = load i8*, i8** %150, align 8
  br i1 %115, label %153, label %666

; <label>:153:                                    ; preds = %149
  call void @llvm.lifetime.start(i64 72, i8* nonnull %134) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %140) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %141) #12
  %154 = load i8, i8* %152, align 1
  %155 = icmp eq i8 %154, 45
  br i1 %155, label %156, label %163

; <label>:156:                                    ; preds = %153
  %157 = getelementptr inbounds i8, i8* %152, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %163

; <label>:160:                                    ; preds = %156
  store i1 true, i1* @have_read_stdin, align 1
  %161 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 5) #12
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %170

; <label>:163:                                    ; preds = %156, %153
  %164 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #12
  %165 = icmp eq %struct._IO_FILE* %164, null
  br i1 %165, label %166, label %170

; <label>:166:                                    ; preds = %163
  %167 = tail call i32* @__errno_location() #1
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %152) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i8* %169) #12
  br label %662

; <label>:170:                                    ; preds = %163, %160
  %171 = phi i1 [ true, %160 ], [ false, %163 ]
  %172 = phi %struct._IO_FILE* [ %162, %160 ], [ %164, %163 ]
  %173 = phi i8* [ %161, %160 ], [ %152, %163 ]
  store i8* null, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 0
  br label %175

; <label>:175:                                    ; preds = %589, %170
  %176 = phi i64 [ 0, %170 ], [ %183, %589 ]
  %177 = phi i8 [ 0, %170 ], [ %590, %589 ]
  %178 = phi i8 [ 0, %170 ], [ %591, %589 ]
  %179 = phi i64 [ 0, %170 ], [ %592, %589 ]
  %180 = phi i64 [ 0, %170 ], [ %593, %589 ]
  %181 = phi i64 [ 0, %170 ], [ %594, %589 ]
  %182 = phi i64 [ 0, %170 ], [ %595, %589 ]
  %183 = add i64 %176, 1
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %188

; <label>:185:                                    ; preds = %175
  %186 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #12
  %187 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %186, i8* %187) #12
  unreachable

; <label>:188:                                    ; preds = %175
  %189 = call i64 @__getdelim(i8** nonnull %5, i64* nonnull %6, i32 10, %struct._IO_FILE* %172) #12
  %190 = icmp slt i64 %189, 1
  br i1 %190, label %599, label %191

; <label>:191:                                    ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = load i8, i8* %192, align 1
  %194 = icmp eq i8 %193, 35
  br i1 %194, label %589, label %195

; <label>:195:                                    ; preds = %191
  %196 = add nsw i64 %189, -1
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = icmp eq i8 %198, 10
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %195
  store i8 0, i8* %197, align 1
  %201 = load i8*, i8** %5, align 8
  br label %202

; <label>:202:                                    ; preds = %200, %195
  %203 = phi i8* [ %201, %200 ], [ %192, %195 ]
  %204 = phi i64 [ %196, %200 ], [ %189, %195 ]
  br label %205

; <label>:205:                                    ; preds = %209, %202
  %206 = phi i64 [ 0, %202 ], [ %210, %209 ]
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = load i8, i8* %207, align 1
  switch i8 %208, label %213 [
    i8 32, label %209
    i8 9, label %209
    i8 92, label %211
  ]

; <label>:209:                                    ; preds = %205, %205
  %210 = add i64 %206, 1
  br label %205

; <label>:211:                                    ; preds = %205
  %212 = add i64 %206, 1
  br label %214

; <label>:213:                                    ; preds = %205
  br label %214

; <label>:214:                                    ; preds = %213, %211
  %215 = phi i64 [ %212, %211 ], [ %206, %213 ]
  %216 = phi i1 [ true, %211 ], [ false, %213 ]
  %217 = getelementptr inbounds i8, i8* %203, i64 %215
  %218 = call i32 @strncmp(i8* %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6) #14
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %339

; <label>:220:                                    ; preds = %214
  %221 = add i64 %215, 6
  br label %222

; <label>:222:                                    ; preds = %226, %220
  %223 = phi i64 [ %221, %220 ], [ %227, %226 ]
  %224 = getelementptr inbounds i8, i8* %203, i64 %223
  %225 = load i8, i8* %224, align 1
  switch i8 %225, label %226 [
    i8 32, label %228
    i8 9, label %228
    i8 45, label %228
    i8 40, label %228
  ]

; <label>:226:                                    ; preds = %222
  %227 = add i64 %223, 1
  br label %222

; <label>:228:                                    ; preds = %222, %222, %222, %222
  %229 = icmp eq i8 %225, 45
  store i8 0, i8* %224, align 1
  %230 = call i64 @argmatch(i8* nonnull %217, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @algorithm_out_string, i64 0, i64 0), i8* null, i64 0) #14
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %472, label %232

; <label>:232:                                    ; preds = %228
  %233 = add i64 %223, 1
  %234 = icmp eq i8 %225, 40
  %235 = trunc i64 %230 to i32
  store i32 %235, i32* @b2_algorithm, align 4
  br i1 %234, label %236, label %237

; <label>:236:                                    ; preds = %232
  store i8 40, i8* %224, align 1
  br label %237

; <label>:237:                                    ; preds = %236, %232
  %238 = phi i64 [ %223, %236 ], [ %233, %232 ]
  br i1 %229, label %239, label %262

; <label>:239:                                    ; preds = %237
  call void @llvm.lifetime.start(i64 8, i8* nonnull %142) #12
  %240 = getelementptr inbounds i8, i8* %203, i64 %238
  %241 = call i32 @xstrtoul(i8* %240, i8** null, i32 0, i64* nonnull %3, i8* null) #12
  %242 = icmp eq i32 %241, 0
  %243 = load i64, i64* %3, align 8
  %244 = add i64 %243, -1
  %245 = icmp ult i64 %244, 512
  %246 = and i1 %242, %245
  %247 = and i64 %243, 7
  %248 = icmp eq i64 %247, 0
  %249 = and i1 %248, %246
  br i1 %249, label %250, label %261

; <label>:250:                                    ; preds = %239
  store i64 %243, i64* @b2_length, align 8
  br label %251

; <label>:251:                                    ; preds = %251, %250
  %252 = phi i64 [ %238, %250 ], [ %258, %251 ]
  %253 = getelementptr inbounds i8, i8* %203, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = add nsw i32 %255, -48
  %257 = icmp ult i32 %256, 10
  %258 = add i64 %252, 1
  br i1 %257, label %251, label %259

; <label>:259:                                    ; preds = %251
  call void @llvm.lifetime.end(i64 8, i8* nonnull %142) #12
  %260 = lshr i64 %243, 2
  br label %265

; <label>:261:                                    ; preds = %239
  call void @llvm.lifetime.end(i64 8, i8* nonnull %142) #12
  br label %472

; <label>:262:                                    ; preds = %237
  store i64 512, i64* @b2_length, align 8
  %263 = getelementptr inbounds i8, i8* %203, i64 %238
  %264 = load i8, i8* %263, align 1
  br label %265

; <label>:265:                                    ; preds = %262, %259
  %266 = phi i8 [ %264, %262 ], [ %254, %259 ]
  %267 = phi i64 [ 128, %262 ], [ %260, %259 ]
  %268 = phi i64 [ %238, %262 ], [ %252, %259 ]
  store i64 %267, i64* @digest_hex_bytes, align 8
  %269 = icmp eq i8 %266, 32
  %270 = zext i1 %269 to i64
  %271 = add i64 %270, %268
  %272 = getelementptr inbounds i8, i8* %203, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = icmp eq i8 %273, 40
  br i1 %274, label %275, label %472

; <label>:275:                                    ; preds = %265
  %276 = add i64 %271, 1
  %277 = getelementptr inbounds i8, i8* %203, i64 %276
  %278 = sub i64 %204, %276
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %472, label %280

; <label>:280:                                    ; preds = %275
  br label %281

; <label>:281:                                    ; preds = %280, %285
  %282 = phi i64 [ %283, %285 ], [ %278, %280 ]
  %283 = add i64 %282, -1
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %289, label %285

; <label>:285:                                    ; preds = %281
  %286 = getelementptr inbounds i8, i8* %277, i64 %283
  %287 = load i8, i8* %286, align 1
  %288 = icmp eq i8 %287, 41
  br i1 %288, label %292, label %281

; <label>:289:                                    ; preds = %281
  %290 = load i8, i8* %277, align 1
  %291 = icmp eq i8 %290, 41
  br i1 %291, label %293, label %472

; <label>:292:                                    ; preds = %285
  br label %293

; <label>:293:                                    ; preds = %292, %289
  %294 = phi i8* [ %277, %289 ], [ %286, %292 ]
  %295 = phi i1 [ true, %289 ], [ false, %292 ]
  %296 = phi i64 [ 0, %289 ], [ %283, %292 ]
  br i1 %216, label %297, label %325

; <label>:297:                                    ; preds = %293
  br i1 %295, label %321, label %298

; <label>:298:                                    ; preds = %297
  %299 = add i64 %282, -2
  br label %300

; <label>:300:                                    ; preds = %314, %298
  %301 = phi i64 [ 0, %298 ], [ %318, %314 ]
  %302 = phi i8* [ %277, %298 ], [ %317, %314 ]
  %303 = getelementptr inbounds i8, i8* %277, i64 %301
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  switch i32 %305, label %314 [
    i32 92, label %306
    i32 0, label %470
  ]

; <label>:306:                                    ; preds = %300
  %307 = icmp eq i64 %301, %299
  br i1 %307, label %470, label %308

; <label>:308:                                    ; preds = %306
  %309 = add i64 %301, 1
  %310 = getelementptr inbounds i8, i8* %277, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  switch i32 %312, label %470 [
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

; <label>:321:                                    ; preds = %320, %297
  %322 = phi i8* [ %277, %297 ], [ %317, %320 ]
  %323 = icmp ult i8* %322, %294
  br i1 %323, label %324, label %325

; <label>:324:                                    ; preds = %321
  store i8 0, i8* %322, align 1
  br label %325

; <label>:325:                                    ; preds = %324, %321, %293
  store i8 0, i8* %294, align 1
  br label %326

; <label>:326:                                    ; preds = %331, %325
  %327 = phi i64 [ %282, %325 ], [ %332, %331 ]
  %328 = getelementptr inbounds i8, i8* %277, i64 %327
  %329 = load i8, i8* %328, align 1
  switch i8 %329, label %469 [
    i8 32, label %331
    i8 9, label %331
    i8 61, label %330
  ]

; <label>:330:                                    ; preds = %326
  br label %333

; <label>:331:                                    ; preds = %326, %326
  %332 = add i64 %327, 1
  br label %326

; <label>:333:                                    ; preds = %338, %330
  %334 = phi i64 [ %327, %330 ], [ %335, %338 ]
  %335 = add i64 %334, 1
  %336 = getelementptr inbounds i8, i8* %277, i64 %335
  %337 = load i8, i8* %336, align 1
  switch i8 %337, label %432 [
    i8 32, label %338
    i8 9, label %338
  ]

; <label>:338:                                    ; preds = %333, %333
  br label %333

; <label>:339:                                    ; preds = %214
  %340 = sub i64 %204, %215
  %341 = load i1, i1* @min_digest_line_length, align 8
  %342 = select i1 %341, i64 3, i64 0
  %343 = load i8, i8* %217, align 1
  %344 = icmp eq i8 %343, 92
  %345 = zext i1 %344 to i64
  %346 = add nuw nsw i64 %345, %342
  %347 = icmp ult i64 %340, %346
  br i1 %347, label %472, label %348

; <label>:348:                                    ; preds = %339
  store i64 0, i64* @digest_hex_bytes, align 8
  %349 = tail call i16** @__ctype_b_loc() #1
  %350 = load i16*, i16** %349, align 8
  %351 = load i8, i8* %217, align 1
  %352 = zext i8 %351 to i64
  %353 = getelementptr inbounds i16, i16* %350, i64 %352
  %354 = load i16, i16* %353, align 2
  %355 = and i16 %354, 4096
  %356 = icmp eq i16 %355, 0
  br i1 %356, label %472, label %357

; <label>:357:                                    ; preds = %348
  br label %358

; <label>:358:                                    ; preds = %357, %358
  %359 = phi i64 [ %362, %358 ], [ 0, %357 ]
  %360 = phi i8* [ %361, %358 ], [ %217, %357 ]
  %361 = getelementptr inbounds i8, i8* %360, i64 1
  %362 = add i64 %359, 1
  %363 = load i8, i8* %361, align 1
  %364 = zext i8 %363 to i64
  %365 = getelementptr inbounds i16, i16* %350, i64 %364
  %366 = load i16, i16* %365, align 2
  %367 = and i16 %366, 4096
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %369, label %358

; <label>:369:                                    ; preds = %358
  store i64 %362, i64* @digest_hex_bytes, align 8
  %370 = and i64 %362, 1
  %371 = icmp ne i64 %370, 0
  %372 = add i64 %359, -1
  %373 = icmp ugt i64 %372, 126
  %374 = or i1 %373, %371
  br i1 %374, label %472, label %375

; <label>:375:                                    ; preds = %369
  %376 = shl i64 %362, 2
  store i64 %376, i64* @b2_length, align 8
  %377 = add i64 %362, %215
  %378 = getelementptr inbounds i8, i8* %203, i64 %377
  %379 = load i8, i8* %378, align 1
  switch i8 %379, label %472 [
    i8 32, label %380
    i8 9, label %380
  ]

; <label>:380:                                    ; preds = %375, %375
  %381 = add i64 %377, 1
  store i8 0, i8* %378, align 1
  %382 = sub i64 %204, %381
  %383 = icmp eq i64 %382, 1
  br i1 %383, label %387, label %384

; <label>:384:                                    ; preds = %380
  %385 = getelementptr inbounds i8, i8* %203, i64 %381
  %386 = load i8, i8* %385, align 1
  switch i8 %386, label %387 [
    i8 32, label %391
    i8 42, label %391
  ]

; <label>:387:                                    ; preds = %384, %380
  %388 = load i32, i32* @bsd_reversed, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %472, label %390

; <label>:390:                                    ; preds = %387
  store i32 1, i32* @bsd_reversed, align 4
  br label %396

; <label>:391:                                    ; preds = %384, %384
  %392 = load i32, i32* @bsd_reversed, align 4
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %396, label %394

; <label>:394:                                    ; preds = %391
  store i32 0, i32* @bsd_reversed, align 4
  %395 = add i64 %377, 2
  br label %396

; <label>:396:                                    ; preds = %394, %391, %390
  %397 = phi i64 [ %381, %390 ], [ %395, %394 ], [ %381, %391 ]
  %398 = getelementptr inbounds i8, i8* %203, i64 %397
  br i1 %216, label %399, label %433

; <label>:399:                                    ; preds = %396
  %400 = sub i64 %204, %397
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %425, label %402

; <label>:402:                                    ; preds = %399
  %403 = add i64 %400, -1
  br label %404

; <label>:404:                                    ; preds = %418, %402
  %405 = phi i64 [ 0, %402 ], [ %422, %418 ]
  %406 = phi i8* [ %398, %402 ], [ %421, %418 ]
  %407 = getelementptr inbounds i8, i8* %398, i64 %405
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  switch i32 %409, label %418 [
    i32 92, label %410
    i32 0, label %471
  ]

; <label>:410:                                    ; preds = %404
  %411 = icmp eq i64 %405, %403
  br i1 %411, label %471, label %412

; <label>:412:                                    ; preds = %410
  %413 = add i64 %405, 1
  %414 = getelementptr inbounds i8, i8* %398, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  switch i32 %416, label %471 [
    i32 110, label %417
    i32 92, label %418
  ]

; <label>:417:                                    ; preds = %412
  br label %418

; <label>:418:                                    ; preds = %417, %412, %404
  %419 = phi i8 [ 10, %417 ], [ 92, %412 ], [ %408, %404 ]
  %420 = phi i64 [ %413, %417 ], [ %413, %412 ], [ %405, %404 ]
  store i8 %419, i8* %406, align 1
  %421 = getelementptr inbounds i8, i8* %406, i64 1
  %422 = add i64 %420, 1
  %423 = icmp ult i64 %422, %400
  br i1 %423, label %404, label %424

; <label>:424:                                    ; preds = %418
  br label %425

; <label>:425:                                    ; preds = %424, %399
  %426 = phi i8* [ %398, %399 ], [ %421, %424 ]
  %427 = getelementptr inbounds i8, i8* %398, i64 %400
  %428 = icmp ult i8* %426, %427
  br i1 %428, label %429, label %430

; <label>:429:                                    ; preds = %425
  store i8 0, i8* %426, align 1
  br label %430

; <label>:430:                                    ; preds = %429, %425
  %431 = icmp eq i8* %398, null
  br i1 %431, label %472, label %433

; <label>:432:                                    ; preds = %333
  br label %433

; <label>:433:                                    ; preds = %432, %430, %396
  %434 = phi i8* [ %217, %430 ], [ %217, %396 ], [ %336, %432 ]
  %435 = phi i8* [ %398, %430 ], [ %398, %396 ], [ %277, %432 ]
  br i1 %171, label %436, label %443

; <label>:436:                                    ; preds = %433
  %437 = load i8, i8* %435, align 1
  %438 = icmp eq i8 %437, 45
  br i1 %438, label %439, label %443

; <label>:439:                                    ; preds = %436
  %440 = getelementptr inbounds i8, i8* %435, i64 1
  %441 = load i8, i8* %440, align 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %472, label %443

; <label>:443:                                    ; preds = %439, %436, %433
  %444 = load i64, i64* @digest_hex_bytes, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %464, label %446

; <label>:446:                                    ; preds = %443
  %447 = tail call i16** @__ctype_b_loc() #1
  %448 = load i16*, i16** %447, align 8
  br label %449

; <label>:449:                                    ; preds = %458, %446
  %450 = phi i32 [ 0, %446 ], [ %460, %458 ]
  %451 = phi i8* [ %434, %446 ], [ %459, %458 ]
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i64
  %454 = getelementptr inbounds i16, i16* %448, i64 %453
  %455 = load i16, i16* %454, align 2
  %456 = and i16 %455, 4096
  %457 = icmp eq i16 %456, 0
  br i1 %457, label %468, label %458

; <label>:458:                                    ; preds = %449
  %459 = getelementptr inbounds i8, i8* %451, i64 1
  %460 = add i32 %450, 1
  %461 = zext i32 %460 to i64
  %462 = icmp ult i64 %461, %444
  br i1 %462, label %449, label %463

; <label>:463:                                    ; preds = %458
  br label %464

; <label>:464:                                    ; preds = %463, %443
  %465 = phi i8* [ %434, %443 ], [ %459, %463 ]
  %466 = load i8, i8* %465, align 1
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %480, label %472

; <label>:468:                                    ; preds = %449
  br label %472

; <label>:469:                                    ; preds = %326
  br label %472

; <label>:470:                                    ; preds = %300, %306, %308
  br label %472

; <label>:471:                                    ; preds = %404, %410, %412
  br label %472

; <label>:472:                                    ; preds = %471, %470, %469, %468, %464, %439, %430, %387, %375, %369, %348, %339, %289, %275, %265, %261, %228
  %473 = add i64 %182, 1
  %474 = load i1, i1* @warn, align 1
  br i1 %474, label %475, label %478

; <label>:475:                                    ; preds = %472
  %476 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.71, i64 0, i64 0), i32 5) #12
  %477 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %476, i8* %477, i64 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #12
  br label %478

; <label>:478:                                    ; preds = %475, %472
  %479 = add i64 %181, 1
  br label %589

; <label>:480:                                    ; preds = %464
  call void @llvm.lifetime.start(i64 1, i8* nonnull %7) #12
  %481 = load i1, i1* @status_only, align 1
  br i1 %481, label %485, label %482

; <label>:482:                                    ; preds = %480
  %483 = call i8* @strchr(i8* %435, i32 10) #12
  %484 = icmp ne i8* %483, null
  br label %485

; <label>:485:                                    ; preds = %482, %480
  %486 = phi i1 [ false, %480 ], [ %484, %482 ]
  %487 = call fastcc zeroext i1 @digest_file(i8* %435, i8* %139, i8* nonnull %7) #12
  br i1 %487, label %506, label %488

; <label>:488:                                    ; preds = %485
  %489 = add i64 %179, 1
  %490 = load i1, i1* @status_only, align 1
  br i1 %490, label %585, label %491

; <label>:491:                                    ; preds = %488
  br i1 %486, label %492, label %503

; <label>:492:                                    ; preds = %491
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %494 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %493, i64 0, i32 5
  %495 = load i8*, i8** %494, align 8
  %496 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %493, i64 0, i32 6
  %497 = load i8*, i8** %496, align 8
  %498 = icmp ult i8* %495, %497
  br i1 %498, label %501, label %499

; <label>:499:                                    ; preds = %492
  %500 = call i32 @__overflow(%struct._IO_FILE* %493, i32 92) #12
  br label %503

; <label>:501:                                    ; preds = %492
  %502 = getelementptr inbounds i8, i8* %495, i64 1
  store i8* %502, i8** %494, align 8
  store i8 92, i8* %495, align 1
  br label %503

; <label>:503:                                    ; preds = %501, %499, %491
  call fastcc void @print_filename(i8* %435, i1 zeroext %486) #12
  %504 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i64 0, i64 0), i32 5) #12
  %505 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8* %504) #12
  br label %585

; <label>:506:                                    ; preds = %485
  %507 = load i1, i1* @ignore_missing, align 1
  %508 = xor i1 %507, true
  %509 = load i8, i8* %7, align 1
  %510 = icmp eq i8 %509, 0
  %511 = or i1 %510, %508
  br i1 %511, label %512, label %585

; <label>:512:                                    ; preds = %506
  %513 = load i64, i64* @digest_hex_bytes, align 8
  %514 = lshr i64 %513, 1
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %554, label %516

; <label>:516:                                    ; preds = %512
  %517 = tail call i32** @__ctype_tolower_loc() #1
  %518 = load i32*, i32** %517, align 8
  br label %519

; <label>:519:                                    ; preds = %549, %516
  %520 = phi i64 [ 0, %516 ], [ %550, %549 ]
  %521 = shl i64 %520, 1
  %522 = getelementptr inbounds i8, i8* %434, i64 %521
  %523 = load i8, i8* %522, align 1
  %524 = zext i8 %523 to i64
  %525 = getelementptr inbounds i32, i32* %518, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = getelementptr inbounds i8, i8* %139, i64 %520
  %528 = load i8, i8* %527, align 1
  %529 = zext i8 %528 to i32
  %530 = lshr i32 %529, 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %531
  %533 = load i8, i8* %532, align 1
  %534 = sext i8 %533 to i32
  %535 = icmp eq i32 %526, %534
  br i1 %535, label %536, label %552

; <label>:536:                                    ; preds = %519
  %537 = or i64 %521, 1
  %538 = getelementptr inbounds i8, i8* %434, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i64
  %541 = getelementptr inbounds i32, i32* %518, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = and i32 %529, 15
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %544
  %546 = load i8, i8* %545, align 1
  %547 = sext i8 %546 to i32
  %548 = icmp eq i32 %542, %547
  br i1 %548, label %549, label %552

; <label>:549:                                    ; preds = %536
  %550 = add nuw nsw i64 %520, 1
  %551 = icmp ult i64 %550, %514
  br i1 %551, label %519, label %552

; <label>:552:                                    ; preds = %519, %536, %549
  %553 = phi i64 [ %550, %549 ], [ %520, %519 ], [ %520, %536 ]
  br label %554

; <label>:554:                                    ; preds = %552, %512
  %555 = phi i64 [ 0, %512 ], [ %553, %552 ]
  %556 = icmp ne i64 %555, %514
  %557 = add i64 %180, 1
  %558 = select i1 %556, i8 %177, i8 1
  %559 = select i1 %556, i64 %557, i64 %180
  %560 = load i1, i1* @status_only, align 1
  br i1 %560, label %585, label %561

; <label>:561:                                    ; preds = %554
  br i1 %556, label %564, label %562

; <label>:562:                                    ; preds = %561
  %563 = load i1, i1* @quiet, align 1
  br i1 %563, label %585, label %564

; <label>:564:                                    ; preds = %562, %561
  br i1 %486, label %565, label %576

; <label>:565:                                    ; preds = %564
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %567 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %566, i64 0, i32 5
  %568 = load i8*, i8** %567, align 8
  %569 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %566, i64 0, i32 6
  %570 = load i8*, i8** %569, align 8
  %571 = icmp ult i8* %568, %570
  br i1 %571, label %574, label %572

; <label>:572:                                    ; preds = %565
  %573 = call i32 @__overflow(%struct._IO_FILE* %566, i32 92) #12
  br label %576

; <label>:574:                                    ; preds = %565
  %575 = getelementptr inbounds i8, i8* %568, i64 1
  store i8* %575, i8** %567, align 8
  store i8 92, i8* %568, align 1
  br label %576

; <label>:576:                                    ; preds = %574, %572, %564
  call fastcc void @print_filename(i8* %435, i1 zeroext %486) #12
  br i1 %556, label %577, label %580

; <label>:577:                                    ; preds = %576
  %578 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i32 5) #12
  %579 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8* %578) #12
  br label %585

; <label>:580:                                    ; preds = %576
  %581 = load i1, i1* @quiet, align 1
  br i1 %581, label %585, label %582

; <label>:582:                                    ; preds = %580
  %583 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i32 5) #12
  %584 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8* %583) #12
  br label %585

; <label>:585:                                    ; preds = %582, %580, %577, %562, %554, %506, %503, %488
  %586 = phi i8 [ %177, %488 ], [ %177, %503 ], [ %177, %506 ], [ %177, %577 ], [ 1, %582 ], [ 1, %580 ], [ %558, %554 ], [ 1, %562 ]
  %587 = phi i64 [ %489, %488 ], [ %489, %503 ], [ %179, %506 ], [ %179, %577 ], [ %179, %582 ], [ %179, %580 ], [ %179, %554 ], [ %179, %562 ]
  %588 = phi i64 [ %180, %488 ], [ %180, %503 ], [ %180, %506 ], [ %557, %577 ], [ %180, %582 ], [ %180, %580 ], [ %559, %554 ], [ %180, %562 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %7) #12
  br label %589

; <label>:589:                                    ; preds = %585, %478, %191
  %590 = phi i8 [ %586, %585 ], [ %177, %478 ], [ %177, %191 ]
  %591 = phi i8 [ 1, %585 ], [ %178, %478 ], [ %178, %191 ]
  %592 = phi i64 [ %587, %585 ], [ %179, %478 ], [ %179, %191 ]
  %593 = phi i64 [ %588, %585 ], [ %180, %478 ], [ %180, %191 ]
  %594 = phi i64 [ %181, %585 ], [ %479, %478 ], [ %181, %191 ]
  %595 = phi i64 [ %182, %585 ], [ %473, %478 ], [ %182, %191 ]
  %596 = load i32, i32* %174, align 8
  %597 = and i32 %596, 48
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %175, label %599

; <label>:599:                                    ; preds = %589, %188
  %600 = phi i64 [ %595, %589 ], [ %182, %188 ]
  %601 = phi i64 [ %594, %589 ], [ %181, %188 ]
  %602 = phi i64 [ %593, %589 ], [ %180, %188 ]
  %603 = phi i64 [ %592, %589 ], [ %179, %188 ]
  %604 = phi i8 [ %591, %589 ], [ %178, %188 ]
  %605 = phi i8 [ %590, %589 ], [ %177, %188 ]
  %606 = load i8*, i8** %5, align 8
  call void @free(i8* %606) #12
  %607 = load i32, i32* %174, align 8
  %608 = and i32 %607, 32
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %613, label %610

; <label>:610:                                    ; preds = %599
  %611 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i32 5) #12
  %612 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %611, i8* %612) #12
  br label %662

; <label>:613:                                    ; preds = %599
  br i1 %171, label %621, label %614

; <label>:614:                                    ; preds = %613
  %615 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %172) #12
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %621, label %617

; <label>:617:                                    ; preds = %614
  %618 = tail call i32* @__errno_location() #1
  %619 = load i32, i32* %618, align 4
  %620 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %619, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i8* %620) #12
  br label %662

; <label>:621:                                    ; preds = %614, %613
  %622 = and i8 %604, 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %624, label %627

; <label>:624:                                    ; preds = %621
  %625 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i64 0, i64 0), i32 5) #12
  %626 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %625, i8* %626, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #12
  br label %662

; <label>:627:                                    ; preds = %621
  %628 = load i1, i1* @status_only, align 1
  br i1 %628, label %629, label %631

; <label>:629:                                    ; preds = %627
  %630 = and i8 %605, 1
  br label %651

; <label>:631:                                    ; preds = %627
  %632 = icmp eq i64 %600, 0
  br i1 %632, label %635, label %633

; <label>:633:                                    ; preds = %631
  %634 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.79, i64 0, i64 0), i64 %600, i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %634, i64 %600) #12
  br label %635

; <label>:635:                                    ; preds = %633, %631
  %636 = icmp eq i64 %603, 0
  br i1 %636, label %639, label %637

; <label>:637:                                    ; preds = %635
  %638 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i64 0, i64 0), i64 %603, i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %638, i64 %603) #12
  br label %639

; <label>:639:                                    ; preds = %637, %635
  %640 = icmp eq i64 %602, 0
  br i1 %640, label %643, label %641

; <label>:641:                                    ; preds = %639
  %642 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.83, i64 0, i64 0), i64 %602, i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %642, i64 %602) #12
  br label %643

; <label>:643:                                    ; preds = %641, %639
  %644 = load i1, i1* @ignore_missing, align 1
  %645 = and i8 %605, 1
  %646 = icmp eq i8 %645, 0
  %647 = and i1 %646, %644
  br i1 %647, label %648, label %651

; <label>:648:                                    ; preds = %643
  %649 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i64 0, i64 0), i32 5) #12
  %650 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %649, i8* %650) #12
  br label %662

; <label>:651:                                    ; preds = %643, %629
  %652 = phi i8 [ %630, %629 ], [ %645, %643 ]
  %653 = icmp ne i8 %652, 0
  %654 = or i64 %603, %602
  %655 = icmp eq i64 %654, 0
  %656 = and i1 %655, %653
  br i1 %656, label %657, label %662

; <label>:657:                                    ; preds = %651
  %658 = load i1, i1* @strict, align 1
  %659 = icmp eq i64 %601, 0
  %660 = xor i1 %658, true
  %661 = or i1 %659, %660
  br label %662

; <label>:662:                                    ; preds = %166, %610, %617, %624, %648, %651, %657
  %663 = phi i1 [ false, %610 ], [ false, %617 ], [ false, %166 ], [ false, %651 ], [ %661, %657 ], [ false, %624 ], [ false, %648 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %141) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %140) #12
  call void @llvm.lifetime.end(i64 72, i8* nonnull %134) #12
  %664 = zext i1 %663 to i8
  %665 = and i8 %664, %151
  br label %768

; <label>:666:                                    ; preds = %149
  call void @llvm.lifetime.start(i64 1, i8* nonnull %9) #12
  %667 = call fastcc zeroext i1 @digest_file(i8* %152, i8* %15, i8* nonnull %9)
  br i1 %667, label %668, label %766

; <label>:668:                                    ; preds = %666
  %669 = call i8* @strchr(i8* %152, i32 92) #12
  %670 = icmp eq i8* %669, null
  br i1 %670, label %671, label %674

; <label>:671:                                    ; preds = %668
  %672 = call i8* @strchr(i8* %152, i32 10) #12
  %673 = icmp ne i8* %672, null
  br label %674

; <label>:674:                                    ; preds = %668, %671
  %675 = phi i1 [ true, %668 ], [ %673, %671 ]
  br i1 %78, label %676, label %704

; <label>:676:                                    ; preds = %674
  br i1 %675, label %677, label %688

; <label>:677:                                    ; preds = %676
  %678 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %679 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %678, i64 0, i32 5
  %680 = load i8*, i8** %679, align 8
  %681 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %678, i64 0, i32 6
  %682 = load i8*, i8** %681, align 8
  %683 = icmp ult i8* %680, %682
  br i1 %683, label %686, label %684

; <label>:684:                                    ; preds = %677
  %685 = call i32 @__overflow(%struct._IO_FILE* %678, i32 92) #12
  br label %688

; <label>:686:                                    ; preds = %677
  %687 = getelementptr inbounds i8, i8* %680, i64 1
  store i8* %687, i8** %679, align 8
  store i8 92, i8* %680, align 1
  br label %688

; <label>:688:                                    ; preds = %686, %684, %676
  %689 = load i32, i32* @b2_algorithm, align 4
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds [2 x i8*], [2 x i8*]* @algorithm_out_string, i64 0, i64 %690
  %692 = load i8*, i8** %691, align 8
  %693 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %694 = call i32 @fputs_unlocked(i8* %692, %struct._IO_FILE* %693) #12
  %695 = load i64, i64* @b2_length, align 8
  %696 = icmp ult i64 %695, 512
  br i1 %696, label %697, label %699

; <label>:697:                                    ; preds = %688
  %698 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64 %695) #12
  br label %699

; <label>:699:                                    ; preds = %697, %688
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %701 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* %700) #12
  call fastcc void @print_filename(i8* %152, i1 zeroext %675)
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %703 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* %702) #12
  br label %716

; <label>:704:                                    ; preds = %674
  br i1 %675, label %705, label %716

; <label>:705:                                    ; preds = %704
  %706 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %707 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %706, i64 0, i32 5
  %708 = load i8*, i8** %707, align 8
  %709 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %706, i64 0, i32 6
  %710 = load i8*, i8** %709, align 8
  %711 = icmp ult i8* %708, %710
  br i1 %711, label %714, label %712

; <label>:712:                                    ; preds = %705
  %713 = call i32 @__overflow(%struct._IO_FILE* %706, i32 92) #12
  br label %716

; <label>:714:                                    ; preds = %705
  %715 = getelementptr inbounds i8, i8* %708, i64 1
  store i8* %715, i8** %707, align 8
  store i8 92, i8* %708, align 1
  br label %716

; <label>:716:                                    ; preds = %704, %699, %712, %714
  %717 = load i64, i64* @digest_hex_bytes, align 8
  %718 = icmp ugt i64 %717, 1
  br i1 %718, label %719, label %731

; <label>:719:                                    ; preds = %716
  br label %720

; <label>:720:                                    ; preds = %719, %720
  %721 = phi i64 [ %726, %720 ], [ 0, %719 ]
  %722 = getelementptr inbounds i8, i8* %15, i64 %721
  %723 = load i8, i8* %722, align 1
  %724 = zext i8 %723 to i32
  %725 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %724) #12
  %726 = add i64 %721, 1
  %727 = load i64, i64* @digest_hex_bytes, align 8
  %728 = lshr i64 %727, 1
  %729 = icmp ult i64 %726, %728
  br i1 %729, label %720, label %730

; <label>:730:                                    ; preds = %720
  br label %731

; <label>:731:                                    ; preds = %730, %716
  br i1 %78, label %755, label %732

; <label>:732:                                    ; preds = %731
  %733 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %734 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %733, i64 0, i32 5
  %735 = load i8*, i8** %734, align 8
  %736 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %733, i64 0, i32 6
  %737 = load i8*, i8** %736, align 8
  %738 = icmp ult i8* %735, %737
  br i1 %738, label %741, label %739

; <label>:739:                                    ; preds = %732
  %740 = call i32 @__overflow(%struct._IO_FILE* %733, i32 32) #12
  br label %743

; <label>:741:                                    ; preds = %732
  %742 = getelementptr inbounds i8, i8* %735, i64 1
  store i8* %742, i8** %734, align 8
  store i8 32, i8* %735, align 1
  br label %743

; <label>:743:                                    ; preds = %739, %741
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %745 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %744, i64 0, i32 5
  %746 = load i8*, i8** %745, align 8
  %747 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %744, i64 0, i32 6
  %748 = load i8*, i8** %747, align 8
  %749 = icmp ult i8* %746, %748
  br i1 %749, label %752, label %750

; <label>:750:                                    ; preds = %743
  %751 = call i32 @__overflow(%struct._IO_FILE* %744, i32 %143) #12
  br label %754

; <label>:752:                                    ; preds = %743
  %753 = getelementptr inbounds i8, i8* %746, i64 1
  store i8* %753, i8** %745, align 8
  store i8 %144, i8* %746, align 1
  br label %754

; <label>:754:                                    ; preds = %750, %752
  call fastcc void @print_filename(i8* %152, i1 zeroext %675)
  br label %755

; <label>:755:                                    ; preds = %754, %731
  %756 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %757 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %756, i64 0, i32 5
  %758 = load i8*, i8** %757, align 8
  %759 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %756, i64 0, i32 6
  %760 = load i8*, i8** %759, align 8
  %761 = icmp ult i8* %758, %760
  br i1 %761, label %764, label %762

; <label>:762:                                    ; preds = %755
  %763 = call i32 @__overflow(%struct._IO_FILE* %756, i32 10) #12
  br label %766

; <label>:764:                                    ; preds = %755
  %765 = getelementptr inbounds i8, i8* %758, i64 1
  store i8* %765, i8** %757, align 8
  store i8 10, i8* %758, align 1
  br label %766

; <label>:766:                                    ; preds = %764, %762, %666
  %767 = phi i8 [ 0, %666 ], [ %151, %762 ], [ %151, %764 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %9) #12
  br label %768

; <label>:768:                                    ; preds = %766, %662
  %769 = phi i8 [ %665, %662 ], [ %767, %766 ]
  %770 = getelementptr inbounds i8*, i8** %150, i64 1
  %771 = icmp ult i8** %770, %129
  br i1 %771, label %149, label %145

; <label>:772:                                    ; preds = %146
  %773 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %774 = call i32 @rpl_fclose(%struct._IO_FILE* %773) #12
  %775 = icmp eq i32 %774, -1
  br i1 %775, label %776, label %780

; <label>:776:                                    ; preds = %772
  %777 = tail call i32* @__errno_location() #1
  %778 = load i32, i32* %777, align 4
  %779 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %778, i8* %779) #12
  unreachable

; <label>:780:                                    ; preds = %772, %146
  %781 = and i8 %147, 1
  %782 = xor i8 %781, 1
  %783 = zext i8 %782 to i32
  call void @llvm.lifetime.end(i64 72, i8* nonnull %10) #12
  ret i32 %783
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

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
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #12
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
  br label %49

; <label>:23:                                     ; preds = %16, %19
  %24 = load i32, i32* %18, align 4
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i8* %25) #12
  br label %49

; <label>:26:                                     ; preds = %13, %11
  %27 = phi i1 [ true, %11 ], [ false, %13 ]
  %28 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @fadvise(%struct._IO_FILE* %28, i32 2) #12
  %29 = load i64, i64* @b2_length, align 8
  %30 = lshr i64 %29, 3
  %31 = tail call i32 @blake2b_stream(%struct._IO_FILE* %28, i8* %1, i64 %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

; <label>:33:                                     ; preds = %26
  %34 = tail call i32* @__errno_location() #1
  %35 = load i32, i32* %34, align 4
  %36 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i8* %36) #12
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %38 = icmp eq %struct._IO_FILE* %28, %37
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %33
  %40 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #12
  br label %49

; <label>:41:                                     ; preds = %26
  br i1 %27, label %49, label %42

; <label>:42:                                     ; preds = %41
  %43 = tail call i32 @rpl_fclose(%struct._IO_FILE* %28) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %42
  %46 = tail call i32* @__errno_location() #1
  %47 = load i32, i32* %46, align 4
  %48 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i8* %48) #12
  br label %49

; <label>:49:                                     ; preds = %41, %42, %39, %33, %45, %23, %22
  %50 = phi i1 [ false, %45 ], [ true, %22 ], [ false, %23 ], [ false, %33 ], [ false, %39 ], [ true, %42 ], [ true, %41 ]
  ret i1 %50
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
  %9 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %8) #12
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
  %16 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), %struct._IO_FILE* %15) #12
  br label %32

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), %struct._IO_FILE* %18) #12
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
  %29 = tail call i32 @__overflow(%struct._IO_FILE* %21, i32 %28) #12
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

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_init_param(%struct.blake2b_state__* nocapture, %struct.blake2b_param__* nocapture readonly) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.blake2b_param__, %struct.blake2b_param__* %1, i64 0, i32 0
  %4 = bitcast %struct.blake2b_state__* %0 to i8*
  %5 = getelementptr %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1
  %6 = bitcast [2 x i64]* %5 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 184, i32 8, i1 false) #12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([8 x i64]* @blake2b_IV to i8*), i64 64, i32 8, i1 false) #12
  br label %7

; <label>:7:                                      ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %51, %7 ]
  %9 = shl i64 %8, 3
  %10 = getelementptr inbounds i8, i8* %3, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 8
  %17 = or i64 %16, %12
  %18 = getelementptr inbounds i8, i8* %10, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 16
  %22 = or i64 %17, %21
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 24
  %27 = or i64 %22, %26
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 32
  %32 = or i64 %27, %31
  %33 = getelementptr inbounds i8, i8* %10, i64 5
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 40
  %37 = or i64 %32, %36
  %38 = getelementptr inbounds i8, i8* %10, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 48
  %42 = or i64 %37, %41
  %43 = getelementptr inbounds i8, i8* %10, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = shl nuw i64 %45, 56
  %47 = or i64 %42, %46
  %48 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 %8
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %47, %49
  store i64 %50, i64* %48, align 8
  %51 = add nuw nsw i64 %8, 1
  %52 = icmp eq i64 %51, 8
  br i1 %52, label %53, label %7

; <label>:53:                                     ; preds = %7
  %54 = load i8, i8* %3, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 5
  store i64 %55, i64* %56, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_init(%struct.blake2b_state__* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.blake2b_param__], align 16
  %4 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %3, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %4) #12
  %5 = add i64 %1, -1
  %6 = icmp ugt i64 %5, 63
  br i1 %6, label %66, label %7

; <label>:7:                                      ; preds = %2
  %8 = trunc i64 %1 to i8
  store i8 %8, i8* %4, align 16
  %9 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %3, i64 0, i64 0, i32 1
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %3, i64 0, i64 0, i32 2
  store i8 1, i8* %10, align 2
  %11 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %3, i64 0, i64 0, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %3, i64 0, i64 0, i32 4
  %13 = bitcast %struct.blake2b_state__* %0 to i8*
  %14 = getelementptr %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1
  %15 = bitcast [2 x i64]* %14 to i8*
  %16 = bitcast i32* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 60, i32 4, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 184, i32 8, i1 false) #12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([8 x i64]* @blake2b_IV to i8*), i64 64, i32 8, i1 false) #12
  br label %17

; <label>:17:                                     ; preds = %17, %7
  %18 = phi i64 [ 0, %7 ], [ %61, %17 ]
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds i8, i8* %4, i64 %19
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 8
  %27 = or i64 %26, %22
  %28 = getelementptr inbounds i8, i8* %20, i64 2
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 16
  %32 = or i64 %27, %31
  %33 = getelementptr inbounds i8, i8* %20, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 24
  %37 = or i64 %32, %36
  %38 = getelementptr inbounds i8, i8* %20, i64 4
  %39 = load i8, i8* %38, align 4
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 32
  %42 = or i64 %37, %41
  %43 = getelementptr inbounds i8, i8* %20, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 40
  %47 = or i64 %42, %46
  %48 = getelementptr inbounds i8, i8* %20, i64 6
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 48
  %52 = or i64 %47, %51
  %53 = getelementptr inbounds i8, i8* %20, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  %56 = shl nuw i64 %55, 56
  %57 = or i64 %52, %56
  %58 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 %18
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %57, %59
  store i64 %60, i64* %58, align 8
  %61 = add nuw nsw i64 %18, 1
  %62 = icmp eq i64 %61, 8
  br i1 %62, label %63, label %17

; <label>:63:                                     ; preds = %17
  %64 = and i64 %1, 255
  %65 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 5
  store i64 %64, i64* %65, align 8
  br label %66

; <label>:66:                                     ; preds = %2, %63
  %67 = phi i32 [ 0, %63 ], [ -1, %2 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %4) #12
  ret i32 %67
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_init_key(%struct.blake2b_state__* nocapture, i64, i8* readonly, i64) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.blake2b_param__], align 16
  %6 = alloca [128 x i8], align 16
  %7 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %5, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %7) #12
  %8 = add i64 %1, -1
  %9 = icmp ugt i64 %8, 63
  br i1 %9, label %83, label %10

; <label>:10:                                     ; preds = %4
  %11 = icmp eq i8* %2, null
  %12 = add i64 %3, -1
  %13 = icmp ugt i64 %12, 63
  %14 = or i1 %11, %13
  br i1 %14, label %83, label %15

; <label>:15:                                     ; preds = %10
  %16 = trunc i64 %1 to i8
  store i8 %16, i8* %7, align 16
  %17 = trunc i64 %3 to i8
  %18 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %5, i64 0, i64 0, i32 1
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %5, i64 0, i64 0, i32 2
  store i8 1, i8* %19, align 2
  %20 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %5, i64 0, i64 0, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %5, i64 0, i64 0, i32 4
  %22 = bitcast %struct.blake2b_state__* %0 to i8*
  %23 = getelementptr %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1
  %24 = bitcast [2 x i64]* %23 to i8*
  %25 = bitcast i32* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 60, i32 4, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 184, i32 8, i1 false) #12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast ([8 x i64]* @blake2b_IV to i8*), i64 64, i32 8, i1 false) #12
  br label %26

; <label>:26:                                     ; preds = %26, %15
  %27 = phi i64 [ 0, %15 ], [ %70, %26 ]
  %28 = shl i64 %27, 3
  %29 = getelementptr inbounds i8, i8* %7, i64 %28
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 8
  %36 = or i64 %35, %31
  %37 = getelementptr inbounds i8, i8* %29, i64 2
  %38 = load i8, i8* %37, align 2
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 16
  %41 = or i64 %36, %40
  %42 = getelementptr inbounds i8, i8* %29, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 24
  %46 = or i64 %41, %45
  %47 = getelementptr inbounds i8, i8* %29, i64 4
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 32
  %51 = or i64 %46, %50
  %52 = getelementptr inbounds i8, i8* %29, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 40
  %56 = or i64 %51, %55
  %57 = getelementptr inbounds i8, i8* %29, i64 6
  %58 = load i8, i8* %57, align 2
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 48
  %61 = or i64 %56, %60
  %62 = getelementptr inbounds i8, i8* %29, i64 7
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = shl nuw i64 %64, 56
  %66 = or i64 %61, %65
  %67 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 %27
  %68 = load i64, i64* %67, align 8
  %69 = xor i64 %66, %68
  store i64 %69, i64* %67, align 8
  %70 = add nuw nsw i64 %27, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %26

; <label>:72:                                     ; preds = %26
  %73 = and i64 %1, 255
  %74 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 5
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* nonnull %75) #12
  %76 = icmp ugt i64 %3, 127
  %77 = sub i64 128, %3
  %78 = select i1 %76, i64 0, i64 %77
  %79 = getelementptr [128 x i8], [128 x i8]* %6, i64 0, i64 %3
  call void @llvm.memset.p0i8.i64(i8* %79, i8 0, i64 %78, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %75, i8* %2, i64 %3, i32 1, i1 false)
  %80 = call i32 @blake2b_update(%struct.blake2b_state__* nonnull %0, i8* nonnull %75, i64 128)
  %81 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @secure_zero_memory.memset_v, align 8
  %82 = call i8* %81(i8* nonnull %75, i32 0, i64 128) #12
  call void @llvm.lifetime.end(i64 128, i8* nonnull %75) #12
  br label %83

; <label>:83:                                     ; preds = %10, %4, %72
  %84 = phi i32 [ 0, %72 ], [ -1, %4 ], [ -1, %10 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %7) #12
  ret i32 %84
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_update(%struct.blake2b_state__* nocapture, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %53, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = sub i64 128, %7
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %10, label %46

; <label>:10:                                     ; preds = %5
  store i64 0, i64* %6, align 8
  %11 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 3, i64 0
  %12 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 3, i64 %7
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %1, i64 %8, i32 1, i1 false)
  %13 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 128
  store i64 %15, i64* %13, align 8
  %16 = icmp ugt i64 %14, -129
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %17, %19
  store i64 %20, i64* %18, align 8
  tail call fastcc void @blake2b_compress(%struct.blake2b_state__* nonnull %0, i8* %11)
  %21 = getelementptr inbounds i8, i8* %1, i64 %8
  %22 = sub i64 %2, %8
  %23 = icmp ugt i64 %22, 128
  br i1 %23, label %24, label %46

; <label>:24:                                     ; preds = %10
  %25 = add i64 %7, %2
  %26 = add i64 %25, -257
  %27 = and i64 %26, -128
  %28 = add i64 %27, 256
  %29 = sub i64 %28, %7
  %30 = add i64 %25, -256
  br label %31

; <label>:31:                                     ; preds = %24, %31
  %32 = phi i64 [ %41, %31 ], [ %22, %24 ]
  %33 = phi i8* [ %40, %31 ], [ %21, %24 ]
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %34, 128
  store i64 %35, i64* %13, align 8
  %36 = icmp ugt i64 %34, -129
  %37 = zext i1 %36 to i64
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %18, align 8
  tail call fastcc void @blake2b_compress(%struct.blake2b_state__* nonnull %0, i8* %33)
  %40 = getelementptr inbounds i8, i8* %33, i64 128
  %41 = add i64 %32, -128
  %42 = icmp ugt i64 %41, 128
  br i1 %42, label %31, label %43

; <label>:43:                                     ; preds = %31
  %44 = getelementptr i8, i8* %1, i64 %29
  %45 = sub i64 %30, %27
  br label %46

; <label>:46:                                     ; preds = %43, %10, %5
  %47 = phi i8* [ %1, %5 ], [ %21, %10 ], [ %44, %43 ]
  %48 = phi i64 [ %2, %5 ], [ %22, %10 ], [ %45, %43 ]
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 3, i64 %49
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %47, i64 %48, i32 1, i1 false)
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %6, align 8
  br label %53

; <label>:53:                                     ; preds = %3, %46
  ret i32 0
}

; Function Attrs: alwaysinline nounwind sspstrong uwtable
declare i8* @memset(i8* nonnull, i32, i64) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @blake2b_compress(%struct.blake2b_state__* nocapture, i8* nocapture readonly) unnamed_addr #6 {
  %3 = alloca [16 x i64], align 16
  %4 = alloca [16 x i64], align 16
  %5 = bitcast [16 x i64]* %4 to i8*
  %6 = bitcast [16 x i64]* %3 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %6) #12
  call void @llvm.lifetime.start(i64 128, i8* nonnull %5) #12
  br label %7

; <label>:7:                                      ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %46, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %47, %7 ]
  %10 = shl i64 %9, 3
  %11 = getelementptr inbounds i8, i8* %1, i64 %10
  %12 = bitcast i8* %11 to <16 x i8>*
  %13 = load <16 x i8>, <16 x i8>* %12, align 1
  %14 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 0, i32 8>
  %15 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 1, i32 9>
  %16 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 2, i32 10>
  %17 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 3, i32 11>
  %18 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 4, i32 12>
  %19 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 5, i32 13>
  %20 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 6, i32 14>
  %21 = shufflevector <16 x i8> %13, <16 x i8> undef, <2 x i32> <i32 7, i32 15>
  %22 = zext <2 x i8> %14 to <2 x i64>
  %23 = zext <2 x i8> %15 to <2 x i64>
  %24 = shl nuw nsw <2 x i64> %23, <i64 8, i64 8>
  %25 = or <2 x i64> %24, %22
  %26 = zext <2 x i8> %16 to <2 x i64>
  %27 = shl nuw nsw <2 x i64> %26, <i64 16, i64 16>
  %28 = or <2 x i64> %25, %27
  %29 = zext <2 x i8> %17 to <2 x i64>
  %30 = shl nuw nsw <2 x i64> %29, <i64 24, i64 24>
  %31 = or <2 x i64> %28, %30
  %32 = zext <2 x i8> %18 to <2 x i64>
  %33 = shl nuw nsw <2 x i64> %32, <i64 32, i64 32>
  %34 = or <2 x i64> %31, %33
  %35 = zext <2 x i8> %19 to <2 x i64>
  %36 = shl nuw nsw <2 x i64> %35, <i64 40, i64 40>
  %37 = or <2 x i64> %34, %36
  %38 = zext <2 x i8> %20 to <2 x i64>
  %39 = shl nuw nsw <2 x i64> %38, <i64 48, i64 48>
  %40 = or <2 x i64> %37, %39
  %41 = zext <2 x i8> %21 to <2 x i64>
  %42 = shl nuw <2 x i64> %41, <i64 56, i64 56>
  %43 = or <2 x i64> %40, %42
  %44 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 %8
  %45 = bitcast i64* %44 to <2 x i64>*
  store <2 x i64> %43, <2 x i64>* %45, align 16
  %46 = add i64 %8, 2
  %47 = add i64 %9, 2
  %48 = icmp eq i64 %46, 16
  br i1 %48, label %49, label %7

; <label>:49:                                     ; preds = %7
  %50 = bitcast %struct.blake2b_state__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* %50, i64 64, i32 8, i1 false)
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 8
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 9
  %53 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 10
  %54 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 11
  %55 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> <i64 4354685564936845355, i64 -6534734903238641935>, <2 x i64>* %55, align 16
  %56 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1, i64 0
  %57 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 12
  %58 = bitcast i64* %56 to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %60 = xor <2 x i64> %59, <i64 5840696475078001361, i64 -7276294671716946913>
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 13
  %62 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 2, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = xor i64 %63, 2270897969802886507
  %65 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 14
  %66 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 2, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = xor i64 %67, 6620516959819538809
  %69 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 15
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %71 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 4
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 1
  %77 = bitcast [16 x i64]* %4 to <2 x i64>*
  %78 = load <2 x i64>, <2 x i64>* %77, align 16
  %79 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 5
  %80 = bitcast i64* %71 to <2 x i64>*
  %81 = load <2 x i64>, <2 x i64>* %80, align 16
  %82 = add <2 x i64> %81, %78
  %83 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 2
  %84 = load i64, i64* %83, align 16
  %85 = insertelement <2 x i64> undef, i64 %73, i32 0
  %86 = insertelement <2 x i64> %85, i64 %84, i32 1
  %87 = add <2 x i64> %82, %86
  %88 = xor <2 x i64> %60, %87
  %89 = lshr <2 x i64> %88, <i64 32, i64 32>
  %90 = shl <2 x i64> %88, <i64 32, i64 32>
  %91 = or <2 x i64> %90, %89
  %92 = add <2 x i64> %91, <i64 7640891576956012808, i64 -4942790177534073029>
  %93 = xor <2 x i64> %81, %92
  %94 = lshr <2 x i64> %93, <i64 24, i64 24>
  %95 = shl <2 x i64> %93, <i64 40, i64 40>
  %96 = or <2 x i64> %95, %94
  %97 = add <2 x i64> %96, %87
  %98 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = insertelement <2 x i64> undef, i64 %75, i32 0
  %101 = insertelement <2 x i64> %100, i64 %99, i32 1
  %102 = add <2 x i64> %97, %101
  %103 = xor <2 x i64> %91, %102
  %104 = lshr <2 x i64> %103, <i64 16, i64 16>
  %105 = shl <2 x i64> %103, <i64 48, i64 48>
  %106 = or <2 x i64> %105, %104
  %107 = extractelement <2 x i64> %96, i32 0
  %108 = add <2 x i64> %106, %92
  %109 = extractelement <2 x i64> %108, i32 0
  %110 = xor i64 %107, %109
  %111 = lshr i64 %110, 63
  %112 = shl i64 %110, 1
  %113 = or i64 %112, %111
  store i64 %113, i64* %71, align 16
  %114 = bitcast [16 x i64]* %4 to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %114, align 16
  %115 = bitcast i64* %57 to <2 x i64>*
  store <2 x i64> %106, <2 x i64>* %115, align 16
  %116 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %116, align 16
  %117 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 2
  %118 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 6
  %119 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 4
  %120 = load i64, i64* %119, align 16
  %121 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 5
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 3
  %124 = bitcast i64* %117 to <2 x i64>*
  %125 = load <2 x i64>, <2 x i64>* %124, align 16
  %126 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 7
  %127 = bitcast i64* %118 to <2 x i64>*
  %128 = load <2 x i64>, <2 x i64>* %127, align 16
  %129 = add <2 x i64> %128, %125
  %130 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 6
  %131 = load i64, i64* %130, align 16
  %132 = insertelement <2 x i64> undef, i64 %120, i32 0
  %133 = insertelement <2 x i64> %132, i64 %131, i32 1
  %134 = add <2 x i64> %129, %133
  %135 = load i64, i64* %69, align 8
  %136 = insertelement <2 x i64> undef, i64 %64, i32 0
  %137 = insertelement <2 x i64> %136, i64 %135, i32 1
  %138 = xor <2 x i64> %137, %134
  %139 = lshr <2 x i64> %138, <i64 32, i64 32>
  %140 = shl <2 x i64> %138, <i64 32, i64 32>
  %141 = or <2 x i64> %140, %139
  %142 = bitcast i64* %53 to <2 x i64>*
  %143 = load <2 x i64>, <2 x i64>* %142, align 16
  %144 = add <2 x i64> %141, %143
  %145 = xor <2 x i64> %128, %144
  %146 = lshr <2 x i64> %145, <i64 24, i64 24>
  %147 = shl <2 x i64> %145, <i64 40, i64 40>
  %148 = or <2 x i64> %147, %146
  %149 = add <2 x i64> %148, %134
  %150 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 7
  %151 = load i64, i64* %150, align 8
  %152 = insertelement <2 x i64> undef, i64 %122, i32 0
  %153 = insertelement <2 x i64> %152, i64 %151, i32 1
  %154 = add <2 x i64> %149, %153
  %155 = extractelement <2 x i64> %154, i32 0
  store i64 %155, i64* %117, align 16
  %156 = xor <2 x i64> %141, %154
  %157 = lshr <2 x i64> %156, <i64 16, i64 16>
  %158 = shl <2 x i64> %156, <i64 48, i64 48>
  %159 = or <2 x i64> %158, %157
  %160 = extractelement <2 x i64> %159, i32 0
  store i64 %160, i64* %65, align 16
  %161 = shufflevector <2 x i64> %96, <2 x i64> %148, <2 x i32> <i32 1, i32 2>
  %162 = add <2 x i64> %159, %144
  %163 = shufflevector <2 x i64> %108, <2 x i64> %162, <2 x i32> <i32 1, i32 2>
  %164 = xor <2 x i64> %161, %163
  %165 = lshr <2 x i64> %164, <i64 63, i64 63>
  %166 = shl <2 x i64> %164, <i64 1, i64 1>
  %167 = or <2 x i64> %166, %165
  %168 = extractelement <2 x i64> %154, i32 1
  store i64 %168, i64* %123, align 8
  %169 = extractelement <2 x i64> %162, i32 1
  %170 = extractelement <2 x i64> %148, i32 1
  %171 = xor i64 %170, %169
  %172 = lshr i64 %171, 63
  %173 = shl i64 %171, 1
  %174 = or i64 %173, %172
  %175 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 8
  %176 = load i64, i64* %175, align 16
  %177 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 9
  %178 = load i64, i64* %177, align 8
  %179 = bitcast [16 x i64]* %4 to <2 x i64>*
  %180 = load <2 x i64>, <2 x i64>* %179, align 16
  %181 = add <2 x i64> %167, %180
  %182 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 10
  %183 = load i64, i64* %182, align 16
  %184 = insertelement <2 x i64> undef, i64 %176, i32 0
  %185 = insertelement <2 x i64> %184, i64 %183, i32 1
  %186 = add <2 x i64> %181, %185
  %187 = load i64, i64* %57, align 16
  %188 = extractelement <2 x i64> %159, i32 1
  %189 = insertelement <2 x i64> undef, i64 %188, i32 0
  %190 = insertelement <2 x i64> %189, i64 %187, i32 1
  %191 = xor <2 x i64> %190, %186
  %192 = lshr <2 x i64> %191, <i64 32, i64 32>
  %193 = shl <2 x i64> %191, <i64 32, i64 32>
  %194 = or <2 x i64> %193, %192
  %195 = add <2 x i64> %194, %162
  %196 = xor <2 x i64> %167, %195
  %197 = lshr <2 x i64> %196, <i64 24, i64 24>
  %198 = shl <2 x i64> %196, <i64 40, i64 40>
  %199 = or <2 x i64> %198, %197
  %200 = add <2 x i64> %199, %186
  %201 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 11
  %202 = load i64, i64* %201, align 8
  %203 = insertelement <2 x i64> undef, i64 %178, i32 0
  %204 = insertelement <2 x i64> %203, i64 %202, i32 1
  %205 = add <2 x i64> %200, %204
  %206 = extractelement <2 x i64> %205, i32 0
  store i64 %206, i64* %70, align 16
  %207 = xor <2 x i64> %194, %205
  %208 = lshr <2 x i64> %207, <i64 16, i64 16>
  %209 = shl <2 x i64> %207, <i64 48, i64 48>
  %210 = or <2 x i64> %209, %208
  %211 = extractelement <2 x i64> %210, i32 0
  store i64 %211, i64* %69, align 8
  %212 = add <2 x i64> %210, %195
  %213 = extractelement <2 x i64> %212, i32 0
  store i64 %213, i64* %53, align 16
  %214 = extractelement <2 x i64> %205, i32 1
  store i64 %214, i64* %76, align 8
  %215 = extractelement <2 x i64> %212, i32 1
  store i64 %215, i64* %54, align 8
  %216 = xor <2 x i64> %199, %212
  %217 = lshr <2 x i64> %216, <i64 63, i64 63>
  %218 = shl <2 x i64> %216, <i64 1, i64 1>
  %219 = or <2 x i64> %218, %217
  %220 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %219, <2 x i64>* %220, align 8
  %221 = load i64, i64* %117, align 16
  %222 = add i64 %174, %221
  %223 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 12
  %224 = load i64, i64* %223, align 16
  %225 = add i64 %222, %224
  %226 = load i64, i64* %61, align 8
  %227 = xor i64 %226, %225
  %228 = lshr i64 %227, 32
  %229 = shl i64 %227, 32
  %230 = or i64 %229, %228
  %231 = load i64, i64* %51, align 16
  %232 = add i64 %230, %231
  %233 = xor i64 %174, %232
  %234 = lshr i64 %233, 24
  %235 = shl i64 %233, 40
  %236 = or i64 %235, %234
  %237 = add i64 %236, %225
  %238 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 13
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %237, %239
  store i64 %240, i64* %117, align 16
  %241 = xor i64 %230, %240
  %242 = lshr i64 %241, 16
  %243 = shl i64 %241, 48
  %244 = or i64 %243, %242
  %245 = add i64 %244, %232
  %246 = xor i64 %236, %245
  %247 = lshr i64 %246, 63
  %248 = shl i64 %246, 1
  %249 = or i64 %248, %247
  store i64 %249, i64* %126, align 8
  %250 = load i64, i64* %123, align 8
  %251 = load i64, i64* %71, align 16
  %252 = add i64 %251, %250
  %253 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 14
  %254 = load i64, i64* %253, align 16
  %255 = add i64 %252, %254
  %256 = load i64, i64* %65, align 16
  %257 = xor i64 %256, %255
  %258 = lshr i64 %257, 32
  %259 = shl i64 %257, 32
  %260 = or i64 %259, %258
  %261 = load i64, i64* %52, align 8
  %262 = add i64 %260, %261
  %263 = xor i64 %251, %262
  %264 = lshr i64 %263, 24
  %265 = shl i64 %263, 40
  %266 = or i64 %265, %264
  %267 = add i64 %266, %255
  %268 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i64 0, i64 15
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %267, %269
  store i64 %270, i64* %123, align 8
  %271 = xor i64 %260, %270
  %272 = lshr i64 %271, 16
  %273 = shl i64 %271, 48
  %274 = or i64 %273, %272
  %275 = add i64 %274, %262
  %276 = xor i64 %266, %275
  %277 = lshr i64 %276, 63
  %278 = shl i64 %276, 1
  %279 = or i64 %278, %277
  %280 = load i64, i64* %70, align 16
  %281 = add i64 %279, %280
  %282 = add i64 %281, %254
  %283 = extractelement <2 x i64> %210, i32 1
  %284 = xor i64 %283, %282
  %285 = lshr i64 %284, 32
  %286 = shl i64 %284, 32
  %287 = or i64 %286, %285
  %288 = add i64 %287, %245
  %289 = xor i64 %279, %288
  %290 = lshr i64 %289, 24
  %291 = shl i64 %289, 40
  %292 = or i64 %291, %290
  %293 = add i64 %292, %282
  %294 = load i64, i64* %182, align 16
  %295 = add i64 %293, %294
  store i64 %295, i64* %70, align 16
  %296 = xor i64 %287, %295
  %297 = lshr i64 %296, 16
  %298 = shl i64 %296, 48
  %299 = or i64 %298, %297
  store i64 %299, i64* %57, align 16
  %300 = add i64 %299, %288
  store i64 %300, i64* %51, align 16
  %301 = xor i64 %292, %300
  %302 = lshr i64 %301, 63
  %303 = shl i64 %301, 1
  %304 = or i64 %303, %302
  store i64 %304, i64* %71, align 16
  %305 = load i64, i64* %76, align 8
  %306 = load i64, i64* %79, align 8
  %307 = add i64 %306, %305
  %308 = load i64, i64* %119, align 16
  %309 = add i64 %307, %308
  %310 = xor i64 %244, %309
  %311 = lshr i64 %310, 32
  %312 = shl i64 %310, 32
  %313 = or i64 %312, %311
  %314 = add i64 %313, %275
  %315 = xor i64 %306, %314
  %316 = lshr i64 %315, 24
  %317 = shl i64 %315, 40
  %318 = or i64 %317, %316
  %319 = add i64 %318, %309
  %320 = load i64, i64* %175, align 16
  %321 = add i64 %319, %320
  store i64 %321, i64* %76, align 8
  %322 = xor i64 %313, %321
  %323 = lshr i64 %322, 16
  %324 = shl i64 %322, 48
  %325 = or i64 %324, %323
  store i64 %325, i64* %61, align 8
  %326 = add i64 %325, %314
  store i64 %326, i64* %52, align 8
  %327 = xor i64 %318, %326
  %328 = lshr i64 %327, 63
  %329 = shl i64 %327, 1
  %330 = or i64 %329, %328
  %331 = load i64, i64* %117, align 16
  %332 = load i64, i64* %118, align 16
  %333 = add i64 %332, %331
  %334 = load i64, i64* %177, align 8
  %335 = add i64 %333, %334
  %336 = xor i64 %274, %335
  %337 = lshr i64 %336, 32
  %338 = shl i64 %336, 32
  %339 = or i64 %338, %337
  %340 = load i64, i64* %53, align 16
  %341 = add i64 %339, %340
  %342 = xor i64 %332, %341
  %343 = lshr i64 %342, 24
  %344 = shl i64 %342, 40
  %345 = or i64 %344, %343
  %346 = add i64 %345, %335
  %347 = load i64, i64* %268, align 8
  %348 = add i64 %346, %347
  store i64 %348, i64* %117, align 16
  %349 = xor i64 %339, %348
  %350 = lshr i64 %349, 16
  %351 = shl i64 %349, 48
  %352 = or i64 %351, %350
  store i64 %352, i64* %65, align 16
  %353 = add i64 %352, %341
  %354 = xor i64 %345, %353
  %355 = lshr i64 %354, 63
  %356 = shl i64 %354, 1
  %357 = or i64 %356, %355
  %358 = load i64, i64* %123, align 8
  %359 = load i64, i64* %126, align 8
  %360 = add i64 %359, %358
  %361 = load i64, i64* %238, align 8
  %362 = add i64 %360, %361
  %363 = load i64, i64* %69, align 8
  %364 = xor i64 %363, %362
  %365 = lshr i64 %364, 32
  %366 = shl i64 %364, 32
  %367 = or i64 %366, %365
  %368 = load i64, i64* %54, align 8
  %369 = add i64 %367, %368
  %370 = xor i64 %359, %369
  %371 = lshr i64 %370, 24
  %372 = shl i64 %370, 40
  %373 = or i64 %372, %371
  %374 = add i64 %373, %362
  %375 = load i64, i64* %130, align 16
  %376 = add i64 %374, %375
  store i64 %376, i64* %123, align 8
  %377 = xor i64 %367, %376
  %378 = lshr i64 %377, 16
  %379 = shl i64 %377, 48
  %380 = or i64 %379, %378
  %381 = add i64 %380, %369
  %382 = xor i64 %373, %381
  %383 = lshr i64 %382, 63
  %384 = shl i64 %382, 1
  %385 = or i64 %384, %383
  %386 = load i64, i64* %70, align 16
  %387 = add i64 %330, %386
  %388 = load i64, i64* %74, align 8
  %389 = add i64 %387, %388
  %390 = xor i64 %380, %389
  %391 = lshr i64 %390, 32
  %392 = shl i64 %390, 32
  %393 = or i64 %392, %391
  %394 = add i64 %393, %353
  %395 = xor i64 %330, %394
  %396 = lshr i64 %395, 24
  %397 = shl i64 %395, 40
  %398 = or i64 %397, %396
  %399 = add i64 %398, %389
  %400 = load i64, i64* %223, align 16
  %401 = add i64 %399, %400
  store i64 %401, i64* %70, align 16
  %402 = xor i64 %393, %401
  %403 = lshr i64 %402, 16
  %404 = shl i64 %402, 48
  %405 = or i64 %404, %403
  store i64 %405, i64* %69, align 8
  %406 = add i64 %405, %394
  store i64 %406, i64* %53, align 16
  %407 = xor i64 %398, %406
  %408 = lshr i64 %407, 63
  %409 = shl i64 %407, 1
  %410 = or i64 %409, %408
  store i64 %410, i64* %79, align 8
  %411 = load i64, i64* %76, align 8
  %412 = add i64 %357, %411
  %413 = load i64, i64* %72, align 16
  %414 = add i64 %412, %413
  %415 = load i64, i64* %57, align 16
  %416 = xor i64 %415, %414
  %417 = lshr i64 %416, 32
  %418 = shl i64 %416, 32
  %419 = or i64 %418, %417
  %420 = add i64 %419, %381
  %421 = xor i64 %357, %420
  %422 = lshr i64 %421, 24
  %423 = shl i64 %421, 40
  %424 = or i64 %423, %422
  %425 = add i64 %424, %414
  %426 = load i64, i64* %83, align 16
  %427 = add i64 %425, %426
  store i64 %427, i64* %76, align 8
  %428 = xor i64 %419, %427
  %429 = lshr i64 %428, 16
  %430 = shl i64 %428, 48
  %431 = or i64 %430, %429
  %432 = add i64 %431, %420
  store i64 %432, i64* %54, align 8
  %433 = xor i64 %424, %432
  %434 = lshr i64 %433, 63
  %435 = shl i64 %433, 1
  %436 = or i64 %435, %434
  store i64 %436, i64* %118, align 16
  %437 = load i64, i64* %117, align 16
  %438 = add i64 %385, %437
  %439 = load i64, i64* %201, align 8
  %440 = add i64 %438, %439
  %441 = load i64, i64* %61, align 8
  %442 = xor i64 %441, %440
  %443 = lshr i64 %442, 32
  %444 = shl i64 %442, 32
  %445 = or i64 %444, %443
  %446 = load i64, i64* %51, align 16
  %447 = add i64 %445, %446
  %448 = xor i64 %385, %447
  %449 = lshr i64 %448, 24
  %450 = shl i64 %448, 40
  %451 = or i64 %450, %449
  %452 = add i64 %451, %440
  %453 = load i64, i64* %150, align 8
  %454 = add i64 %452, %453
  store i64 %454, i64* %117, align 16
  %455 = xor i64 %445, %454
  %456 = lshr i64 %455, 16
  %457 = shl i64 %455, 48
  %458 = or i64 %457, %456
  %459 = add i64 %458, %447
  %460 = xor i64 %451, %459
  %461 = lshr i64 %460, 63
  %462 = shl i64 %460, 1
  %463 = or i64 %462, %461
  store i64 %463, i64* %126, align 8
  %464 = load i64, i64* %123, align 8
  %465 = load i64, i64* %71, align 16
  %466 = add i64 %465, %464
  %467 = load i64, i64* %121, align 8
  %468 = add i64 %466, %467
  %469 = load i64, i64* %65, align 16
  %470 = xor i64 %469, %468
  %471 = lshr i64 %470, 32
  %472 = shl i64 %470, 32
  %473 = or i64 %472, %471
  %474 = load i64, i64* %52, align 8
  %475 = add i64 %473, %474
  %476 = xor i64 %465, %475
  %477 = lshr i64 %476, 24
  %478 = shl i64 %476, 40
  %479 = or i64 %478, %477
  %480 = add i64 %479, %468
  %481 = load i64, i64* %98, align 8
  %482 = add i64 %480, %481
  store i64 %482, i64* %123, align 8
  %483 = xor i64 %473, %482
  %484 = lshr i64 %483, 16
  %485 = shl i64 %483, 48
  %486 = or i64 %485, %484
  %487 = add i64 %486, %475
  %488 = xor i64 %479, %487
  %489 = lshr i64 %488, 63
  %490 = shl i64 %488, 1
  %491 = or i64 %490, %489
  %492 = load i64, i64* %70, align 16
  %493 = add i64 %491, %492
  %494 = add i64 %493, %439
  %495 = xor i64 %431, %494
  %496 = lshr i64 %495, 32
  %497 = shl i64 %495, 32
  %498 = or i64 %497, %496
  %499 = add i64 %498, %459
  %500 = xor i64 %491, %499
  %501 = lshr i64 %500, 24
  %502 = shl i64 %500, 40
  %503 = or i64 %502, %501
  %504 = add i64 %503, %494
  %505 = load i64, i64* %175, align 16
  %506 = add i64 %504, %505
  store i64 %506, i64* %70, align 16
  %507 = xor i64 %498, %506
  %508 = lshr i64 %507, 16
  %509 = shl i64 %507, 48
  %510 = or i64 %509, %508
  store i64 %510, i64* %57, align 16
  %511 = add i64 %510, %499
  store i64 %511, i64* %51, align 16
  %512 = xor i64 %503, %511
  %513 = lshr i64 %512, 63
  %514 = shl i64 %512, 1
  %515 = or i64 %514, %513
  store i64 %515, i64* %71, align 16
  %516 = load i64, i64* %76, align 8
  %517 = load i64, i64* %79, align 8
  %518 = add i64 %517, %516
  %519 = load i64, i64* %223, align 16
  %520 = add i64 %518, %519
  %521 = xor i64 %458, %520
  %522 = lshr i64 %521, 32
  %523 = shl i64 %521, 32
  %524 = or i64 %523, %522
  %525 = add i64 %524, %487
  %526 = xor i64 %517, %525
  %527 = lshr i64 %526, 24
  %528 = shl i64 %526, 40
  %529 = or i64 %528, %527
  %530 = add i64 %529, %520
  %531 = load i64, i64* %72, align 16
  %532 = add i64 %530, %531
  store i64 %532, i64* %76, align 8
  %533 = xor i64 %524, %532
  %534 = lshr i64 %533, 16
  %535 = shl i64 %533, 48
  %536 = or i64 %535, %534
  store i64 %536, i64* %61, align 8
  %537 = add i64 %536, %525
  store i64 %537, i64* %52, align 8
  %538 = xor i64 %529, %537
  %539 = lshr i64 %538, 63
  %540 = shl i64 %538, 1
  %541 = or i64 %540, %539
  %542 = load i64, i64* %117, align 16
  %543 = load i64, i64* %118, align 16
  %544 = add i64 %543, %542
  %545 = load i64, i64* %121, align 8
  %546 = add i64 %544, %545
  %547 = xor i64 %486, %546
  %548 = lshr i64 %547, 32
  %549 = shl i64 %547, 32
  %550 = or i64 %549, %548
  %551 = load i64, i64* %53, align 16
  %552 = add i64 %550, %551
  %553 = xor i64 %543, %552
  %554 = lshr i64 %553, 24
  %555 = shl i64 %553, 40
  %556 = or i64 %555, %554
  %557 = add i64 %556, %546
  %558 = load i64, i64* %83, align 16
  %559 = add i64 %557, %558
  store i64 %559, i64* %117, align 16
  %560 = xor i64 %550, %559
  %561 = lshr i64 %560, 16
  %562 = shl i64 %560, 48
  %563 = or i64 %562, %561
  store i64 %563, i64* %65, align 16
  %564 = add i64 %563, %552
  %565 = xor i64 %556, %564
  %566 = lshr i64 %565, 63
  %567 = shl i64 %565, 1
  %568 = or i64 %567, %566
  %569 = load i64, i64* %123, align 8
  %570 = load i64, i64* %126, align 8
  %571 = add i64 %570, %569
  %572 = load i64, i64* %268, align 8
  %573 = add i64 %571, %572
  %574 = load i64, i64* %69, align 8
  %575 = xor i64 %574, %573
  %576 = lshr i64 %575, 32
  %577 = shl i64 %575, 32
  %578 = or i64 %577, %576
  %579 = load i64, i64* %54, align 8
  %580 = add i64 %578, %579
  %581 = xor i64 %570, %580
  %582 = lshr i64 %581, 24
  %583 = shl i64 %581, 40
  %584 = or i64 %583, %582
  %585 = add i64 %584, %573
  %586 = load i64, i64* %238, align 8
  %587 = add i64 %585, %586
  store i64 %587, i64* %123, align 8
  %588 = xor i64 %578, %587
  %589 = lshr i64 %588, 16
  %590 = shl i64 %588, 48
  %591 = or i64 %590, %589
  %592 = add i64 %591, %580
  %593 = xor i64 %584, %592
  %594 = lshr i64 %593, 63
  %595 = shl i64 %593, 1
  %596 = or i64 %595, %594
  %597 = load i64, i64* %70, align 16
  %598 = add i64 %541, %597
  %599 = load i64, i64* %182, align 16
  %600 = add i64 %598, %599
  %601 = xor i64 %591, %600
  %602 = lshr i64 %601, 32
  %603 = shl i64 %601, 32
  %604 = or i64 %603, %602
  %605 = add i64 %604, %564
  %606 = xor i64 %541, %605
  %607 = lshr i64 %606, 24
  %608 = shl i64 %606, 40
  %609 = or i64 %608, %607
  %610 = add i64 %609, %600
  %611 = load i64, i64* %253, align 16
  %612 = add i64 %610, %611
  store i64 %612, i64* %70, align 16
  %613 = xor i64 %604, %612
  %614 = lshr i64 %613, 16
  %615 = shl i64 %613, 48
  %616 = or i64 %615, %614
  store i64 %616, i64* %69, align 8
  %617 = add i64 %616, %605
  store i64 %617, i64* %53, align 16
  %618 = xor i64 %609, %617
  %619 = lshr i64 %618, 63
  %620 = shl i64 %618, 1
  %621 = or i64 %620, %619
  store i64 %621, i64* %79, align 8
  %622 = load i64, i64* %76, align 8
  %623 = add i64 %568, %622
  %624 = load i64, i64* %98, align 8
  %625 = add i64 %623, %624
  %626 = load i64, i64* %57, align 16
  %627 = xor i64 %626, %625
  %628 = lshr i64 %627, 32
  %629 = shl i64 %627, 32
  %630 = or i64 %629, %628
  %631 = add i64 %630, %592
  %632 = xor i64 %568, %631
  %633 = lshr i64 %632, 24
  %634 = shl i64 %632, 40
  %635 = or i64 %634, %633
  %636 = add i64 %635, %625
  %637 = load i64, i64* %130, align 16
  %638 = add i64 %636, %637
  store i64 %638, i64* %76, align 8
  %639 = xor i64 %630, %638
  %640 = lshr i64 %639, 16
  %641 = shl i64 %639, 48
  %642 = or i64 %641, %640
  %643 = add i64 %642, %631
  store i64 %643, i64* %54, align 8
  %644 = xor i64 %635, %643
  %645 = lshr i64 %644, 63
  %646 = shl i64 %644, 1
  %647 = or i64 %646, %645
  store i64 %647, i64* %118, align 16
  %648 = load i64, i64* %117, align 16
  %649 = add i64 %596, %648
  %650 = load i64, i64* %150, align 8
  %651 = add i64 %649, %650
  %652 = load i64, i64* %61, align 8
  %653 = xor i64 %652, %651
  %654 = lshr i64 %653, 32
  %655 = shl i64 %653, 32
  %656 = or i64 %655, %654
  %657 = load i64, i64* %51, align 16
  %658 = add i64 %656, %657
  %659 = xor i64 %596, %658
  %660 = lshr i64 %659, 24
  %661 = shl i64 %659, 40
  %662 = or i64 %661, %660
  %663 = add i64 %662, %651
  %664 = load i64, i64* %74, align 8
  %665 = add i64 %663, %664
  store i64 %665, i64* %117, align 16
  %666 = xor i64 %656, %665
  %667 = lshr i64 %666, 16
  %668 = shl i64 %666, 48
  %669 = or i64 %668, %667
  %670 = add i64 %669, %658
  %671 = xor i64 %662, %670
  %672 = lshr i64 %671, 63
  %673 = shl i64 %671, 1
  %674 = or i64 %673, %672
  store i64 %674, i64* %126, align 8
  %675 = load i64, i64* %123, align 8
  %676 = load i64, i64* %71, align 16
  %677 = add i64 %676, %675
  %678 = load i64, i64* %177, align 8
  %679 = add i64 %677, %678
  %680 = load i64, i64* %65, align 16
  %681 = xor i64 %680, %679
  %682 = lshr i64 %681, 32
  %683 = shl i64 %681, 32
  %684 = or i64 %683, %682
  %685 = load i64, i64* %52, align 8
  %686 = add i64 %684, %685
  %687 = xor i64 %676, %686
  %688 = lshr i64 %687, 24
  %689 = shl i64 %687, 40
  %690 = or i64 %689, %688
  %691 = add i64 %690, %679
  %692 = load i64, i64* %119, align 16
  %693 = add i64 %691, %692
  store i64 %693, i64* %123, align 8
  %694 = xor i64 %684, %693
  %695 = lshr i64 %694, 16
  %696 = shl i64 %694, 48
  %697 = or i64 %696, %695
  %698 = add i64 %697, %686
  %699 = xor i64 %690, %698
  %700 = lshr i64 %699, 63
  %701 = shl i64 %699, 1
  %702 = or i64 %701, %700
  %703 = load i64, i64* %70, align 16
  %704 = add i64 %702, %703
  %705 = add i64 %704, %650
  %706 = xor i64 %642, %705
  %707 = lshr i64 %706, 32
  %708 = shl i64 %706, 32
  %709 = or i64 %708, %707
  %710 = add i64 %709, %670
  %711 = xor i64 %702, %710
  %712 = lshr i64 %711, 24
  %713 = shl i64 %711, 40
  %714 = or i64 %713, %712
  %715 = add i64 %714, %705
  %716 = add i64 %715, %678
  store i64 %716, i64* %70, align 16
  %717 = xor i64 %709, %716
  %718 = lshr i64 %717, 16
  %719 = shl i64 %717, 48
  %720 = or i64 %719, %718
  store i64 %720, i64* %57, align 16
  %721 = add i64 %720, %710
  store i64 %721, i64* %51, align 16
  %722 = xor i64 %714, %721
  %723 = lshr i64 %722, 63
  %724 = shl i64 %722, 1
  %725 = or i64 %724, %723
  store i64 %725, i64* %71, align 16
  %726 = load i64, i64* %76, align 8
  %727 = load i64, i64* %79, align 8
  %728 = add i64 %727, %726
  %729 = load i64, i64* %98, align 8
  %730 = add i64 %728, %729
  %731 = xor i64 %669, %730
  %732 = lshr i64 %731, 32
  %733 = shl i64 %731, 32
  %734 = or i64 %733, %732
  %735 = add i64 %734, %698
  %736 = xor i64 %727, %735
  %737 = lshr i64 %736, 24
  %738 = shl i64 %736, 40
  %739 = or i64 %738, %737
  %740 = add i64 %739, %730
  %741 = load i64, i64* %74, align 8
  %742 = add i64 %740, %741
  store i64 %742, i64* %76, align 8
  %743 = xor i64 %734, %742
  %744 = lshr i64 %743, 16
  %745 = shl i64 %743, 48
  %746 = or i64 %745, %744
  store i64 %746, i64* %61, align 8
  %747 = add i64 %746, %735
  store i64 %747, i64* %52, align 8
  %748 = xor i64 %739, %747
  %749 = lshr i64 %748, 63
  %750 = shl i64 %748, 1
  %751 = or i64 %750, %749
  %752 = load i64, i64* %117, align 16
  %753 = load i64, i64* %118, align 16
  %754 = add i64 %753, %752
  %755 = load i64, i64* %238, align 8
  %756 = add i64 %754, %755
  %757 = xor i64 %697, %756
  %758 = lshr i64 %757, 32
  %759 = shl i64 %757, 32
  %760 = or i64 %759, %758
  %761 = load i64, i64* %53, align 16
  %762 = add i64 %760, %761
  %763 = xor i64 %753, %762
  %764 = lshr i64 %763, 24
  %765 = shl i64 %763, 40
  %766 = or i64 %765, %764
  %767 = add i64 %766, %756
  %768 = load i64, i64* %223, align 16
  %769 = add i64 %767, %768
  store i64 %769, i64* %117, align 16
  %770 = xor i64 %760, %769
  %771 = lshr i64 %770, 16
  %772 = shl i64 %770, 48
  %773 = or i64 %772, %771
  store i64 %773, i64* %65, align 16
  %774 = add i64 %773, %762
  %775 = xor i64 %766, %774
  %776 = lshr i64 %775, 63
  %777 = shl i64 %775, 1
  %778 = or i64 %777, %776
  %779 = load i64, i64* %123, align 8
  %780 = load i64, i64* %126, align 8
  %781 = add i64 %780, %779
  %782 = load i64, i64* %201, align 8
  %783 = add i64 %781, %782
  %784 = load i64, i64* %69, align 8
  %785 = xor i64 %784, %783
  %786 = lshr i64 %785, 32
  %787 = shl i64 %785, 32
  %788 = or i64 %787, %786
  %789 = load i64, i64* %54, align 8
  %790 = add i64 %788, %789
  %791 = xor i64 %780, %790
  %792 = lshr i64 %791, 24
  %793 = shl i64 %791, 40
  %794 = or i64 %793, %792
  %795 = add i64 %794, %783
  %796 = load i64, i64* %253, align 16
  %797 = add i64 %795, %796
  store i64 %797, i64* %123, align 8
  %798 = xor i64 %788, %797
  %799 = lshr i64 %798, 16
  %800 = shl i64 %798, 48
  %801 = or i64 %800, %799
  %802 = add i64 %801, %790
  %803 = xor i64 %794, %802
  %804 = lshr i64 %803, 63
  %805 = shl i64 %803, 1
  %806 = or i64 %805, %804
  %807 = load i64, i64* %70, align 16
  %808 = add i64 %751, %807
  %809 = load i64, i64* %83, align 16
  %810 = add i64 %808, %809
  %811 = xor i64 %801, %810
  %812 = lshr i64 %811, 32
  %813 = shl i64 %811, 32
  %814 = or i64 %813, %812
  %815 = add i64 %814, %774
  %816 = xor i64 %751, %815
  %817 = lshr i64 %816, 24
  %818 = shl i64 %816, 40
  %819 = or i64 %818, %817
  %820 = add i64 %819, %810
  %821 = load i64, i64* %130, align 16
  %822 = add i64 %820, %821
  store i64 %822, i64* %70, align 16
  %823 = xor i64 %814, %822
  %824 = lshr i64 %823, 16
  %825 = shl i64 %823, 48
  %826 = or i64 %825, %824
  store i64 %826, i64* %69, align 8
  %827 = add i64 %826, %815
  store i64 %827, i64* %53, align 16
  %828 = xor i64 %819, %827
  %829 = lshr i64 %828, 63
  %830 = shl i64 %828, 1
  %831 = or i64 %830, %829
  store i64 %831, i64* %79, align 8
  %832 = load i64, i64* %76, align 8
  %833 = add i64 %778, %832
  %834 = load i64, i64* %121, align 8
  %835 = add i64 %833, %834
  %836 = load i64, i64* %57, align 16
  %837 = xor i64 %836, %835
  %838 = lshr i64 %837, 32
  %839 = shl i64 %837, 32
  %840 = or i64 %839, %838
  %841 = add i64 %840, %802
  %842 = xor i64 %778, %841
  %843 = lshr i64 %842, 24
  %844 = shl i64 %842, 40
  %845 = or i64 %844, %843
  %846 = add i64 %845, %835
  %847 = load i64, i64* %182, align 16
  %848 = add i64 %846, %847
  store i64 %848, i64* %76, align 8
  %849 = xor i64 %840, %848
  %850 = lshr i64 %849, 16
  %851 = shl i64 %849, 48
  %852 = or i64 %851, %850
  %853 = add i64 %852, %841
  store i64 %853, i64* %54, align 8
  %854 = xor i64 %845, %853
  %855 = lshr i64 %854, 63
  %856 = shl i64 %854, 1
  %857 = or i64 %856, %855
  store i64 %857, i64* %118, align 16
  %858 = load i64, i64* %117, align 16
  %859 = add i64 %806, %858
  %860 = load i64, i64* %119, align 16
  %861 = add i64 %859, %860
  %862 = load i64, i64* %61, align 8
  %863 = xor i64 %862, %861
  %864 = lshr i64 %863, 32
  %865 = shl i64 %863, 32
  %866 = or i64 %865, %864
  %867 = load i64, i64* %51, align 16
  %868 = add i64 %866, %867
  %869 = xor i64 %806, %868
  %870 = lshr i64 %869, 24
  %871 = shl i64 %869, 40
  %872 = or i64 %871, %870
  %873 = add i64 %872, %861
  %874 = load i64, i64* %72, align 16
  %875 = add i64 %873, %874
  store i64 %875, i64* %117, align 16
  %876 = xor i64 %866, %875
  %877 = lshr i64 %876, 16
  %878 = shl i64 %876, 48
  %879 = or i64 %878, %877
  %880 = add i64 %879, %868
  %881 = xor i64 %872, %880
  %882 = lshr i64 %881, 63
  %883 = shl i64 %881, 1
  %884 = or i64 %883, %882
  store i64 %884, i64* %126, align 8
  %885 = load i64, i64* %123, align 8
  %886 = load i64, i64* %71, align 16
  %887 = add i64 %886, %885
  %888 = load i64, i64* %268, align 8
  %889 = add i64 %887, %888
  %890 = load i64, i64* %65, align 16
  %891 = xor i64 %890, %889
  %892 = lshr i64 %891, 32
  %893 = shl i64 %891, 32
  %894 = or i64 %893, %892
  %895 = load i64, i64* %52, align 8
  %896 = add i64 %894, %895
  %897 = xor i64 %886, %896
  %898 = lshr i64 %897, 24
  %899 = shl i64 %897, 40
  %900 = or i64 %899, %898
  %901 = add i64 %900, %889
  %902 = load i64, i64* %175, align 16
  %903 = add i64 %901, %902
  store i64 %903, i64* %123, align 8
  %904 = xor i64 %894, %903
  %905 = lshr i64 %904, 16
  %906 = shl i64 %904, 48
  %907 = or i64 %906, %905
  %908 = add i64 %907, %896
  %909 = xor i64 %900, %908
  %910 = lshr i64 %909, 63
  %911 = shl i64 %909, 1
  %912 = or i64 %911, %910
  %913 = load i64, i64* %70, align 16
  %914 = add i64 %912, %913
  %915 = load i64, i64* %177, align 8
  %916 = add i64 %914, %915
  %917 = xor i64 %852, %916
  %918 = lshr i64 %917, 32
  %919 = shl i64 %917, 32
  %920 = or i64 %919, %918
  %921 = add i64 %920, %880
  %922 = xor i64 %912, %921
  %923 = lshr i64 %922, 24
  %924 = shl i64 %922, 40
  %925 = or i64 %924, %923
  %926 = add i64 %925, %916
  %927 = add i64 %926, %874
  store i64 %927, i64* %70, align 16
  %928 = xor i64 %920, %927
  %929 = lshr i64 %928, 16
  %930 = shl i64 %928, 48
  %931 = or i64 %930, %929
  store i64 %931, i64* %57, align 16
  %932 = add i64 %931, %921
  store i64 %932, i64* %51, align 16
  %933 = xor i64 %925, %932
  %934 = lshr i64 %933, 63
  %935 = shl i64 %933, 1
  %936 = or i64 %935, %934
  store i64 %936, i64* %71, align 16
  %937 = load i64, i64* %76, align 8
  %938 = load i64, i64* %79, align 8
  %939 = add i64 %938, %937
  %940 = load i64, i64* %121, align 8
  %941 = add i64 %939, %940
  %942 = xor i64 %879, %941
  %943 = lshr i64 %942, 32
  %944 = shl i64 %942, 32
  %945 = or i64 %944, %943
  %946 = add i64 %945, %908
  %947 = xor i64 %938, %946
  %948 = lshr i64 %947, 24
  %949 = shl i64 %947, 40
  %950 = or i64 %949, %948
  %951 = add i64 %950, %941
  %952 = load i64, i64* %150, align 8
  %953 = add i64 %951, %952
  store i64 %953, i64* %76, align 8
  %954 = xor i64 %945, %953
  %955 = lshr i64 %954, 16
  %956 = shl i64 %954, 48
  %957 = or i64 %956, %955
  store i64 %957, i64* %61, align 8
  %958 = add i64 %957, %946
  store i64 %958, i64* %52, align 8
  %959 = xor i64 %950, %958
  %960 = lshr i64 %959, 63
  %961 = shl i64 %959, 1
  %962 = or i64 %961, %960
  %963 = load i64, i64* %117, align 16
  %964 = load i64, i64* %118, align 16
  %965 = add i64 %964, %963
  %966 = load i64, i64* %83, align 16
  %967 = add i64 %965, %966
  %968 = xor i64 %907, %967
  %969 = lshr i64 %968, 32
  %970 = shl i64 %968, 32
  %971 = or i64 %970, %969
  %972 = load i64, i64* %53, align 16
  %973 = add i64 %971, %972
  %974 = xor i64 %964, %973
  %975 = lshr i64 %974, 24
  %976 = shl i64 %974, 40
  %977 = or i64 %976, %975
  %978 = add i64 %977, %967
  %979 = load i64, i64* %119, align 16
  %980 = add i64 %978, %979
  store i64 %980, i64* %117, align 16
  %981 = xor i64 %971, %980
  %982 = lshr i64 %981, 16
  %983 = shl i64 %981, 48
  %984 = or i64 %983, %982
  store i64 %984, i64* %65, align 16
  %985 = add i64 %984, %973
  %986 = xor i64 %977, %985
  %987 = lshr i64 %986, 63
  %988 = shl i64 %986, 1
  %989 = or i64 %988, %987
  %990 = load i64, i64* %123, align 8
  %991 = load i64, i64* %126, align 8
  %992 = add i64 %991, %990
  %993 = load i64, i64* %182, align 16
  %994 = add i64 %992, %993
  %995 = load i64, i64* %69, align 8
  %996 = xor i64 %995, %994
  %997 = lshr i64 %996, 32
  %998 = shl i64 %996, 32
  %999 = or i64 %998, %997
  %1000 = load i64, i64* %54, align 8
  %1001 = add i64 %999, %1000
  %1002 = xor i64 %991, %1001
  %1003 = lshr i64 %1002, 24
  %1004 = shl i64 %1002, 40
  %1005 = or i64 %1004, %1003
  %1006 = add i64 %1005, %994
  %1007 = load i64, i64* %268, align 8
  %1008 = add i64 %1006, %1007
  store i64 %1008, i64* %123, align 8
  %1009 = xor i64 %999, %1008
  %1010 = lshr i64 %1009, 16
  %1011 = shl i64 %1009, 48
  %1012 = or i64 %1011, %1010
  %1013 = add i64 %1012, %1001
  %1014 = xor i64 %1005, %1013
  %1015 = lshr i64 %1014, 63
  %1016 = shl i64 %1014, 1
  %1017 = or i64 %1016, %1015
  %1018 = load i64, i64* %70, align 16
  %1019 = add i64 %962, %1018
  %1020 = load i64, i64* %253, align 16
  %1021 = add i64 %1019, %1020
  %1022 = xor i64 %1012, %1021
  %1023 = lshr i64 %1022, 32
  %1024 = shl i64 %1022, 32
  %1025 = or i64 %1024, %1023
  %1026 = add i64 %1025, %985
  %1027 = xor i64 %962, %1026
  %1028 = lshr i64 %1027, 24
  %1029 = shl i64 %1027, 40
  %1030 = or i64 %1029, %1028
  %1031 = add i64 %1030, %1021
  %1032 = load i64, i64* %74, align 8
  %1033 = add i64 %1031, %1032
  store i64 %1033, i64* %70, align 16
  %1034 = xor i64 %1025, %1033
  %1035 = lshr i64 %1034, 16
  %1036 = shl i64 %1034, 48
  %1037 = or i64 %1036, %1035
  store i64 %1037, i64* %69, align 8
  %1038 = add i64 %1037, %1026
  store i64 %1038, i64* %53, align 16
  %1039 = xor i64 %1030, %1038
  %1040 = lshr i64 %1039, 63
  %1041 = shl i64 %1039, 1
  %1042 = or i64 %1041, %1040
  store i64 %1042, i64* %79, align 8
  %1043 = load i64, i64* %76, align 8
  %1044 = add i64 %989, %1043
  %1045 = load i64, i64* %201, align 8
  %1046 = add i64 %1044, %1045
  %1047 = load i64, i64* %57, align 16
  %1048 = xor i64 %1047, %1046
  %1049 = lshr i64 %1048, 32
  %1050 = shl i64 %1048, 32
  %1051 = or i64 %1050, %1049
  %1052 = add i64 %1051, %1013
  %1053 = xor i64 %989, %1052
  %1054 = lshr i64 %1053, 24
  %1055 = shl i64 %1053, 40
  %1056 = or i64 %1055, %1054
  %1057 = add i64 %1056, %1046
  %1058 = load i64, i64* %223, align 16
  %1059 = add i64 %1057, %1058
  store i64 %1059, i64* %76, align 8
  %1060 = xor i64 %1051, %1059
  %1061 = lshr i64 %1060, 16
  %1062 = shl i64 %1060, 48
  %1063 = or i64 %1062, %1061
  %1064 = add i64 %1063, %1052
  store i64 %1064, i64* %54, align 8
  %1065 = xor i64 %1056, %1064
  %1066 = lshr i64 %1065, 63
  %1067 = shl i64 %1065, 1
  %1068 = or i64 %1067, %1066
  store i64 %1068, i64* %118, align 16
  %1069 = load i64, i64* %117, align 16
  %1070 = add i64 %1017, %1069
  %1071 = load i64, i64* %130, align 16
  %1072 = add i64 %1070, %1071
  %1073 = load i64, i64* %61, align 8
  %1074 = xor i64 %1073, %1072
  %1075 = load i64, i64* %123, align 8
  %1076 = load i64, i64* %71, align 16
  %1077 = add i64 %1076, %1075
  %1078 = load i64, i64* %98, align 8
  %1079 = add i64 %1077, %1078
  %1080 = load i64, i64* %65, align 16
  %1081 = xor i64 %1080, %1079
  %1082 = insertelement <2 x i64> undef, i64 %1074, i32 0
  %1083 = insertelement <2 x i64> %1082, i64 %1081, i32 1
  %1084 = lshr <2 x i64> %1083, <i64 32, i64 32>
  %1085 = shl <2 x i64> %1083, <i64 32, i64 32>
  %1086 = or <2 x i64> %1085, %1084
  %1087 = load i64, i64* %175, align 16
  %1088 = bitcast i64* %51 to <2 x i64>*
  %1089 = load <2 x i64>, <2 x i64>* %1088, align 16
  %1090 = add <2 x i64> %1086, %1089
  %1091 = insertelement <2 x i64> undef, i64 %1017, i32 0
  %1092 = insertelement <2 x i64> %1091, i64 %1076, i32 1
  %1093 = xor <2 x i64> %1092, %1090
  %1094 = lshr <2 x i64> %1093, <i64 24, i64 24>
  %1095 = shl <2 x i64> %1093, <i64 40, i64 40>
  %1096 = or <2 x i64> %1095, %1094
  %1097 = extractelement <2 x i64> %1096, i32 0
  %1098 = extractelement <2 x i64> %1096, i32 1
  %1099 = insertelement <2 x i64> undef, i64 %1072, i32 0
  %1100 = insertelement <2 x i64> %1099, i64 %1079, i32 1
  %1101 = add <2 x i64> %1096, %1100
  %1102 = load i64, i64* %238, align 8
  %1103 = insertelement <2 x i64> undef, i64 %1087, i32 0
  %1104 = insertelement <2 x i64> %1103, i64 %1102, i32 1
  %1105 = add <2 x i64> %1101, %1104
  %1106 = extractelement <2 x i64> %1105, i32 0
  store i64 %1106, i64* %117, align 16
  %1107 = xor <2 x i64> %1086, %1105
  %1108 = lshr <2 x i64> %1107, <i64 16, i64 16>
  %1109 = shl <2 x i64> %1107, <i64 48, i64 48>
  %1110 = or <2 x i64> %1109, %1108
  %1111 = extractelement <2 x i64> %1110, i32 0
  %1112 = extractelement <2 x i64> %1090, i32 0
  %1113 = add i64 %1111, %1112
  %1114 = xor i64 %1097, %1113
  %1115 = lshr i64 %1114, 63
  %1116 = shl i64 %1114, 1
  %1117 = or i64 %1116, %1115
  store i64 %1117, i64* %126, align 8
  %1118 = extractelement <2 x i64> %1105, i32 1
  store i64 %1118, i64* %123, align 8
  %1119 = extractelement <2 x i64> %1110, i32 1
  %1120 = extractelement <2 x i64> %1090, i32 1
  %1121 = add i64 %1119, %1120
  %1122 = xor i64 %1098, %1121
  %1123 = lshr i64 %1122, 63
  %1124 = shl i64 %1122, 1
  %1125 = or i64 %1124, %1123
  %1126 = load i64, i64* %70, align 16
  %1127 = add i64 %1125, %1126
  %1128 = load i64, i64* %83, align 16
  %1129 = add i64 %1127, %1128
  %1130 = xor i64 %1063, %1129
  %1131 = lshr i64 %1130, 32
  %1132 = shl i64 %1130, 32
  %1133 = or i64 %1132, %1131
  %1134 = add i64 %1133, %1113
  %1135 = xor i64 %1125, %1134
  %1136 = lshr i64 %1135, 24
  %1137 = shl i64 %1135, 40
  %1138 = or i64 %1137, %1136
  %1139 = add i64 %1138, %1129
  %1140 = load i64, i64* %223, align 16
  %1141 = add i64 %1139, %1140
  store i64 %1141, i64* %70, align 16
  %1142 = xor i64 %1133, %1141
  %1143 = lshr i64 %1142, 16
  %1144 = shl i64 %1142, 48
  %1145 = or i64 %1144, %1143
  store i64 %1145, i64* %57, align 16
  %1146 = add i64 %1145, %1134
  store i64 %1146, i64* %51, align 16
  %1147 = xor i64 %1138, %1146
  %1148 = lshr i64 %1147, 63
  %1149 = shl i64 %1147, 1
  %1150 = or i64 %1149, %1148
  store i64 %1150, i64* %71, align 16
  %1151 = load i64, i64* %130, align 16
  %1152 = bitcast i64* %76 to <2 x i64>*
  %1153 = load <2 x i64>, <2 x i64>* %1152, align 8
  %1154 = bitcast i64* %79 to <2 x i64>*
  %1155 = load <2 x i64>, <2 x i64>* %1154, align 8
  %1156 = add <2 x i64> %1155, %1153
  %1157 = load i64, i64* %72, align 16
  %1158 = insertelement <2 x i64> undef, i64 %1151, i32 0
  %1159 = insertelement <2 x i64> %1158, i64 %1157, i32 1
  %1160 = add <2 x i64> %1156, %1159
  %1161 = xor <2 x i64> %1110, %1160
  %1162 = lshr <2 x i64> %1161, <i64 32, i64 32>
  %1163 = shl <2 x i64> %1161, <i64 32, i64 32>
  %1164 = or <2 x i64> %1163, %1162
  %1165 = load i64, i64* %53, align 16
  %1166 = insertelement <2 x i64> undef, i64 %1121, i32 0
  %1167 = insertelement <2 x i64> %1166, i64 %1165, i32 1
  %1168 = add <2 x i64> %1164, %1167
  %1169 = xor <2 x i64> %1155, %1168
  %1170 = lshr <2 x i64> %1169, <i64 24, i64 24>
  %1171 = shl <2 x i64> %1169, <i64 40, i64 40>
  %1172 = or <2 x i64> %1171, %1170
  %1173 = add <2 x i64> %1172, %1160
  %1174 = bitcast i64* %182 to <2 x i64>*
  %1175 = load <2 x i64>, <2 x i64>* %1174, align 16
  %1176 = add <2 x i64> %1173, %1175
  %1177 = xor <2 x i64> %1164, %1176
  %1178 = lshr <2 x i64> %1177, <i64 16, i64 16>
  %1179 = shl <2 x i64> %1177, <i64 48, i64 48>
  %1180 = or <2 x i64> %1179, %1178
  %1181 = add <2 x i64> %1180, %1168
  %1182 = extractelement <2 x i64> %1181, i32 0
  store i64 %1182, i64* %52, align 8
  %1183 = bitcast i64* %76 to <2 x i64>*
  store <2 x i64> %1176, <2 x i64>* %1183, align 8
  %1184 = bitcast i64* %61 to <2 x i64>*
  store <2 x i64> %1180, <2 x i64>* %1184, align 8
  %1185 = xor <2 x i64> %1172, %1181
  %1186 = lshr <2 x i64> %1185, <i64 63, i64 63>
  %1187 = shl <2 x i64> %1185, <i64 1, i64 1>
  %1188 = or <2 x i64> %1187, %1186
  %1189 = load i64, i64* %123, align 8
  %1190 = load i64, i64* %126, align 8
  %1191 = add i64 %1190, %1189
  %1192 = load i64, i64* %175, align 16
  %1193 = add i64 %1191, %1192
  %1194 = load i64, i64* %69, align 8
  %1195 = xor i64 %1194, %1193
  %1196 = lshr i64 %1195, 32
  %1197 = shl i64 %1195, 32
  %1198 = or i64 %1197, %1196
  %1199 = load i64, i64* %54, align 8
  %1200 = add i64 %1198, %1199
  %1201 = xor i64 %1190, %1200
  %1202 = lshr i64 %1201, 24
  %1203 = shl i64 %1201, 40
  %1204 = or i64 %1203, %1202
  %1205 = add i64 %1204, %1193
  %1206 = load i64, i64* %98, align 8
  %1207 = add i64 %1205, %1206
  store i64 %1207, i64* %123, align 8
  %1208 = xor i64 %1198, %1207
  %1209 = lshr i64 %1208, 16
  %1210 = shl i64 %1208, 48
  %1211 = or i64 %1210, %1209
  %1212 = add i64 %1211, %1200
  %1213 = xor i64 %1204, %1212
  %1214 = lshr i64 %1213, 63
  %1215 = shl i64 %1213, 1
  %1216 = or i64 %1215, %1214
  %1217 = load i64, i64* %119, align 16
  %1218 = load i64, i64* %238, align 8
  %1219 = bitcast [16 x i64]* %4 to <2 x i64>*
  %1220 = load <2 x i64>, <2 x i64>* %1219, align 16
  %1221 = add <2 x i64> %1188, %1220
  %1222 = load i64, i64* %150, align 8
  %1223 = insertelement <2 x i64> undef, i64 %1217, i32 0
  %1224 = insertelement <2 x i64> %1223, i64 %1222, i32 1
  %1225 = add <2 x i64> %1221, %1224
  %1226 = load i64, i64* %57, align 16
  %1227 = insertelement <2 x i64> undef, i64 %1211, i32 0
  %1228 = insertelement <2 x i64> %1227, i64 %1226, i32 1
  %1229 = xor <2 x i64> %1228, %1225
  %1230 = lshr <2 x i64> %1229, <i64 32, i64 32>
  %1231 = shl <2 x i64> %1229, <i64 32, i64 32>
  %1232 = or <2 x i64> %1231, %1230
  %1233 = extractelement <2 x i64> %1181, i32 1
  %1234 = insertelement <2 x i64> undef, i64 %1233, i32 0
  %1235 = insertelement <2 x i64> %1234, i64 %1212, i32 1
  %1236 = add <2 x i64> %1232, %1235
  %1237 = xor <2 x i64> %1188, %1236
  %1238 = lshr <2 x i64> %1237, <i64 24, i64 24>
  %1239 = shl <2 x i64> %1237, <i64 40, i64 40>
  %1240 = or <2 x i64> %1239, %1238
  %1241 = add <2 x i64> %1240, %1225
  %1242 = load i64, i64* %121, align 8
  %1243 = insertelement <2 x i64> undef, i64 %1218, i32 0
  %1244 = insertelement <2 x i64> %1243, i64 %1242, i32 1
  %1245 = add <2 x i64> %1241, %1244
  %1246 = xor <2 x i64> %1232, %1245
  %1247 = lshr <2 x i64> %1246, <i64 16, i64 16>
  %1248 = shl <2 x i64> %1246, <i64 48, i64 48>
  %1249 = or <2 x i64> %1248, %1247
  %1250 = extractelement <2 x i64> %1249, i32 0
  store i64 %1250, i64* %69, align 8
  %1251 = add <2 x i64> %1249, %1236
  %1252 = bitcast [16 x i64]* %4 to <2 x i64>*
  store <2 x i64> %1245, <2 x i64>* %1252, align 16
  %1253 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> %1251, <2 x i64>* %1253, align 16
  %1254 = xor <2 x i64> %1240, %1251
  %1255 = lshr <2 x i64> %1254, <i64 63, i64 63>
  %1256 = shl <2 x i64> %1254, <i64 1, i64 1>
  %1257 = or <2 x i64> %1256, %1255
  %1258 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %1257, <2 x i64>* %1258, align 8
  %1259 = load i64, i64* %117, align 16
  %1260 = add i64 %1216, %1259
  %1261 = load i64, i64* %268, align 8
  %1262 = add i64 %1260, %1261
  %1263 = load i64, i64* %61, align 8
  %1264 = xor i64 %1263, %1262
  %1265 = lshr i64 %1264, 32
  %1266 = shl i64 %1264, 32
  %1267 = or i64 %1266, %1265
  %1268 = load i64, i64* %51, align 16
  %1269 = add i64 %1267, %1268
  %1270 = xor i64 %1216, %1269
  %1271 = lshr i64 %1270, 24
  %1272 = shl i64 %1270, 40
  %1273 = or i64 %1272, %1271
  %1274 = add i64 %1273, %1262
  %1275 = load i64, i64* %253, align 16
  %1276 = add i64 %1274, %1275
  store i64 %1276, i64* %117, align 16
  %1277 = xor i64 %1267, %1276
  %1278 = lshr i64 %1277, 16
  %1279 = shl i64 %1277, 48
  %1280 = or i64 %1279, %1278
  %1281 = add i64 %1280, %1269
  %1282 = xor i64 %1273, %1281
  %1283 = lshr i64 %1282, 63
  %1284 = shl i64 %1282, 1
  %1285 = or i64 %1284, %1283
  store i64 %1285, i64* %126, align 8
  %1286 = load i64, i64* %123, align 8
  %1287 = load i64, i64* %71, align 16
  %1288 = add i64 %1287, %1286
  %1289 = load i64, i64* %74, align 8
  %1290 = add i64 %1288, %1289
  %1291 = load i64, i64* %65, align 16
  %1292 = xor i64 %1291, %1290
  %1293 = lshr i64 %1292, 32
  %1294 = shl i64 %1292, 32
  %1295 = or i64 %1294, %1293
  %1296 = load i64, i64* %52, align 8
  %1297 = add i64 %1295, %1296
  %1298 = xor i64 %1287, %1297
  %1299 = lshr i64 %1298, 24
  %1300 = shl i64 %1298, 40
  %1301 = or i64 %1300, %1299
  %1302 = add i64 %1301, %1290
  %1303 = load i64, i64* %177, align 8
  %1304 = add i64 %1302, %1303
  store i64 %1304, i64* %123, align 8
  %1305 = xor i64 %1295, %1304
  %1306 = lshr i64 %1305, 16
  %1307 = shl i64 %1305, 48
  %1308 = or i64 %1307, %1306
  %1309 = add i64 %1308, %1297
  %1310 = xor i64 %1301, %1309
  %1311 = lshr i64 %1310, 63
  %1312 = shl i64 %1310, 1
  %1313 = or i64 %1312, %1311
  %1314 = load i64, i64* %70, align 16
  %1315 = add i64 %1313, %1314
  %1316 = load i64, i64* %223, align 16
  %1317 = add i64 %1315, %1316
  %1318 = extractelement <2 x i64> %1249, i32 1
  %1319 = xor i64 %1318, %1317
  %1320 = lshr i64 %1319, 32
  %1321 = shl i64 %1319, 32
  %1322 = or i64 %1321, %1320
  %1323 = add i64 %1322, %1281
  %1324 = xor i64 %1313, %1323
  %1325 = lshr i64 %1324, 24
  %1326 = shl i64 %1324, 40
  %1327 = or i64 %1326, %1325
  %1328 = add i64 %1327, %1317
  %1329 = load i64, i64* %121, align 8
  %1330 = add i64 %1328, %1329
  store i64 %1330, i64* %70, align 16
  %1331 = xor i64 %1322, %1330
  %1332 = lshr i64 %1331, 16
  %1333 = shl i64 %1331, 48
  %1334 = or i64 %1333, %1332
  store i64 %1334, i64* %57, align 16
  %1335 = add i64 %1334, %1323
  store i64 %1335, i64* %51, align 16
  %1336 = xor i64 %1327, %1335
  %1337 = lshr i64 %1336, 63
  %1338 = shl i64 %1336, 1
  %1339 = or i64 %1338, %1337
  store i64 %1339, i64* %71, align 16
  %1340 = load i64, i64* %76, align 8
  %1341 = load i64, i64* %79, align 8
  %1342 = add i64 %1341, %1340
  %1343 = add i64 %1342, %1289
  %1344 = xor i64 %1280, %1343
  %1345 = lshr i64 %1344, 32
  %1346 = shl i64 %1344, 32
  %1347 = or i64 %1346, %1345
  %1348 = add i64 %1347, %1309
  %1349 = xor i64 %1341, %1348
  %1350 = lshr i64 %1349, 24
  %1351 = shl i64 %1349, 40
  %1352 = or i64 %1351, %1350
  %1353 = add i64 %1352, %1343
  %1354 = load i64, i64* %268, align 8
  %1355 = add i64 %1353, %1354
  store i64 %1355, i64* %76, align 8
  %1356 = xor i64 %1347, %1355
  %1357 = lshr i64 %1356, 16
  %1358 = shl i64 %1356, 48
  %1359 = or i64 %1358, %1357
  store i64 %1359, i64* %61, align 8
  %1360 = add i64 %1359, %1348
  store i64 %1360, i64* %52, align 8
  %1361 = xor i64 %1352, %1360
  %1362 = lshr i64 %1361, 63
  %1363 = shl i64 %1361, 1
  %1364 = or i64 %1363, %1362
  %1365 = load i64, i64* %117, align 16
  %1366 = load i64, i64* %118, align 16
  %1367 = add i64 %1366, %1365
  %1368 = load i64, i64* %253, align 16
  %1369 = add i64 %1367, %1368
  %1370 = xor i64 %1308, %1369
  %1371 = lshr i64 %1370, 32
  %1372 = shl i64 %1370, 32
  %1373 = or i64 %1372, %1371
  %1374 = load i64, i64* %53, align 16
  %1375 = add i64 %1373, %1374
  %1376 = xor i64 %1366, %1375
  %1377 = lshr i64 %1376, 24
  %1378 = shl i64 %1376, 40
  %1379 = or i64 %1378, %1377
  %1380 = add i64 %1379, %1369
  %1381 = load i64, i64* %238, align 8
  %1382 = add i64 %1380, %1381
  store i64 %1382, i64* %117, align 16
  %1383 = xor i64 %1373, %1382
  %1384 = lshr i64 %1383, 16
  %1385 = shl i64 %1383, 48
  %1386 = or i64 %1385, %1384
  store i64 %1386, i64* %65, align 16
  %1387 = add i64 %1386, %1375
  %1388 = xor i64 %1379, %1387
  %1389 = lshr i64 %1388, 63
  %1390 = shl i64 %1388, 1
  %1391 = or i64 %1390, %1389
  %1392 = load i64, i64* %123, align 8
  %1393 = load i64, i64* %126, align 8
  %1394 = add i64 %1393, %1392
  %1395 = load i64, i64* %119, align 16
  %1396 = add i64 %1394, %1395
  %1397 = load i64, i64* %69, align 8
  %1398 = xor i64 %1397, %1396
  %1399 = lshr i64 %1398, 32
  %1400 = shl i64 %1398, 32
  %1401 = or i64 %1400, %1399
  %1402 = load i64, i64* %54, align 8
  %1403 = add i64 %1401, %1402
  %1404 = xor i64 %1393, %1403
  %1405 = lshr i64 %1404, 24
  %1406 = shl i64 %1404, 40
  %1407 = or i64 %1406, %1405
  %1408 = add i64 %1407, %1396
  %1409 = load i64, i64* %182, align 16
  %1410 = add i64 %1408, %1409
  store i64 %1410, i64* %123, align 8
  %1411 = xor i64 %1401, %1410
  %1412 = lshr i64 %1411, 16
  %1413 = shl i64 %1411, 48
  %1414 = or i64 %1413, %1412
  %1415 = add i64 %1414, %1403
  %1416 = xor i64 %1407, %1415
  %1417 = lshr i64 %1416, 63
  %1418 = shl i64 %1416, 1
  %1419 = or i64 %1418, %1417
  %1420 = load i64, i64* %70, align 16
  %1421 = add i64 %1364, %1420
  %1422 = load i64, i64* %72, align 16
  %1423 = add i64 %1421, %1422
  %1424 = xor i64 %1414, %1423
  %1425 = lshr i64 %1424, 32
  %1426 = shl i64 %1424, 32
  %1427 = or i64 %1426, %1425
  %1428 = add i64 %1427, %1387
  %1429 = xor i64 %1364, %1428
  %1430 = lshr i64 %1429, 24
  %1431 = shl i64 %1429, 40
  %1432 = or i64 %1431, %1430
  %1433 = add i64 %1432, %1423
  %1434 = load i64, i64* %150, align 8
  %1435 = add i64 %1433, %1434
  store i64 %1435, i64* %70, align 16
  %1436 = xor i64 %1427, %1435
  %1437 = lshr i64 %1436, 16
  %1438 = shl i64 %1436, 48
  %1439 = or i64 %1438, %1437
  store i64 %1439, i64* %69, align 8
  %1440 = add i64 %1439, %1428
  store i64 %1440, i64* %53, align 16
  %1441 = xor i64 %1432, %1440
  %1442 = lshr i64 %1441, 63
  %1443 = shl i64 %1441, 1
  %1444 = or i64 %1443, %1442
  store i64 %1444, i64* %79, align 8
  %1445 = load i64, i64* %76, align 8
  %1446 = add i64 %1391, %1445
  %1447 = load i64, i64* %130, align 16
  %1448 = add i64 %1446, %1447
  %1449 = load i64, i64* %57, align 16
  %1450 = xor i64 %1449, %1448
  %1451 = lshr i64 %1450, 32
  %1452 = shl i64 %1450, 32
  %1453 = or i64 %1452, %1451
  %1454 = add i64 %1453, %1415
  %1455 = xor i64 %1391, %1454
  %1456 = lshr i64 %1455, 24
  %1457 = shl i64 %1455, 40
  %1458 = or i64 %1457, %1456
  %1459 = add i64 %1458, %1448
  %1460 = load i64, i64* %98, align 8
  %1461 = add i64 %1459, %1460
  store i64 %1461, i64* %76, align 8
  %1462 = xor i64 %1453, %1461
  %1463 = lshr i64 %1462, 16
  %1464 = shl i64 %1462, 48
  %1465 = or i64 %1464, %1463
  %1466 = add i64 %1465, %1454
  store i64 %1466, i64* %54, align 8
  %1467 = xor i64 %1458, %1466
  %1468 = lshr i64 %1467, 63
  %1469 = shl i64 %1467, 1
  %1470 = or i64 %1469, %1468
  store i64 %1470, i64* %118, align 16
  %1471 = load i64, i64* %117, align 16
  %1472 = add i64 %1419, %1471
  %1473 = load i64, i64* %177, align 8
  %1474 = add i64 %1472, %1473
  %1475 = load i64, i64* %61, align 8
  %1476 = xor i64 %1475, %1474
  %1477 = lshr i64 %1476, 32
  %1478 = shl i64 %1476, 32
  %1479 = or i64 %1478, %1477
  %1480 = load i64, i64* %51, align 16
  %1481 = add i64 %1479, %1480
  %1482 = xor i64 %1419, %1481
  %1483 = lshr i64 %1482, 24
  %1484 = shl i64 %1482, 40
  %1485 = or i64 %1484, %1483
  %1486 = add i64 %1485, %1474
  %1487 = load i64, i64* %83, align 16
  %1488 = add i64 %1486, %1487
  store i64 %1488, i64* %117, align 16
  %1489 = xor i64 %1479, %1488
  %1490 = lshr i64 %1489, 16
  %1491 = shl i64 %1489, 48
  %1492 = or i64 %1491, %1490
  %1493 = add i64 %1492, %1481
  %1494 = xor i64 %1485, %1493
  %1495 = lshr i64 %1494, 63
  %1496 = shl i64 %1494, 1
  %1497 = or i64 %1496, %1495
  store i64 %1497, i64* %126, align 8
  %1498 = load i64, i64* %123, align 8
  %1499 = load i64, i64* %71, align 16
  %1500 = add i64 %1499, %1498
  %1501 = load i64, i64* %175, align 16
  %1502 = add i64 %1500, %1501
  %1503 = load i64, i64* %65, align 16
  %1504 = xor i64 %1503, %1502
  %1505 = lshr i64 %1504, 32
  %1506 = shl i64 %1504, 32
  %1507 = or i64 %1506, %1505
  %1508 = load i64, i64* %52, align 8
  %1509 = add i64 %1507, %1508
  %1510 = xor i64 %1499, %1509
  %1511 = lshr i64 %1510, 24
  %1512 = shl i64 %1510, 40
  %1513 = or i64 %1512, %1511
  %1514 = add i64 %1513, %1502
  %1515 = load i64, i64* %201, align 8
  %1516 = add i64 %1514, %1515
  store i64 %1516, i64* %123, align 8
  %1517 = xor i64 %1507, %1516
  %1518 = lshr i64 %1517, 16
  %1519 = shl i64 %1517, 48
  %1520 = or i64 %1519, %1518
  %1521 = add i64 %1520, %1509
  %1522 = xor i64 %1513, %1521
  %1523 = lshr i64 %1522, 63
  %1524 = shl i64 %1522, 1
  %1525 = or i64 %1524, %1523
  %1526 = load i64, i64* %70, align 16
  %1527 = add i64 %1525, %1526
  %1528 = load i64, i64* %238, align 8
  %1529 = add i64 %1527, %1528
  %1530 = xor i64 %1465, %1529
  %1531 = lshr i64 %1530, 32
  %1532 = shl i64 %1530, 32
  %1533 = or i64 %1532, %1531
  %1534 = add i64 %1533, %1493
  %1535 = xor i64 %1525, %1534
  %1536 = lshr i64 %1535, 24
  %1537 = shl i64 %1535, 40
  %1538 = or i64 %1537, %1536
  %1539 = add i64 %1538, %1529
  %1540 = add i64 %1539, %1515
  store i64 %1540, i64* %70, align 16
  %1541 = xor i64 %1533, %1540
  %1542 = lshr i64 %1541, 16
  %1543 = shl i64 %1541, 48
  %1544 = or i64 %1543, %1542
  store i64 %1544, i64* %57, align 16
  %1545 = add i64 %1544, %1534
  store i64 %1545, i64* %51, align 16
  %1546 = xor i64 %1538, %1545
  %1547 = lshr i64 %1546, 63
  %1548 = shl i64 %1546, 1
  %1549 = or i64 %1548, %1547
  store i64 %1549, i64* %71, align 16
  %1550 = load i64, i64* %76, align 8
  %1551 = load i64, i64* %79, align 8
  %1552 = add i64 %1551, %1550
  %1553 = load i64, i64* %150, align 8
  %1554 = add i64 %1552, %1553
  %1555 = xor i64 %1492, %1554
  %1556 = lshr i64 %1555, 32
  %1557 = shl i64 %1555, 32
  %1558 = or i64 %1557, %1556
  %1559 = add i64 %1558, %1521
  %1560 = xor i64 %1551, %1559
  %1561 = lshr i64 %1560, 24
  %1562 = shl i64 %1560, 40
  %1563 = or i64 %1562, %1561
  %1564 = add i64 %1563, %1554
  %1565 = load i64, i64* %253, align 16
  %1566 = add i64 %1564, %1565
  store i64 %1566, i64* %76, align 8
  %1567 = xor i64 %1558, %1566
  %1568 = lshr i64 %1567, 16
  %1569 = shl i64 %1567, 48
  %1570 = or i64 %1569, %1568
  store i64 %1570, i64* %61, align 8
  %1571 = add i64 %1570, %1559
  store i64 %1571, i64* %52, align 8
  %1572 = xor i64 %1563, %1571
  %1573 = lshr i64 %1572, 63
  %1574 = shl i64 %1572, 1
  %1575 = or i64 %1574, %1573
  %1576 = load i64, i64* %117, align 16
  %1577 = load i64, i64* %118, align 16
  %1578 = add i64 %1577, %1576
  %1579 = load i64, i64* %223, align 16
  %1580 = add i64 %1578, %1579
  %1581 = xor i64 %1520, %1580
  %1582 = lshr i64 %1581, 32
  %1583 = shl i64 %1581, 32
  %1584 = or i64 %1583, %1582
  %1585 = load i64, i64* %53, align 16
  %1586 = add i64 %1584, %1585
  %1587 = xor i64 %1577, %1586
  %1588 = lshr i64 %1587, 24
  %1589 = shl i64 %1587, 40
  %1590 = or i64 %1589, %1588
  %1591 = add i64 %1590, %1580
  %1592 = load i64, i64* %74, align 8
  %1593 = add i64 %1591, %1592
  store i64 %1593, i64* %117, align 16
  %1594 = xor i64 %1584, %1593
  %1595 = lshr i64 %1594, 16
  %1596 = shl i64 %1594, 48
  %1597 = or i64 %1596, %1595
  store i64 %1597, i64* %65, align 16
  %1598 = add i64 %1597, %1586
  %1599 = xor i64 %1590, %1598
  %1600 = lshr i64 %1599, 63
  %1601 = shl i64 %1599, 1
  %1602 = or i64 %1601, %1600
  %1603 = load i64, i64* %123, align 8
  %1604 = load i64, i64* %126, align 8
  %1605 = add i64 %1604, %1603
  %1606 = load i64, i64* %98, align 8
  %1607 = add i64 %1605, %1606
  %1608 = load i64, i64* %69, align 8
  %1609 = xor i64 %1608, %1607
  %1610 = lshr i64 %1609, 32
  %1611 = shl i64 %1609, 32
  %1612 = or i64 %1611, %1610
  %1613 = load i64, i64* %54, align 8
  %1614 = add i64 %1612, %1613
  %1615 = xor i64 %1604, %1614
  %1616 = lshr i64 %1615, 24
  %1617 = shl i64 %1615, 40
  %1618 = or i64 %1617, %1616
  %1619 = add i64 %1618, %1607
  %1620 = load i64, i64* %177, align 8
  %1621 = add i64 %1619, %1620
  store i64 %1621, i64* %123, align 8
  %1622 = xor i64 %1612, %1621
  %1623 = lshr i64 %1622, 16
  %1624 = shl i64 %1622, 48
  %1625 = or i64 %1624, %1623
  %1626 = add i64 %1625, %1614
  %1627 = xor i64 %1618, %1626
  %1628 = lshr i64 %1627, 63
  %1629 = shl i64 %1627, 1
  %1630 = or i64 %1629, %1628
  %1631 = load i64, i64* %70, align 16
  %1632 = add i64 %1575, %1631
  %1633 = load i64, i64* %121, align 8
  %1634 = add i64 %1632, %1633
  %1635 = xor i64 %1625, %1634
  %1636 = lshr i64 %1635, 32
  %1637 = shl i64 %1635, 32
  %1638 = or i64 %1637, %1636
  %1639 = add i64 %1638, %1598
  %1640 = xor i64 %1575, %1639
  %1641 = lshr i64 %1640, 24
  %1642 = shl i64 %1640, 40
  %1643 = or i64 %1642, %1641
  %1644 = add i64 %1643, %1634
  %1645 = load i64, i64* %72, align 16
  %1646 = add i64 %1644, %1645
  store i64 %1646, i64* %70, align 16
  %1647 = xor i64 %1638, %1646
  %1648 = lshr i64 %1647, 16
  %1649 = shl i64 %1647, 48
  %1650 = or i64 %1649, %1648
  store i64 %1650, i64* %69, align 8
  %1651 = add i64 %1650, %1639
  store i64 %1651, i64* %53, align 16
  %1652 = xor i64 %1643, %1651
  %1653 = lshr i64 %1652, 63
  %1654 = shl i64 %1652, 1
  %1655 = or i64 %1654, %1653
  store i64 %1655, i64* %79, align 8
  %1656 = load i64, i64* %76, align 8
  %1657 = add i64 %1602, %1656
  %1658 = load i64, i64* %268, align 8
  %1659 = add i64 %1657, %1658
  %1660 = load i64, i64* %57, align 16
  %1661 = xor i64 %1660, %1659
  %1662 = lshr i64 %1661, 32
  %1663 = shl i64 %1661, 32
  %1664 = or i64 %1663, %1662
  %1665 = add i64 %1664, %1626
  %1666 = xor i64 %1602, %1665
  %1667 = lshr i64 %1666, 24
  %1668 = shl i64 %1666, 40
  %1669 = or i64 %1668, %1667
  %1670 = add i64 %1669, %1659
  %1671 = load i64, i64* %119, align 16
  %1672 = add i64 %1670, %1671
  store i64 %1672, i64* %76, align 8
  %1673 = xor i64 %1664, %1672
  %1674 = lshr i64 %1673, 16
  %1675 = shl i64 %1673, 48
  %1676 = or i64 %1675, %1674
  %1677 = add i64 %1676, %1665
  store i64 %1677, i64* %54, align 8
  %1678 = xor i64 %1669, %1677
  %1679 = lshr i64 %1678, 63
  %1680 = shl i64 %1678, 1
  %1681 = or i64 %1680, %1679
  store i64 %1681, i64* %118, align 16
  %1682 = load i64, i64* %117, align 16
  %1683 = add i64 %1630, %1682
  %1684 = load i64, i64* %175, align 16
  %1685 = add i64 %1683, %1684
  %1686 = load i64, i64* %61, align 8
  %1687 = xor i64 %1686, %1685
  %1688 = lshr i64 %1687, 32
  %1689 = shl i64 %1687, 32
  %1690 = or i64 %1689, %1688
  %1691 = load i64, i64* %51, align 16
  %1692 = add i64 %1690, %1691
  %1693 = xor i64 %1630, %1692
  %1694 = lshr i64 %1693, 24
  %1695 = shl i64 %1693, 40
  %1696 = or i64 %1695, %1694
  %1697 = add i64 %1696, %1685
  %1698 = load i64, i64* %130, align 16
  %1699 = add i64 %1697, %1698
  store i64 %1699, i64* %117, align 16
  %1700 = xor i64 %1690, %1699
  %1701 = lshr i64 %1700, 16
  %1702 = shl i64 %1700, 48
  %1703 = or i64 %1702, %1701
  %1704 = add i64 %1703, %1692
  %1705 = xor i64 %1696, %1704
  %1706 = lshr i64 %1705, 63
  %1707 = shl i64 %1705, 1
  %1708 = or i64 %1707, %1706
  store i64 %1708, i64* %126, align 8
  %1709 = load i64, i64* %123, align 8
  %1710 = load i64, i64* %71, align 16
  %1711 = add i64 %1710, %1709
  %1712 = load i64, i64* %83, align 16
  %1713 = add i64 %1711, %1712
  %1714 = load i64, i64* %65, align 16
  %1715 = xor i64 %1714, %1713
  %1716 = lshr i64 %1715, 32
  %1717 = shl i64 %1715, 32
  %1718 = or i64 %1717, %1716
  %1719 = load i64, i64* %52, align 8
  %1720 = add i64 %1718, %1719
  %1721 = xor i64 %1710, %1720
  %1722 = lshr i64 %1721, 24
  %1723 = shl i64 %1721, 40
  %1724 = or i64 %1723, %1722
  %1725 = add i64 %1724, %1713
  %1726 = load i64, i64* %182, align 16
  %1727 = add i64 %1725, %1726
  store i64 %1727, i64* %123, align 8
  %1728 = xor i64 %1718, %1727
  %1729 = lshr i64 %1728, 16
  %1730 = shl i64 %1728, 48
  %1731 = or i64 %1730, %1729
  %1732 = add i64 %1731, %1720
  %1733 = xor i64 %1724, %1732
  %1734 = lshr i64 %1733, 63
  %1735 = shl i64 %1733, 1
  %1736 = or i64 %1735, %1734
  %1737 = load i64, i64* %70, align 16
  %1738 = add i64 %1736, %1737
  %1739 = add i64 %1738, %1698
  %1740 = xor i64 %1676, %1739
  %1741 = lshr i64 %1740, 32
  %1742 = shl i64 %1740, 32
  %1743 = or i64 %1742, %1741
  %1744 = add i64 %1743, %1704
  %1745 = xor i64 %1736, %1744
  %1746 = lshr i64 %1745, 24
  %1747 = shl i64 %1745, 40
  %1748 = or i64 %1747, %1746
  %1749 = add i64 %1748, %1739
  %1750 = load i64, i64* %268, align 8
  %1751 = add i64 %1749, %1750
  store i64 %1751, i64* %70, align 16
  %1752 = xor i64 %1743, %1751
  %1753 = lshr i64 %1752, 16
  %1754 = shl i64 %1752, 48
  %1755 = or i64 %1754, %1753
  store i64 %1755, i64* %57, align 16
  %1756 = add i64 %1755, %1744
  store i64 %1756, i64* %51, align 16
  %1757 = xor i64 %1748, %1756
  %1758 = lshr i64 %1757, 63
  %1759 = shl i64 %1757, 1
  %1760 = or i64 %1759, %1758
  store i64 %1760, i64* %71, align 16
  %1761 = load i64, i64* %76, align 8
  %1762 = load i64, i64* %79, align 8
  %1763 = add i64 %1762, %1761
  %1764 = load i64, i64* %253, align 16
  %1765 = add i64 %1763, %1764
  %1766 = xor i64 %1703, %1765
  %1767 = lshr i64 %1766, 32
  %1768 = shl i64 %1766, 32
  %1769 = or i64 %1768, %1767
  %1770 = add i64 %1769, %1732
  %1771 = xor i64 %1762, %1770
  %1772 = lshr i64 %1771, 24
  %1773 = shl i64 %1771, 40
  %1774 = or i64 %1773, %1772
  %1775 = add i64 %1774, %1765
  %1776 = load i64, i64* %177, align 8
  %1777 = add i64 %1775, %1776
  store i64 %1777, i64* %76, align 8
  %1778 = xor i64 %1769, %1777
  %1779 = lshr i64 %1778, 16
  %1780 = shl i64 %1778, 48
  %1781 = or i64 %1780, %1779
  store i64 %1781, i64* %61, align 8
  %1782 = add i64 %1781, %1770
  store i64 %1782, i64* %52, align 8
  %1783 = xor i64 %1774, %1782
  %1784 = lshr i64 %1783, 63
  %1785 = shl i64 %1783, 1
  %1786 = or i64 %1785, %1784
  %1787 = load i64, i64* %117, align 16
  %1788 = load i64, i64* %118, align 16
  %1789 = add i64 %1788, %1787
  %1790 = load i64, i64* %201, align 8
  %1791 = add i64 %1789, %1790
  %1792 = xor i64 %1731, %1791
  %1793 = lshr i64 %1792, 32
  %1794 = shl i64 %1792, 32
  %1795 = or i64 %1794, %1793
  %1796 = load i64, i64* %53, align 16
  %1797 = add i64 %1795, %1796
  %1798 = xor i64 %1788, %1797
  %1799 = lshr i64 %1798, 24
  %1800 = shl i64 %1798, 40
  %1801 = or i64 %1800, %1799
  %1802 = add i64 %1801, %1791
  %1803 = load i64, i64* %98, align 8
  %1804 = add i64 %1802, %1803
  store i64 %1804, i64* %117, align 16
  %1805 = xor i64 %1795, %1804
  %1806 = lshr i64 %1805, 16
  %1807 = shl i64 %1805, 48
  %1808 = or i64 %1807, %1806
  store i64 %1808, i64* %65, align 16
  %1809 = add i64 %1808, %1797
  %1810 = xor i64 %1801, %1809
  %1811 = lshr i64 %1810, 63
  %1812 = shl i64 %1810, 1
  %1813 = or i64 %1812, %1811
  %1814 = load i64, i64* %123, align 8
  %1815 = load i64, i64* %126, align 8
  %1816 = add i64 %1815, %1814
  %1817 = load i64, i64* %72, align 16
  %1818 = add i64 %1816, %1817
  %1819 = load i64, i64* %69, align 8
  %1820 = xor i64 %1819, %1818
  %1821 = lshr i64 %1820, 32
  %1822 = shl i64 %1820, 32
  %1823 = or i64 %1822, %1821
  %1824 = load i64, i64* %54, align 8
  %1825 = add i64 %1823, %1824
  %1826 = xor i64 %1815, %1825
  %1827 = lshr i64 %1826, 24
  %1828 = shl i64 %1826, 40
  %1829 = or i64 %1828, %1827
  %1830 = add i64 %1829, %1818
  %1831 = load i64, i64* %175, align 16
  %1832 = add i64 %1830, %1831
  store i64 %1832, i64* %123, align 8
  %1833 = xor i64 %1823, %1832
  %1834 = lshr i64 %1833, 16
  %1835 = shl i64 %1833, 48
  %1836 = or i64 %1835, %1834
  %1837 = add i64 %1836, %1825
  %1838 = xor i64 %1829, %1837
  %1839 = lshr i64 %1838, 63
  %1840 = shl i64 %1838, 1
  %1841 = or i64 %1840, %1839
  %1842 = load i64, i64* %70, align 16
  %1843 = add i64 %1786, %1842
  %1844 = load i64, i64* %223, align 16
  %1845 = add i64 %1843, %1844
  %1846 = xor i64 %1836, %1845
  %1847 = lshr i64 %1846, 32
  %1848 = shl i64 %1846, 32
  %1849 = or i64 %1848, %1847
  %1850 = add i64 %1849, %1809
  %1851 = xor i64 %1786, %1850
  %1852 = lshr i64 %1851, 24
  %1853 = shl i64 %1851, 40
  %1854 = or i64 %1853, %1852
  %1855 = add i64 %1854, %1845
  %1856 = load i64, i64* %83, align 16
  %1857 = add i64 %1855, %1856
  store i64 %1857, i64* %70, align 16
  %1858 = xor i64 %1849, %1857
  %1859 = lshr i64 %1858, 16
  %1860 = shl i64 %1858, 48
  %1861 = or i64 %1860, %1859
  store i64 %1861, i64* %69, align 8
  %1862 = add i64 %1861, %1850
  store i64 %1862, i64* %53, align 16
  %1863 = xor i64 %1854, %1862
  %1864 = lshr i64 %1863, 63
  %1865 = shl i64 %1863, 1
  %1866 = or i64 %1865, %1864
  store i64 %1866, i64* %79, align 8
  %1867 = load i64, i64* %76, align 8
  %1868 = add i64 %1813, %1867
  %1869 = load i64, i64* %238, align 8
  %1870 = add i64 %1868, %1869
  %1871 = load i64, i64* %57, align 16
  %1872 = xor i64 %1871, %1870
  %1873 = lshr i64 %1872, 32
  %1874 = shl i64 %1872, 32
  %1875 = or i64 %1874, %1873
  %1876 = add i64 %1875, %1837
  %1877 = xor i64 %1813, %1876
  %1878 = lshr i64 %1877, 24
  %1879 = shl i64 %1877, 40
  %1880 = or i64 %1879, %1878
  %1881 = add i64 %1880, %1870
  %1882 = load i64, i64* %150, align 8
  %1883 = add i64 %1881, %1882
  store i64 %1883, i64* %76, align 8
  %1884 = load i64, i64* %74, align 8
  %1885 = bitcast i64* %117 to <2 x i64>*
  %1886 = load <2 x i64>, <2 x i64>* %1885, align 16
  %1887 = load i64, i64* %71, align 16
  %1888 = insertelement <2 x i64> undef, i64 %1841, i32 0
  %1889 = insertelement <2 x i64> %1888, i64 %1887, i32 1
  %1890 = add <2 x i64> %1889, %1886
  %1891 = load i64, i64* %182, align 16
  %1892 = insertelement <2 x i64> undef, i64 %1884, i32 0
  %1893 = insertelement <2 x i64> %1892, i64 %1891, i32 1
  %1894 = add <2 x i64> %1890, %1893
  %1895 = bitcast i64* %61 to <2 x i64>*
  %1896 = load <2 x i64>, <2 x i64>* %1895, align 8
  %1897 = xor <2 x i64> %1896, %1894
  %1898 = lshr <2 x i64> %1897, <i64 32, i64 32>
  %1899 = shl <2 x i64> %1897, <i64 32, i64 32>
  %1900 = or <2 x i64> %1899, %1898
  %1901 = bitcast i64* %51 to <2 x i64>*
  %1902 = load <2 x i64>, <2 x i64>* %1901, align 16
  %1903 = add <2 x i64> %1900, %1902
  %1904 = xor <2 x i64> %1889, %1903
  %1905 = lshr <2 x i64> %1904, <i64 24, i64 24>
  %1906 = shl <2 x i64> %1904, <i64 40, i64 40>
  %1907 = or <2 x i64> %1906, %1905
  %1908 = add <2 x i64> %1907, %1894
  %1909 = bitcast i64* %119 to <2 x i64>*
  %1910 = load <2 x i64>, <2 x i64>* %1909, align 16
  %1911 = add <2 x i64> %1908, %1910
  %1912 = insertelement <2 x i64> undef, i64 %1875, i32 0
  %1913 = shufflevector <2 x i64> %1912, <2 x i64> %1900, <2 x i32> <i32 0, i32 2>
  %1914 = insertelement <2 x i64> undef, i64 %1883, i32 0
  %1915 = shufflevector <2 x i64> %1914, <2 x i64> %1911, <2 x i32> <i32 0, i32 2>
  %1916 = xor <2 x i64> %1913, %1915
  %1917 = lshr <2 x i64> %1916, <i64 16, i64 16>
  %1918 = shl <2 x i64> %1916, <i64 48, i64 48>
  %1919 = or <2 x i64> %1918, %1917
  %1920 = extractelement <2 x i64> %1919, i32 0
  %1921 = add i64 %1920, %1876
  store i64 %1921, i64* %54, align 8
  %1922 = xor i64 %1880, %1921
  %1923 = lshr i64 %1922, 63
  %1924 = shl i64 %1922, 1
  %1925 = or i64 %1924, %1923
  store i64 %1925, i64* %118, align 16
  %1926 = extractelement <2 x i64> %1907, i32 0
  %1927 = extractelement <2 x i64> %1911, i32 1
  %1928 = extractelement <2 x i64> %1900, i32 1
  %1929 = xor i64 %1928, %1927
  %1930 = lshr i64 %1929, 16
  %1931 = shl i64 %1929, 48
  %1932 = or i64 %1931, %1930
  %1933 = extractelement <2 x i64> %1919, i32 1
  %1934 = insertelement <2 x i64> undef, i64 %1933, i32 0
  %1935 = insertelement <2 x i64> %1934, i64 %1932, i32 1
  %1936 = add <2 x i64> %1935, %1903
  %1937 = extractelement <2 x i64> %1936, i32 0
  %1938 = xor i64 %1926, %1937
  %1939 = lshr i64 %1938, 63
  %1940 = shl i64 %1938, 1
  %1941 = or i64 %1940, %1939
  store i64 %1941, i64* %126, align 8
  %1942 = bitcast i64* %117 to <2 x i64>*
  store <2 x i64> %1911, <2 x i64>* %1942, align 16
  %1943 = extractelement <2 x i64> %1907, i32 1
  %1944 = extractelement <2 x i64> %1936, i32 1
  %1945 = xor i64 %1943, %1944
  %1946 = lshr i64 %1945, 63
  %1947 = shl i64 %1945, 1
  %1948 = or i64 %1947, %1946
  %1949 = load i64, i64* %83, align 16
  %1950 = bitcast [16 x i64]* %4 to <2 x i64>*
  %1951 = load <2 x i64>, <2 x i64>* %1950, align 16
  %1952 = load i64, i64* %79, align 8
  %1953 = insertelement <2 x i64> undef, i64 %1948, i32 0
  %1954 = insertelement <2 x i64> %1953, i64 %1952, i32 1
  %1955 = add <2 x i64> %1954, %1951
  %1956 = load i64, i64* %175, align 16
  %1957 = insertelement <2 x i64> undef, i64 %1891, i32 0
  %1958 = insertelement <2 x i64> %1957, i64 %1956, i32 1
  %1959 = add <2 x i64> %1955, %1958
  %1960 = xor <2 x i64> %1919, %1959
  %1961 = lshr <2 x i64> %1960, <i64 32, i64 32>
  %1962 = shl <2 x i64> %1960, <i64 32, i64 32>
  %1963 = or <2 x i64> %1962, %1961
  %1964 = add <2 x i64> %1963, %1936
  %1965 = xor <2 x i64> %1954, %1964
  %1966 = lshr <2 x i64> %1965, <i64 24, i64 24>
  %1967 = shl <2 x i64> %1965, <i64 40, i64 40>
  %1968 = or <2 x i64> %1967, %1966
  %1969 = add <2 x i64> %1968, %1959
  %1970 = load i64, i64* %119, align 16
  %1971 = insertelement <2 x i64> undef, i64 %1949, i32 0
  %1972 = insertelement <2 x i64> %1971, i64 %1970, i32 1
  %1973 = add <2 x i64> %1969, %1972
  %1974 = xor <2 x i64> %1963, %1973
  %1975 = lshr <2 x i64> %1974, <i64 16, i64 16>
  %1976 = shl <2 x i64> %1974, <i64 48, i64 48>
  %1977 = or <2 x i64> %1976, %1975
  %1978 = extractelement <2 x i64> %1977, i32 0
  %1979 = extractelement <2 x i64> %1964, i32 0
  %1980 = add i64 %1978, %1979
  store i64 %1980, i64* %51, align 16
  %1981 = extractelement <2 x i64> %1968, i32 0
  %1982 = xor i64 %1981, %1980
  %1983 = lshr i64 %1982, 63
  %1984 = shl i64 %1982, 1
  %1985 = or i64 %1984, %1983
  store i64 %1985, i64* %71, align 16
  %1986 = bitcast [16 x i64]* %4 to <2 x i64>*
  store <2 x i64> %1973, <2 x i64>* %1986, align 16
  %1987 = bitcast i64* %57 to <2 x i64>*
  store <2 x i64> %1977, <2 x i64>* %1987, align 16
  %1988 = extractelement <2 x i64> %1977, i32 1
  %1989 = extractelement <2 x i64> %1964, i32 1
  %1990 = load i64, i64* %117, align 16
  %1991 = load i64, i64* %118, align 16
  %1992 = add i64 %1991, %1990
  %1993 = load i64, i64* %150, align 8
  %1994 = add i64 %1992, %1993
  %1995 = xor i64 %1932, %1994
  %1996 = lshr i64 %1995, 32
  %1997 = shl i64 %1995, 32
  %1998 = or i64 %1997, %1996
  %1999 = load i64, i64* %53, align 16
  %2000 = add i64 %1998, %1999
  %2001 = xor i64 %1991, %2000
  %2002 = lshr i64 %2001, 24
  %2003 = shl i64 %2001, 40
  %2004 = or i64 %2003, %2002
  %2005 = add i64 %2004, %1994
  %2006 = load i64, i64* %130, align 16
  %2007 = add i64 %2005, %2006
  %2008 = xor i64 %1998, %2007
  %2009 = lshr i64 %2008, 16
  %2010 = shl i64 %2008, 48
  %2011 = or i64 %2010, %2009
  %2012 = insertelement <2 x i64> undef, i64 %1988, i32 0
  %2013 = insertelement <2 x i64> %2012, i64 %2011, i32 1
  %2014 = insertelement <2 x i64> undef, i64 %1989, i32 0
  %2015 = insertelement <2 x i64> %2014, i64 %2000, i32 1
  %2016 = add <2 x i64> %2013, %2015
  %2017 = extractelement <2 x i64> %2016, i32 0
  store i64 %2017, i64* %52, align 8
  %2018 = extractelement <2 x i64> %1968, i32 1
  store i64 %2007, i64* %117, align 16
  store i64 %2011, i64* %65, align 16
  %2019 = insertelement <2 x i64> undef, i64 %2018, i32 0
  %2020 = insertelement <2 x i64> %2019, i64 %2004, i32 1
  %2021 = xor <2 x i64> %2020, %2016
  %2022 = lshr <2 x i64> %2021, <i64 63, i64 63>
  %2023 = shl <2 x i64> %2021, <i64 1, i64 1>
  %2024 = or <2 x i64> %2023, %2022
  %2025 = load i64, i64* %123, align 8
  %2026 = load i64, i64* %126, align 8
  %2027 = add i64 %2026, %2025
  %2028 = load i64, i64* %74, align 8
  %2029 = add i64 %2027, %2028
  %2030 = load i64, i64* %69, align 8
  %2031 = xor i64 %2030, %2029
  %2032 = lshr i64 %2031, 32
  %2033 = shl i64 %2031, 32
  %2034 = or i64 %2033, %2032
  %2035 = load i64, i64* %54, align 8
  %2036 = add i64 %2034, %2035
  %2037 = xor i64 %2026, %2036
  %2038 = lshr i64 %2037, 24
  %2039 = shl i64 %2037, 40
  %2040 = or i64 %2039, %2038
  %2041 = add i64 %2040, %2029
  %2042 = load i64, i64* %121, align 8
  %2043 = add i64 %2041, %2042
  store i64 %2043, i64* %123, align 8
  %2044 = xor i64 %2034, %2043
  %2045 = lshr i64 %2044, 16
  %2046 = shl i64 %2044, 48
  %2047 = or i64 %2046, %2045
  %2048 = add i64 %2047, %2036
  %2049 = xor i64 %2040, %2048
  %2050 = lshr i64 %2049, 63
  %2051 = shl i64 %2049, 1
  %2052 = or i64 %2051, %2050
  %2053 = load i64, i64* %268, align 8
  %2054 = load i64, i64* %201, align 8
  %2055 = bitcast [16 x i64]* %4 to <2 x i64>*
  %2056 = load <2 x i64>, <2 x i64>* %2055, align 16
  %2057 = add <2 x i64> %2024, %2056
  %2058 = load i64, i64* %177, align 8
  %2059 = insertelement <2 x i64> undef, i64 %2053, i32 0
  %2060 = insertelement <2 x i64> %2059, i64 %2058, i32 1
  %2061 = add <2 x i64> %2057, %2060
  %2062 = load i64, i64* %57, align 16
  %2063 = insertelement <2 x i64> undef, i64 %2047, i32 0
  %2064 = insertelement <2 x i64> %2063, i64 %2062, i32 1
  %2065 = xor <2 x i64> %2064, %2061
  %2066 = lshr <2 x i64> %2065, <i64 32, i64 32>
  %2067 = shl <2 x i64> %2065, <i64 32, i64 32>
  %2068 = or <2 x i64> %2067, %2066
  %2069 = extractelement <2 x i64> %2016, i32 1
  %2070 = insertelement <2 x i64> undef, i64 %2069, i32 0
  %2071 = insertelement <2 x i64> %2070, i64 %2048, i32 1
  %2072 = add <2 x i64> %2068, %2071
  %2073 = xor <2 x i64> %2024, %2072
  %2074 = lshr <2 x i64> %2073, <i64 24, i64 24>
  %2075 = shl <2 x i64> %2073, <i64 40, i64 40>
  %2076 = or <2 x i64> %2075, %2074
  %2077 = add <2 x i64> %2076, %2061
  %2078 = load i64, i64* %253, align 16
  %2079 = insertelement <2 x i64> undef, i64 %2054, i32 0
  %2080 = insertelement <2 x i64> %2079, i64 %2078, i32 1
  %2081 = add <2 x i64> %2077, %2080
  %2082 = xor <2 x i64> %2068, %2081
  %2083 = lshr <2 x i64> %2082, <i64 16, i64 16>
  %2084 = shl <2 x i64> %2082, <i64 48, i64 48>
  %2085 = or <2 x i64> %2084, %2083
  %2086 = extractelement <2 x i64> %2085, i32 0
  store i64 %2086, i64* %69, align 8
  %2087 = add <2 x i64> %2085, %2072
  %2088 = bitcast [16 x i64]* %4 to <2 x i64>*
  store <2 x i64> %2081, <2 x i64>* %2088, align 16
  %2089 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> %2087, <2 x i64>* %2089, align 16
  %2090 = xor <2 x i64> %2076, %2087
  %2091 = lshr <2 x i64> %2090, <i64 63, i64 63>
  %2092 = shl <2 x i64> %2090, <i64 1, i64 1>
  %2093 = or <2 x i64> %2092, %2091
  %2094 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %2093, <2 x i64>* %2094, align 8
  %2095 = load i64, i64* %117, align 16
  %2096 = add i64 %2052, %2095
  %2097 = load i64, i64* %98, align 8
  %2098 = add i64 %2096, %2097
  %2099 = load i64, i64* %61, align 8
  %2100 = xor i64 %2099, %2098
  %2101 = lshr i64 %2100, 32
  %2102 = shl i64 %2100, 32
  %2103 = or i64 %2102, %2101
  %2104 = load i64, i64* %51, align 16
  %2105 = add i64 %2103, %2104
  %2106 = xor i64 %2052, %2105
  %2107 = lshr i64 %2106, 24
  %2108 = shl i64 %2106, 40
  %2109 = or i64 %2108, %2107
  %2110 = add i64 %2109, %2098
  %2111 = load i64, i64* %223, align 16
  %2112 = add i64 %2110, %2111
  store i64 %2112, i64* %117, align 16
  %2113 = xor i64 %2103, %2112
  %2114 = lshr i64 %2113, 16
  %2115 = shl i64 %2113, 48
  %2116 = or i64 %2115, %2114
  %2117 = add i64 %2116, %2105
  %2118 = xor i64 %2109, %2117
  %2119 = lshr i64 %2118, 63
  %2120 = shl i64 %2118, 1
  %2121 = or i64 %2120, %2119
  store i64 %2121, i64* %126, align 8
  %2122 = load i64, i64* %123, align 8
  %2123 = load i64, i64* %71, align 16
  %2124 = add i64 %2123, %2122
  %2125 = load i64, i64* %238, align 8
  %2126 = add i64 %2124, %2125
  %2127 = load i64, i64* %65, align 16
  %2128 = xor i64 %2127, %2126
  %2129 = lshr i64 %2128, 32
  %2130 = shl i64 %2128, 32
  %2131 = or i64 %2130, %2129
  %2132 = load i64, i64* %52, align 8
  %2133 = add i64 %2131, %2132
  %2134 = xor i64 %2123, %2133
  %2135 = lshr i64 %2134, 24
  %2136 = shl i64 %2134, 40
  %2137 = or i64 %2136, %2135
  %2138 = add i64 %2137, %2126
  %2139 = load i64, i64* %72, align 16
  %2140 = add i64 %2138, %2139
  store i64 %2140, i64* %123, align 8
  %2141 = xor i64 %2131, %2140
  %2142 = lshr i64 %2141, 16
  %2143 = shl i64 %2141, 48
  %2144 = or i64 %2143, %2142
  %2145 = add i64 %2144, %2133
  %2146 = xor i64 %2137, %2145
  %2147 = lshr i64 %2146, 63
  %2148 = shl i64 %2146, 1
  %2149 = or i64 %2148, %2147
  %2150 = load i64, i64* %70, align 16
  %2151 = add i64 %2149, %2150
  %2152 = add i64 %2151, %2139
  %2153 = extractelement <2 x i64> %2085, i32 1
  %2154 = xor i64 %2153, %2152
  %2155 = lshr i64 %2154, 32
  %2156 = shl i64 %2154, 32
  %2157 = or i64 %2156, %2155
  %2158 = add i64 %2157, %2117
  %2159 = xor i64 %2149, %2158
  %2160 = lshr i64 %2159, 24
  %2161 = shl i64 %2159, 40
  %2162 = or i64 %2161, %2160
  %2163 = add i64 %2162, %2152
  %2164 = load i64, i64* %74, align 8
  %2165 = add i64 %2163, %2164
  store i64 %2165, i64* %70, align 16
  %2166 = xor i64 %2157, %2165
  %2167 = lshr i64 %2166, 16
  %2168 = shl i64 %2166, 48
  %2169 = or i64 %2168, %2167
  store i64 %2169, i64* %57, align 16
  %2170 = add i64 %2169, %2158
  store i64 %2170, i64* %51, align 16
  %2171 = xor i64 %2162, %2170
  %2172 = lshr i64 %2171, 63
  %2173 = shl i64 %2171, 1
  %2174 = or i64 %2173, %2172
  store i64 %2174, i64* %71, align 16
  %2175 = load i64, i64* %76, align 8
  %2176 = load i64, i64* %79, align 8
  %2177 = add i64 %2176, %2175
  %2178 = load i64, i64* %83, align 16
  %2179 = add i64 %2177, %2178
  %2180 = xor i64 %2116, %2179
  %2181 = lshr i64 %2180, 32
  %2182 = shl i64 %2180, 32
  %2183 = or i64 %2182, %2181
  %2184 = add i64 %2183, %2145
  %2185 = xor i64 %2176, %2184
  %2186 = lshr i64 %2185, 24
  %2187 = shl i64 %2185, 40
  %2188 = or i64 %2187, %2186
  %2189 = add i64 %2188, %2179
  %2190 = load i64, i64* %98, align 8
  %2191 = add i64 %2189, %2190
  store i64 %2191, i64* %76, align 8
  %2192 = xor i64 %2183, %2191
  %2193 = lshr i64 %2192, 16
  %2194 = shl i64 %2192, 48
  %2195 = or i64 %2194, %2193
  store i64 %2195, i64* %61, align 8
  %2196 = add i64 %2195, %2184
  store i64 %2196, i64* %52, align 8
  %2197 = xor i64 %2188, %2196
  %2198 = lshr i64 %2197, 63
  %2199 = shl i64 %2197, 1
  %2200 = or i64 %2199, %2198
  %2201 = load i64, i64* %117, align 16
  %2202 = load i64, i64* %118, align 16
  %2203 = add i64 %2202, %2201
  %2204 = load i64, i64* %119, align 16
  %2205 = add i64 %2203, %2204
  %2206 = xor i64 %2144, %2205
  %2207 = lshr i64 %2206, 32
  %2208 = shl i64 %2206, 32
  %2209 = or i64 %2208, %2207
  %2210 = load i64, i64* %53, align 16
  %2211 = add i64 %2209, %2210
  %2212 = xor i64 %2202, %2211
  %2213 = lshr i64 %2212, 24
  %2214 = shl i64 %2212, 40
  %2215 = or i64 %2214, %2213
  %2216 = add i64 %2215, %2205
  %2217 = load i64, i64* %121, align 8
  %2218 = add i64 %2216, %2217
  store i64 %2218, i64* %117, align 16
  %2219 = xor i64 %2209, %2218
  %2220 = lshr i64 %2219, 16
  %2221 = shl i64 %2219, 48
  %2222 = or i64 %2221, %2220
  store i64 %2222, i64* %65, align 16
  %2223 = add i64 %2222, %2211
  %2224 = xor i64 %2215, %2223
  %2225 = lshr i64 %2224, 63
  %2226 = shl i64 %2224, 1
  %2227 = or i64 %2226, %2225
  %2228 = load i64, i64* %123, align 8
  %2229 = load i64, i64* %126, align 8
  %2230 = add i64 %2229, %2228
  %2231 = load i64, i64* %130, align 16
  %2232 = add i64 %2230, %2231
  %2233 = load i64, i64* %69, align 8
  %2234 = xor i64 %2233, %2232
  %2235 = lshr i64 %2234, 32
  %2236 = shl i64 %2234, 32
  %2237 = or i64 %2236, %2235
  %2238 = load i64, i64* %54, align 8
  %2239 = add i64 %2237, %2238
  %2240 = xor i64 %2229, %2239
  %2241 = lshr i64 %2240, 24
  %2242 = shl i64 %2240, 40
  %2243 = or i64 %2242, %2241
  %2244 = add i64 %2243, %2232
  %2245 = load i64, i64* %150, align 8
  %2246 = add i64 %2244, %2245
  store i64 %2246, i64* %123, align 8
  %2247 = xor i64 %2237, %2246
  %2248 = lshr i64 %2247, 16
  %2249 = shl i64 %2247, 48
  %2250 = or i64 %2249, %2248
  %2251 = add i64 %2250, %2239
  %2252 = xor i64 %2243, %2251
  %2253 = lshr i64 %2252, 63
  %2254 = shl i64 %2252, 1
  %2255 = or i64 %2254, %2253
  %2256 = load i64, i64* %70, align 16
  %2257 = add i64 %2200, %2256
  %2258 = load i64, i64* %175, align 16
  %2259 = add i64 %2257, %2258
  %2260 = xor i64 %2250, %2259
  %2261 = lshr i64 %2260, 32
  %2262 = shl i64 %2260, 32
  %2263 = or i64 %2262, %2261
  %2264 = add i64 %2263, %2223
  %2265 = xor i64 %2200, %2264
  %2266 = lshr i64 %2265, 24
  %2267 = shl i64 %2265, 40
  %2268 = or i64 %2267, %2266
  %2269 = add i64 %2268, %2259
  %2270 = load i64, i64* %177, align 8
  %2271 = add i64 %2269, %2270
  store i64 %2271, i64* %70, align 16
  %2272 = xor i64 %2263, %2271
  %2273 = lshr i64 %2272, 16
  %2274 = shl i64 %2272, 48
  %2275 = or i64 %2274, %2273
  store i64 %2275, i64* %69, align 8
  %2276 = add i64 %2275, %2264
  store i64 %2276, i64* %53, align 16
  %2277 = xor i64 %2268, %2276
  %2278 = lshr i64 %2277, 63
  %2279 = shl i64 %2277, 1
  %2280 = or i64 %2279, %2278
  store i64 %2280, i64* %79, align 8
  %2281 = load i64, i64* %76, align 8
  %2282 = add i64 %2227, %2281
  %2283 = load i64, i64* %182, align 16
  %2284 = add i64 %2282, %2283
  %2285 = load i64, i64* %57, align 16
  %2286 = xor i64 %2285, %2284
  %2287 = lshr i64 %2286, 32
  %2288 = shl i64 %2286, 32
  %2289 = or i64 %2288, %2287
  %2290 = add i64 %2289, %2251
  %2291 = xor i64 %2227, %2290
  %2292 = lshr i64 %2291, 24
  %2293 = shl i64 %2291, 40
  %2294 = or i64 %2293, %2292
  %2295 = add i64 %2294, %2284
  %2296 = load i64, i64* %201, align 8
  %2297 = add i64 %2295, %2296
  store i64 %2297, i64* %76, align 8
  %2298 = xor i64 %2289, %2297
  %2299 = lshr i64 %2298, 16
  %2300 = shl i64 %2298, 48
  %2301 = or i64 %2300, %2299
  %2302 = add i64 %2301, %2290
  store i64 %2302, i64* %54, align 8
  %2303 = xor i64 %2294, %2302
  %2304 = lshr i64 %2303, 63
  %2305 = shl i64 %2303, 1
  %2306 = or i64 %2305, %2304
  store i64 %2306, i64* %118, align 16
  %2307 = load i64, i64* %117, align 16
  %2308 = add i64 %2255, %2307
  %2309 = load i64, i64* %223, align 16
  %2310 = add i64 %2308, %2309
  %2311 = load i64, i64* %61, align 8
  %2312 = xor i64 %2311, %2310
  %2313 = lshr i64 %2312, 32
  %2314 = shl i64 %2312, 32
  %2315 = or i64 %2314, %2313
  %2316 = load i64, i64* %51, align 16
  %2317 = add i64 %2315, %2316
  %2318 = xor i64 %2255, %2317
  %2319 = lshr i64 %2318, 24
  %2320 = shl i64 %2318, 40
  %2321 = or i64 %2320, %2319
  %2322 = add i64 %2321, %2310
  %2323 = load i64, i64* %238, align 8
  %2324 = add i64 %2322, %2323
  store i64 %2324, i64* %117, align 16
  %2325 = xor i64 %2315, %2324
  %2326 = lshr i64 %2325, 16
  %2327 = shl i64 %2325, 48
  %2328 = or i64 %2327, %2326
  %2329 = add i64 %2328, %2317
  %2330 = xor i64 %2321, %2329
  %2331 = lshr i64 %2330, 63
  %2332 = shl i64 %2330, 1
  %2333 = or i64 %2332, %2331
  store i64 %2333, i64* %126, align 8
  %2334 = load i64, i64* %123, align 8
  %2335 = load i64, i64* %71, align 16
  %2336 = add i64 %2335, %2334
  %2337 = load i64, i64* %253, align 16
  %2338 = add i64 %2336, %2337
  %2339 = load i64, i64* %65, align 16
  %2340 = xor i64 %2339, %2338
  %2341 = lshr i64 %2340, 32
  %2342 = shl i64 %2340, 32
  %2343 = or i64 %2342, %2341
  %2344 = load i64, i64* %52, align 8
  %2345 = add i64 %2343, %2344
  %2346 = xor i64 %2335, %2345
  %2347 = lshr i64 %2346, 24
  %2348 = shl i64 %2346, 40
  %2349 = or i64 %2348, %2347
  %2350 = add i64 %2349, %2338
  %2351 = load i64, i64* %268, align 8
  %2352 = add i64 %2350, %2351
  store i64 %2352, i64* %123, align 8
  %2353 = xor i64 %2343, %2352
  %2354 = lshr i64 %2353, 16
  %2355 = shl i64 %2353, 48
  %2356 = or i64 %2355, %2354
  %2357 = add i64 %2356, %2345
  %2358 = xor i64 %2349, %2357
  %2359 = lshr i64 %2358, 63
  %2360 = shl i64 %2358, 1
  %2361 = or i64 %2360, %2359
  %2362 = load i64, i64* %70, align 16
  %2363 = add i64 %2361, %2362
  %2364 = add i64 %2363, %2337
  %2365 = xor i64 %2301, %2364
  %2366 = lshr i64 %2365, 32
  %2367 = shl i64 %2365, 32
  %2368 = or i64 %2367, %2366
  %2369 = add i64 %2368, %2329
  %2370 = xor i64 %2361, %2369
  %2371 = lshr i64 %2370, 24
  %2372 = shl i64 %2370, 40
  %2373 = or i64 %2372, %2371
  %2374 = add i64 %2373, %2364
  %2375 = load i64, i64* %182, align 16
  %2376 = add i64 %2374, %2375
  store i64 %2376, i64* %70, align 16
  %2377 = xor i64 %2368, %2376
  %2378 = lshr i64 %2377, 16
  %2379 = shl i64 %2377, 48
  %2380 = or i64 %2379, %2378
  store i64 %2380, i64* %57, align 16
  %2381 = add i64 %2380, %2369
  store i64 %2381, i64* %51, align 16
  %2382 = xor i64 %2373, %2381
  %2383 = lshr i64 %2382, 63
  %2384 = shl i64 %2382, 1
  %2385 = or i64 %2384, %2383
  store i64 %2385, i64* %71, align 16
  %2386 = load i64, i64* %76, align 8
  %2387 = load i64, i64* %79, align 8
  %2388 = add i64 %2387, %2386
  %2389 = load i64, i64* %119, align 16
  %2390 = add i64 %2388, %2389
  %2391 = xor i64 %2328, %2390
  %2392 = lshr i64 %2391, 32
  %2393 = shl i64 %2391, 32
  %2394 = or i64 %2393, %2392
  %2395 = add i64 %2394, %2357
  %2396 = xor i64 %2387, %2395
  %2397 = lshr i64 %2396, 24
  %2398 = shl i64 %2396, 40
  %2399 = or i64 %2398, %2397
  %2400 = add i64 %2399, %2390
  %2401 = load i64, i64* %175, align 16
  %2402 = add i64 %2400, %2401
  store i64 %2402, i64* %76, align 8
  %2403 = xor i64 %2394, %2402
  %2404 = lshr i64 %2403, 16
  %2405 = shl i64 %2403, 48
  %2406 = or i64 %2405, %2404
  store i64 %2406, i64* %61, align 8
  %2407 = add i64 %2406, %2395
  store i64 %2407, i64* %52, align 8
  %2408 = xor i64 %2399, %2407
  %2409 = lshr i64 %2408, 63
  %2410 = shl i64 %2408, 1
  %2411 = or i64 %2410, %2409
  %2412 = load i64, i64* %117, align 16
  %2413 = load i64, i64* %118, align 16
  %2414 = add i64 %2413, %2412
  %2415 = load i64, i64* %177, align 8
  %2416 = add i64 %2414, %2415
  %2417 = xor i64 %2356, %2416
  %2418 = lshr i64 %2417, 32
  %2419 = shl i64 %2417, 32
  %2420 = or i64 %2419, %2418
  %2421 = load i64, i64* %53, align 16
  %2422 = add i64 %2420, %2421
  %2423 = xor i64 %2413, %2422
  %2424 = lshr i64 %2423, 24
  %2425 = shl i64 %2423, 40
  %2426 = or i64 %2425, %2424
  %2427 = add i64 %2426, %2416
  %2428 = load i64, i64* %268, align 8
  %2429 = add i64 %2427, %2428
  store i64 %2429, i64* %117, align 16
  %2430 = xor i64 %2420, %2429
  %2431 = lshr i64 %2430, 16
  %2432 = shl i64 %2430, 48
  %2433 = or i64 %2432, %2431
  store i64 %2433, i64* %65, align 16
  %2434 = add i64 %2433, %2422
  %2435 = xor i64 %2426, %2434
  %2436 = lshr i64 %2435, 63
  %2437 = shl i64 %2435, 1
  %2438 = or i64 %2437, %2436
  %2439 = load i64, i64* %123, align 8
  %2440 = load i64, i64* %126, align 8
  %2441 = add i64 %2440, %2439
  %2442 = load i64, i64* %238, align 8
  %2443 = add i64 %2441, %2442
  %2444 = load i64, i64* %69, align 8
  %2445 = xor i64 %2444, %2443
  %2446 = lshr i64 %2445, 32
  %2447 = shl i64 %2445, 32
  %2448 = or i64 %2447, %2446
  %2449 = load i64, i64* %54, align 8
  %2450 = add i64 %2448, %2449
  %2451 = xor i64 %2440, %2450
  %2452 = lshr i64 %2451, 24
  %2453 = shl i64 %2451, 40
  %2454 = or i64 %2453, %2452
  %2455 = add i64 %2454, %2443
  %2456 = load i64, i64* %130, align 16
  %2457 = add i64 %2455, %2456
  store i64 %2457, i64* %123, align 8
  %2458 = xor i64 %2448, %2457
  %2459 = lshr i64 %2458, 16
  %2460 = shl i64 %2458, 48
  %2461 = or i64 %2460, %2459
  %2462 = add i64 %2461, %2450
  %2463 = xor i64 %2454, %2462
  %2464 = lshr i64 %2463, 63
  %2465 = shl i64 %2463, 1
  %2466 = or i64 %2465, %2464
  %2467 = load i64, i64* %70, align 16
  %2468 = add i64 %2411, %2467
  %2469 = load i64, i64* %74, align 8
  %2470 = add i64 %2468, %2469
  %2471 = xor i64 %2461, %2470
  %2472 = lshr i64 %2471, 32
  %2473 = shl i64 %2471, 32
  %2474 = or i64 %2473, %2472
  %2475 = add i64 %2474, %2434
  %2476 = xor i64 %2411, %2475
  %2477 = lshr i64 %2476, 24
  %2478 = shl i64 %2476, 40
  %2479 = or i64 %2478, %2477
  %2480 = add i64 %2479, %2470
  %2481 = load i64, i64* %223, align 16
  %2482 = add i64 %2480, %2481
  store i64 %2482, i64* %70, align 16
  %2483 = xor i64 %2474, %2482
  %2484 = lshr i64 %2483, 16
  %2485 = shl i64 %2483, 48
  %2486 = or i64 %2485, %2484
  store i64 %2486, i64* %69, align 8
  %2487 = add i64 %2486, %2475
  store i64 %2487, i64* %53, align 16
  %2488 = xor i64 %2479, %2487
  %2489 = lshr i64 %2488, 63
  %2490 = shl i64 %2488, 1
  %2491 = or i64 %2490, %2489
  store i64 %2491, i64* %79, align 8
  %2492 = load i64, i64* %76, align 8
  %2493 = add i64 %2438, %2492
  %2494 = load i64, i64* %72, align 16
  %2495 = add i64 %2493, %2494
  %2496 = load i64, i64* %57, align 16
  %2497 = xor i64 %2496, %2495
  %2498 = lshr i64 %2497, 32
  %2499 = shl i64 %2497, 32
  %2500 = or i64 %2499, %2498
  %2501 = add i64 %2500, %2462
  %2502 = xor i64 %2438, %2501
  %2503 = lshr i64 %2502, 24
  %2504 = shl i64 %2502, 40
  %2505 = or i64 %2504, %2503
  %2506 = add i64 %2505, %2495
  %2507 = load i64, i64* %83, align 16
  %2508 = add i64 %2506, %2507
  store i64 %2508, i64* %76, align 8
  %2509 = xor i64 %2500, %2508
  %2510 = lshr i64 %2509, 16
  %2511 = shl i64 %2509, 48
  %2512 = or i64 %2511, %2510
  store i64 %2512, i64* %57, align 16
  %2513 = add i64 %2512, %2501
  store i64 %2513, i64* %54, align 8
  %2514 = xor i64 %2505, %2513
  %2515 = lshr i64 %2514, 63
  %2516 = shl i64 %2514, 1
  %2517 = or i64 %2516, %2515
  store i64 %2517, i64* %118, align 16
  %2518 = load i64, i64* %201, align 8
  %2519 = load i64, i64* %150, align 8
  %2520 = bitcast i64* %117 to <2 x i64>*
  %2521 = load <2 x i64>, <2 x i64>* %2520, align 16
  %2522 = load i64, i64* %71, align 16
  %2523 = insertelement <2 x i64> undef, i64 %2466, i32 0
  %2524 = insertelement <2 x i64> %2523, i64 %2522, i32 1
  %2525 = add <2 x i64> %2524, %2521
  %2526 = load i64, i64* %121, align 8
  %2527 = insertelement <2 x i64> undef, i64 %2518, i32 0
  %2528 = insertelement <2 x i64> %2527, i64 %2526, i32 1
  %2529 = add <2 x i64> %2525, %2528
  %2530 = bitcast i64* %61 to <2 x i64>*
  %2531 = load <2 x i64>, <2 x i64>* %2530, align 8
  %2532 = xor <2 x i64> %2531, %2529
  %2533 = lshr <2 x i64> %2532, <i64 32, i64 32>
  %2534 = shl <2 x i64> %2532, <i64 32, i64 32>
  %2535 = or <2 x i64> %2534, %2533
  %2536 = bitcast i64* %51 to <2 x i64>*
  %2537 = load <2 x i64>, <2 x i64>* %2536, align 16
  %2538 = add <2 x i64> %2535, %2537
  %2539 = xor <2 x i64> %2524, %2538
  %2540 = lshr <2 x i64> %2539, <i64 24, i64 24>
  %2541 = shl <2 x i64> %2539, <i64 40, i64 40>
  %2542 = or <2 x i64> %2541, %2540
  %2543 = add <2 x i64> %2542, %2529
  %2544 = load i64, i64* %98, align 8
  %2545 = insertelement <2 x i64> undef, i64 %2519, i32 0
  %2546 = insertelement <2 x i64> %2545, i64 %2544, i32 1
  %2547 = add <2 x i64> %2543, %2546
  %2548 = xor <2 x i64> %2535, %2547
  %2549 = lshr <2 x i64> %2548, <i64 16, i64 16>
  %2550 = shl <2 x i64> %2548, <i64 48, i64 48>
  %2551 = or <2 x i64> %2550, %2549
  %2552 = add <2 x i64> %2551, %2538
  %2553 = extractelement <2 x i64> %2552, i32 0
  %2554 = extractelement <2 x i64> %2542, i32 0
  %2555 = xor i64 %2554, %2553
  %2556 = lshr i64 %2555, 63
  %2557 = shl i64 %2555, 1
  %2558 = or i64 %2557, %2556
  store i64 %2558, i64* %126, align 8
  %2559 = bitcast i64* %117 to <2 x i64>*
  store <2 x i64> %2547, <2 x i64>* %2559, align 16
  %2560 = bitcast i64* %61 to <2 x i64>*
  store <2 x i64> %2551, <2 x i64>* %2560, align 8
  %2561 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> %2552, <2 x i64>* %2561, align 16
  %2562 = extractelement <2 x i64> %2552, i32 1
  %2563 = extractelement <2 x i64> %2542, i32 1
  %2564 = xor i64 %2563, %2562
  %2565 = lshr i64 %2564, 63
  %2566 = shl i64 %2564, 1
  %2567 = or i64 %2566, %2565
  store i64 %2567, i64* %71, align 16
  %2568 = load i64, i64* %70, align 16
  %2569 = bitcast %struct.blake2b_state__* %0 to <2 x i64>*
  %2570 = load <2 x i64>, <2 x i64>* %2569, align 8
  %2571 = insertelement <2 x i64> undef, i64 %2568, i32 0
  %2572 = insertelement <2 x i64> %2571, i64 %2508, i32 1
  %2573 = xor <2 x i64> %2572, %2570
  %2574 = xor <2 x i64> %2573, %2552
  %2575 = bitcast %struct.blake2b_state__* %0 to <2 x i64>*
  store <2 x i64> %2574, <2 x i64>* %2575, align 8
  %2576 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 2
  %2577 = load i64, i64* %53, align 16
  %2578 = bitcast i64* %2576 to <2 x i64>*
  %2579 = load <2 x i64>, <2 x i64>* %2578, align 8
  %2580 = xor <2 x i64> %2547, %2579
  %2581 = insertelement <2 x i64> undef, i64 %2577, i32 0
  %2582 = insertelement <2 x i64> %2581, i64 %2513, i32 1
  %2583 = xor <2 x i64> %2580, %2582
  %2584 = bitcast i64* %2576 to <2 x i64>*
  store <2 x i64> %2583, <2 x i64>* %2584, align 8
  %2585 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 4
  %2586 = load i64, i64* %2585, align 8
  %2587 = xor i64 %2567, %2586
  %2588 = load i64, i64* %57, align 16
  %2589 = xor i64 %2587, %2588
  store i64 %2589, i64* %2585, align 8
  %2590 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 5
  %2591 = bitcast i64* %2590 to <2 x i64>*
  %2592 = load <2 x i64>, <2 x i64>* %2591, align 8
  %2593 = bitcast i64* %79 to <2 x i64>*
  %2594 = load <2 x i64>, <2 x i64>* %2593, align 8
  %2595 = xor <2 x i64> %2594, %2592
  %2596 = xor <2 x i64> %2595, %2551
  %2597 = bitcast i64* %2590 to <2 x i64>*
  store <2 x i64> %2596, <2 x i64>* %2597, align 8
  %2598 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 7
  %2599 = load i64, i64* %2598, align 8
  %2600 = xor i64 %2558, %2599
  %2601 = load i64, i64* %69, align 8
  %2602 = xor i64 %2600, %2601
  store i64 %2602, i64* %2598, align 8
  call void @llvm.lifetime.end(i64 128, i8* nonnull %5) #12
  call void @llvm.lifetime.end(i64 128, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_final(%struct.blake2b_state__* nocapture, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %5) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 64, i32 16, i1 false)
  %6 = icmp eq i8* %1, null
  br i1 %6, label %237, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %9, %2
  br i1 %10, label %237, label %11

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 2, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %237

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, i64* %18, align 8
  %21 = icmp ult i64 %20, %17
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 1, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %22, %24
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 6
  %27 = load i8, i8* %26, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 2, i64 1
  store i64 -1, i64* %30, align 8
  br label %31

; <label>:31:                                     ; preds = %15, %29
  store i64 -1, i64* %12, align 8
  %32 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 3, i64 0
  %33 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 3, i64 %17
  %34 = sub i64 128, %17
  tail call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 %34, i32 1, i1 false)
  tail call fastcc void @blake2b_compress(%struct.blake2b_state__* nonnull %0, i8* %32)
  %35 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i8
  store i8 %37, i8* %5, align 16
  %38 = lshr i64 %36, 8
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %36, 16
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  store i8 %42, i8* %43, align 2
  %44 = lshr i64 %36, 24
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 3
  store i8 %45, i8* %46, align 1
  %47 = lshr i64 %36, 32
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  store i8 %48, i8* %49, align 4
  %50 = lshr i64 %36, 40
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 5
  store i8 %51, i8* %52, align 1
  %53 = lshr i64 %36, 48
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 6
  store i8 %54, i8* %55, align 2
  %56 = lshr i64 %36, 56
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 7
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 8
  %60 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %59, align 8
  %63 = lshr i64 %61, 8
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 9
  store i8 %64, i8* %65, align 1
  %66 = lshr i64 %61, 16
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 10
  store i8 %67, i8* %68, align 2
  %69 = lshr i64 %61, 24
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 11
  store i8 %70, i8* %71, align 1
  %72 = lshr i64 %61, 32
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 12
  store i8 %73, i8* %74, align 4
  %75 = lshr i64 %61, 40
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 13
  store i8 %76, i8* %77, align 1
  %78 = lshr i64 %61, 48
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 14
  store i8 %79, i8* %80, align 2
  %81 = lshr i64 %61, 56
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 15
  store i8 %82, i8* %83, align 1
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 16
  %85 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %84, align 16
  %88 = lshr i64 %86, 8
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 17
  store i8 %89, i8* %90, align 1
  %91 = lshr i64 %86, 16
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 18
  store i8 %92, i8* %93, align 2
  %94 = lshr i64 %86, 24
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 19
  store i8 %95, i8* %96, align 1
  %97 = lshr i64 %86, 32
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 20
  store i8 %98, i8* %99, align 4
  %100 = lshr i64 %86, 40
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 21
  store i8 %101, i8* %102, align 1
  %103 = lshr i64 %86, 48
  %104 = trunc i64 %103 to i8
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 22
  store i8 %104, i8* %105, align 2
  %106 = lshr i64 %86, 56
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 23
  store i8 %107, i8* %108, align 1
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 24
  %110 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 3
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i8
  store i8 %112, i8* %109, align 8
  %113 = lshr i64 %111, 8
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 25
  store i8 %114, i8* %115, align 1
  %116 = lshr i64 %111, 16
  %117 = trunc i64 %116 to i8
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 26
  store i8 %117, i8* %118, align 2
  %119 = lshr i64 %111, 24
  %120 = trunc i64 %119 to i8
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 27
  store i8 %120, i8* %121, align 1
  %122 = lshr i64 %111, 32
  %123 = trunc i64 %122 to i8
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 28
  store i8 %123, i8* %124, align 4
  %125 = lshr i64 %111, 40
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 29
  store i8 %126, i8* %127, align 1
  %128 = lshr i64 %111, 48
  %129 = trunc i64 %128 to i8
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 30
  store i8 %129, i8* %130, align 2
  %131 = lshr i64 %111, 56
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 31
  store i8 %132, i8* %133, align 1
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 32
  %135 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 4
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i8
  store i8 %137, i8* %134, align 16
  %138 = lshr i64 %136, 8
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 33
  store i8 %139, i8* %140, align 1
  %141 = lshr i64 %136, 16
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 34
  store i8 %142, i8* %143, align 2
  %144 = lshr i64 %136, 24
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 35
  store i8 %145, i8* %146, align 1
  %147 = lshr i64 %136, 32
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 36
  store i8 %148, i8* %149, align 4
  %150 = lshr i64 %136, 40
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 37
  store i8 %151, i8* %152, align 1
  %153 = lshr i64 %136, 48
  %154 = trunc i64 %153 to i8
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 38
  store i8 %154, i8* %155, align 2
  %156 = lshr i64 %136, 56
  %157 = trunc i64 %156 to i8
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 39
  store i8 %157, i8* %158, align 1
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 40
  %160 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i8
  store i8 %162, i8* %159, align 8
  %163 = lshr i64 %161, 8
  %164 = trunc i64 %163 to i8
  %165 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 41
  store i8 %164, i8* %165, align 1
  %166 = lshr i64 %161, 16
  %167 = trunc i64 %166 to i8
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 42
  store i8 %167, i8* %168, align 2
  %169 = lshr i64 %161, 24
  %170 = trunc i64 %169 to i8
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 43
  store i8 %170, i8* %171, align 1
  %172 = lshr i64 %161, 32
  %173 = trunc i64 %172 to i8
  %174 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 44
  store i8 %173, i8* %174, align 4
  %175 = lshr i64 %161, 40
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 45
  store i8 %176, i8* %177, align 1
  %178 = lshr i64 %161, 48
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 46
  store i8 %179, i8* %180, align 2
  %181 = lshr i64 %161, 56
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 47
  store i8 %182, i8* %183, align 1
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 48
  %185 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 6
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i8
  store i8 %187, i8* %184, align 16
  %188 = lshr i64 %186, 8
  %189 = trunc i64 %188 to i8
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 49
  store i8 %189, i8* %190, align 1
  %191 = lshr i64 %186, 16
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 50
  store i8 %192, i8* %193, align 2
  %194 = lshr i64 %186, 24
  %195 = trunc i64 %194 to i8
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 51
  store i8 %195, i8* %196, align 1
  %197 = lshr i64 %186, 32
  %198 = trunc i64 %197 to i8
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 52
  store i8 %198, i8* %199, align 4
  %200 = lshr i64 %186, 40
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 53
  store i8 %201, i8* %202, align 1
  %203 = lshr i64 %186, 48
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 54
  store i8 %204, i8* %205, align 2
  %206 = lshr i64 %186, 56
  %207 = trunc i64 %206 to i8
  %208 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 55
  store i8 %207, i8* %208, align 1
  %209 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 56
  %210 = getelementptr inbounds %struct.blake2b_state__, %struct.blake2b_state__* %0, i64 0, i32 0, i64 7
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i8
  store i8 %212, i8* %209, align 8
  %213 = lshr i64 %211, 8
  %214 = trunc i64 %213 to i8
  %215 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 57
  store i8 %214, i8* %215, align 1
  %216 = lshr i64 %211, 16
  %217 = trunc i64 %216 to i8
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 58
  store i8 %217, i8* %218, align 2
  %219 = lshr i64 %211, 24
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 59
  store i8 %220, i8* %221, align 1
  %222 = lshr i64 %211, 32
  %223 = trunc i64 %222 to i8
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 60
  store i8 %223, i8* %224, align 4
  %225 = lshr i64 %211, 40
  %226 = trunc i64 %225 to i8
  %227 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 61
  store i8 %226, i8* %227, align 1
  %228 = lshr i64 %211, 48
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 62
  store i8 %229, i8* %230, align 2
  %231 = lshr i64 %211, 56
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 63
  store i8 %232, i8* %233, align 1
  %234 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %1, i8* nonnull %5, i64 %234, i32 1, i1 false)
  %235 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @secure_zero_memory.memset_v, align 8
  %236 = call i8* %235(i8* nonnull %5, i32 0, i64 64) #12
  br label %237

; <label>:237:                                    ; preds = %11, %3, %7, %31
  %238 = phi i32 [ 0, %31 ], [ -1, %7 ], [ -1, %3 ], [ -1, %11 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %5) #12
  ret i32 %238
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b(i8*, i64, i8* readonly, i64, i8* readonly, i64) local_unnamed_addr #6 {
  %7 = alloca [1 x %struct.blake2b_param__], align 16
  %8 = alloca [1 x %struct.blake2b_state__], align 16
  %9 = bitcast [1 x %struct.blake2b_state__]* %8 to i8*
  call void @llvm.lifetime.start(i64 248, i8* nonnull %9) #12
  %10 = icmp eq i8* %2, null
  %11 = icmp ne i64 %3, 0
  %12 = and i1 %10, %11
  %13 = icmp eq i8* %0, null
  %14 = or i1 %13, %12
  br i1 %14, label %91, label %15

; <label>:15:                                     ; preds = %6
  %16 = icmp eq i8* %4, null
  %17 = icmp ne i64 %5, 0
  %18 = and i1 %16, %17
  %19 = add i64 %1, -1
  %20 = icmp ugt i64 %19, 63
  %21 = or i1 %20, %18
  %22 = icmp ugt i64 %5, 64
  %23 = or i1 %22, %21
  br i1 %23, label %91, label %24

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds [1 x %struct.blake2b_state__], [1 x %struct.blake2b_state__]* %8, i64 0, i64 0
  br i1 %17, label %26, label %29

; <label>:26:                                     ; preds = %24
  %27 = call i32 @blake2b_init_key(%struct.blake2b_state__* nonnull %25, i64 %1, i8* %4, i64 %5)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %91, label %88

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %7, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %30) #12
  %31 = trunc i64 %1 to i8
  store i8 %31, i8* %30, align 16
  %32 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %7, i64 0, i64 0, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %7, i64 0, i64 0, i32 2
  store i8 1, i8* %33, align 2
  %34 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %7, i64 0, i64 0, i32 3
  store i8 1, i8* %34, align 1
  %35 = getelementptr inbounds [1 x %struct.blake2b_param__], [1 x %struct.blake2b_param__]* %7, i64 0, i64 0, i32 4
  %36 = getelementptr inbounds [1 x %struct.blake2b_state__], [1 x %struct.blake2b_state__]* %8, i64 0, i64 0, i32 1
  %37 = bitcast [2 x i64]* %36 to i8*
  %38 = bitcast i32* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 60, i32 4, i1 false) #12
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 184, i32 16, i1 false) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* bitcast ([8 x i64]* @blake2b_IV to i8*), i64 64, i32 16, i1 false) #12
  br label %39

; <label>:39:                                     ; preds = %39, %29
  %40 = phi i64 [ 0, %29 ], [ %83, %39 ]
  %41 = shl i64 %40, 3
  %42 = getelementptr inbounds i8, i8* %30, i64 %41
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = or i64 %48, %44
  %50 = getelementptr inbounds i8, i8* %42, i64 2
  %51 = load i8, i8* %50, align 2
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 16
  %54 = or i64 %49, %53
  %55 = getelementptr inbounds i8, i8* %42, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 24
  %59 = or i64 %54, %58
  %60 = getelementptr inbounds i8, i8* %42, i64 4
  %61 = load i8, i8* %60, align 4
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 32
  %64 = or i64 %59, %63
  %65 = getelementptr inbounds i8, i8* %42, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 40
  %69 = or i64 %64, %68
  %70 = getelementptr inbounds i8, i8* %42, i64 6
  %71 = load i8, i8* %70, align 2
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 48
  %74 = or i64 %69, %73
  %75 = getelementptr inbounds i8, i8* %42, i64 7
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = shl nuw i64 %77, 56
  %79 = or i64 %74, %78
  %80 = getelementptr inbounds [1 x %struct.blake2b_state__], [1 x %struct.blake2b_state__]* %8, i64 0, i64 0, i32 0, i64 %40
  %81 = load i64, i64* %80, align 8
  %82 = xor i64 %79, %81
  store i64 %82, i64* %80, align 8
  %83 = add nuw nsw i64 %40, 1
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %85, label %39

; <label>:85:                                     ; preds = %39
  %86 = and i64 %1, 255
  %87 = getelementptr inbounds [1 x %struct.blake2b_state__], [1 x %struct.blake2b_state__]* %8, i64 0, i64 0, i32 5
  store i64 %86, i64* %87, align 8
  call void @llvm.lifetime.end(i64 64, i8* nonnull %30) #12
  br label %88

; <label>:88:                                     ; preds = %85, %26
  %89 = call i32 @blake2b_update(%struct.blake2b_state__* nonnull %25, i8* %2, i64 %3)
  %90 = call i32 @blake2b_final(%struct.blake2b_state__* nonnull %25, i8* nonnull %0, i64 %1)
  br label %91

; <label>:91:                                     ; preds = %26, %15, %6, %88
  %92 = phi i32 [ 0, %88 ], [ -1, %6 ], [ -1, %15 ], [ -1, %26 ]
  call void @llvm.lifetime.end(i64 248, i8* nonnull %9) #12
  ret i32 %92
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2(i8*, i64, i8* readonly, i64, i8* readonly, i64) local_unnamed_addr #6 {
  %7 = tail call i32 @blake2b(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5)
  ret i32 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @blake2b_stream(%struct._IO_FILE* nocapture, i8*, i64) #6 {
  %4 = alloca [1 x %struct.blake2b_state__], align 16
  %5 = bitcast [1 x %struct.blake2b_state__]* %4 to i8*
  call void @llvm.lifetime.start(i64 248, i8* nonnull %5) #12
  %6 = tail call noalias i8* @malloc(i64 32768) #12
  %7 = icmp eq i8* %6, null
  br i1 %7, label %38, label %8

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds [1 x %struct.blake2b_state__], [1 x %struct.blake2b_state__]* %4, i64 0, i64 0
  %10 = call i32 @blake2b_init(%struct.blake2b_state__* nonnull %9, i64 %2) #12
  br label %11

; <label>:11:                                     ; preds = %27, %8
  br label %12

; <label>:12:                                     ; preds = %24, %11
  %13 = phi i64 [ 0, %11 ], [ %17, %24 ]
  %14 = getelementptr inbounds i8, i8* %6, i64 %13
  %15 = sub i64 32768, %13
  %16 = call i64 @fread(i8* %14, i64 1, i64 %15, %struct._IO_FILE* %0)
  %17 = add i64 %16, %13
  %18 = icmp eq i64 %17, 32768
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %12
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %19
  %22 = call i32 @ferror(%struct._IO_FILE* %0) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %36

; <label>:24:                                     ; preds = %19
  %25 = call i32 @feof(%struct._IO_FILE* %0) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %12, label %29

; <label>:27:                                     ; preds = %12
  %28 = call i32 @blake2b_update(%struct.blake2b_state__* nonnull %9, i8* nonnull %6, i64 32768) #12
  br label %11

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %21
  %31 = icmp eq i64 %17, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %30
  %33 = call i32 @blake2b_update(%struct.blake2b_state__* nonnull %9, i8* nonnull %6, i64 %17) #12
  br label %34

; <label>:34:                                     ; preds = %30, %32
  %35 = call i32 @blake2b_final(%struct.blake2b_state__* nonnull %9, i8* %1, i64 %2) #12
  br label %36

; <label>:36:                                     ; preds = %21, %34
  %37 = phi i32 [ -1, %21 ], [ 0, %34 ]
  call void @free(i8* %6) #12
  br label %38

; <label>:38:                                     ; preds = %3, %36
  %39 = phi i32 [ %37, %36 ], [ -1, %3 ]
  call void @llvm.lifetime.end(i64 248, i8* nonnull %5) #12
  ret i32 %39
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #12
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #10 {
  %5 = tail call i64 @strlen(i8* %0) #14
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %39, label %8

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %45, label %20

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1
  br i1 %21, label %31, label %22

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3
  %25 = getelementptr inbounds i8, i8* %2, i64 %24
  %26 = mul i64 %14, %3
  %27 = getelementptr inbounds i8, i8* %2, i64 %26
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23, %22
  br label %31

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  %34 = add i64 %14, 1
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %10

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i64 %40, i64 -2
  br label %46

; <label>:45:                                     ; preds = %17
  br label %46

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.44, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.45, i64 0, i64 0), i32 5) #12
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #12
  %7 = load i8*, i8** %0, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %35, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #12
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.46, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.47, i64 0, i64 0), i8* %26) #12
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  %30 = add i64 %13, 1
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %10

; <label>:34:                                     ; preds = %28
  br label %35

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ult i8* %38, %40
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #12
  br label %46

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %45, i8** %37, align 8
  store i8 10, i8* %38, align 1
  br label %46

; <label>:46:                                     ; preds = %42, %44
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 {
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #14
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.44, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #12
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #12
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #12
  br label %15

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #10 {
  %5 = load i8*, i8** %1, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %22, label %7

; <label>:7:                                      ; preds = %4
  br label %12

; <label>:8:                                      ; preds = %12
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %20, label %12

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3
  %16 = getelementptr inbounds i8, i8* %2, i64 %15
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14
  %18 = icmp eq i32 %17, 0
  %19 = add i64 %14, 1
  br i1 %18, label %20, label %8

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23
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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.89, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.90, i64 0, i64 0), i8* %12) #12
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12
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
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12
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
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #12
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
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #14
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

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
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 {
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #12
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #12
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #12
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #12
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12
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
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12
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
  tail call void @free(i8* %8) #12
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
  tail call void @free(i8* %16) #12
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #12
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
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12
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
  tail call void @free(i8* %40) #12
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12
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
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #12
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
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
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
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
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12
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
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.133, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.134, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.135, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.136, i64 0, i64 0), i32 5) #12
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.137, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.138, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.139, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.140, i64 0, i64 0), i32 5) #12
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.141, i64 0, i64 0), i32 5) #12
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.142, i64 0, i64 0), i32 5) #12
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.143, i64 0, i64 0), i32 5) #12
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.144, i64 0, i64 0), i32 5) #12
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.145, i64 0, i64 0), i32 5) #12
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.146, i64 0, i64 0), i32 5) #12
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #12
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #12
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #12
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.149, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.150, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.151, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.152, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.153, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.154, i64 0, i64 0), i32 5) #12
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #12
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
  %2 = tail call noalias i8* @malloc(i64 %0) #12
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
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 {
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
  tail call void @free(i8* nonnull %0) #12
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12
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
  tail call void @free(i8* nonnull %0) #12
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12
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
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 {
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
  tail call void @free(i8* nonnull %0) #12
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12
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
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 {
  %2 = tail call noalias i8* @malloc(i64 %0) #12
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
  tail call void @free(i8* nonnull %0) #12
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12
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
  %2 = tail call noalias i8* @malloc(i64 %0) #12
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12
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
  %3 = tail call noalias i8* @malloc(i64 %1) #12
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
  %4 = tail call noalias i8* @malloc(i64 %3) #12
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.165, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #12
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #12
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ]

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1
  br label %26

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, %2
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %35

; <label>:18:                                     ; preds = %13
  %19 = icmp ugt i64 %14, 1073741823
  %20 = tail call i32* @__errno_location() #1
  %21 = select i1 %19, i32 75, i32 34
  store i32 %21, i32* %20, align 4
  br label %26

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1
  store i32 75, i32* %23, align 4
  br label %26

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1
  store i32 0, i32* %25, align 4
  br label %26

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ]
  %28 = icmp ne i32 %6, 0
  %29 = select i1 %28, i32 %6, i32 1
  %30 = load i32, i32* %27, align 4
  %31 = icmp eq i32 %30, 22
  %32 = select i1 %31, i32 0, i32 %30
  %33 = call i8* @quote(i8* %0) #12
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* %5, i8* %33) #12
  %34 = load i64, i64* %8, align 8
  br label %35

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #12
  ret i64 %36
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.172, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.173, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = tail call i32* @__errno_location() #1
  store i32 0, i32* %12, align 4
  %13 = tail call i16** @__ctype_b_loc() #1
  %14 = load i16*, i16** %13, align 8
  br label %15

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  br i1 %22, label %24, label %15

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6
  %26 = icmp eq i8 %17, 45
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #12
  %29 = load i8*, i8** %25, align 8
  %30 = icmp eq i8* %29, %0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null
  br i1 %32, label %265, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %265, label %36

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #12
  %39 = icmp eq i8* %38, null
  br i1 %39, label %265, label %47

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ]

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  %45 = icmp eq i8* %4, null
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i64 %28, i64* %3, align 8
  br label %265

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %262, label %52

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #12
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %52
  store i64 %49, i64* %3, align 8
  %57 = or i32 %48, 2
  br label %265

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
  ]

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #12
  %61 = icmp eq i8* %60, null
  br i1 %61, label %72, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ]

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 66
  %70 = select i1 %69, i64 3, i64 1
  br label %72

; <label>:71:                                     ; preds = %62, %62
  br label %72

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
  ]

; <label>:75:                                     ; preds = %72
  %76 = icmp ugt i64 %49, 36028797018963967
  %77 = shl i64 %49, 9
  %78 = select i1 %76, i64 -1, i64 %77
  %79 = zext i1 %76 to i32
  br label %253

; <label>:80:                                     ; preds = %72
  %81 = icmp ugt i64 %49, 18014398509481983
  %82 = shl i64 %49, 10
  %83 = select i1 %81, i64 -1, i64 %82
  %84 = zext i1 %81 to i32
  br label %253

; <label>:85:                                     ; preds = %72
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49
  %88 = mul i64 %49, %73
  %89 = select i1 %87, i64 -1, i64 %88
  %90 = icmp ult i64 %86, %89
  %91 = mul i64 %89, %73
  %92 = select i1 %90, i64 -1, i64 %91
  %93 = or i1 %90, %87
  %94 = icmp ult i64 %86, %92
  %95 = mul i64 %92, %73
  %96 = select i1 %94, i64 -1, i64 %95
  %97 = or i1 %94, %93
  %98 = icmp ult i64 %86, %96
  %99 = mul i64 %96, %73
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %98, %97
  %102 = icmp ult i64 %86, %100
  %103 = mul i64 %100, %73
  %104 = select i1 %102, i64 -1, i64 %103
  %105 = or i1 %102, %101
  %106 = icmp ult i64 %86, %104
  %107 = mul i64 %104, %73
  %108 = select i1 %106, i64 -1, i64 %107
  %109 = or i1 %106, %105
  %110 = zext i1 %109 to i32
  br label %253

; <label>:111:                                    ; preds = %72, %72
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49
  %114 = mul i64 %49, %73
  %115 = select i1 %113, i64 -1, i64 %114
  %116 = icmp ult i64 %112, %115
  %117 = mul i64 %115, %73
  %118 = select i1 %116, i64 -1, i64 %117
  %119 = or i1 %116, %113
  %120 = icmp ult i64 %112, %118
  %121 = mul i64 %118, %73
  %122 = select i1 %120, i64 -1, i64 %121
  %123 = or i1 %120, %119
  %124 = zext i1 %123 to i32
  br label %253

; <label>:125:                                    ; preds = %72, %72
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49
  %128 = mul i64 %49, %73
  %129 = select i1 %127, i64 -1, i64 %128
  %130 = zext i1 %127 to i32
  br label %253

; <label>:131:                                    ; preds = %72, %72
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49
  %134 = mul i64 %49, %73
  %135 = select i1 %133, i64 -1, i64 %134
  %136 = icmp ult i64 %132, %135
  %137 = mul i64 %135, %73
  %138 = select i1 %136, i64 -1, i64 %137
  %139 = or i1 %136, %133
  %140 = zext i1 %139 to i32
  br label %253

; <label>:141:                                    ; preds = %72
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49
  %144 = mul i64 %49, %73
  %145 = select i1 %143, i64 -1, i64 %144
  %146 = icmp ult i64 %142, %145
  %147 = mul i64 %145, %73
  %148 = select i1 %146, i64 -1, i64 %147
  %149 = or i1 %146, %143
  %150 = icmp ult i64 %142, %148
  %151 = mul i64 %148, %73
  %152 = select i1 %150, i64 -1, i64 %151
  %153 = or i1 %150, %149
  %154 = icmp ult i64 %142, %152
  %155 = mul i64 %152, %73
  %156 = select i1 %154, i64 -1, i64 %155
  %157 = or i1 %154, %153
  %158 = icmp ult i64 %142, %156
  %159 = mul i64 %156, %73
  %160 = select i1 %158, i64 -1, i64 %159
  %161 = or i1 %158, %157
  %162 = zext i1 %161 to i32
  br label %253

; <label>:163:                                    ; preds = %72, %72
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49
  %166 = mul i64 %49, %73
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = icmp ult i64 %164, %167
  %169 = mul i64 %167, %73
  %170 = select i1 %168, i64 -1, i64 %169
  %171 = or i1 %168, %165
  %172 = icmp ult i64 %164, %170
  %173 = mul i64 %170, %73
  %174 = select i1 %172, i64 -1, i64 %173
  %175 = or i1 %172, %171
  %176 = icmp ult i64 %164, %174
  %177 = mul i64 %174, %73
  %178 = select i1 %176, i64 -1, i64 %177
  %179 = or i1 %176, %175
  %180 = zext i1 %179 to i32
  br label %253

; <label>:181:                                    ; preds = %72
  %182 = icmp slt i64 %49, 0
  %183 = shl i64 %49, 1
  %184 = select i1 %182, i64 -1, i64 %183
  %185 = lshr i64 %49, 63
  %186 = trunc i64 %185 to i32
  br label %253

; <label>:187:                                    ; preds = %72
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49
  %190 = mul i64 %49, %73
  %191 = select i1 %189, i64 -1, i64 %190
  %192 = icmp ult i64 %188, %191
  %193 = mul i64 %191, %73
  %194 = select i1 %192, i64 -1, i64 %193
  %195 = or i1 %192, %189
  %196 = icmp ult i64 %188, %194
  %197 = mul i64 %194, %73
  %198 = select i1 %196, i64 -1, i64 %197
  %199 = or i1 %196, %195
  %200 = icmp ult i64 %188, %198
  %201 = mul i64 %198, %73
  %202 = select i1 %200, i64 -1, i64 %201
  %203 = or i1 %200, %199
  %204 = icmp ult i64 %188, %202
  %205 = mul i64 %202, %73
  %206 = select i1 %204, i64 -1, i64 %205
  %207 = or i1 %204, %203
  %208 = icmp ult i64 %188, %206
  %209 = mul i64 %206, %73
  %210 = select i1 %208, i64 -1, i64 %209
  %211 = or i1 %208, %207
  %212 = icmp ult i64 %188, %210
  %213 = mul i64 %210, %73
  %214 = select i1 %212, i64 -1, i64 %213
  %215 = or i1 %212, %211
  %216 = icmp ult i64 %188, %214
  %217 = mul i64 %214, %73
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %216, %215
  %220 = zext i1 %219 to i32
  br label %253

; <label>:221:                                    ; preds = %72
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49
  %224 = mul i64 %49, %73
  %225 = select i1 %223, i64 -1, i64 %224
  %226 = icmp ult i64 %222, %225
  %227 = mul i64 %225, %73
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %226, %223
  %230 = icmp ult i64 %222, %228
  %231 = mul i64 %228, %73
  %232 = select i1 %230, i64 -1, i64 %231
  %233 = or i1 %230, %229
  %234 = icmp ult i64 %222, %232
  %235 = mul i64 %232, %73
  %236 = select i1 %234, i64 -1, i64 %235
  %237 = or i1 %234, %233
  %238 = icmp ult i64 %222, %236
  %239 = mul i64 %236, %73
  %240 = select i1 %238, i64 -1, i64 %239
  %241 = or i1 %238, %237
  %242 = icmp ult i64 %222, %240
  %243 = mul i64 %240, %73
  %244 = select i1 %242, i64 -1, i64 %243
  %245 = or i1 %242, %241
  %246 = icmp ult i64 %222, %244
  %247 = mul i64 %244, %73
  %248 = select i1 %246, i64 -1, i64 %247
  %249 = or i1 %246, %245
  %250 = zext i1 %249 to i32
  br label %253

; <label>:251:                                    ; preds = %72
  store i64 %49, i64* %3, align 8
  %252 = or i32 %48, 2
  br label %265

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  %256 = or i32 %255, %48
  %257 = getelementptr inbounds i8, i8* %29, i64 %74
  store i8* %257, i8** %25, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 0
  %260 = or i32 %256, 2
  %261 = select i1 %259, i32 %256, i32 %260
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  store i64 %263, i64* %3, align 8
  br label %265

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #12
  ret i32 %266
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.176, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.177, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = tail call i32* @__errno_location() #1
  store i32 0, i32* %12, align 4
  %13 = tail call i16** @__ctype_b_loc() #1
  %14 = load i16*, i16** %13, align 8
  br label %15

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  br i1 %22, label %24, label %15

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6
  %26 = icmp eq i8 %17, 45
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #12
  %29 = load i8*, i8** %25, align 8
  %30 = icmp eq i8* %29, %0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null
  br i1 %32, label %265, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %265, label %36

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #12
  %39 = icmp eq i8* %38, null
  br i1 %39, label %265, label %47

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ]

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  %45 = icmp eq i8* %4, null
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i64 %28, i64* %3, align 8
  br label %265

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %262, label %52

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #12
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %52
  store i64 %49, i64* %3, align 8
  %57 = or i32 %48, 2
  br label %265

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
  ]

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #12
  %61 = icmp eq i8* %60, null
  br i1 %61, label %72, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ]

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 66
  %70 = select i1 %69, i64 3, i64 1
  br label %72

; <label>:71:                                     ; preds = %62, %62
  br label %72

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
  ]

; <label>:75:                                     ; preds = %72
  %76 = icmp ugt i64 %49, 36028797018963967
  %77 = shl i64 %49, 9
  %78 = select i1 %76, i64 -1, i64 %77
  %79 = zext i1 %76 to i32
  br label %253

; <label>:80:                                     ; preds = %72
  %81 = icmp ugt i64 %49, 18014398509481983
  %82 = shl i64 %49, 10
  %83 = select i1 %81, i64 -1, i64 %82
  %84 = zext i1 %81 to i32
  br label %253

; <label>:85:                                     ; preds = %72
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49
  %88 = mul i64 %49, %73
  %89 = select i1 %87, i64 -1, i64 %88
  %90 = icmp ult i64 %86, %89
  %91 = mul i64 %89, %73
  %92 = select i1 %90, i64 -1, i64 %91
  %93 = or i1 %90, %87
  %94 = icmp ult i64 %86, %92
  %95 = mul i64 %92, %73
  %96 = select i1 %94, i64 -1, i64 %95
  %97 = or i1 %94, %93
  %98 = icmp ult i64 %86, %96
  %99 = mul i64 %96, %73
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %98, %97
  %102 = icmp ult i64 %86, %100
  %103 = mul i64 %100, %73
  %104 = select i1 %102, i64 -1, i64 %103
  %105 = or i1 %102, %101
  %106 = icmp ult i64 %86, %104
  %107 = mul i64 %104, %73
  %108 = select i1 %106, i64 -1, i64 %107
  %109 = or i1 %106, %105
  %110 = zext i1 %109 to i32
  br label %253

; <label>:111:                                    ; preds = %72, %72
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49
  %114 = mul i64 %49, %73
  %115 = select i1 %113, i64 -1, i64 %114
  %116 = icmp ult i64 %112, %115
  %117 = mul i64 %115, %73
  %118 = select i1 %116, i64 -1, i64 %117
  %119 = or i1 %116, %113
  %120 = icmp ult i64 %112, %118
  %121 = mul i64 %118, %73
  %122 = select i1 %120, i64 -1, i64 %121
  %123 = or i1 %120, %119
  %124 = zext i1 %123 to i32
  br label %253

; <label>:125:                                    ; preds = %72, %72
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49
  %128 = mul i64 %49, %73
  %129 = select i1 %127, i64 -1, i64 %128
  %130 = zext i1 %127 to i32
  br label %253

; <label>:131:                                    ; preds = %72, %72
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49
  %134 = mul i64 %49, %73
  %135 = select i1 %133, i64 -1, i64 %134
  %136 = icmp ult i64 %132, %135
  %137 = mul i64 %135, %73
  %138 = select i1 %136, i64 -1, i64 %137
  %139 = or i1 %136, %133
  %140 = zext i1 %139 to i32
  br label %253

; <label>:141:                                    ; preds = %72
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49
  %144 = mul i64 %49, %73
  %145 = select i1 %143, i64 -1, i64 %144
  %146 = icmp ult i64 %142, %145
  %147 = mul i64 %145, %73
  %148 = select i1 %146, i64 -1, i64 %147
  %149 = or i1 %146, %143
  %150 = icmp ult i64 %142, %148
  %151 = mul i64 %148, %73
  %152 = select i1 %150, i64 -1, i64 %151
  %153 = or i1 %150, %149
  %154 = icmp ult i64 %142, %152
  %155 = mul i64 %152, %73
  %156 = select i1 %154, i64 -1, i64 %155
  %157 = or i1 %154, %153
  %158 = icmp ult i64 %142, %156
  %159 = mul i64 %156, %73
  %160 = select i1 %158, i64 -1, i64 %159
  %161 = or i1 %158, %157
  %162 = zext i1 %161 to i32
  br label %253

; <label>:163:                                    ; preds = %72, %72
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49
  %166 = mul i64 %49, %73
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = icmp ult i64 %164, %167
  %169 = mul i64 %167, %73
  %170 = select i1 %168, i64 -1, i64 %169
  %171 = or i1 %168, %165
  %172 = icmp ult i64 %164, %170
  %173 = mul i64 %170, %73
  %174 = select i1 %172, i64 -1, i64 %173
  %175 = or i1 %172, %171
  %176 = icmp ult i64 %164, %174
  %177 = mul i64 %174, %73
  %178 = select i1 %176, i64 -1, i64 %177
  %179 = or i1 %176, %175
  %180 = zext i1 %179 to i32
  br label %253

; <label>:181:                                    ; preds = %72
  %182 = icmp slt i64 %49, 0
  %183 = shl i64 %49, 1
  %184 = select i1 %182, i64 -1, i64 %183
  %185 = lshr i64 %49, 63
  %186 = trunc i64 %185 to i32
  br label %253

; <label>:187:                                    ; preds = %72
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49
  %190 = mul i64 %49, %73
  %191 = select i1 %189, i64 -1, i64 %190
  %192 = icmp ult i64 %188, %191
  %193 = mul i64 %191, %73
  %194 = select i1 %192, i64 -1, i64 %193
  %195 = or i1 %192, %189
  %196 = icmp ult i64 %188, %194
  %197 = mul i64 %194, %73
  %198 = select i1 %196, i64 -1, i64 %197
  %199 = or i1 %196, %195
  %200 = icmp ult i64 %188, %198
  %201 = mul i64 %198, %73
  %202 = select i1 %200, i64 -1, i64 %201
  %203 = or i1 %200, %199
  %204 = icmp ult i64 %188, %202
  %205 = mul i64 %202, %73
  %206 = select i1 %204, i64 -1, i64 %205
  %207 = or i1 %204, %203
  %208 = icmp ult i64 %188, %206
  %209 = mul i64 %206, %73
  %210 = select i1 %208, i64 -1, i64 %209
  %211 = or i1 %208, %207
  %212 = icmp ult i64 %188, %210
  %213 = mul i64 %210, %73
  %214 = select i1 %212, i64 -1, i64 %213
  %215 = or i1 %212, %211
  %216 = icmp ult i64 %188, %214
  %217 = mul i64 %214, %73
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %216, %215
  %220 = zext i1 %219 to i32
  br label %253

; <label>:221:                                    ; preds = %72
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49
  %224 = mul i64 %49, %73
  %225 = select i1 %223, i64 -1, i64 %224
  %226 = icmp ult i64 %222, %225
  %227 = mul i64 %225, %73
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %226, %223
  %230 = icmp ult i64 %222, %228
  %231 = mul i64 %228, %73
  %232 = select i1 %230, i64 -1, i64 %231
  %233 = or i1 %230, %229
  %234 = icmp ult i64 %222, %232
  %235 = mul i64 %232, %73
  %236 = select i1 %234, i64 -1, i64 %235
  %237 = or i1 %234, %233
  %238 = icmp ult i64 %222, %236
  %239 = mul i64 %236, %73
  %240 = select i1 %238, i64 -1, i64 %239
  %241 = or i1 %238, %237
  %242 = icmp ult i64 %222, %240
  %243 = mul i64 %240, %73
  %244 = select i1 %242, i64 -1, i64 %243
  %245 = or i1 %242, %241
  %246 = icmp ult i64 %222, %244
  %247 = mul i64 %244, %73
  %248 = select i1 %246, i64 -1, i64 %247
  %249 = or i1 %246, %245
  %250 = zext i1 %249 to i32
  br label %253

; <label>:251:                                    ; preds = %72
  store i64 %49, i64* %3, align 8
  %252 = or i32 %48, 2
  br label %265

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  %256 = or i32 %255, %48
  %257 = getelementptr inbounds i8, i8* %29, i64 %74
  store i8* %257, i8** %25, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 0
  %260 = or i32 %256, 2
  %261 = select i1 %259, i32 %256, i32 %260
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  store i64 %263, i64* %3, align 8
  br label %265

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #12
  ret i32 %266
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #12
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
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12
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
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #12
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #12
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
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #12
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #12
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #12
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #12
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12
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
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.194, i64 0, i64 0)) #12
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
  %3 = tail call i8* @nl_langinfo(i32 14) #12
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.198, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.199, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  %29 = tail call noalias i8* @malloc(i64 %28) #12
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.200, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.200, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.201, i64 0, i64 0)) #12
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #12
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #12
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #12
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #12
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.202, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
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
  %90 = call noalias i8* @malloc(i64 %89) #12
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #12
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #12
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #12
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #12
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #12
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #12
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #12
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.203, i64 0, i64 0), i8* %158
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
attributes #9 = { alwaysinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
