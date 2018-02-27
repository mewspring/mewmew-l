; ModuleID = 'coreutils-8.27/src/numfmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... [NUMBER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Reformat NUMBER(s), or the numbers from standard input if none are specified.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"      --debug          print warnings about invalid input\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"  -d, --delimiter=X    use X instead of whitespace for field delimiter\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"      --field=FIELDS   replace the numbers in these input fields (default=1)\0A                         see FIELDS below\0A\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"      --format=FORMAT  use printf style floating-point FORMAT;\0A                         see FORMAT below for details\0A\00", align 1
@.str.7 = private unnamed_addr constant [118 x i8] c"      --from=UNIT      auto-scale input numbers to UNITs; default is 'none';\0A                         see UNIT below\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"      --from-unit=N    specify the input unit size (instead of the default 1)\0A\00", align 1
@.str.9 = private unnamed_addr constant [156 x i8] c"      --grouping       use locale-defined grouping of digits, e.g. 1,000,000\0A                         (which means it has no effect in the C/POSIX locale)\0A\00", align 1
@.str.10 = private unnamed_addr constant [135 x i8] c"      --header[=N]     print (without converting) the first N header lines;\0A                         N defaults to 1 if not specified\0A\00", align 1
@.str.11 = private unnamed_addr constant [132 x i8] c"      --invalid=MODE   failure mode for invalid numbers: MODE can be:\0A                         abort (default), fail, warn, ignore\0A\00", align 1
@.str.12 = private unnamed_addr constant [324 x i8] c"      --padding=N      pad the output to N characters; positive N will\0A                         right-align; negative N will left-align;\0A                         padding is ignored if the output is wider than N;\0A                         the default is to automatically pad if a whitespace\0A                         is found\0A\00", align 1
@.str.13 = private unnamed_addr constant [155 x i8] c"      --round=METHOD   use METHOD for rounding when scaling; METHOD can be:\0A                         up, down, from-zero (default), towards-zero, nearest\0A\00", align 1
@.str.14 = private unnamed_addr constant [123 x i8] c"      --suffix=SUFFIX  add SUFFIX to output numbers, and accept optional\0A                         SUFFIX in input numbers\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"      --to=UNIT        auto-scale output numbers to UNITs; see UNIT below\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"      --to-unit=N      the output unit size (instead of the default 1)\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"\0AUNIT options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"  none       no auto-scaling is done; suffixes will trigger an error\0A\00", align 1
@.str.22 = private unnamed_addr constant [168 x i8] c"  auto       accept optional single/two letter suffix:\0A               1K = 1000,\0A               1Ki = 1024,\0A               1M = 1000000,\0A               1Mi = 1048576,\0A\00", align 1
@.str.23 = private unnamed_addr constant [126 x i8] c"  si         accept optional single letter suffix:\0A               1K = 1000,\0A               1M = 1000000,\0A               ...\0A\00", align 1
@.str.24 = private unnamed_addr constant [126 x i8] c"  iec        accept optional single letter suffix:\0A               1K = 1024,\0A               1M = 1048576,\0A               ...\0A\00", align 1
@.str.25 = private unnamed_addr constant [125 x i8] c"  iec-i      accept optional two-letter suffix:\0A               1Ki = 1024,\0A               1Mi = 1048576,\0A               ...\0A\00", align 1
@.str.26 = private unnamed_addr constant [275 x i8] c"\0AFIELDS supports cut(1) style field ranges:\0A  N    N'th field, counted from 1\0A  N-   from N'th field, to end of line\0A  N-M  from N'th to M'th field (inclusive)\0A  -M   from first to M'th field (inclusive)\0A  -    all fields\0AMultiple fields/ranges can be separated with commas\0A\00", align 1
@.str.27 = private unnamed_addr constant [372 x i8] c"\0AFORMAT must be suitable for printing one floating-point argument '%f'.\0AOptional quote (%'f) will enable --grouping (if supported by current locale).\0AOptional width value (%10f) will pad output. Optional zero (%010f) width\0Awill zero pad the number. Optional negative values (%-10f) will left align.\0AOptional precision (%.1f) will override the input determined precision.\0A\00", align 1
@.str.28 = private unnamed_addr constant [411 x i8] c"\0AExit status is 0 if all input numbers were successfully converted.\0ABy default, %s will stop at the first conversion error with exit status 2.\0AWith --invalid='fail' a warning is printed for each conversion error\0Aand the exit status is 2.  With --invalid='warn' each conversion error is\0Adiagnosed, but the exit status is 0.  With --invalid='ignore' conversion\0Aerrors are not diagnosed and the exit status is 0.\0A\00", align 1
@.str.29 = private unnamed_addr constant [447 x i8] c"\0AExamples:\0A  $ %s --to=si 1000\0A            -> \221.0K\22\0A  $ %s --to=iec 2048\0A           -> \222.0K\22\0A  $ %s --to=iec-i 4096\0A           -> \224.0Ki\22\0A  $ echo 1K | %s --from=si\0A           -> \221000\22\0A  $ echo 1K | %s --from=iec\0A           -> \221024\22\0A  $ df -B1 | %s --header --field 2-4 --to=si\0A  $ ls -l  | %s --header --field 5 --to=iec\0A  $ ls -lh | %s --header --field 5 --from=iec --padding=10\0A  $ ls -lh | %s --header --field 5 --from=iec --format %%10f\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"numfmt\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@decimal_point = internal unnamed_addr global i8* null, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c".\00", align 1
@decimal_point_length = internal unnamed_addr global i32 0, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"d:z\00", align 1
@longopts = internal constant [19 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 1, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 1, i32* null, i32 135 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 1, i32* null, i32 133 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 134 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 136 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 0, i32* null, i32 137 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 2, i32* null, i32 139 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 140 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 141 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"--from\00", align 1
@scale_from_args = internal constant [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* null], align 16
@scale_from_types = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@scale_from = internal unnamed_addr global i32 0, align 4
@from_unit_size = internal unnamed_addr global i64 1, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"--to\00", align 1
@scale_to_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* null], align 16
@scale_to_types = internal constant [4 x i32] [i32 0, i32 2, i32 3, i32 4], align 16
@scale_to = internal unnamed_addr global i32 0, align 4
@to_unit_size = internal unnamed_addr global i64 1, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"--round\00", align 1
@round_args = internal constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* null], align 16
@round_types = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@round_style = internal unnamed_addr global i32 2, align 4
@grouping = internal unnamed_addr global i1 false, align 4
@padding_width = internal global i64 0, align 8
@.str.39 = private unnamed_addr constant [25 x i8] c"invalid padding value %s\00", align 1
@padding_alignment = internal unnamed_addr global i1 false, align 4
@.str.40 = private unnamed_addr constant [30 x i8] c"multiple field specifications\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@delimiter = internal unnamed_addr global i32 128, align 4
@line_delim = internal unnamed_addr global i1 false, align 1
@suffix = internal unnamed_addr global i8* null, align 8
@debug = internal unnamed_addr global i1 false, align 1
@dev_debug = internal unnamed_addr global i1 false, align 1
@header = internal global i64 0, align 8
@.str.42 = private unnamed_addr constant [24 x i8] c"invalid header value %s\00", align 1
@format_str = internal unnamed_addr global i8* null, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"--invalid\00", align 1
@inval_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* null], align 16
@inval_types = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@inval_style = internal unnamed_addr global i32 0, align 4
@.str.45 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"--grouping cannot be combined with --format\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"failed to set locale\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"no conversion option specified\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"format %s has no %% directive\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"invalid format %s (width overflow)\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"--format padding overriding --padding\00", align 1
@zero_padding_width = internal unnamed_addr global i64 0, align 8
@.str.109 = private unnamed_addr constant [21 x i8] c"format %s ends in %%\00", align 1
@user_precision = internal unnamed_addr global i64 -1, align 8
@.str.110 = private unnamed_addr constant [31 x i8] c"invalid precision in format %s\00", align 1
@.str.111 = private unnamed_addr constant [59 x i8] c"invalid format %s, directive must be %%[0]['][-][N][.][N]f\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"format %s has too many %% directives\00", align 1
@format_str_prefix = internal unnamed_addr global i8* null, align 8
@format_str_suffix = internal unnamed_addr global i8* null, align 8
@.str.114 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.113 = private unnamed_addr constant [106 x i8] c"format String:\0A  input: %s\0A  grouping: %s\0A  padding width: %ld\0A  alignment: %s\0A  prefix: %s\0A  suffix: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"grouping cannot be combined with --to\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"grouping has no effect in this locale\00", align 1
@padding_buffer_size = internal unnamed_addr global i64 0, align 8
@padding_buffer = internal unnamed_addr global i8* null, align 8
@auto_padding = internal unnamed_addr global i32 0, align 4
@conv_exit_code = internal unnamed_addr global i1 false, align 4
@optind = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [41 x i8] c"--header ignored with command-line input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [20 x i8] c"error reading input\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"failed to convert some of the input numbers\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"trimming suffix %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"no valid suffix found\0A\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"setting Auto-Padding to %ld characters\0A\00", align 1
@.str.123 = private unnamed_addr constant [94 x i8] c"simple_strtod_human:\0A  input string: %s\0A  locale decimal-point: %s\0A  MAX_UNSCALED_DIGITS: %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"  parsed numeric value: %Lf\0A  input precision = %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"KMGTPEZY\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"  Auto-scaling, found 'i', switching to base %d\0A\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"  suffix power=%d^%d = %Lf\0A\00", align 1
@.str.127 = private unnamed_addr constant [30 x i8] c"  returning value: %Lf (%LG)\0A\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"invalid number: %s\00", align 1
@.str.132 = private unnamed_addr constant [47 x i8] c"missing 'i' suffix in input: %s (e.g Ki/Mi/Gi)\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"invalid suffix in input: %s\00", align 1
@.str.130 = private unnamed_addr constant [54 x i8] c"rejecting suffix in input: %s (consider using --from)\00", align 1
@.str.128 = private unnamed_addr constant [36 x i8] c"value too large to be converted: %s\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"invalid suffix in input %s: %s\00", align 1
@.str.121 = private unnamed_addr constant [46 x i8] c"large input value %s: possible precision loss\00", align 1
@.str.133 = private unnamed_addr constant [73 x i8] c"value/precision too large to be printed: '%Lg/%lu' (consider using --to)\00", align 1
@.str.134 = private unnamed_addr constant [59 x i8] c"value too large to be printed: '%Lg' (consider using --to)\00", align 1
@.str.135 = private unnamed_addr constant [67 x i8] c"value too large to be printed: '%Lg' (cannot handle values > 999Y)\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"0%ld\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"double_to_human:\0A\00", align 1
@.str.140 = private unnamed_addr constant [49 x i8] c"  no scaling, returning (grouped) value: %'.*Lf\0A\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"  no scaling, returning value: %.*Lf\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c".*Lf\00", align 1
@.str.143 = private unnamed_addr constant [43 x i8] c"failed to prepare value '%Lf' for printing\00", align 1
@.str.144 = private unnamed_addr constant [35 x i8] c"  scaled value to %Lf * %0.f ^ %u\0A\00", align 1
@.str.145 = private unnamed_addr constant [41 x i8] c"  after rounding, value=%Lf * %0.f ^ %u\0A\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c".*Lf%s\00", align 1
@switch.table = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0)]
@.str.157 = private unnamed_addr constant [8 x i8] c"(error)\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"  returning value: %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [49 x i8] c"formatting output:\0A  value: %Lf\0A  humanized: %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"  After padding: %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"from-zero\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"towards-zero\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"iec\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"iec-i\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"KMGTPEZY0\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"invalid unit size: %s\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"from-unit\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"to-unit\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"grouping\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@n_frp = common local_unnamed_addr global i64 0, align 8
@frp = common local_unnamed_addr global %struct.field_range_pair* null, align 8
@.str.1.7 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.2.8 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.3.9 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.4.10 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.5.11 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal global i64 0, align 8
@.str.6.12 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8
@.str.7.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8.14 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9.15 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10.16 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11.17 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.12.18 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13.19 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.58 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.59 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.60 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.61 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.62 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.159 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.160 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.169 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.170 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.171 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.173, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.174, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.175, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.176, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.177, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.178, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.179, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.180, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.181, i32 0, i32 0), i8* null], align 16
@.str.172 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.173 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.174 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.175 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.176 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.177 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.178 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.179 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.180 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.181 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.182 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.183 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.184 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.185 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.186 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.187 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.188 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.197 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.198 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.199 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.200 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.201 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.202 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.203 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.204 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.205 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.206 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.207 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.208 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.209 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.210 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.213 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.214 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.215 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.216 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.217 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.218 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.231 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.232 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.237 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.238 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.241 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.242 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.251 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.254 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.255 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.256 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.257 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.258 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.259 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.260 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %114

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.54, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.10, i64 0, i64 0), i32 5) #12
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([324 x i8], [324 x i8]* @.str.12, i64 0, i64 0), i32 5) #12
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.13, i64 0, i64 0), i32 5) #12
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.14, i64 0, i64 0), i32 5) #12
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #12
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #12
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #12
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i64 0, i64 0), i32 5) #12
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0), i32 5) #12
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #12
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 5) #12
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #12
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #12
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #12
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = tail call i32 @fputs_unlocked(i8* %69, %struct._IO_FILE* %70) #12
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.21, i64 0, i64 0), i32 5) #12
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = tail call i32 @fputs_unlocked(i8* %72, %struct._IO_FILE* %73) #12
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.22, i64 0, i64 0), i32 5) #12
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #12
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.23, i64 0, i64 0), i32 5) #12
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = tail call i32 @fputs_unlocked(i8* %78, %struct._IO_FILE* %79) #12
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0), i32 5) #12
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = tail call i32 @fputs_unlocked(i8* %81, %struct._IO_FILE* %82) #12
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.25, i64 0, i64 0), i32 5) #12
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = tail call i32 @fputs_unlocked(i8* %84, %struct._IO_FILE* %85) #12
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.26, i64 0, i64 0), i32 5) #12
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([372 x i8], [372 x i8]* @.str.27, i64 0, i64 0), i32 5) #12
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = tail call i32 @fputs_unlocked(i8* %90, %struct._IO_FILE* %91) #12
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([411 x i8], [411 x i8]* @.str.28, i64 0, i64 0), i32 5) #12
  %94 = load i8*, i8** @program_name, align 8
  %95 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %93, i8* %94) #12
  %96 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([447 x i8], [447 x i8]* @.str.29, i64 0, i64 0), i32 5) #12
  %97 = load i8*, i8** @program_name, align 8
  %98 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %96, i8* %97, i8* %97, i8* %97, i8* %97, i8* %97, i8* %97, i8* %97, i8* %97, i8* %97) #12
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #12
  %100 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0)) #12
  %101 = tail call i8* @setlocale(i32 5, i8* null) #12
  %102 = icmp eq i8* %101, null
  br i1 %102, label %109, label %103

; <label>:103:                                    ; preds = %8
  %104 = tail call i32 @strncmp(i8* nonnull %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i64 3) #9
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

; <label>:106:                                    ; preds = %103
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.66, i64 0, i64 0), i32 5) #12
  %108 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #12
  br label %109

; <label>:109:                                    ; preds = %8, %103, %106
  %110 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0), i32 5) #12
  %111 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #12
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0), i32 5) #12
  %113 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0)) #12
  br label %114

; <label>:114:                                    ; preds = %109, %3
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
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %6) #12
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0)) #12
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0)) #12
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #12
  %10 = tail call i8* @nl_langinfo(i32 65536) #12
  store i8* %10, i8** @decimal_point, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load i8, i8* %10, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12, %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8** @decimal_point, align 8
  br label %16

; <label>:16:                                     ; preds = %15, %12
  %17 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %15 ], [ %10, %12 ]
  %18 = tail call i64 @strlen(i8* nonnull %17) #9
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @decimal_point_length, align 4
  %20 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12
  br label %21

; <label>:21:                                     ; preds = %29, %16
  %22 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %struct.option* getelementptr inbounds ([19 x %struct.option], [19 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12
  switch i32 %22, label %114 [
    i32 -1, label %115
    i32 128, label %23
    i32 129, label %30
    i32 130, label %33
    i32 131, label %39
    i32 132, label %42
    i32 134, label %48
    i32 135, label %49
    i32 136, label %64
    i32 100, label %71
    i32 122, label %83
    i32 133, label %84
    i32 137, label %86
    i32 138, label %87
    i32 139, label %88
    i32 140, label %102
    i32 141, label %104
    i32 -130, label %110
    i32 -131, label %111
  ]

; <label>:23:                                     ; preds = %21
  %24 = load i8*, i8** @optarg, align 8
  %25 = load void ()*, void ()** @argmatch_die, align 8
  %26 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %24, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @scale_from_args, i64 0, i64 0), i8* bitcast ([5 x i32]* @scale_from_types to i8*), i64 4, void ()* %25) #12
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* @scale_from_types, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @scale_from, align 4
  br label %29

; <label>:29:                                     ; preds = %23, %30, %33, %39, %42, %48, %69, %81, %83, %84, %86, %87, %102, %104, %62, %60, %91, %101
  br label %21

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** @optarg, align 8
  %32 = tail call fastcc i64 @unit_to_umax(i8* %31)
  store i64 %32, i64* @from_unit_size, align 8
  br label %29

; <label>:33:                                     ; preds = %21
  %34 = load i8*, i8** @optarg, align 8
  %35 = load void ()*, void ()** @argmatch_die, align 8
  %36 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* %34, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @scale_to_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @scale_to_types to i8*), i64 4, void ()* %35) #12
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* @scale_to_types, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @scale_to, align 4
  br label %29

; <label>:39:                                     ; preds = %21
  %40 = load i8*, i8** @optarg, align 8
  %41 = tail call fastcc i64 @unit_to_umax(i8* %40)
  store i64 %41, i64* @to_unit_size, align 8
  br label %29

; <label>:42:                                     ; preds = %21
  %43 = load i8*, i8** @optarg, align 8
  %44 = load void ()*, void ()** @argmatch_die, align 8
  %45 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* %43, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @round_args, i64 0, i64 0), i8* bitcast ([5 x i32]* @round_types to i8*), i64 4, void ()* %44) #12
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* @round_types, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @round_style, align 4
  br label %29

; <label>:48:                                     ; preds = %21
  store i1 true, i1* @grouping, align 4
  br label %29

; <label>:49:                                     ; preds = %21
  %50 = load i8*, i8** @optarg, align 8
  %51 = tail call i32 @xstrtol(i8* %50, i8** null, i32 10, i64* nonnull @padding_width, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0)) #12
  %52 = icmp ne i32 %51, 0
  %53 = load i64, i64* @padding_width, align 8
  %54 = icmp eq i64 %53, 0
  %55 = or i1 %52, %54
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %49
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i32 5) #12
  %58 = load i8*, i8** @optarg, align 8
  %59 = tail call i8* @quote(i8* %58) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %57, i8* %59) #12
  unreachable

; <label>:60:                                     ; preds = %49
  %61 = icmp slt i64 %53, 0
  br i1 %61, label %62, label %29

; <label>:62:                                     ; preds = %60
  store i1 true, i1* @padding_alignment, align 4
  %63 = sub nsw i64 0, %53
  store i64 %63, i64* @padding_width, align 8
  br label %29

; <label>:64:                                     ; preds = %21
  %65 = load i64, i64* @n_frp, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %69, label %67

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %68) #12
  unreachable

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** @optarg, align 8
  tail call void @set_fields(i8* %70, i32 1) #12
  br label %29

; <label>:71:                                     ; preds = %21
  %72 = load i8*, i8** @optarg, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds i8, i8* %72, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

; <label>:79:                                     ; preds = %75
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %80) #12
  unreachable

; <label>:81:                                     ; preds = %75, %71
  %82 = sext i8 %73 to i32
  store i32 %82, i32* @delimiter, align 4
  br label %29

; <label>:83:                                     ; preds = %21
  store i1 true, i1* @line_delim, align 1
  br label %29

; <label>:84:                                     ; preds = %21
  %85 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %85, i64* bitcast (i8** @suffix to i64*), align 8
  br label %29

; <label>:86:                                     ; preds = %21
  store i1 true, i1* @debug, align 1
  br label %29

; <label>:87:                                     ; preds = %21
  store i1 true, i1* @dev_debug, align 1
  store i1 true, i1* @debug, align 1
  br label %29

; <label>:88:                                     ; preds = %21
  %89 = load i8*, i8** @optarg, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %101, label %91

; <label>:91:                                     ; preds = %88
  %92 = tail call i32 @xstrtoumax(i8* nonnull %89, i8** null, i32 10, i64* nonnull @header, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0)) #12
  %93 = icmp ne i32 %92, 0
  %94 = load i64, i64* @header, align 8
  %95 = icmp eq i64 %94, 0
  %96 = or i1 %93, %95
  br i1 %96, label %97, label %29

; <label>:97:                                     ; preds = %91
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), i32 5) #12
  %99 = load i8*, i8** @optarg, align 8
  %100 = tail call i8* @quote(i8* %99) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %98, i8* %100) #12
  unreachable

; <label>:101:                                    ; preds = %88
  store i64 1, i64* @header, align 8
  br label %29

; <label>:102:                                    ; preds = %21
  %103 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %103, i64* bitcast (i8** @format_str to i64*), align 8
  br label %29

; <label>:104:                                    ; preds = %21
  %105 = load i8*, i8** @optarg, align 8
  %106 = load void ()*, void ()** @argmatch_die, align 8
  %107 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8* %105, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @inval_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @inval_types to i8*), i64 4, void ()* %106) #12
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* @inval_types, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* @inval_style, align 4
  br label %29

; <label>:110:                                    ; preds = %21
  tail call void @usage(i32 0) #15
  unreachable

; <label>:111:                                    ; preds = %21
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* null) #12
  tail call void @exit(i32 0) #14
  unreachable

; <label>:114:                                    ; preds = %21
  tail call void @usage(i32 1) #15
  unreachable

; <label>:115:                                    ; preds = %21
  %116 = load i8*, i8** @format_str, align 8
  %117 = icmp ne i8* %116, null
  %118 = load i1, i1* @grouping, align 4
  %119 = and i1 %117, %118
  br i1 %119, label %120, label %122

; <label>:120:                                    ; preds = %115
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %121) #12
  unreachable

; <label>:122:                                    ; preds = %115
  %123 = load i1, i1* @debug, align 1
  %124 = xor i1 %123, true
  %125 = icmp ne i8* %7, null
  %126 = or i1 %125, %124
  br i1 %126, label %132, label %127

; <label>:127:                                    ; preds = %122
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128) #12
  %129 = load i1, i1* @debug, align 1
  %130 = load i1, i1* @grouping, align 4
  %131 = load i8*, i8** @format_str, align 8
  br label %132

; <label>:132:                                    ; preds = %122, %127
  %133 = phi i8* [ %116, %122 ], [ %131, %127 ]
  %134 = phi i1 [ %118, %122 ], [ %130, %127 ]
  %135 = phi i1 [ %123, %122 ], [ %129, %127 ]
  %136 = load i32, i32* @scale_from, align 4
  %137 = load i32, i32* @scale_to, align 4
  %138 = or i32 %137, %136
  %139 = icmp eq i32 %138, 0
  %140 = and i1 %135, %139
  %141 = xor i1 %134, true
  %142 = and i1 %140, %141
  %143 = load i64, i64* @padding_width, align 8
  %144 = icmp eq i64 %143, 0
  %145 = and i1 %144, %142
  %146 = icmp eq i8* %133, null
  %147 = and i1 %146, %145
  br i1 %147, label %148, label %151

; <label>:148:                                    ; preds = %132
  %149 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %149) #12
  %150 = load i8*, i8** @format_str, align 8
  br label %151

; <label>:151:                                    ; preds = %132, %148
  %152 = phi i8* [ %133, %132 ], [ %150, %148 ]
  %153 = icmp eq i8* %152, null
  br i1 %153, label %317, label %154

; <label>:154:                                    ; preds = %151
  %155 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %155) #12
  store i8* null, i8** %3, align 8
  br label %156

; <label>:156:                                    ; preds = %173, %154
  %157 = phi i64 [ 0, %154 ], [ %174, %173 ]
  %158 = phi i64 [ 0, %154 ], [ %176, %173 ]
  %159 = getelementptr inbounds i8, i8* %152, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 37
  br i1 %161, label %162, label %168

; <label>:162:                                    ; preds = %156
  %163 = add i64 %158, 1
  %164 = getelementptr inbounds i8, i8* %152, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = icmp eq i8 %165, 37
  br i1 %166, label %173, label %167

; <label>:167:                                    ; preds = %162
  br label %190

; <label>:168:                                    ; preds = %156
  %169 = icmp eq i8 %160, 0
  br i1 %169, label %170, label %173

; <label>:170:                                    ; preds = %168
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i64 0, i64 0), i32 5) #12
  %172 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %171, i8* %172) #12
  unreachable

; <label>:173:                                    ; preds = %168, %162
  %174 = add i64 %157, 1
  %175 = select i1 %161, i64 2, i64 1
  %176 = add i64 %175, %158
  br label %156

; <label>:177:                                    ; preds = %186, %190
  %178 = phi i64 [ %192, %190 ], [ %187, %186 ]
  %179 = getelementptr inbounds i8, i8* %152, i64 %178
  %180 = tail call i64 @strspn(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0)) #12
  %181 = add i64 %180, %178
  %182 = getelementptr inbounds i8, i8* %152, i64 %181
  %183 = load i8, i8* %182, align 1
  switch i8 %183, label %193 [
    i8 39, label %184
    i8 48, label %188
  ]

; <label>:184:                                    ; preds = %177
  store i1 true, i1* @grouping, align 4
  %185 = add i64 %181, 1
  br label %186

; <label>:186:                                    ; preds = %184, %193
  %187 = phi i64 [ %185, %184 ], [ %181, %193 ]
  br label %177

; <label>:188:                                    ; preds = %177
  %189 = add i64 %181, 1
  br label %190

; <label>:190:                                    ; preds = %167, %188
  %191 = phi i8 [ 1, %188 ], [ 0, %167 ]
  %192 = phi i64 [ %189, %188 ], [ %163, %167 ]
  br label %177

; <label>:193:                                    ; preds = %177
  %194 = icmp eq i64 %180, 0
  br i1 %194, label %195, label %186

; <label>:195:                                    ; preds = %193
  %196 = tail call i32* @__errno_location() #1
  store i32 0, i32* %196, align 4
  %197 = call i64 @strtol(i8* %182, i8** nonnull %3, i32 10) #12
  %198 = load i32, i32* %196, align 4
  %199 = icmp eq i32 %198, 34
  br i1 %199, label %200, label %203

; <label>:200:                                    ; preds = %195
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i64 0, i64 0), i32 5) #12
  %202 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %201, i8* %202) #12
  unreachable

; <label>:203:                                    ; preds = %195
  %204 = load i8*, i8** %3, align 8
  %205 = icmp ne i8* %204, %182
  %206 = icmp ne i64 %197, 0
  %207 = and i1 %206, %205
  br i1 %207, label %208, label %226

; <label>:208:                                    ; preds = %203
  %209 = load i1, i1* @debug, align 1
  %210 = load i64, i64* @padding_width, align 8
  %211 = icmp ne i64 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %219

; <label>:213:                                    ; preds = %208
  %214 = icmp ne i8 %191, 0
  %215 = icmp sgt i64 %197, 0
  %216 = and i1 %214, %215
  br i1 %216, label %223, label %217

; <label>:217:                                    ; preds = %213
  %218 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %218) #12
  br label %219

; <label>:219:                                    ; preds = %217, %208
  %220 = icmp slt i64 %197, 0
  br i1 %220, label %221, label %223

; <label>:221:                                    ; preds = %219
  store i1 true, i1* @padding_alignment, align 4
  %222 = sub nsw i64 0, %197
  store i64 %222, i64* @padding_width, align 8
  br label %226

; <label>:223:                                    ; preds = %219, %213
  %224 = icmp ne i8 %191, 0
  %225 = select i1 %224, i64* @zero_padding_width, i64* @padding_width
  store i64 %197, i64* %225, align 8
  br label %226

; <label>:226:                                    ; preds = %223, %221, %203
  %227 = ptrtoint i8* %204 to i64
  %228 = ptrtoint i8* %152 to i64
  %229 = sub i64 %227, %228
  %230 = load i8, i8* %204, align 1
  switch i8 %230, label %262 [
    i8 0, label %231
    i8 46, label %234
  ]

; <label>:231:                                    ; preds = %226
  %232 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i32 5) #12
  %233 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %232, i8* %233) #12
  unreachable

; <label>:234:                                    ; preds = %226
  %235 = add i64 %229, 1
  store i32 0, i32* %196, align 4
  %236 = getelementptr inbounds i8, i8* %152, i64 %235
  %237 = call i64 @strtol(i8* %236, i8** nonnull %3, i32 10) #12
  store i64 %237, i64* @user_precision, align 8
  %238 = load i32, i32* %196, align 4
  %239 = icmp eq i32 %238, 34
  %240 = icmp slt i64 %237, 0
  %241 = or i1 %240, %239
  br i1 %241, label %253, label %242

; <label>:242:                                    ; preds = %234
  %243 = tail call i16** @__ctype_b_loc() #1
  %244 = load i16*, i16** %243, align 8
  %245 = load i8, i8* %236, align 1
  %246 = sext i8 %245 to i64
  %247 = getelementptr inbounds i16, i16* %244, i64 %246
  %248 = load i16, i16* %247, align 2
  %249 = and i16 %248, 1
  %250 = icmp ne i16 %249, 0
  %251 = icmp eq i8 %245, 43
  %252 = or i1 %251, %250
  br i1 %252, label %253, label %256

; <label>:253:                                    ; preds = %242, %234
  %254 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.110, i64 0, i64 0), i32 5) #12
  %255 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %254, i8* %255) #12
  unreachable

; <label>:256:                                    ; preds = %242
  %257 = bitcast i8** %3 to i64*
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 %258, %228
  %260 = getelementptr inbounds i8, i8* %152, i64 %259
  %261 = load i8, i8* %260, align 1
  br label %262

; <label>:262:                                    ; preds = %256, %226
  %263 = phi i8 [ %261, %256 ], [ %230, %226 ]
  %264 = phi i64 [ %259, %256 ], [ %229, %226 ]
  %265 = icmp eq i8 %263, 102
  br i1 %265, label %269, label %266

; <label>:266:                                    ; preds = %262
  %267 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.111, i64 0, i64 0), i32 5) #12
  %268 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %267, i8* %268) #12
  unreachable

; <label>:269:                                    ; preds = %262
  %270 = add i64 %264, 1
  br label %271

; <label>:271:                                    ; preds = %283, %269
  %272 = phi i64 [ %270, %269 ], [ %286, %283 ]
  %273 = getelementptr inbounds i8, i8* %152, i64 %272
  %274 = load i8, i8* %273, align 1
  switch i8 %274, label %283 [
    i8 0, label %287
    i8 37, label %275
  ]

; <label>:275:                                    ; preds = %271
  %276 = add i64 %272, 1
  %277 = getelementptr inbounds i8, i8* %152, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = icmp eq i8 %278, 37
  br i1 %279, label %283, label %280

; <label>:280:                                    ; preds = %275
  %281 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.112, i64 0, i64 0), i32 5) #12
  %282 = tail call i8* @quote(i8* nonnull %152) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %281, i8* %282) #12
  unreachable

; <label>:283:                                    ; preds = %275, %271
  %284 = icmp eq i8 %274, 37
  %285 = select i1 %284, i64 2, i64 1
  %286 = add i64 %285, %272
  br label %271

; <label>:287:                                    ; preds = %271
  %288 = icmp eq i64 %157, 0
  br i1 %288, label %291, label %289

; <label>:289:                                    ; preds = %287
  %290 = tail call i8* @xstrndup(i8* nonnull %152, i64 %157) #12
  store i8* %290, i8** @format_str_prefix, align 8
  br label %291

; <label>:291:                                    ; preds = %289, %287
  %292 = getelementptr inbounds i8, i8* %152, i64 %270
  %293 = load i8, i8* %292, align 1
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %297, label %295

; <label>:295:                                    ; preds = %291
  %296 = tail call noalias i8* @xstrdup(i8* %292) #12
  store i8* %296, i8** @format_str_suffix, align 8
  br label %297

; <label>:297:                                    ; preds = %295, %291
  %298 = load i1, i1* @dev_debug, align 1
  br i1 %298, label %299, label %316

; <label>:299:                                    ; preds = %297
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %301 = tail call i8* @quote_n(i32 0, i8* nonnull %152) #12
  %302 = load i1, i1* @grouping, align 4
  %303 = select i1 %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0)
  %304 = load i64, i64* @padding_width, align 8
  %305 = load i1, i1* @padding_alignment, align 4
  %306 = select i1 %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i64 0, i64 0)
  %307 = load i8*, i8** @format_str_prefix, align 8
  %308 = icmp ne i8* %307, null
  %309 = select i1 %308, i8* %307, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0)
  %310 = tail call i8* @quote_n(i32 1, i8* %309) #12
  %311 = load i8*, i8** @format_str_suffix, align 8
  %312 = icmp ne i8* %311, null
  %313 = select i1 %312, i8* %311, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0)
  %314 = tail call i8* @quote_n(i32 2, i8* %313) #12
  %315 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %300, i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.113, i64 0, i64 0), i8* %301, i8* %303, i64 %304, i8* %306, i8* %310, i8* %314) #12
  br label %316

; <label>:316:                                    ; preds = %297, %299
  call void @llvm.lifetime.end(i64 8, i8* nonnull %155) #12
  br label %317

; <label>:317:                                    ; preds = %151, %316
  %318 = load i1, i1* @grouping, align 4
  br i1 %318, label %319, label %332

; <label>:319:                                    ; preds = %317
  %320 = load i32, i32* @scale_to, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

; <label>:322:                                    ; preds = %319
  %323 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %323) #12
  unreachable

; <label>:324:                                    ; preds = %319
  %325 = load i1, i1* @debug, align 1
  br i1 %325, label %326, label %332

; <label>:326:                                    ; preds = %324
  %327 = tail call i8* @nl_langinfo(i32 65537) #12
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %332

; <label>:330:                                    ; preds = %326
  %331 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %331) #12
  br label %332

; <label>:332:                                    ; preds = %324, %326, %330, %317
  %333 = load i64, i64* @padding_width, align 8
  %334 = load i64, i64* @padding_buffer_size, align 8
  %335 = icmp ugt i64 %334, %333
  br i1 %335, label %341, label %336

; <label>:336:                                    ; preds = %332
  %337 = add i64 %333, 1
  store i64 %337, i64* @padding_buffer_size, align 8
  %338 = load i8*, i8** @padding_buffer, align 8
  %339 = tail call i8* @xrealloc(i8* %338, i64 %337) #12
  store i8* %339, i8** @padding_buffer, align 8
  %340 = load i64, i64* @padding_width, align 8
  br label %341

; <label>:341:                                    ; preds = %332, %336
  %342 = phi i64 [ %333, %332 ], [ %340, %336 ]
  %343 = icmp eq i64 %342, 0
  %344 = load i32, i32* @delimiter, align 4
  %345 = icmp eq i32 %344, 128
  %346 = and i1 %343, %345
  %347 = zext i1 %346 to i32
  store i32 %347, i32* @auto_padding, align 4
  %348 = load i32, i32* @inval_style, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %351, label %350

; <label>:350:                                    ; preds = %341
  store i1 true, i1* @conv_exit_code, align 4
  br label %351

; <label>:351:                                    ; preds = %341, %350
  %352 = load i32, i32* @optind, align 4
  %353 = icmp slt i32 %352, %0
  br i1 %353, label %354, label %377

; <label>:354:                                    ; preds = %351
  %355 = load i1, i1* @debug, align 1
  %356 = load i64, i64* @header, align 8
  %357 = icmp ne i64 %356, 0
  %358 = and i1 %355, %357
  br i1 %358, label %359, label %362

; <label>:359:                                    ; preds = %354
  %360 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %360) #12
  %361 = load i32, i32* @optind, align 4
  br label %362

; <label>:362:                                    ; preds = %359, %354
  %363 = phi i32 [ %361, %359 ], [ %352, %354 ]
  %364 = icmp slt i32 %363, %0
  br i1 %364, label %365, label %449

; <label>:365:                                    ; preds = %362
  br label %366

; <label>:366:                                    ; preds = %365, %366
  %367 = phi i32 [ %375, %366 ], [ %363, %365 ]
  %368 = phi i32 [ %373, %366 ], [ 1, %365 ]
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i8*, i8** %1, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = tail call fastcc i32 @process_line(i8* %371, i1 zeroext true)
  %373 = and i32 %372, %368
  %374 = load i32, i32* @optind, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* @optind, align 4
  %376 = icmp slt i32 %375, %0
  br i1 %376, label %366, label %440

; <label>:377:                                    ; preds = %351
  %378 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %378) #12
  store i8* null, i8** %4, align 8
  %379 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %379) #12
  store i64 0, i64* %5, align 8
  %380 = load i64, i64* @header, align 8
  %381 = add i64 %380, -1
  store i64 %381, i64* @header, align 8
  %382 = icmp eq i64 %380, 0
  br i1 %382, label %385, label %383

; <label>:383:                                    ; preds = %377
  br label %392

; <label>:384:                                    ; preds = %392, %398
  br label %385

; <label>:385:                                    ; preds = %384, %377
  %386 = load i1, i1* @line_delim, align 1
  %387 = select i1 %386, i32 0, i32 10
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %389 = call i64 @getdelim(i8** nonnull %4, i64* nonnull %5, i32 %387, %struct._IO_FILE* %388) #12
  %390 = icmp sgt i64 %389, 0
  br i1 %390, label %391, label %428

; <label>:391:                                    ; preds = %385
  br label %405

; <label>:392:                                    ; preds = %383, %398
  %393 = load i1, i1* @line_delim, align 1
  %394 = select i1 %393, i32 0, i32 10
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %396 = call i64 @getdelim(i8** nonnull %4, i64* nonnull %5, i32 %394, %struct._IO_FILE* %395) #12
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %384

; <label>:398:                                    ; preds = %392
  %399 = load i8*, i8** %4, align 8
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %401 = call i32 @fputs_unlocked(i8* %399, %struct._IO_FILE* %400) #12
  %402 = load i64, i64* @header, align 8
  %403 = add i64 %402, -1
  store i64 %403, i64* @header, align 8
  %404 = icmp eq i64 %402, 0
  br i1 %404, label %384, label %392

; <label>:405:                                    ; preds = %391, %418
  %406 = phi i64 [ %425, %418 ], [ %389, %391 ]
  %407 = phi i32 [ %421, %418 ], [ 1, %391 ]
  %408 = load i8*, i8** %4, align 8
  %409 = add nsw i64 %406, -1
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = load i1, i1* @line_delim, align 1
  %414 = select i1 %413, i32 0, i32 10
  %415 = icmp eq i32 %412, %414
  br i1 %415, label %416, label %418

; <label>:416:                                    ; preds = %405
  store i8 0, i8* %410, align 1
  %417 = load i8*, i8** %4, align 8
  br label %418

; <label>:418:                                    ; preds = %416, %405
  %419 = phi i8* [ %417, %416 ], [ %408, %405 ]
  %420 = call fastcc i32 @process_line(i8* %419, i1 zeroext %415)
  %421 = and i32 %420, %407
  %422 = load i1, i1* @line_delim, align 1
  %423 = select i1 %422, i32 0, i32 10
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %425 = call i64 @getdelim(i8** nonnull %4, i64* nonnull %5, i32 %423, %struct._IO_FILE* %424) #12
  %426 = icmp sgt i64 %425, 0
  br i1 %426, label %405, label %427

; <label>:427:                                    ; preds = %418
  br label %428

; <label>:428:                                    ; preds = %427, %385
  %429 = phi i32 [ 1, %385 ], [ %421, %427 ]
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %431 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %430, i64 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = and i32 %432, 32
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435

; <label>:435:                                    ; preds = %428
  %436 = tail call i32* @__errno_location() #1
  %437 = load i32, i32* %436, align 4
  %438 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %437, i8* %438) #12
  br label %439

; <label>:439:                                    ; preds = %428, %435
  call void @llvm.lifetime.end(i64 8, i8* nonnull %379) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %378) #12
  br label %441

; <label>:440:                                    ; preds = %366
  br label %441

; <label>:441:                                    ; preds = %440, %439
  %442 = phi i32 [ %429, %439 ], [ %373, %440 ]
  %443 = load i1, i1* @debug, align 1
  %444 = xor i1 %443, true
  %445 = icmp ne i32 %442, 0
  %446 = or i1 %445, %444
  br i1 %446, label %449, label %447

; <label>:447:                                    ; preds = %441
  %448 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %448) #12
  br label %449

; <label>:449:                                    ; preds = %362, %441, %447
  %450 = phi i32 [ %442, %441 ], [ %442, %447 ], [ 1, %362 ]
  %451 = icmp eq i32 %450, 0
  %452 = load i32, i32* @inval_style, align 4
  %453 = and i32 %452, -2
  %454 = icmp ne i32 %453, 2
  %455 = and i1 %451, %454
  %456 = select i1 %455, i32 2, i32 0
  ret i32 %456
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @unit_to_umax(i8*) unnamed_addr #6 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = tail call i64 @strlen(i8* %0) #9
  %5 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #12
  store i8* null, i8** %2, align 8
  %6 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #12
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %1
  %9 = add i64 %4, -1
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %12, -48
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %36, label %15

; <label>:15:                                     ; preds = %8
  %16 = add i64 %4, 2
  %17 = tail call noalias i8* @xmalloc(i64 %16) #12
  %18 = getelementptr inbounds i8, i8* %17, i64 %4
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %2, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* nonnull %0, i64 %4, i32 1, i1 false)
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 105
  %22 = icmp ugt i64 %4, 1
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %19, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %27, -48
  %29 = icmp ult i32 %28, 10
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %24, %15
  %31 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 66, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %2, align 8
  br label %33

; <label>:33:                                     ; preds = %24, %30
  %34 = phi i8* [ %32, %30 ], [ %19, %24 ]
  %35 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), %30 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), %24 ]
  store i8 0, i8* %34, align 1
  br label %36

; <label>:36:                                     ; preds = %1, %33, %8
  %37 = phi i8* [ null, %8 ], [ %17, %33 ], [ null, %1 ]
  %38 = phi i8* [ %0, %8 ], [ %17, %33 ], [ %0, %1 ]
  %39 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), %8 ], [ %35, %33 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), %1 ]
  %40 = call i32 @xstrtoumax(i8* %38, i8** nonnull %2, i32 10, i64* nonnull %3, i8* %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %2, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %46, 0
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %36, %42
  call void @free(i8* %37) #12
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i64 0, i64 0), i32 5) #12
  %51 = call i8* @quote(i8* %0) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %50, i8* %51) #12
  unreachable

; <label>:52:                                     ; preds = %42
  call void @free(i8* %37) #12
  %53 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #12
  ret i64 %53
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @process_line(i8*, i1 zeroext) unnamed_addr #6 {
  br label %3

; <label>:3:                                      ; preds = %89, %2
  %4 = phi i8* [ %0, %2 ], [ %90, %89 ]
  %5 = phi i64 [ 0, %2 ], [ %7, %89 ]
  %6 = phi i8 [ 1, %2 ], [ %73, %89 ]
  %7 = add i64 %5, 1
  %8 = load i32, i32* @delimiter, align 4
  %9 = icmp eq i32 %8, 128
  %10 = load i8, i8* %4, align 1
  br i1 %9, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %94, label %13

; <label>:13:                                     ; preds = %11
  %14 = tail call i16** @__ctype_b_loc() #1
  %15 = load i16*, i16** %14, align 8
  br label %31

; <label>:16:                                     ; preds = %3
  %17 = sext i8 %10 to i32
  %18 = icmp eq i32 %17, %8
  %19 = icmp eq i8 %10, 0
  %20 = or i1 %19, %18
  br i1 %20, label %65, label %21

; <label>:21:                                     ; preds = %16
  br label %22

; <label>:22:                                     ; preds = %21, %27
  %23 = phi i8 [ %29, %27 ], [ %10, %21 ]
  %24 = phi i8* [ %28, %27 ], [ %4, %21 ]
  %25 = sext i8 %23 to i32
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %64, label %27

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %93, label %22

; <label>:31:                                     ; preds = %47, %13
  %32 = phi i8 [ %10, %13 ], [ %49, %47 ]
  %33 = phi i8* [ %4, %13 ], [ %48, %47 ]
  %34 = zext i8 %32 to i64
  %35 = getelementptr inbounds i16, i16* %15, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = and i16 %36, 1
  %38 = icmp eq i8 %32, 10
  %39 = icmp ne i16 %37, 0
  %40 = or i1 %38, %39
  br i1 %40, label %47, label %41

; <label>:41:                                     ; preds = %31
  %42 = and i16 %36, 1
  %43 = icmp eq i8 %32, 10
  %44 = icmp ne i16 %42, 0
  %45 = or i1 %43, %44
  br i1 %45, label %70, label %46

; <label>:46:                                     ; preds = %41
  br label %51

; <label>:47:                                     ; preds = %31
  %48 = getelementptr inbounds i8, i8* %33, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %92, label %31

; <label>:51:                                     ; preds = %46, %56
  %52 = phi i8* [ %53, %56 ], [ %33, %46 ]
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %91, label %56

; <label>:56:                                     ; preds = %51
  %57 = zext i8 %54 to i64
  %58 = getelementptr inbounds i16, i16* %15, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = and i16 %59, 1
  %61 = icmp eq i8 %54, 10
  %62 = icmp ne i16 %60, 0
  %63 = or i1 %61, %62
  br i1 %63, label %69, label %51

; <label>:64:                                     ; preds = %22
  br label %65

; <label>:65:                                     ; preds = %64, %16
  %66 = phi i8 [ %10, %16 ], [ %23, %64 ]
  %67 = phi i8* [ %4, %16 ], [ %24, %64 ]
  %68 = icmp eq i8 %66, 0
  br i1 %68, label %94, label %70

; <label>:69:                                     ; preds = %56
  br label %70

; <label>:70:                                     ; preds = %69, %41, %65
  %71 = phi i8* [ %67, %65 ], [ %33, %41 ], [ %53, %69 ]
  store i8 0, i8* %71, align 1
  %72 = tail call fastcc zeroext i1 @process_field(i8* %4, i64 %7)
  %73 = select i1 %72, i8 %6, i8 0
  %74 = load i32, i32* @delimiter, align 4
  %75 = icmp eq i32 %74, 128
  %76 = select i1 %75, i32 32, i32 %74
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ult i8* %79, %81
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %70
  %84 = and i32 %76, 255
  %85 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %77, i32 %84) #12
  br label %89

; <label>:86:                                     ; preds = %70
  %87 = trunc i32 %76 to i8
  %88 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %88, i8** %78, align 8
  store i8 %87, i8* %79, align 1
  br label %89

; <label>:89:                                     ; preds = %83, %86
  %90 = getelementptr inbounds i8, i8* %71, i64 1
  br label %3

; <label>:91:                                     ; preds = %51
  br label %95

; <label>:92:                                     ; preds = %47
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %65, %11
  br label %95

; <label>:95:                                     ; preds = %94, %93, %92, %91
  %96 = tail call fastcc zeroext i1 @process_field(i8* %4, i64 %7)
  br i1 %1, label %97, label %111

; <label>:97:                                     ; preds = %95
  %98 = load i1, i1* @line_delim, align 1
  %99 = select i1 %98, i32 0, i32 10
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ult i8* %102, %104
  br i1 %105, label %108, label %106

; <label>:106:                                    ; preds = %97
  %107 = tail call i32 @__overflow(%struct._IO_FILE* %100, i32 %99) #12
  br label %111

; <label>:108:                                    ; preds = %97
  %109 = trunc i32 %99 to i8
  %110 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %110, i8** %101, align 8
  store i8 %109, i8* %102, align 1
  br label %111

; <label>:111:                                    ; preds = %108, %106, %95
  %112 = and i8 %6, 1
  %113 = zext i8 %112 to i32
  %114 = select i1 %96, i32 %113, i32 0
  ret i32 %114
}

declare i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @process_field(i8*, i64) unnamed_addr #6 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i64, align 8
  %6 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %7 = icmp eq %struct.field_range_pair* %6, null
  br i1 %7, label %26, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %6, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %1028, label %12

; <label>:12:                                     ; preds = %8
  br label %13

; <label>:13:                                     ; preds = %12, %21
  %14 = phi i64 [ %24, %21 ], [ %10, %12 ]
  %15 = phi %struct.field_range_pair* [ %22, %21 ], [ %6, %12 ]
  %16 = icmp ugt i64 %14, %1
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %15, i64 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %17, %13
  %22 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %15, i64 1
  %23 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %22, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %1027, label %13

; <label>:26:                                     ; preds = %2
  %27 = icmp eq i64 %1, 1
  br i1 %27, label %29, label %1028

; <label>:28:                                     ; preds = %17
  br label %29

; <label>:29:                                     ; preds = %28, %26
  %30 = load i8*, i8** @suffix, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %53, label %32

; <label>:32:                                     ; preds = %29
  %33 = tail call i64 @strlen(i8* %0) #9
  %34 = tail call i64 @strlen(i8* nonnull %30) #9
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %53

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds i8, i8* %0, i64 %33
  %38 = sub i64 0, %34
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = tail call i32 @strcmp(i8* nonnull %30, i8* %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %36
  store i8 0, i8* %39, align 1
  %43 = load i1, i1* @dev_debug, align 1
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = tail call i8* @quote(i8* nonnull %30) #12
  %47 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %45, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i64 0, i64 0), i8* %46) #12
  br label %53

; <label>:48:                                     ; preds = %36
  %49 = load i1, i1* @dev_debug, align 1
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %48
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %51, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.119, i64 0, i64 0)) #12
  br label %53

; <label>:53:                                     ; preds = %50, %48, %44, %42, %32, %29
  %54 = load i8, i8* %0, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %73, label %56

; <label>:56:                                     ; preds = %53
  %57 = tail call i16** @__ctype_b_loc() #1
  %58 = load i16*, i16** %57, align 8
  br label %59

; <label>:59:                                     ; preds = %67, %56
  %60 = phi i8 [ %54, %56 ], [ %69, %67 ]
  %61 = phi i8* [ %0, %56 ], [ %68, %67 ]
  %62 = zext i8 %60 to i64
  %63 = getelementptr inbounds i16, i16* %58, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %71, label %67

; <label>:67:                                     ; preds = %59
  %68 = getelementptr inbounds i8, i8* %61, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %59

; <label>:71:                                     ; preds = %59, %67
  %72 = phi i8* [ %68, %67 ], [ %61, %59 ]
  br label %73

; <label>:73:                                     ; preds = %71, %53
  %74 = phi i8* [ %0, %53 ], [ %72, %71 ]
  %75 = load i32, i32* @auto_padding, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %105, label %77

; <label>:77:                                     ; preds = %73
  %78 = ptrtoint i8* %0 to i64
  %79 = ptrtoint i8* %74 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = icmp ne i32 %81, 0
  %83 = icmp sgt i64 %1, 1
  %84 = or i1 %83, %82
  br i1 %84, label %85, label %93

; <label>:85:                                     ; preds = %77
  %86 = tail call i64 @strlen(i8* %0) #9
  store i64 %86, i64* @padding_width, align 8
  %87 = load i64, i64* @padding_buffer_size, align 8
  %88 = icmp ugt i64 %87, %86
  br i1 %88, label %94, label %89

; <label>:89:                                     ; preds = %85
  %90 = add i64 %86, 1
  store i64 %90, i64* @padding_buffer_size, align 8
  %91 = load i8*, i8** @padding_buffer, align 8
  %92 = tail call i8* @xrealloc(i8* %91, i64 %90) #12
  store i8* %92, i8** @padding_buffer, align 8
  br label %94

; <label>:93:                                     ; preds = %77
  store i64 0, i64* @padding_width, align 8
  br label %94

; <label>:94:                                     ; preds = %93, %89, %85
  %95 = load i1, i1* @dev_debug, align 1
  br i1 %95, label %101, label %96

; <label>:96:                                     ; preds = %94
  %97 = load i32, i32* @scale_from, align 4
  %98 = add i32 %97, -3
  %99 = icmp ult i32 %98, 2
  %100 = select i1 %99, i32 1024, i32 1000
  br label %117

; <label>:101:                                    ; preds = %94
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = load i64, i64* @padding_width, align 8
  %104 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %102, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i64 0, i64 0), i64 %103) #12
  br label %105

; <label>:105:                                    ; preds = %101, %73
  %106 = load i1, i1* @dev_debug, align 1
  %107 = load i32, i32* @scale_from, align 4
  %108 = add i32 %107, -3
  %109 = icmp ult i32 %108, 2
  %110 = select i1 %109, i32 1024, i32 1000
  br i1 %106, label %111, label %117

; <label>:111:                                    ; preds = %105
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = tail call i8* @quote_n(i32 0, i8* %74) #12
  %114 = load i8*, i8** @decimal_point, align 8
  %115 = tail call i8* @quote_n(i32 1, i8* %114) #12
  %116 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %112, i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.123, i64 0, i64 0), i8* %113, i8* %115, i32 18) #12
  br label %117

; <label>:117:                                    ; preds = %111, %105, %96
  %118 = phi i32 [ %100, %96 ], [ %110, %111 ], [ %110, %105 ]
  %119 = phi i32 [ %97, %96 ], [ %107, %111 ], [ %107, %105 ]
  %120 = load i8, i8* %74, align 1
  %121 = icmp eq i8 %120, 45
  %122 = getelementptr inbounds i8, i8* %74, i64 1
  %123 = select i1 %121, i8* %122, i8* %74
  %124 = icmp eq i8* %123, null
  br i1 %124, label %154, label %125

; <label>:125:                                    ; preds = %117
  %126 = load i8, i8* %123, align 1
  %127 = sext i8 %126 to i32
  %128 = add nsw i32 %127, -48
  %129 = icmp ult i32 %128, 10
  br i1 %129, label %130, label %154

; <label>:130:                                    ; preds = %125
  br label %142

; <label>:131:                                    ; preds = %142
  %132 = icmp ugt i32 %152, 18
  %133 = select i1 %132, i32 1, i32 %145
  %134 = fmul x86_fp80 %146, 0xK4002A000000000000000
  %135 = sitofp i32 %143 to x86_fp80
  %136 = fadd x86_fp80 %135, %134
  %137 = getelementptr inbounds i8, i8* %144, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %139, -48
  %141 = icmp ult i32 %140, 10
  br i1 %141, label %142, label %163

; <label>:142:                                    ; preds = %130, %131
  %143 = phi i32 [ %140, %131 ], [ %128, %130 ]
  %144 = phi i8* [ %137, %131 ], [ %123, %130 ]
  %145 = phi i32 [ %133, %131 ], [ 0, %130 ]
  %146 = phi x86_fp80 [ %136, %131 ], [ 0xK00000000000000000000, %130 ]
  %147 = phi i32 [ %152, %131 ], [ 0, %130 ]
  %148 = fcmp une x86_fp80 %146, 0xK00000000000000000000
  %149 = icmp ne i32 %143, 0
  %150 = or i1 %149, %148
  %151 = zext i1 %150 to i32
  %152 = add i32 %151, %147
  %153 = icmp ugt i32 %152, 27
  br i1 %153, label %432, label %131

; <label>:154:                                    ; preds = %125, %117
  %155 = phi i8* [ null, %117 ], [ %123, %125 ]
  %156 = load i8*, i8** @decimal_point, align 8
  %157 = load i32, i32* @decimal_point_length, align 4
  %158 = sext i32 %157 to i64
  %159 = tail call i32 @strncmp(i8* %155, i8* %156, i64 %158) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %436

; <label>:161:                                    ; preds = %154
  %162 = select i1 %121, x86_fp80 0xK80000000000000000000, x86_fp80 0xK00000000000000000000
  br label %170

; <label>:163:                                    ; preds = %131
  %164 = fsub x86_fp80 0xK80000000000000000000, %136
  %165 = select i1 %121, x86_fp80 %164, x86_fp80 %136
  %166 = icmp ugt i32 %133, 1
  br i1 %166, label %426, label %167

; <label>:167:                                    ; preds = %163
  %168 = load i8*, i8** @decimal_point, align 8
  %169 = load i32, i32* @decimal_point_length, align 4
  br label %170

; <label>:170:                                    ; preds = %167, %161
  %171 = phi i32 [ %157, %161 ], [ %169, %167 ]
  %172 = phi i8* [ %156, %161 ], [ %168, %167 ]
  %173 = phi x86_fp80 [ %162, %161 ], [ %165, %167 ]
  %174 = phi i8* [ %123, %161 ], [ %137, %167 ]
  %175 = phi i32 [ 0, %161 ], [ %133, %167 ]
  %176 = phi i8* [ %155, %161 ], [ %137, %167 ]
  %177 = ptrtoint i8* %174 to i64
  %178 = sext i32 %171 to i64
  %179 = tail call i32 @strncmp(i8* %176, i8* %172, i64 %178) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %285

; <label>:181:                                    ; preds = %170
  %182 = getelementptr inbounds i8, i8* %176, i64 %178
  %183 = ptrtoint i8* %182 to i64
  %184 = load i8, i8* %182, align 1
  %185 = icmp eq i8 %184, 45
  %186 = getelementptr inbounds i8, i8* %182, i64 1
  %187 = select i1 %185, i8* %186, i8* %182
  %188 = icmp eq i8* %187, null
  br i1 %188, label %218, label %189

; <label>:189:                                    ; preds = %181
  %190 = load i8, i8* %187, align 1
  %191 = sext i8 %190 to i32
  %192 = add nsw i32 %191, -48
  %193 = icmp ult i32 %192, 10
  br i1 %193, label %194, label %218

; <label>:194:                                    ; preds = %189
  br label %206

; <label>:195:                                    ; preds = %206
  %196 = icmp ugt i32 %216, 18
  %197 = select i1 %196, i32 1, i32 %209
  %198 = fmul x86_fp80 %210, 0xK4002A000000000000000
  %199 = sitofp i32 %207 to x86_fp80
  %200 = fadd x86_fp80 %199, %198
  %201 = getelementptr inbounds i8, i8* %208, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = add nsw i32 %203, -48
  %205 = icmp ult i32 %204, 10
  br i1 %205, label %206, label %224

; <label>:206:                                    ; preds = %194, %195
  %207 = phi i32 [ %204, %195 ], [ %192, %194 ]
  %208 = phi i8* [ %201, %195 ], [ %187, %194 ]
  %209 = phi i32 [ %197, %195 ], [ 0, %194 ]
  %210 = phi x86_fp80 [ %200, %195 ], [ 0xK00000000000000000000, %194 ]
  %211 = phi i32 [ %216, %195 ], [ 0, %194 ]
  %212 = fcmp une x86_fp80 %210, 0xK00000000000000000000
  %213 = icmp ne i32 %207, 0
  %214 = or i1 %213, %212
  %215 = zext i1 %214 to i32
  %216 = add i32 %215, %211
  %217 = icmp ugt i32 %216, 27
  br i1 %217, label %431, label %195

; <label>:218:                                    ; preds = %189, %181
  %219 = phi i8* [ null, %181 ], [ %187, %189 ]
  %220 = tail call i32 @strncmp(i8* %219, i8* %172, i64 %178) #9
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %436

; <label>:222:                                    ; preds = %218
  %223 = select i1 %185, x86_fp80 0xK80000000000000000000, x86_fp80 0xK00000000000000000000
  br label %228

; <label>:224:                                    ; preds = %195
  %225 = fsub x86_fp80 0xK80000000000000000000, %200
  %226 = select i1 %185, x86_fp80 %225, x86_fp80 %200
  %227 = icmp ugt i32 %197, 1
  br i1 %227, label %426, label %228

; <label>:228:                                    ; preds = %224, %222
  %229 = phi x86_fp80 [ %223, %222 ], [ %226, %224 ]
  %230 = phi i32 [ 0, %222 ], [ %197, %224 ]
  %231 = phi i8* [ %187, %222 ], [ %201, %224 ]
  %232 = ptrtoint i8* %231 to i64
  %233 = icmp eq i32 %230, 1
  %234 = select i1 %233, i32 1, i32 %175
  br i1 %185, label %436, label %235

; <label>:235:                                    ; preds = %228
  %236 = sub i64 %232, %183
  %237 = trunc i64 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %278, label %239

; <label>:239:                                    ; preds = %235
  %240 = add i32 %237, -1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %278, label %242

; <label>:242:                                    ; preds = %239
  %243 = add i32 %237, -2
  %244 = and i32 %240, 7
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %256, label %246

; <label>:246:                                    ; preds = %242
  br label %247

; <label>:247:                                    ; preds = %247, %246
  %248 = phi i32 [ %252, %247 ], [ %240, %246 ]
  %249 = phi x86_fp80 [ %251, %247 ], [ 0xK4002A000000000000000, %246 ]
  %250 = phi i32 [ %253, %247 ], [ %244, %246 ]
  %251 = fmul x86_fp80 %249, 0xK4002A000000000000000
  %252 = add i32 %248, -1
  %253 = add i32 %250, -1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %247

; <label>:255:                                    ; preds = %247
  br label %256

; <label>:256:                                    ; preds = %242, %255
  %257 = phi x86_fp80 [ undef, %242 ], [ %251, %255 ]
  %258 = phi i32 [ %240, %242 ], [ %252, %255 ]
  %259 = phi x86_fp80 [ 0xK4002A000000000000000, %242 ], [ %251, %255 ]
  %260 = icmp ult i32 %243, 7
  br i1 %260, label %276, label %261

; <label>:261:                                    ; preds = %256
  br label %262

; <label>:262:                                    ; preds = %262, %261
  %263 = phi i32 [ %258, %261 ], [ %273, %262 ]
  %264 = phi x86_fp80 [ %259, %261 ], [ %272, %262 ]
  %265 = fmul x86_fp80 %264, 0xK4002A000000000000000
  %266 = fmul x86_fp80 %265, 0xK4002A000000000000000
  %267 = fmul x86_fp80 %266, 0xK4002A000000000000000
  %268 = fmul x86_fp80 %267, 0xK4002A000000000000000
  %269 = fmul x86_fp80 %268, 0xK4002A000000000000000
  %270 = fmul x86_fp80 %269, 0xK4002A000000000000000
  %271 = fmul x86_fp80 %270, 0xK4002A000000000000000
  %272 = fmul x86_fp80 %271, 0xK4002A000000000000000
  %273 = add i32 %263, -8
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %262

; <label>:275:                                    ; preds = %262
  br label %276

; <label>:276:                                    ; preds = %256, %275
  %277 = phi x86_fp80 [ %257, %256 ], [ %272, %275 ]
  br label %278

; <label>:278:                                    ; preds = %276, %239, %235
  %279 = phi x86_fp80 [ 0xK3FFF8000000000000000, %235 ], [ 0xK4002A000000000000000, %239 ], [ %277, %276 ]
  %280 = fdiv x86_fp80 %229, %279
  %281 = fsub x86_fp80 0xK80000000000000000000, %280
  %282 = select i1 %121, x86_fp80 %281, x86_fp80 %280
  %283 = fadd x86_fp80 %173, %282
  %284 = icmp ugt i32 %234, 1
  br i1 %284, label %426, label %285

; <label>:285:                                    ; preds = %278, %170
  %286 = phi i64 [ %236, %278 ], [ 0, %170 ]
  %287 = phi x86_fp80 [ %283, %278 ], [ %173, %170 ]
  %288 = phi i64 [ %232, %278 ], [ %177, %170 ]
  %289 = phi i8* [ %231, %278 ], [ %174, %170 ]
  %290 = phi i32 [ %234, %278 ], [ %175, %170 ]
  %291 = load i1, i1* @dev_debug, align 1
  br i1 %291, label %292, label %297

; <label>:292:                                    ; preds = %285
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %294 = trunc i64 %286 to i32
  %295 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %293, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), x86_fp80 %287, i32 %294) #12
  %296 = inttoptr i64 %288 to i8*
  br label %297

; <label>:297:                                    ; preds = %292, %285
  %298 = phi i8* [ %296, %292 ], [ %289, %285 ]
  %299 = load i8, i8* %298, align 1
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %352, label %301

; <label>:301:                                    ; preds = %297
  %302 = tail call i16** @__ctype_b_loc() #1
  %303 = load i16*, i16** %302, align 8
  %304 = zext i8 %299 to i64
  %305 = getelementptr inbounds i16, i16* %303, i64 %304
  %306 = load i16, i16* %305, align 2
  %307 = and i16 %306, 1
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %320, label %309

; <label>:309:                                    ; preds = %301
  br label %310

; <label>:310:                                    ; preds = %309, %310
  %311 = phi i8* [ %312, %310 ], [ %298, %309 ]
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds i16, i16* %303, i64 %314
  %316 = load i16, i16* %315, align 2
  %317 = and i16 %316, 1
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %319, label %310

; <label>:319:                                    ; preds = %310
  br label %320

; <label>:320:                                    ; preds = %319, %301
  %321 = phi i8* [ %298, %301 ], [ %312, %319 ]
  %322 = phi i8 [ %299, %301 ], [ %313, %319 ]
  %323 = sext i8 %322 to i32
  %324 = tail call i8* @memchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), i32 %323, i64 9) #12
  %325 = icmp eq i8* %324, null
  br i1 %325, label %442, label %326

; <label>:326:                                    ; preds = %320
  %327 = icmp eq i32 %119, 0
  br i1 %327, label %439, label %328

; <label>:328:                                    ; preds = %326
  switch i32 %323, label %336 [
    i32 75, label %337
    i32 77, label %329
    i32 71, label %330
    i32 84, label %331
    i32 80, label %332
    i32 69, label %333
    i32 90, label %334
    i32 89, label %335
  ]

; <label>:329:                                    ; preds = %328
  br label %337

; <label>:330:                                    ; preds = %328
  br label %337

; <label>:331:                                    ; preds = %328
  br label %337

; <label>:332:                                    ; preds = %328
  br label %337

; <label>:333:                                    ; preds = %328
  br label %337

; <label>:334:                                    ; preds = %328
  br label %337

; <label>:335:                                    ; preds = %328
  br label %337

; <label>:336:                                    ; preds = %328
  br label %337

; <label>:337:                                    ; preds = %336, %335, %334, %333, %332, %331, %330, %329, %328
  %338 = phi i32 [ 0, %336 ], [ 8, %335 ], [ 7, %334 ], [ 6, %333 ], [ 5, %332 ], [ 4, %331 ], [ 3, %330 ], [ 2, %329 ], [ 1, %328 ]
  %339 = getelementptr inbounds i8, i8* %321, i64 1
  %340 = ptrtoint i8* %339 to i64
  %341 = icmp eq i32 %119, 1
  br i1 %341, label %342, label %352

; <label>:342:                                    ; preds = %337
  %343 = load i8, i8* %339, align 1
  %344 = icmp eq i8 %343, 105
  br i1 %344, label %345, label %364

; <label>:345:                                    ; preds = %342
  %346 = getelementptr inbounds i8, i8* %321, i64 2
  %347 = ptrtoint i8* %346 to i64
  %348 = load i1, i1* @dev_debug, align 1
  br i1 %348, label %349, label %364

; <label>:349:                                    ; preds = %345
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %351 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %350, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i64 0, i64 0), i32 1024) #12
  br label %364

; <label>:352:                                    ; preds = %337, %297
  %353 = phi i64 [ %286, %297 ], [ 0, %337 ]
  %354 = phi i64 [ %288, %297 ], [ %340, %337 ]
  %355 = phi i32 [ 0, %297 ], [ %338, %337 ]
  %356 = icmp eq i32 %119, 4
  br i1 %356, label %357, label %364

; <label>:357:                                    ; preds = %352
  %358 = inttoptr i64 %354 to i8*
  %359 = load i8, i8* %358, align 1
  %360 = icmp eq i8 %359, 105
  br i1 %360, label %361, label %445

; <label>:361:                                    ; preds = %357
  %362 = getelementptr inbounds i8, i8* %358, i64 1
  %363 = ptrtoint i8* %362 to i64
  br label %364

; <label>:364:                                    ; preds = %349, %345, %342, %361, %352
  %365 = phi i32 [ %355, %361 ], [ %355, %352 ], [ %338, %342 ], [ %338, %345 ], [ %338, %349 ]
  %366 = phi i32 [ %118, %361 ], [ %118, %352 ], [ %118, %342 ], [ 1024, %345 ], [ 1024, %349 ]
  %367 = phi i64 [ %353, %361 ], [ %353, %352 ], [ 0, %342 ], [ 0, %345 ], [ 0, %349 ]
  %368 = phi i64 [ %363, %361 ], [ %354, %352 ], [ %340, %342 ], [ %347, %345 ], [ %347, %349 ]
  %369 = sitofp i32 %366 to x86_fp80
  %370 = icmp eq i32 %365, 0
  br i1 %370, label %410, label %371

; <label>:371:                                    ; preds = %364
  %372 = add nsw i32 %365, -1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %410, label %374

; <label>:374:                                    ; preds = %371
  %375 = add i32 %365, -2
  %376 = and i32 %372, 7
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %388, label %378

; <label>:378:                                    ; preds = %374
  br label %379

; <label>:379:                                    ; preds = %379, %378
  %380 = phi i32 [ %384, %379 ], [ %372, %378 ]
  %381 = phi x86_fp80 [ %383, %379 ], [ %369, %378 ]
  %382 = phi i32 [ %385, %379 ], [ %376, %378 ]
  %383 = fmul x86_fp80 %369, %381
  %384 = add i32 %380, -1
  %385 = add i32 %382, -1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %379

; <label>:387:                                    ; preds = %379
  br label %388

; <label>:388:                                    ; preds = %374, %387
  %389 = phi x86_fp80 [ undef, %374 ], [ %383, %387 ]
  %390 = phi i32 [ %372, %374 ], [ %384, %387 ]
  %391 = phi x86_fp80 [ %369, %374 ], [ %383, %387 ]
  %392 = icmp ult i32 %375, 7
  br i1 %392, label %408, label %393

; <label>:393:                                    ; preds = %388
  br label %394

; <label>:394:                                    ; preds = %394, %393
  %395 = phi i32 [ %390, %393 ], [ %405, %394 ]
  %396 = phi x86_fp80 [ %391, %393 ], [ %404, %394 ]
  %397 = fmul x86_fp80 %369, %396
  %398 = fmul x86_fp80 %369, %397
  %399 = fmul x86_fp80 %369, %398
  %400 = fmul x86_fp80 %369, %399
  %401 = fmul x86_fp80 %369, %400
  %402 = fmul x86_fp80 %369, %401
  %403 = fmul x86_fp80 %369, %402
  %404 = fmul x86_fp80 %369, %403
  %405 = add i32 %395, -8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %394

; <label>:407:                                    ; preds = %394
  br label %408

; <label>:408:                                    ; preds = %388, %407
  %409 = phi x86_fp80 [ %389, %388 ], [ %404, %407 ]
  br label %410

; <label>:410:                                    ; preds = %408, %371, %364
  %411 = phi x86_fp80 [ 0xK3FFF8000000000000000, %364 ], [ %369, %371 ], [ %409, %408 ]
  %412 = load i1, i1* @dev_debug, align 1
  br i1 %412, label %415, label %413

; <label>:413:                                    ; preds = %410
  %414 = fmul x86_fp80 %287, %411
  br label %423

; <label>:415:                                    ; preds = %410
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %417 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %416, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i32 %366, i32 %365, x86_fp80 %411) #12
  %418 = load i1, i1* @dev_debug, align 1
  %419 = fmul x86_fp80 %287, %411
  br i1 %418, label %420, label %423

; <label>:420:                                    ; preds = %415
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %422 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %421, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.127, i64 0, i64 0), x86_fp80 %419, x86_fp80 %419) #12
  br label %423

; <label>:423:                                    ; preds = %420, %415, %413
  %424 = phi x86_fp80 [ %419, %420 ], [ %419, %415 ], [ %414, %413 ]
  %425 = icmp ugt i32 %290, 1
  br i1 %425, label %426, label %460

; <label>:426:                                    ; preds = %423, %278, %224, %163
  %427 = phi i64 [ %236, %278 ], [ %367, %423 ], [ 0, %224 ], [ 0, %163 ]
  %428 = phi x86_fp80 [ %283, %278 ], [ %424, %423 ], [ %173, %224 ], [ %165, %163 ]
  %429 = phi i32 [ %234, %278 ], [ %290, %423 ], [ %197, %224 ], [ %133, %163 ]
  switch i32 %429, label %448 [
    i32 1, label %430
    i32 0, label %430
    i32 2, label %433
    i32 3, label %436
    i32 4, label %439
    i32 5, label %442
    i32 6, label %445
  ]

; <label>:430:                                    ; preds = %426, %426
  tail call void @abort() #14
  unreachable

; <label>:431:                                    ; preds = %206
  br label %433

; <label>:432:                                    ; preds = %142
  br label %433

; <label>:433:                                    ; preds = %432, %431, %426
  %434 = phi i64 [ %427, %426 ], [ 0, %431 ], [ 0, %432 ]
  %435 = phi x86_fp80 [ %428, %426 ], [ %173, %431 ], [ 0xK00000000000000000000, %432 ]
  br label %448

; <label>:436:                                    ; preds = %426, %228, %218, %154
  %437 = phi i64 [ 0, %228 ], [ %427, %426 ], [ 0, %218 ], [ 0, %154 ]
  %438 = phi x86_fp80 [ %173, %228 ], [ %428, %426 ], [ %173, %218 ], [ 0xK00000000000000000000, %154 ]
  br label %448

; <label>:439:                                    ; preds = %426, %326
  %440 = phi i64 [ %427, %426 ], [ %286, %326 ]
  %441 = phi x86_fp80 [ %428, %426 ], [ %287, %326 ]
  br label %448

; <label>:442:                                    ; preds = %426, %320
  %443 = phi i64 [ %427, %426 ], [ %286, %320 ]
  %444 = phi x86_fp80 [ %428, %426 ], [ %287, %320 ]
  br label %448

; <label>:445:                                    ; preds = %426, %357
  %446 = phi i64 [ %427, %426 ], [ %353, %357 ]
  %447 = phi x86_fp80 [ %428, %426 ], [ %287, %357 ]
  br label %448

; <label>:448:                                    ; preds = %445, %442, %439, %436, %433, %426
  %449 = phi i64 [ %437, %436 ], [ %427, %426 ], [ %446, %445 ], [ %443, %442 ], [ %440, %439 ], [ %434, %433 ]
  %450 = phi x86_fp80 [ %438, %436 ], [ %428, %426 ], [ %447, %445 ], [ %444, %442 ], [ %441, %439 ], [ %435, %433 ]
  %451 = phi i32 [ 3, %436 ], [ %429, %426 ], [ 6, %445 ], [ 5, %442 ], [ 4, %439 ], [ 2, %433 ]
  %452 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i64 0, i64 0), %436 ], [ null, %426 ], [ getelementptr inbounds ([47 x i8], [47 x i8]* @.str.132, i64 0, i64 0), %445 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i64 0, i64 0), %442 ], [ getelementptr inbounds ([54 x i8], [54 x i8]* @.str.130, i64 0, i64 0), %439 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.128, i64 0, i64 0), %433 ]
  %453 = load i32, i32* @inval_style, align 4
  %454 = icmp eq i32 %453, 3
  br i1 %454, label %482, label %455

; <label>:455:                                    ; preds = %448
  %456 = load i1, i1* @conv_exit_code, align 4
  %457 = select i1 %456, i32 0, i32 2
  %458 = tail call i8* @dcgettext(i8* null, i8* %452, i32 5) #12
  %459 = tail call i8* @quote(i8* %74) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %457, i32 0, i8* %458, i8* %459) #12
  br label %482

; <label>:460:                                    ; preds = %423
  %461 = inttoptr i64 %368 to i8*
  %462 = icmp eq i64 %368, 0
  br i1 %462, label %475, label %463

; <label>:463:                                    ; preds = %460
  %464 = load i8, i8* %461, align 1
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %475, label %466

; <label>:466:                                    ; preds = %463
  %467 = load i32, i32* @inval_style, align 4
  %468 = icmp eq i32 %467, 3
  br i1 %468, label %482, label %469

; <label>:469:                                    ; preds = %466
  %470 = load i1, i1* @conv_exit_code, align 4
  %471 = select i1 %470, i32 0, i32 2
  %472 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.122, i64 0, i64 0), i32 5) #12
  %473 = tail call i8* @quote_n(i32 0, i8* %74) #12
  %474 = tail call i8* @quote_n(i32 1, i8* nonnull %461) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %471, i32 0, i8* %472, i8* %473, i8* %474) #12
  br label %482

; <label>:475:                                    ; preds = %463, %460
  %476 = icmp eq i32 %290, 1
  br i1 %476, label %477, label %482

; <label>:477:                                    ; preds = %475
  %478 = load i1, i1* @debug, align 1
  br i1 %478, label %479, label %482

; <label>:479:                                    ; preds = %477
  %480 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.121, i64 0, i64 0), i32 5) #12
  %481 = tail call i8* @quote(i8* %74) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %480, i8* %481) #12
  br label %482

; <label>:482:                                    ; preds = %479, %477, %475, %469, %466, %455, %448
  %483 = phi i64 [ %449, %448 ], [ %449, %455 ], [ %367, %479 ], [ %367, %477 ], [ %367, %475 ], [ %367, %466 ], [ %367, %469 ]
  %484 = phi i32 [ %451, %448 ], [ %451, %455 ], [ 1, %479 ], [ 1, %477 ], [ 0, %475 ], [ 5, %466 ], [ 5, %469 ]
  %485 = phi x86_fp80 [ %450, %448 ], [ %450, %455 ], [ %424, %479 ], [ %424, %477 ], [ %424, %475 ], [ %424, %466 ], [ %424, %469 ]
  %486 = load i64, i64* @from_unit_size, align 8
  %487 = icmp ne i64 %486, 1
  %488 = load i64, i64* @to_unit_size, align 8
  %489 = icmp ne i64 %488, 1
  %490 = or i1 %487, %489
  br i1 %490, label %491, label %496

; <label>:491:                                    ; preds = %482
  %492 = uitofp i64 %486 to x86_fp80
  %493 = fmul x86_fp80 %485, %492
  %494 = uitofp i64 %488 to x86_fp80
  %495 = fdiv x86_fp80 %493, %494
  br label %496

; <label>:496:                                    ; preds = %482, %491
  %497 = phi x86_fp80 [ %495, %491 ], [ %485, %482 ]
  %498 = or i32 %484, 1
  %499 = icmp eq i32 %498, 1
  %500 = zext i1 %499 to i8
  br i1 %499, label %501, label %1006

; <label>:501:                                    ; preds = %496
  %502 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* nonnull %502) #12
  %503 = load i64, i64* @user_precision, align 8
  %504 = icmp eq i64 %503, -1
  %505 = select i1 %504, i64 %483, i64 %503
  %506 = fcmp oge x86_fp80 %497, 0xKFFFEFFFFFFFFFFFFFFFF
  %507 = fcmp ole x86_fp80 %497, 0xK7FFEFFFFFFFFFFFFFFFF
  %508 = and i1 %506, %507
  br i1 %508, label %509, label %525

; <label>:509:                                    ; preds = %501
  %510 = fcmp olt x86_fp80 %497, 0xK00000000000000000000
  %511 = fsub x86_fp80 0xK80000000000000000000, %497
  %512 = select i1 %510, x86_fp80 %511, x86_fp80 %497
  %513 = fcmp ult x86_fp80 %512, 0xK4002A000000000000000
  br i1 %513, label %525, label %514

; <label>:514:                                    ; preds = %509
  br label %515

; <label>:515:                                    ; preds = %514, %515
  %516 = phi i32 [ %518, %515 ], [ 0, %514 ]
  %517 = phi x86_fp80 [ %519, %515 ], [ %497, %514 ]
  %518 = add i32 %516, 1
  %519 = fdiv x86_fp80 %517, 0xK4002A000000000000000
  %520 = fcmp olt x86_fp80 %519, 0xK00000000000000000000
  %521 = fsub x86_fp80 0xK80000000000000000000, %519
  %522 = select i1 %520, x86_fp80 %521, x86_fp80 %519
  %523 = fcmp ult x86_fp80 %522, 0xK4002A000000000000000
  br i1 %523, label %524, label %515

; <label>:524:                                    ; preds = %515
  br label %525

; <label>:525:                                    ; preds = %524, %509, %501
  %526 = phi i32 [ 0, %501 ], [ 0, %509 ], [ %518, %524 ]
  %527 = load i32, i32* @scale_to, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %544

; <label>:529:                                    ; preds = %525
  %530 = zext i32 %526 to i64
  %531 = add i64 %530, %505
  %532 = icmp ugt i64 %531, 18
  br i1 %532, label %533, label %544

; <label>:533:                                    ; preds = %529
  %534 = load i32, i32* @inval_style, align 4
  %535 = icmp eq i32 %534, 3
  br i1 %535, label %1004, label %536

; <label>:536:                                    ; preds = %533
  %537 = icmp eq i64 %505, 0
  %538 = load i1, i1* @conv_exit_code, align 4
  %539 = select i1 %538, i32 0, i32 2
  br i1 %537, label %542, label %540

; <label>:540:                                    ; preds = %536
  %541 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.133, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %539, i32 0, i8* %541, x86_fp80 %497, i64 %505) #12
  br label %1004

; <label>:542:                                    ; preds = %536
  %543 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.134, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %539, i32 0, i8* %543, x86_fp80 %497) #12
  br label %1004

; <label>:544:                                    ; preds = %529, %525
  %545 = icmp ugt i32 %526, 26
  br i1 %545, label %546, label %553

; <label>:546:                                    ; preds = %544
  %547 = load i32, i32* @inval_style, align 4
  %548 = icmp eq i32 %547, 3
  br i1 %548, label %1004, label %549

; <label>:549:                                    ; preds = %546
  %550 = load i1, i1* @conv_exit_code, align 4
  %551 = select i1 %550, i32 0, i32 2
  %552 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.135, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %551, i32 0, i8* %552, x86_fp80 %497) #12
  br label %1004

; <label>:553:                                    ; preds = %544
  %554 = trunc i64 %505 to i32
  %555 = load i1, i1* @grouping, align 4
  %556 = load i32, i32* @round_style, align 4
  %557 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %557) #12
  %558 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 1
  store i8 37, i8* %557, align 16
  br i1 %555, label %559, label %561

; <label>:559:                                    ; preds = %553
  %560 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 2
  store i8 39, i8* %558, align 1
  br label %561

; <label>:561:                                    ; preds = %559, %553
  %562 = phi i8* [ %560, %559 ], [ %558, %553 ]
  %563 = load i64, i64* @zero_padding_width, align 8
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %570, label %565

; <label>:565:                                    ; preds = %561
  %566 = call i64 @llvm.objectsize.i64.p0i8(i8* %562, i1 false) #12
  %567 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %562, i64 62, i32 1, i64 %566, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 %563) #12
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* %562, i64 %568
  br label %570

; <label>:570:                                    ; preds = %565, %561
  %571 = phi i8* [ %569, %565 ], [ %562, %561 ]
  %572 = load i1, i1* @dev_debug, align 1
  br i1 %572, label %573, label %576

; <label>:573:                                    ; preds = %570
  %574 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %575 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %574, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i64 0, i64 0)) #12
  br label %576

; <label>:576:                                    ; preds = %573, %570
  br i1 %528, label %577, label %721

; <label>:577:                                    ; preds = %576
  %578 = icmp eq i32 %554, 0
  br i1 %578, label %618, label %579

; <label>:579:                                    ; preds = %577
  %580 = add i32 %554, -1
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %618, label %582

; <label>:582:                                    ; preds = %579
  %583 = add i32 %554, -2
  %584 = and i32 %580, 7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %596, label %586

; <label>:586:                                    ; preds = %582
  br label %587

; <label>:587:                                    ; preds = %587, %586
  %588 = phi i32 [ %592, %587 ], [ %580, %586 ]
  %589 = phi x86_fp80 [ %591, %587 ], [ 0xK4002A000000000000000, %586 ]
  %590 = phi i32 [ %593, %587 ], [ %584, %586 ]
  %591 = fmul x86_fp80 %589, 0xK4002A000000000000000
  %592 = add i32 %588, -1
  %593 = add i32 %590, -1
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %587

; <label>:595:                                    ; preds = %587
  br label %596

; <label>:596:                                    ; preds = %582, %595
  %597 = phi x86_fp80 [ undef, %582 ], [ %591, %595 ]
  %598 = phi i32 [ %580, %582 ], [ %592, %595 ]
  %599 = phi x86_fp80 [ 0xK4002A000000000000000, %582 ], [ %591, %595 ]
  %600 = icmp ult i32 %583, 7
  br i1 %600, label %616, label %601

; <label>:601:                                    ; preds = %596
  br label %602

; <label>:602:                                    ; preds = %602, %601
  %603 = phi i32 [ %598, %601 ], [ %613, %602 ]
  %604 = phi x86_fp80 [ %599, %601 ], [ %612, %602 ]
  %605 = fmul x86_fp80 %604, 0xK4002A000000000000000
  %606 = fmul x86_fp80 %605, 0xK4002A000000000000000
  %607 = fmul x86_fp80 %606, 0xK4002A000000000000000
  %608 = fmul x86_fp80 %607, 0xK4002A000000000000000
  %609 = fmul x86_fp80 %608, 0xK4002A000000000000000
  %610 = fmul x86_fp80 %609, 0xK4002A000000000000000
  %611 = fmul x86_fp80 %610, 0xK4002A000000000000000
  %612 = fmul x86_fp80 %611, 0xK4002A000000000000000
  %613 = add i32 %603, -8
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %602

; <label>:615:                                    ; preds = %602
  br label %616

; <label>:616:                                    ; preds = %596, %615
  %617 = phi x86_fp80 [ %597, %596 ], [ %612, %615 ]
  br label %618

; <label>:618:                                    ; preds = %616, %579, %577
  %619 = phi x86_fp80 [ 0xK3FFF8000000000000000, %577 ], [ 0xK4002A000000000000000, %579 ], [ %617, %616 ]
  %620 = fmul x86_fp80 %497, %619
  %621 = fdiv x86_fp80 %620, 0xK403DFFFFFFFFFFFFFFFE
  %622 = fptosi x86_fp80 %621 to i64
  %623 = sitofp i64 %622 to x86_fp80
  %624 = fmul x86_fp80 %623, 0xK403DFFFFFFFFFFFFFFFE
  %625 = fsub x86_fp80 %620, %624
  switch i32 %556, label %667 [
    i32 0, label %626
    i32 1, label %632
    i32 2, label %640
    i32 3, label %656
    i32 4, label %658
  ]

; <label>:626:                                    ; preds = %618
  %627 = fptosi x86_fp80 %625 to i64
  %628 = sitofp i64 %627 to x86_fp80
  %629 = fcmp olt x86_fp80 %628, %625
  %630 = zext i1 %629 to i64
  %631 = add nsw i64 %630, %627
  br label %663

; <label>:632:                                    ; preds = %618
  %633 = fsub x86_fp80 0xK80000000000000000000, %625
  %634 = fptosi x86_fp80 %633 to i64
  %635 = sitofp i64 %634 to x86_fp80
  %636 = fcmp olt x86_fp80 %635, %633
  %637 = zext i1 %636 to i64
  %638 = add nsw i64 %634, %637
  %639 = sub nsw i64 0, %638
  br label %663

; <label>:640:                                    ; preds = %618
  %641 = fcmp olt x86_fp80 %625, 0xK00000000000000000000
  br i1 %641, label %642, label %650

; <label>:642:                                    ; preds = %640
  %643 = fsub x86_fp80 0xK80000000000000000000, %625
  %644 = fptosi x86_fp80 %643 to i64
  %645 = sitofp i64 %644 to x86_fp80
  %646 = fcmp olt x86_fp80 %645, %643
  %647 = zext i1 %646 to i64
  %648 = add nsw i64 %644, %647
  %649 = sub nsw i64 0, %648
  br label %663

; <label>:650:                                    ; preds = %640
  %651 = fptosi x86_fp80 %625 to i64
  %652 = sitofp i64 %651 to x86_fp80
  %653 = fcmp olt x86_fp80 %652, %625
  %654 = zext i1 %653 to i64
  %655 = add nsw i64 %654, %651
  br label %663

; <label>:656:                                    ; preds = %618
  %657 = fptosi x86_fp80 %625 to i64
  br label %663

; <label>:658:                                    ; preds = %618
  %659 = fcmp olt x86_fp80 %625, 0xK00000000000000000000
  %660 = select i1 %659, x86_fp80 0xKBFFE8000000000000000, x86_fp80 0xK3FFE8000000000000000
  %661 = fadd x86_fp80 %625, %660
  %662 = fptosi x86_fp80 %661 to i64
  br label %663

; <label>:663:                                    ; preds = %658, %656, %650, %642, %632, %626
  %664 = phi i64 [ %662, %658 ], [ %657, %656 ], [ %639, %632 ], [ %631, %626 ], [ %649, %642 ], [ %655, %650 ]
  %665 = sitofp i64 %664 to x86_fp80
  %666 = fadd x86_fp80 %624, %665
  br label %667

; <label>:667:                                    ; preds = %663, %618
  %668 = phi x86_fp80 [ %666, %663 ], [ 0xK00000000000000000000, %618 ]
  br i1 %578, label %708, label %669

; <label>:669:                                    ; preds = %667
  %670 = add i32 %554, -1
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %708, label %672

; <label>:672:                                    ; preds = %669
  %673 = add i32 %554, -2
  %674 = and i32 %670, 7
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %686, label %676

; <label>:676:                                    ; preds = %672
  br label %677

; <label>:677:                                    ; preds = %677, %676
  %678 = phi i32 [ %682, %677 ], [ %670, %676 ]
  %679 = phi x86_fp80 [ %681, %677 ], [ 0xK4002A000000000000000, %676 ]
  %680 = phi i32 [ %683, %677 ], [ %674, %676 ]
  %681 = fmul x86_fp80 %679, 0xK4002A000000000000000
  %682 = add i32 %678, -1
  %683 = add i32 %680, -1
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %677

; <label>:685:                                    ; preds = %677
  br label %686

; <label>:686:                                    ; preds = %672, %685
  %687 = phi x86_fp80 [ undef, %672 ], [ %681, %685 ]
  %688 = phi i32 [ %670, %672 ], [ %682, %685 ]
  %689 = phi x86_fp80 [ 0xK4002A000000000000000, %672 ], [ %681, %685 ]
  %690 = icmp ult i32 %673, 7
  br i1 %690, label %706, label %691

; <label>:691:                                    ; preds = %686
  br label %692

; <label>:692:                                    ; preds = %692, %691
  %693 = phi i32 [ %688, %691 ], [ %703, %692 ]
  %694 = phi x86_fp80 [ %689, %691 ], [ %702, %692 ]
  %695 = fmul x86_fp80 %694, 0xK4002A000000000000000
  %696 = fmul x86_fp80 %695, 0xK4002A000000000000000
  %697 = fmul x86_fp80 %696, 0xK4002A000000000000000
  %698 = fmul x86_fp80 %697, 0xK4002A000000000000000
  %699 = fmul x86_fp80 %698, 0xK4002A000000000000000
  %700 = fmul x86_fp80 %699, 0xK4002A000000000000000
  %701 = fmul x86_fp80 %700, 0xK4002A000000000000000
  %702 = fmul x86_fp80 %701, 0xK4002A000000000000000
  %703 = add i32 %693, -8
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %692

; <label>:705:                                    ; preds = %692
  br label %706

; <label>:706:                                    ; preds = %686, %705
  %707 = phi x86_fp80 [ %687, %686 ], [ %702, %705 ]
  br label %708

; <label>:708:                                    ; preds = %706, %669, %667
  %709 = phi x86_fp80 [ 0xK3FFF8000000000000000, %667 ], [ 0xK4002A000000000000000, %669 ], [ %707, %706 ]
  %710 = fdiv x86_fp80 %668, %709
  %711 = load i1, i1* @dev_debug, align 1
  br i1 %711, label %712, label %716

; <label>:712:                                    ; preds = %708
  %713 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %714 = select i1 %555, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.140, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i64 0, i64 0)
  %715 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %713, i32 1, i8* %714, i32 %554, x86_fp80 %710) #12
  br label %716

; <label>:716:                                    ; preds = %712, %708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %571, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 5, i32 1, i1 false) #12
  %717 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %502, i64 128, i32 1, i64 128, i8* nonnull %557, i32 %554, x86_fp80 %710) #12
  %718 = icmp ugt i32 %717, 127
  br i1 %718, label %719, label %955

; <label>:719:                                    ; preds = %716
  %720 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.143, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %720, x86_fp80 %710) #12
  unreachable

; <label>:721:                                    ; preds = %576
  %722 = add i32 %527, -3
  %723 = icmp ult i32 %722, 2
  %724 = select i1 %723, i32 1024, i32 1000
  %725 = sitofp i32 %724 to double
  br i1 %508, label %726, label %743

; <label>:726:                                    ; preds = %721
  %727 = fcmp olt x86_fp80 %497, 0xK00000000000000000000
  %728 = fsub x86_fp80 0xK80000000000000000000, %497
  %729 = select i1 %727, x86_fp80 %728, x86_fp80 %497
  %730 = uitofp i32 %724 to x86_fp80
  %731 = fcmp ult x86_fp80 %729, %730
  br i1 %731, label %743, label %732

; <label>:732:                                    ; preds = %726
  br label %733

; <label>:733:                                    ; preds = %732, %733
  %734 = phi i32 [ %736, %733 ], [ 0, %732 ]
  %735 = phi x86_fp80 [ %737, %733 ], [ %497, %732 ]
  %736 = add i32 %734, 1
  %737 = fdiv x86_fp80 %735, %730
  %738 = fcmp olt x86_fp80 %737, 0xK00000000000000000000
  %739 = fsub x86_fp80 0xK80000000000000000000, %737
  %740 = select i1 %738, x86_fp80 %739, x86_fp80 %737
  %741 = fcmp ult x86_fp80 %740, %730
  br i1 %741, label %742, label %733

; <label>:742:                                    ; preds = %733
  br label %743

; <label>:743:                                    ; preds = %742, %726, %721
  %744 = phi x86_fp80 [ %497, %721 ], [ %497, %726 ], [ %737, %742 ]
  %745 = phi i32 [ 0, %721 ], [ 0, %726 ], [ %736, %742 ]
  %746 = load i1, i1* @dev_debug, align 1
  br i1 %746, label %747, label %750

; <label>:747:                                    ; preds = %743
  %748 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %749 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %748, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.144, i64 0, i64 0), x86_fp80 %744, double %725, i32 %745) #12
  br label %750

; <label>:750:                                    ; preds = %747, %743
  %751 = load i64, i64* @user_precision, align 8
  %752 = icmp eq i64 %751, -1
  br i1 %752, label %753, label %759

; <label>:753:                                    ; preds = %750
  %754 = fcmp olt x86_fp80 %744, 0xK00000000000000000000
  %755 = fsub x86_fp80 0xK80000000000000000000, %744
  %756 = select i1 %754, x86_fp80 %755, x86_fp80 %744
  %757 = fcmp olt x86_fp80 %756, 0xK4002A000000000000000
  br i1 %757, label %758, label %805

; <label>:758:                                    ; preds = %753
  br label %805

; <label>:759:                                    ; preds = %750
  %760 = mul i32 %745, 3
  %761 = zext i32 %760 to i64
  %762 = icmp slt i64 %761, %751
  %763 = select i1 %762, i64 %761, i64 %751
  %764 = trunc i64 %763 to i32
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %805, label %766

; <label>:766:                                    ; preds = %759
  %767 = add i32 %764, -1
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %805, label %769

; <label>:769:                                    ; preds = %766
  %770 = add i32 %764, -2
  %771 = and i32 %767, 7
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %783, label %773

; <label>:773:                                    ; preds = %769
  br label %774

; <label>:774:                                    ; preds = %774, %773
  %775 = phi i32 [ %779, %774 ], [ %767, %773 ]
  %776 = phi x86_fp80 [ %778, %774 ], [ 0xK4002A000000000000000, %773 ]
  %777 = phi i32 [ %780, %774 ], [ %771, %773 ]
  %778 = fmul x86_fp80 %776, 0xK4002A000000000000000
  %779 = add i32 %775, -1
  %780 = add i32 %777, -1
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %774

; <label>:782:                                    ; preds = %774
  br label %783

; <label>:783:                                    ; preds = %769, %782
  %784 = phi x86_fp80 [ undef, %769 ], [ %778, %782 ]
  %785 = phi i32 [ %767, %769 ], [ %779, %782 ]
  %786 = phi x86_fp80 [ 0xK4002A000000000000000, %769 ], [ %778, %782 ]
  %787 = icmp ult i32 %770, 7
  br i1 %787, label %803, label %788

; <label>:788:                                    ; preds = %783
  br label %789

; <label>:789:                                    ; preds = %789, %788
  %790 = phi i32 [ %785, %788 ], [ %800, %789 ]
  %791 = phi x86_fp80 [ %786, %788 ], [ %799, %789 ]
  %792 = fmul x86_fp80 %791, 0xK4002A000000000000000
  %793 = fmul x86_fp80 %792, 0xK4002A000000000000000
  %794 = fmul x86_fp80 %793, 0xK4002A000000000000000
  %795 = fmul x86_fp80 %794, 0xK4002A000000000000000
  %796 = fmul x86_fp80 %795, 0xK4002A000000000000000
  %797 = fmul x86_fp80 %796, 0xK4002A000000000000000
  %798 = fmul x86_fp80 %797, 0xK4002A000000000000000
  %799 = fmul x86_fp80 %798, 0xK4002A000000000000000
  %800 = add i32 %790, -8
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %789

; <label>:802:                                    ; preds = %789
  br label %803

; <label>:803:                                    ; preds = %783, %802
  %804 = phi x86_fp80 [ %784, %783 ], [ %799, %802 ]
  br label %805

; <label>:805:                                    ; preds = %803, %766, %759, %758, %753
  %806 = phi i1 [ true, %759 ], [ false, %766 ], [ false, %758 ], [ true, %753 ], [ false, %803 ]
  %807 = phi i32 [ -1, %759 ], [ 0, %766 ], [ 0, %758 ], [ -1, %753 ], [ %767, %803 ]
  %808 = phi x86_fp80 [ 0xK3FFF8000000000000000, %759 ], [ 0xK4002A000000000000000, %766 ], [ 0xK4002A000000000000000, %758 ], [ 0xK3FFF8000000000000000, %753 ], [ %804, %803 ]
  %809 = fmul x86_fp80 %744, %808
  %810 = fdiv x86_fp80 %809, 0xK403DFFFFFFFFFFFFFFFE
  %811 = fptosi x86_fp80 %810 to i64
  %812 = sitofp i64 %811 to x86_fp80
  %813 = fmul x86_fp80 %812, 0xK403DFFFFFFFFFFFFFFFE
  %814 = fsub x86_fp80 %809, %813
  switch i32 %556, label %856 [
    i32 0, label %815
    i32 1, label %821
    i32 2, label %829
    i32 3, label %845
    i32 4, label %847
  ]

; <label>:815:                                    ; preds = %805
  %816 = fptosi x86_fp80 %814 to i64
  %817 = sitofp i64 %816 to x86_fp80
  %818 = fcmp olt x86_fp80 %817, %814
  %819 = zext i1 %818 to i64
  %820 = add nsw i64 %819, %816
  br label %852

; <label>:821:                                    ; preds = %805
  %822 = fsub x86_fp80 0xK80000000000000000000, %814
  %823 = fptosi x86_fp80 %822 to i64
  %824 = sitofp i64 %823 to x86_fp80
  %825 = fcmp olt x86_fp80 %824, %822
  %826 = zext i1 %825 to i64
  %827 = add nsw i64 %823, %826
  %828 = sub nsw i64 0, %827
  br label %852

; <label>:829:                                    ; preds = %805
  %830 = fcmp olt x86_fp80 %814, 0xK00000000000000000000
  br i1 %830, label %831, label %839

; <label>:831:                                    ; preds = %829
  %832 = fsub x86_fp80 0xK80000000000000000000, %814
  %833 = fptosi x86_fp80 %832 to i64
  %834 = sitofp i64 %833 to x86_fp80
  %835 = fcmp olt x86_fp80 %834, %832
  %836 = zext i1 %835 to i64
  %837 = add nsw i64 %833, %836
  %838 = sub nsw i64 0, %837
  br label %852

; <label>:839:                                    ; preds = %829
  %840 = fptosi x86_fp80 %814 to i64
  %841 = sitofp i64 %840 to x86_fp80
  %842 = fcmp olt x86_fp80 %841, %814
  %843 = zext i1 %842 to i64
  %844 = add nsw i64 %843, %840
  br label %852

; <label>:845:                                    ; preds = %805
  %846 = fptosi x86_fp80 %814 to i64
  br label %852

; <label>:847:                                    ; preds = %805
  %848 = fcmp olt x86_fp80 %814, 0xK00000000000000000000
  %849 = select i1 %848, x86_fp80 0xKBFFE8000000000000000, x86_fp80 0xK3FFE8000000000000000
  %850 = fadd x86_fp80 %814, %849
  %851 = fptosi x86_fp80 %850 to i64
  br label %852

; <label>:852:                                    ; preds = %847, %845, %839, %831, %821, %815
  %853 = phi i64 [ %851, %847 ], [ %846, %845 ], [ %828, %821 ], [ %820, %815 ], [ %838, %831 ], [ %844, %839 ]
  %854 = sitofp i64 %853 to x86_fp80
  %855 = fadd x86_fp80 %813, %854
  br label %856

; <label>:856:                                    ; preds = %852, %805
  %857 = phi x86_fp80 [ %855, %852 ], [ 0xK00000000000000000000, %805 ]
  br i1 %806, label %896, label %858

; <label>:858:                                    ; preds = %856
  %859 = icmp eq i32 %807, 0
  br i1 %859, label %896, label %860

; <label>:860:                                    ; preds = %858
  %861 = add i32 %807, -1
  %862 = and i32 %807, 7
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %874, label %864

; <label>:864:                                    ; preds = %860
  br label %865

; <label>:865:                                    ; preds = %865, %864
  %866 = phi i32 [ %870, %865 ], [ %807, %864 ]
  %867 = phi x86_fp80 [ %869, %865 ], [ 0xK4002A000000000000000, %864 ]
  %868 = phi i32 [ %871, %865 ], [ %862, %864 ]
  %869 = fmul x86_fp80 %867, 0xK4002A000000000000000
  %870 = add i32 %866, -1
  %871 = add i32 %868, -1
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %865

; <label>:873:                                    ; preds = %865
  br label %874

; <label>:874:                                    ; preds = %860, %873
  %875 = phi x86_fp80 [ undef, %860 ], [ %869, %873 ]
  %876 = phi i32 [ %807, %860 ], [ %870, %873 ]
  %877 = phi x86_fp80 [ 0xK4002A000000000000000, %860 ], [ %869, %873 ]
  %878 = icmp ult i32 %861, 7
  br i1 %878, label %894, label %879

; <label>:879:                                    ; preds = %874
  br label %880

; <label>:880:                                    ; preds = %880, %879
  %881 = phi i32 [ %876, %879 ], [ %891, %880 ]
  %882 = phi x86_fp80 [ %877, %879 ], [ %890, %880 ]
  %883 = fmul x86_fp80 %882, 0xK4002A000000000000000
  %884 = fmul x86_fp80 %883, 0xK4002A000000000000000
  %885 = fmul x86_fp80 %884, 0xK4002A000000000000000
  %886 = fmul x86_fp80 %885, 0xK4002A000000000000000
  %887 = fmul x86_fp80 %886, 0xK4002A000000000000000
  %888 = fmul x86_fp80 %887, 0xK4002A000000000000000
  %889 = fmul x86_fp80 %888, 0xK4002A000000000000000
  %890 = fmul x86_fp80 %889, 0xK4002A000000000000000
  %891 = add i32 %881, -8
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %880

; <label>:893:                                    ; preds = %880
  br label %894

; <label>:894:                                    ; preds = %874, %893
  %895 = phi x86_fp80 [ %875, %874 ], [ %890, %893 ]
  br label %896

; <label>:896:                                    ; preds = %894, %858, %856
  %897 = phi x86_fp80 [ 0xK3FFF8000000000000000, %856 ], [ 0xK4002A000000000000000, %858 ], [ %895, %894 ]
  %898 = fdiv x86_fp80 %857, %897
  %899 = fcmp olt x86_fp80 %898, 0xK00000000000000000000
  %900 = fsub x86_fp80 0xK80000000000000000000, %898
  %901 = select i1 %899, x86_fp80 %900, x86_fp80 %898
  %902 = fpext double %725 to x86_fp80
  %903 = fcmp ult x86_fp80 %901, %902
  br i1 %903, label %907, label %904

; <label>:904:                                    ; preds = %896
  %905 = fdiv x86_fp80 %898, %902
  %906 = add i32 %745, 1
  br label %907

; <label>:907:                                    ; preds = %904, %896
  %908 = phi i32 [ %745, %896 ], [ %906, %904 ]
  %909 = phi x86_fp80 [ %898, %896 ], [ %905, %904 ]
  %910 = fcmp une x86_fp80 %909, 0xK00000000000000000000
  br i1 %910, label %911, label %918

; <label>:911:                                    ; preds = %907
  %912 = fcmp olt x86_fp80 %909, 0xK00000000000000000000
  %913 = fsub x86_fp80 0xK80000000000000000000, %909
  %914 = select i1 %912, x86_fp80 %913, x86_fp80 %909
  %915 = fcmp olt x86_fp80 %914, 0xK4002A000000000000000
  br i1 %915, label %916, label %918

; <label>:916:                                    ; preds = %911
  %917 = icmp ne i32 %908, 0
  br label %918

; <label>:918:                                    ; preds = %916, %911, %907
  %919 = phi i1 [ false, %911 ], [ false, %907 ], [ %917, %916 ]
  %920 = load i1, i1* @dev_debug, align 1
  br i1 %920, label %921, label %924

; <label>:921:                                    ; preds = %918
  %922 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %923 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %922, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.145, i64 0, i64 0), x86_fp80 %909, double %725, i32 %908) #12
  br label %924

; <label>:924:                                    ; preds = %921, %918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %571, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 7, i32 1, i1 false) #12
  %925 = load i64, i64* @user_precision, align 8
  %926 = icmp eq i64 %925, -1
  %927 = zext i1 %919 to i64
  %928 = select i1 %926, i64 %927, i64 %925
  %929 = trunc i64 %928 to i32
  %930 = icmp ult i32 %908, 9
  br i1 %930, label %931, label %935

; <label>:931:                                    ; preds = %924
  %932 = sext i32 %908 to i64
  %933 = getelementptr inbounds [9 x i8*], [9 x i8*]* @switch.table, i64 0, i64 %932
  %934 = load i8*, i8** %933, align 8
  br label %935

; <label>:935:                                    ; preds = %931, %924
  %936 = phi i8* [ %934, %931 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i64 0, i64 0), %924 ]
  %937 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* nonnull %502, i64 127, i32 1, i64 128, i8* nonnull %557, i32 %929, x86_fp80 %909, i8* %936) #12
  %938 = icmp ugt i32 %937, 126
  br i1 %938, label %939, label %941

; <label>:939:                                    ; preds = %935
  %940 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.143, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %940, x86_fp80 %909) #12
  unreachable

; <label>:941:                                    ; preds = %935
  %942 = icmp eq i32 %527, 4
  %943 = icmp ne i32 %908, 0
  %944 = and i1 %942, %943
  br i1 %944, label %945, label %949

; <label>:945:                                    ; preds = %941
  %946 = sext i32 %937 to i64
  %947 = sub nsw i64 127, %946
  %948 = call i8* @__strncat_chk(i8* nonnull %502, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i64 %947, i64 128) #12
  br label %949

; <label>:949:                                    ; preds = %945, %941
  %950 = load i1, i1* @dev_debug, align 1
  br i1 %950, label %951, label %955

; <label>:951:                                    ; preds = %949
  %952 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %953 = call i8* @quote(i8* nonnull %502) #12
  %954 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %952, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.148, i64 0, i64 0), i8* %953) #12
  br label %955

; <label>:955:                                    ; preds = %951, %949, %716
  call void @llvm.lifetime.end(i64 64, i8* nonnull %557) #12
  %956 = load i8*, i8** @suffix, align 8
  %957 = icmp eq i8* %956, null
  br i1 %957, label %962, label %958

; <label>:958:                                    ; preds = %955
  %959 = call i64 @strlen(i8* nonnull %502) #9
  %960 = sub i64 127, %959
  %961 = call i8* @__strncat_chk(i8* nonnull %502, i8* nonnull %956, i64 %960, i64 128) #12
  br label %962

; <label>:962:                                    ; preds = %958, %955
  %963 = load i1, i1* @dev_debug, align 1
  br i1 %963, label %964, label %968

; <label>:964:                                    ; preds = %962
  %965 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %966 = call i8* @quote(i8* nonnull %502) #12
  %967 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %965, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.136, i64 0, i64 0), x86_fp80 %497, i8* %966) #12
  br label %968

; <label>:968:                                    ; preds = %964, %962
  %969 = load i64, i64* @padding_width, align 8
  %970 = icmp eq i64 %969, 0
  br i1 %970, label %989, label %971

; <label>:971:                                    ; preds = %968
  %972 = call i64 @strlen(i8* nonnull %502) #9
  %973 = icmp ult i64 %972, %969
  br i1 %973, label %974, label %989

; <label>:974:                                    ; preds = %971
  %975 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %975) #12
  store i64 %969, i64* %5, align 8
  %976 = load i8*, i8** @padding_buffer, align 8
  %977 = load i64, i64* @padding_buffer_size, align 8
  %978 = load i1, i1* @padding_alignment, align 4
  %979 = xor i1 %978, true
  %980 = zext i1 %979 to i32
  %981 = call i64 @mbsalign(i8* nonnull %502, i8* %976, i64 %977, i64* nonnull %5, i32 %980, i32 2) #12
  %982 = load i1, i1* @dev_debug, align 1
  br i1 %982, label %983, label %988

; <label>:983:                                    ; preds = %974
  %984 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %985 = load i8*, i8** @padding_buffer, align 8
  %986 = call i8* @quote(i8* %985) #12
  %987 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %984, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i64 0, i64 0), i8* %986) #12
  br label %988

; <label>:988:                                    ; preds = %983, %974
  call void @llvm.lifetime.end(i64 8, i8* nonnull %975) #12
  br label %1004

; <label>:989:                                    ; preds = %971, %968
  %990 = call i64 @strlen(i8* nonnull %502) #9
  %991 = add i64 %990, 1
  %992 = load i64, i64* @padding_buffer_size, align 8
  %993 = icmp ugt i64 %992, %991
  br i1 %993, label %994, label %996

; <label>:994:                                    ; preds = %989
  %995 = load i8*, i8** @padding_buffer, align 8
  br label %1000

; <label>:996:                                    ; preds = %989
  %997 = add i64 %990, 2
  store i64 %997, i64* @padding_buffer_size, align 8
  %998 = load i8*, i8** @padding_buffer, align 8
  %999 = call i8* @xrealloc(i8* %998, i64 %997) #12
  store i8* %999, i8** @padding_buffer, align 8
  br label %1000

; <label>:1000:                                   ; preds = %996, %994
  %1001 = phi i8* [ %995, %994 ], [ %999, %996 ]
  %1002 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1001, i1 false) #12
  %1003 = call i8* @__strcpy_chk(i8* nonnull %1001, i8* nonnull %502, i64 %1002) #12
  br label %1004

; <label>:1004:                                   ; preds = %533, %540, %542, %546, %549, %988, %1000
  %1005 = phi i8 [ 0, %533 ], [ 0, %540 ], [ 0, %542 ], [ 0, %546 ], [ 0, %549 ], [ 1, %1000 ], [ 1, %988 ]
  call void @llvm.lifetime.end(i64 128, i8* nonnull %502) #12
  br label %1006

; <label>:1006:                                   ; preds = %1004, %496
  %1007 = phi i8 [ %1005, %1004 ], [ %500, %496 ]
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1024, label %1009

; <label>:1009:                                   ; preds = %1006
  %1010 = load i8*, i8** @format_str_prefix, align 8
  %1011 = icmp eq i8* %1010, null
  br i1 %1011, label %1015, label %1012

; <label>:1012:                                   ; preds = %1009
  %1013 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1014 = call i32 @fputs_unlocked(i8* nonnull %1010, %struct._IO_FILE* %1013) #12
  br label %1015

; <label>:1015:                                   ; preds = %1012, %1009
  %1016 = load i8*, i8** @padding_buffer, align 8
  %1017 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1018 = call i32 @fputs_unlocked(i8* %1016, %struct._IO_FILE* %1017) #12
  %1019 = load i8*, i8** @format_str_suffix, align 8
  %1020 = icmp eq i8* %1019, null
  br i1 %1020, label %1031, label %1021

; <label>:1021:                                   ; preds = %1015
  %1022 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1023 = call i32 @fputs_unlocked(i8* nonnull %1019, %struct._IO_FILE* %1022) #12
  br label %1031

; <label>:1024:                                   ; preds = %1006
  %1025 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1026 = call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %1025) #12
  br label %1031

; <label>:1027:                                   ; preds = %21
  br label %1028

; <label>:1028:                                   ; preds = %1027, %8, %26
  %1029 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1030 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %1029) #12
  br label %1031

; <label>:1031:                                   ; preds = %1021, %1015, %1024, %1028
  %1032 = phi i1 [ false, %1024 ], [ true, %1028 ], [ true, %1015 ], [ true, %1021 ]
  ret i1 %1032
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @__strncat_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_fields(i8*, i32) local_unnamed_addr #6 {
  %3 = and i32 %1, 1
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %21

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %0, align 1
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 45, %7
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br i1 %9, label %11, label %15

; <label>:11:                                     ; preds = %5
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 0, %13
  br label %15

; <label>:15:                                     ; preds = %5, %11
  %16 = phi i32 [ %14, %11 ], [ %8, %5 ]
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = zext i1 %17 to i8
  %20 = select i1 %17, i8* %10, i8* %0
  br label %21

; <label>:21:                                     ; preds = %2, %15
  %22 = phi i64 [ %18, %15 ], [ 0, %2 ]
  %23 = phi i8 [ %19, %15 ], [ 0, %2 ]
  %24 = phi i8 [ %19, %15 ], [ 0, %2 ]
  %25 = phi i8* [ %20, %15 ], [ %0, %2 ]
  br label %26

; <label>:26:                                     ; preds = %21, %61
  %27 = phi i64 [ 0, %61 ], [ %22, %21 ]
  %28 = phi i8 [ %62, %61 ], [ %23, %21 ]
  %29 = phi i8 [ %63, %61 ], [ 0, %21 ]
  %30 = phi i8 [ %64, %61 ], [ %24, %21 ]
  %31 = phi i64 [ %65, %61 ], [ 1, %21 ]
  %32 = phi i8* [ %66, %61 ], [ %25, %21 ]
  %33 = and i8 %28, 1
  %34 = icmp eq i8 %33, 0
  br label %35

; <label>:35:                                     ; preds = %26, %241
  %36 = phi i64 [ %230, %241 ], [ %27, %26 ]
  %37 = phi i1 [ true, %241 ], [ false, %26 ]
  %38 = phi i8 [ %220, %241 ], [ %29, %26 ]
  %39 = phi i8 [ %221, %241 ], [ %30, %26 ]
  %40 = phi i8* [ %242, %241 ], [ %32, %26 ]
  %41 = load i8, i8* %40, align 1
  switch i8 %41, label %67 [
    i8 45, label %42
    i8 44, label %77
  ]

; <label>:42:                                     ; preds = %35
  br i1 %34, label %48, label %43

; <label>:43:                                     ; preds = %42
  %44 = and i32 %1, 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.8, i64 0, i64 0)
  %47 = tail call i8* @dcgettext(i8* null, i8* %46, i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %47) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:48:                                     ; preds = %42
  %49 = and i8 %39, 1
  %50 = icmp ne i8 %49, 0
  %51 = xor i1 %50, true
  %52 = icmp ne i64 %36, 0
  %53 = or i1 %52, %51
  br i1 %53, label %59, label %54

; <label>:54:                                     ; preds = %48
  %55 = and i32 %1, 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.10, i64 0, i64 0)
  %58 = tail call i8* @dcgettext(i8* null, i8* %57, i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:59:                                     ; preds = %48
  %60 = select i1 %50, i64 %36, i64 1
  br label %61

; <label>:61:                                     ; preds = %199, %59
  %62 = phi i8 [ 1, %59 ], [ %204, %199 ]
  %63 = phi i8 [ %38, %59 ], [ 0, %199 ]
  %64 = phi i8 [ %39, %59 ], [ 0, %199 ]
  %65 = phi i64 [ %60, %59 ], [ %205, %199 ]
  %66 = getelementptr inbounds i8, i8* %40, i64 1
  br label %26

; <label>:67:                                     ; preds = %35
  %68 = tail call i16** @__ctype_b_loc() #1
  %69 = load i16*, i16** %68, align 8
  %70 = zext i8 %41 to i64
  %71 = getelementptr inbounds i16, i16* %69, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = and i16 %72, 1
  %74 = icmp ne i16 %73, 0
  %75 = icmp eq i8 %41, 0
  %76 = or i1 %75, %74
  br i1 %76, label %77, label %209

; <label>:77:                                     ; preds = %67, %35
  br i1 %34, label %159, label %78

; <label>:78:                                     ; preds = %77
  %79 = or i8 %39, %38
  %80 = and i8 %79, 1
  %81 = icmp ne i8 %80, 0
  %82 = or i1 %4, %81
  %83 = select i1 %81, i64 %31, i64 1
  br i1 %82, label %86, label %84

; <label>:84:                                     ; preds = %78
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.11, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:86:                                     ; preds = %78
  %87 = and i8 %38, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %122

; <label>:89:                                     ; preds = %86
  %90 = load i64, i64* @n_frp, align 8
  %91 = load i64, i64* @n_frp_allocated, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %89
  %94 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %95 = bitcast %struct.field_range_pair* %94 to i8*
  br label %115

; <label>:96:                                     ; preds = %89
  %97 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

; <label>:99:                                     ; preds = %96
  %100 = icmp eq i64 %90, 0
  %101 = select i1 %100, i64 8, i64 %90
  br label %109

; <label>:102:                                    ; preds = %96
  %103 = icmp ult i64 %90, 384307168202282325
  br i1 %103, label %105, label %104

; <label>:104:                                    ; preds = %102
  tail call void @xalloc_die() #14
  unreachable

; <label>:105:                                    ; preds = %102
  %106 = lshr i64 %90, 1
  %107 = add i64 %90, 1
  %108 = add i64 %107, %106
  br label %109

; <label>:109:                                    ; preds = %105, %99
  %110 = phi i64 [ %108, %105 ], [ %101, %99 ]
  store i64 %110, i64* @n_frp_allocated, align 8
  %111 = shl i64 %110, 4
  %112 = tail call i8* @xrealloc(i8* %97, i64 %111) #12
  store i8* %112, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %113 = bitcast i8* %112 to %struct.field_range_pair*
  %114 = load i64, i64* @n_frp, align 8
  br label %115

; <label>:115:                                    ; preds = %93, %109
  %116 = phi i8* [ %95, %93 ], [ %112, %109 ]
  %117 = phi %struct.field_range_pair* [ %94, %93 ], [ %113, %109 ]
  %118 = phi i64 [ %90, %93 ], [ %114, %109 ]
  %119 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %118, i32 0
  store i64 %83, i64* %119, align 8
  %120 = load i64, i64* @n_frp, align 8
  %121 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %117, i64 %120, i32 1
  br label %199

; <label>:122:                                    ; preds = %86
  %123 = icmp ult i64 %36, %83
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %122
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.12, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %125) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:126:                                    ; preds = %122
  %127 = load i64, i64* @n_frp, align 8
  %128 = load i64, i64* @n_frp_allocated, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %133, label %130

; <label>:130:                                    ; preds = %126
  %131 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %132 = bitcast %struct.field_range_pair* %131 to i8*
  br label %152

; <label>:133:                                    ; preds = %126
  %134 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %139

; <label>:136:                                    ; preds = %133
  %137 = icmp eq i64 %127, 0
  %138 = select i1 %137, i64 8, i64 %127
  br label %146

; <label>:139:                                    ; preds = %133
  %140 = icmp ult i64 %127, 384307168202282325
  br i1 %140, label %142, label %141

; <label>:141:                                    ; preds = %139
  tail call void @xalloc_die() #14
  unreachable

; <label>:142:                                    ; preds = %139
  %143 = lshr i64 %127, 1
  %144 = add i64 %127, 1
  %145 = add i64 %144, %143
  br label %146

; <label>:146:                                    ; preds = %142, %136
  %147 = phi i64 [ %145, %142 ], [ %138, %136 ]
  store i64 %147, i64* @n_frp_allocated, align 8
  %148 = shl i64 %147, 4
  %149 = tail call i8* @xrealloc(i8* %134, i64 %148) #12
  store i8* %149, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %150 = bitcast i8* %149 to %struct.field_range_pair*
  %151 = load i64, i64* @n_frp, align 8
  br label %152

; <label>:152:                                    ; preds = %130, %146
  %153 = phi i8* [ %132, %130 ], [ %149, %146 ]
  %154 = phi %struct.field_range_pair* [ %131, %130 ], [ %150, %146 ]
  %155 = phi i64 [ %127, %130 ], [ %151, %146 ]
  %156 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %155, i32 0
  store i64 %83, i64* %156, align 8
  %157 = load i64, i64* @n_frp, align 8
  %158 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %154, i64 %157, i32 1
  br label %199

; <label>:159:                                    ; preds = %77
  %160 = icmp eq i64 %36, 0
  br i1 %160, label %161, label %166

; <label>:161:                                    ; preds = %159
  %162 = and i32 %1, 4
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.10, i64 0, i64 0)
  %165 = tail call i8* @dcgettext(i8* null, i8* %164, i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %165) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:166:                                    ; preds = %159
  %167 = load i64, i64* @n_frp, align 8
  %168 = load i64, i64* @n_frp_allocated, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %166
  %171 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %172 = bitcast %struct.field_range_pair* %171 to i8*
  br label %192

; <label>:173:                                    ; preds = %166
  %174 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %179

; <label>:176:                                    ; preds = %173
  %177 = icmp eq i64 %167, 0
  %178 = select i1 %177, i64 8, i64 %167
  br label %186

; <label>:179:                                    ; preds = %173
  %180 = icmp ult i64 %167, 384307168202282325
  br i1 %180, label %182, label %181

; <label>:181:                                    ; preds = %179
  tail call void @xalloc_die() #14
  unreachable

; <label>:182:                                    ; preds = %179
  %183 = lshr i64 %167, 1
  %184 = add i64 %167, 1
  %185 = add i64 %184, %183
  br label %186

; <label>:186:                                    ; preds = %182, %176
  %187 = phi i64 [ %185, %182 ], [ %178, %176 ]
  store i64 %187, i64* @n_frp_allocated, align 8
  %188 = shl i64 %187, 4
  %189 = tail call i8* @xrealloc(i8* %174, i64 %188) #12
  store i8* %189, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %190 = bitcast i8* %189 to %struct.field_range_pair*
  %191 = load i64, i64* @n_frp, align 8
  br label %192

; <label>:192:                                    ; preds = %170, %186
  %193 = phi i8* [ %172, %170 ], [ %189, %186 ]
  %194 = phi %struct.field_range_pair* [ %171, %170 ], [ %190, %186 ]
  %195 = phi i64 [ %167, %170 ], [ %191, %186 ]
  %196 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %195, i32 0
  store i64 %36, i64* %196, align 8
  %197 = load i64, i64* @n_frp, align 8
  %198 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %194, i64 %197, i32 1
  br label %199

; <label>:199:                                    ; preds = %115, %152, %192
  %200 = phi i8* [ %116, %115 ], [ %153, %152 ], [ %193, %192 ]
  %201 = phi i64* [ %121, %115 ], [ %158, %152 ], [ %198, %192 ]
  %202 = phi i64 [ -1, %115 ], [ %36, %152 ], [ %36, %192 ]
  %203 = phi i64 [ %120, %115 ], [ %157, %152 ], [ %197, %192 ]
  %204 = phi i8 [ 0, %115 ], [ 0, %152 ], [ %28, %192 ]
  %205 = phi i64 [ %83, %115 ], [ %83, %152 ], [ %31, %192 ]
  store i64 %202, i64* %201, align 8
  %206 = add i64 %203, 1
  store i64 %206, i64* @n_frp, align 8
  %207 = load i8, i8* %40, align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %249, label %61

; <label>:209:                                    ; preds = %67
  %210 = sext i8 %41 to i32
  %211 = add nsw i32 %210, -48
  %212 = icmp ult i32 %211, 10
  br i1 %212, label %213, label %243

; <label>:213:                                    ; preds = %209
  %214 = load i8*, i8** @set_fields.num_start, align 8
  %215 = icmp ne i8* %214, null
  %216 = and i1 %37, %215
  br i1 %216, label %218, label %217

; <label>:217:                                    ; preds = %213
  store i8* %40, i8** @set_fields.num_start, align 8
  br label %218

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i8* [ %214, %213 ], [ %40, %217 ]
  %220 = select i1 %34, i8 %38, i8 1
  %221 = select i1 %34, i8 1, i8 %39
  %222 = icmp ugt i64 %36, 1844674407370955161
  br i1 %222, label %233, label %223

; <label>:223:                                    ; preds = %218
  %224 = mul i64 %36, 10
  %225 = load i8, i8* %40, align 1
  %226 = sext i8 %225 to i64
  %227 = add i64 %224, -48
  %228 = add i64 %227, %226
  %229 = icmp ult i64 %228, %36
  %230 = select i1 %229, i64 %36, i64 %228
  %231 = icmp eq i64 %230, -1
  %232 = or i1 %229, %231
  br i1 %232, label %233, label %241

; <label>:233:                                    ; preds = %218, %223
  %234 = tail call i64 @strspn(i8* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.13, i64 0, i64 0)) #12
  %235 = tail call i8* @xstrndup(i8* %219, i64 %234) #12
  %236 = and i32 %1, 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.15, i64 0, i64 0)
  %239 = tail call i8* @dcgettext(i8* null, i8* %238, i32 5) #12
  %240 = tail call i8* @quote(i8* %235) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %239, i8* %240) #12
  tail call void @free(i8* %235) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:241:                                    ; preds = %223
  %242 = getelementptr inbounds i8, i8* %40, i64 1
  br label %35

; <label>:243:                                    ; preds = %209
  %244 = and i32 %1, 4
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.16, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.17, i64 0, i64 0)
  %247 = tail call i8* @dcgettext(i8* null, i8* %246, i32 5) #12
  %248 = tail call i8* @quote(i8* %40) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %247, i8* %248) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:249:                                    ; preds = %199
  %250 = icmp eq i64 %206, 0
  br i1 %250, label %251, label %256

; <label>:251:                                    ; preds = %249
  %252 = and i32 %1, 4
  %253 = icmp ne i32 %252, 0
  %254 = select i1 %253, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.18, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.19, i64 0, i64 0)
  %255 = tail call i8* @dcgettext(i8* null, i8* %254, i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %255) #12
  tail call void @usage(i32 1) #14
  unreachable

; <label>:256:                                    ; preds = %249
  tail call void @qsort(i8* %200, i64 %206, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #12
  %257 = load i64, i64* @n_frp, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %302, label %259

; <label>:259:                                    ; preds = %256
  br label %262

; <label>:260:                                    ; preds = %275
  %261 = icmp ugt i64 %276, %272
  br i1 %261, label %262, label %301

; <label>:262:                                    ; preds = %259, %260
  %263 = phi i64 [ %276, %260 ], [ %257, %259 ]
  %264 = phi i64 [ %272, %260 ], [ 0, %259 ]
  br label %269

; <label>:265:                                    ; preds = %283
  br label %266

; <label>:266:                                    ; preds = %265, %269
  %267 = phi i64 [ %270, %269 ], [ %298, %265 ]
  %268 = icmp ult i64 %272, %267
  br i1 %268, label %269, label %300

; <label>:269:                                    ; preds = %262, %266
  %270 = phi i64 [ %263, %262 ], [ %267, %266 ]
  %271 = phi i64 [ %264, %262 ], [ %272, %266 ]
  %272 = add i64 %271, 1
  %273 = icmp ult i64 %272, %270
  br i1 %273, label %274, label %266

; <label>:274:                                    ; preds = %269
  br label %275

; <label>:275:                                    ; preds = %274, %283
  %276 = phi i64 [ %298, %283 ], [ %270, %274 ]
  %277 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  %278 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %271, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ugt i64 %279, %281
  br i1 %282, label %260, label %283

; <label>:283:                                    ; preds = %275
  %284 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp ugt i64 %285, %281
  %287 = select i1 %286, i64 %272, i64 %271
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %287, i32 1
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %280, align 8
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %277, i64 %272
  %291 = bitcast %struct.field_range_pair* %290 to i8*
  %292 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %290, i64 1
  %293 = bitcast %struct.field_range_pair* %292 to i8*
  %294 = sub i64 %276, %272
  %295 = shl i64 %294, 4
  %296 = add i64 %295, -16
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %291, i8* %293, i64 %296, i32 8, i1 false)
  %297 = load i64, i64* @n_frp, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* @n_frp, align 8
  %299 = icmp ult i64 %272, %298
  br i1 %299, label %275, label %265

; <label>:300:                                    ; preds = %266
  br label %302

; <label>:301:                                    ; preds = %260
  br label %302

; <label>:302:                                    ; preds = %301, %300, %256
  %303 = phi i64 [ 0, %256 ], [ %267, %300 ], [ %276, %301 ]
  %304 = and i32 %1, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %418, label %306

; <label>:306:                                    ; preds = %302
  %307 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8
  store i64 0, i64* @n_frp, align 8
  store i64 0, i64* @n_frp_allocated, align 8
  %308 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ugt i64 %309, 1
  br i1 %310, label %311, label %320

; <label>:311:                                    ; preds = %306
  %312 = add i64 %309, -1
  store i64 8, i64* @n_frp_allocated, align 8
  %313 = tail call i8* @xrealloc(i8* null, i64 128) #12
  store i8* %313, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %314 = bitcast i8* %313 to %struct.field_range_pair*
  %315 = load i64, i64* @n_frp, align 8
  %316 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %315, i32 0
  store i64 1, i64* %316, align 8
  %317 = load i64, i64* @n_frp, align 8
  %318 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %314, i64 %317, i32 1
  store i64 %312, i64* %318, align 8
  %319 = add i64 %317, 1
  store i64 %319, i64* @n_frp, align 8
  br label %320

; <label>:320:                                    ; preds = %311, %306
  %321 = phi %struct.field_range_pair* [ %314, %311 ], [ null, %306 ]
  %322 = phi i8* [ %313, %311 ], [ null, %306 ]
  %323 = phi i64 [ %319, %311 ], [ 0, %306 ]
  %324 = icmp ugt i64 %303, 1
  br i1 %324, label %325, label %378

; <label>:325:                                    ; preds = %320
  br label %326

; <label>:326:                                    ; preds = %325, %370
  %327 = phi %struct.field_range_pair* [ %371, %370 ], [ %321, %325 ]
  %328 = phi i8* [ %372, %370 ], [ %322, %325 ]
  %329 = phi %struct.field_range_pair* [ %373, %370 ], [ %321, %325 ]
  %330 = phi i64 [ %374, %370 ], [ %323, %325 ]
  %331 = phi i64 [ %375, %370 ], [ 1, %325 ]
  %332 = add i64 %331, -1
  %333 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %332, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, 1
  %336 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %331, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %370, label %339

; <label>:339:                                    ; preds = %326
  %340 = add i64 %337, -1
  %341 = load i64, i64* @n_frp_allocated, align 8
  %342 = icmp eq i64 %330, %341
  br i1 %342, label %343, label %361

; <label>:343:                                    ; preds = %339
  %344 = icmp eq i8* %328, null
  br i1 %344, label %345, label %348

; <label>:345:                                    ; preds = %343
  %346 = icmp eq i64 %330, 0
  %347 = select i1 %346, i64 8, i64 %330
  br label %355

; <label>:348:                                    ; preds = %343
  %349 = icmp ult i64 %330, 384307168202282325
  br i1 %349, label %351, label %350

; <label>:350:                                    ; preds = %348
  tail call void @xalloc_die() #14
  unreachable

; <label>:351:                                    ; preds = %348
  %352 = lshr i64 %330, 1
  %353 = add i64 %330, 1
  %354 = add i64 %353, %352
  br label %355

; <label>:355:                                    ; preds = %351, %345
  %356 = phi i64 [ %354, %351 ], [ %347, %345 ]
  store i64 %356, i64* @n_frp_allocated, align 8
  %357 = shl i64 %356, 4
  %358 = tail call i8* @xrealloc(i8* %328, i64 %357) #12
  store i8* %358, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %359 = bitcast i8* %358 to %struct.field_range_pair*
  %360 = load i64, i64* @n_frp, align 8
  br label %361

; <label>:361:                                    ; preds = %355, %339
  %362 = phi %struct.field_range_pair* [ %359, %355 ], [ %327, %339 ]
  %363 = phi i8* [ %358, %355 ], [ %328, %339 ]
  %364 = phi %struct.field_range_pair* [ %359, %355 ], [ %329, %339 ]
  %365 = phi i64 [ %360, %355 ], [ %330, %339 ]
  %366 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %365, i32 0
  store i64 %335, i64* %366, align 8
  %367 = load i64, i64* @n_frp, align 8
  %368 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %364, i64 %367, i32 1
  store i64 %340, i64* %368, align 8
  %369 = add i64 %367, 1
  store i64 %369, i64* @n_frp, align 8
  br label %370

; <label>:370:                                    ; preds = %361, %326
  %371 = phi %struct.field_range_pair* [ %327, %326 ], [ %362, %361 ]
  %372 = phi i8* [ %328, %326 ], [ %363, %361 ]
  %373 = phi %struct.field_range_pair* [ %329, %326 ], [ %364, %361 ]
  %374 = phi i64 [ %330, %326 ], [ %369, %361 ]
  %375 = add nuw i64 %331, 1
  %376 = icmp ult i64 %375, %303
  br i1 %376, label %326, label %377

; <label>:377:                                    ; preds = %370
  br label %378

; <label>:378:                                    ; preds = %377, %320
  %379 = phi i8* [ %322, %320 ], [ %372, %377 ]
  %380 = phi %struct.field_range_pair* [ %321, %320 ], [ %371, %377 ]
  %381 = phi i64 [ %323, %320 ], [ %374, %377 ]
  %382 = add i64 %303, -1
  %383 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %307, i64 %382, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, -1
  br i1 %385, label %415, label %386

; <label>:386:                                    ; preds = %378
  %387 = add i64 %384, 1
  %388 = load i64, i64* @n_frp_allocated, align 8
  %389 = icmp eq i64 %381, %388
  br i1 %389, label %390, label %408

; <label>:390:                                    ; preds = %386
  %391 = icmp eq i8* %379, null
  br i1 %391, label %392, label %395

; <label>:392:                                    ; preds = %390
  %393 = icmp eq i64 %381, 0
  %394 = select i1 %393, i64 8, i64 %381
  br label %402

; <label>:395:                                    ; preds = %390
  %396 = icmp ult i64 %381, 384307168202282325
  br i1 %396, label %398, label %397

; <label>:397:                                    ; preds = %395
  tail call void @xalloc_die() #14
  unreachable

; <label>:398:                                    ; preds = %395
  %399 = lshr i64 %381, 1
  %400 = add i64 %381, 1
  %401 = add i64 %400, %399
  br label %402

; <label>:402:                                    ; preds = %398, %392
  %403 = phi i64 [ %401, %398 ], [ %394, %392 ]
  store i64 %403, i64* @n_frp_allocated, align 8
  %404 = shl i64 %403, 4
  %405 = tail call i8* @xrealloc(i8* %379, i64 %404) #12
  store i8* %405, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %406 = bitcast i8* %405 to %struct.field_range_pair*
  %407 = load i64, i64* @n_frp, align 8
  br label %408

; <label>:408:                                    ; preds = %402, %386
  %409 = phi %struct.field_range_pair* [ %406, %402 ], [ %380, %386 ]
  %410 = phi i64 [ %407, %402 ], [ %381, %386 ]
  %411 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %410, i32 0
  store i64 %387, i64* %411, align 8
  %412 = load i64, i64* @n_frp, align 8
  %413 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %412, i32 1
  store i64 -1, i64* %413, align 8
  %414 = add i64 %412, 1
  store i64 %414, i64* @n_frp, align 8
  br label %415

; <label>:415:                                    ; preds = %378, %408
  %416 = bitcast %struct.field_range_pair* %307 to i8*
  tail call void @free(i8* %416) #12
  %417 = load i64, i64* @n_frp, align 8
  br label %418

; <label>:418:                                    ; preds = %302, %415
  %419 = phi i64 [ %303, %302 ], [ %417, %415 ]
  %420 = add i64 %419, 1
  store i64 %420, i64* @n_frp, align 8
  %421 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %422 = shl i64 %420, 4
  %423 = tail call i8* @xrealloc(i8* %421, i64 %422) #12
  %424 = bitcast i8* %423 to %struct.field_range_pair*
  store i8* %423, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  %425 = load i64, i64* @n_frp, align 8
  %426 = add i64 %425, -1
  %427 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %426, i32 0
  %428 = bitcast i64* %427 to i8*
  call void @llvm.memset.p0i8.i64(i8* %428, i8 -1, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly, i8* nocapture readonly) #10 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = bitcast i8* %1 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @reset_fields() local_unnamed_addr #6 {
  store i64 0, i64* @n_frp, align 8
  store i64 0, i64* @n_frp_allocated, align 8
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8
  tail call void @free(i8* %1) #12
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #12
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #10 {
  %5 = tail call i64 @strlen(i8* %0) #9
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
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #9
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
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #9
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
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.59, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #12
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
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #12
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.61, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.62, i64 0, i64 0), i8* %26) #12
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
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #9
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.59, i64 0, i64 0)
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
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #9
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.159, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.160, i64 0, i64 0), i8* %12) #12
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12
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
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define i64 @mbsalign(i8*, i8*, i64, i64* nocapture, i32, i32) local_unnamed_addr #6 {
  %7 = ptrtoint i8* %1 to i64
  %8 = tail call i64 @strlen(i8* %0) #9
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %94

; <label>:11:                                     ; preds = %6
  %12 = tail call i64 @__ctype_get_mb_cur_max() #12
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %94

; <label>:14:                                     ; preds = %11
  %15 = tail call i64 @mbstowcs(i32* null, i8* %0, i64 0) #12
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %43, label %17

; <label>:17:                                     ; preds = %14
  %18 = add i64 %15, 1
  %19 = shl i64 %18, 2
  %20 = tail call noalias i8* @malloc(i64 %19) #12
  %21 = bitcast i8* %20 to i32*
  %22 = icmp eq i8* %20, null
  br i1 %22, label %43, label %23

; <label>:23:                                     ; preds = %17
  %24 = tail call i64 @mbstowcs(i32* %21, i8* %0, i64 %18) #12
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %94, label %26

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i32, i32* %21, i64 %15
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %30, %38
  %32 = phi i32 [ %41, %38 ], [ %28, %30 ]
  %33 = phi i32* [ %40, %38 ], [ %21, %30 ]
  %34 = phi i8 [ %39, %38 ], [ 0, %30 ]
  %35 = tail call i32 @iswprint(i32 %32) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %31
  store i32 65533, i32* %33, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %31
  %39 = phi i8 [ %34, %31 ], [ 1, %37 ]
  %40 = getelementptr inbounds i32, i32* %33, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %31

; <label>:43:                                     ; preds = %14, %17
  %44 = and i32 %5, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %173, label %94

; <label>:46:                                     ; preds = %38
  br label %47

; <label>:47:                                     ; preds = %46, %26
  %48 = phi i8 [ 0, %26 ], [ %39, %46 ]
  %49 = tail call i32 @wcswidth(i32* %21, i64 %18) #12
  %50 = sext i32 %49 to i64
  %51 = and i8 %48, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %3, align 8
  %55 = icmp ugt i64 %50, %54
  br i1 %55, label %58, label %94

; <label>:56:                                     ; preds = %47
  %57 = tail call i64 @wcstombs(i8* null, i32* %21, i64 0) #12
  br label %58

; <label>:58:                                     ; preds = %53, %56
  %59 = phi i64 [ %57, %56 ], [ %8, %53 ]
  %60 = add i64 %59, 1
  %61 = tail call noalias i8* @malloc(i64 %60) #12
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %58
  %64 = and i32 %5, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %173, label %94

; <label>:66:                                     ; preds = %58
  %67 = load i64, i64* %3, align 8
  %68 = load i32, i32* %21, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

; <label>:70:                                     ; preds = %66
  br label %71

; <label>:71:                                     ; preds = %70, %83
  %72 = phi i32 [ %85, %83 ], [ %68, %70 ]
  %73 = phi i64 [ %81, %83 ], [ 0, %70 ]
  %74 = phi i32* [ %84, %83 ], [ %21, %70 ]
  %75 = tail call i32 @wcwidth(i32 %72) #12
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %71
  store i32 65533, i32* %74, align 4
  br label %78

; <label>:78:                                     ; preds = %77, %71
  %79 = phi i32 [ 1, %77 ], [ %75, %71 ]
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %73
  %82 = icmp ugt i64 %81, %67
  br i1 %82, label %87, label %83

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds i32, i32* %74, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %71

; <label>:87:                                     ; preds = %83, %78
  %88 = phi i32* [ %74, %78 ], [ %84, %83 ]
  %89 = phi i64 [ %73, %78 ], [ %81, %83 ]
  br label %90

; <label>:90:                                     ; preds = %87, %66
  %91 = phi i32* [ %21, %66 ], [ %88, %87 ]
  %92 = phi i64 [ 0, %66 ], [ %89, %87 ]
  store i32 0, i32* %91, align 4
  %93 = tail call i64 @wcstombs(i8* nonnull %61, i32* %21, i64 %60) #12
  br label %94

; <label>:94:                                     ; preds = %43, %11, %6, %23, %63, %53, %90
  %95 = phi i8* [ null, %63 ], [ %61, %90 ], [ null, %53 ], [ null, %23 ], [ null, %6 ], [ null, %43 ], [ null, %11 ]
  %96 = phi i8* [ %20, %63 ], [ %20, %90 ], [ %20, %53 ], [ %20, %23 ], [ null, %6 ], [ null, %43 ], [ null, %11 ]
  %97 = phi i8* [ %0, %63 ], [ %61, %90 ], [ %0, %53 ], [ %0, %23 ], [ %0, %6 ], [ %0, %43 ], [ %0, %11 ]
  %98 = phi i64 [ %50, %63 ], [ %92, %90 ], [ %50, %53 ], [ %8, %23 ], [ %8, %6 ], [ %8, %43 ], [ %8, %11 ]
  %99 = phi i64 [ %8, %63 ], [ %93, %90 ], [ %8, %53 ], [ %8, %23 ], [ %8, %6 ], [ %8, %43 ], [ %8, %11 ]
  %100 = load i64, i64* %3, align 8
  %101 = icmp ugt i64 %98, %100
  %102 = select i1 %101, i64 %100, i64 %98
  %103 = select i1 %101, i64 %100, i64 %99
  %104 = icmp ugt i64 %100, %98
  %105 = sub i64 %100, %102
  %106 = select i1 %104, i64 %105, i64 0
  store i64 %102, i64* %3, align 8
  switch i32 %4, label %108 [
    i32 0, label %112
    i32 1, label %107
  ]

; <label>:107:                                    ; preds = %94
  br label %112

; <label>:108:                                    ; preds = %94
  %109 = lshr i64 %106, 1
  %110 = and i64 %106, 1
  %111 = add nuw i64 %109, %110
  br label %112

; <label>:112:                                    ; preds = %94, %108, %107
  %113 = phi i64 [ %111, %108 ], [ %106, %107 ], [ 0, %94 ]
  %114 = phi i64 [ %109, %108 ], [ 0, %107 ], [ %106, %94 ]
  %115 = and i32 %5, 4
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i64 %113, i64 0
  %118 = and i32 %5, 8
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i64 %114, i64 0
  %121 = icmp eq i64 %2, 0
  br i1 %121, label %170, label %122

; <label>:122:                                    ; preds = %112
  %123 = getelementptr inbounds i8, i8* %1, i64 %2
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  %125 = icmp ugt i8* %124, %1
  %126 = icmp ne i64 %117, 0
  %127 = and i1 %125, %126
  %128 = ptrtoint i8* %124 to i64
  br i1 %127, label %129, label %141

; <label>:129:                                    ; preds = %122
  %130 = sub i64 0, %117
  %131 = sub i64 %7, %128
  %132 = icmp ult i64 %131, %130
  %133 = select i1 %132, i64 %130, i64 %131
  %134 = sub i64 0, %133
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 32, i64 %134, i32 1, i1 false) #12
  %135 = sub i64 0, %113
  %136 = sub i64 1, %2
  %137 = icmp ult i64 %136, %135
  %138 = select i1 %137, i64 %135, i64 %136
  %139 = sub i64 0, %138
  %140 = getelementptr i8, i8* %1, i64 %139
  br label %141

; <label>:141:                                    ; preds = %122, %129
  %142 = phi i8* [ %140, %129 ], [ %1, %122 ]
  store i8 0, i8* %142, align 1
  %143 = ptrtoint i8* %142 to i64
  %144 = sub i64 %128, %143
  %145 = icmp ult i64 %103, %144
  %146 = select i1 %145, i64 %103, i64 %144
  %147 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %142, i1 false) #12
  %148 = tail call i8* @__mempcpy_chk(i8* nonnull %142, i8* nonnull %97, i64 %146, i64 %147) #12
  %149 = icmp ult i8* %148, %124
  %150 = icmp ne i64 %120, 0
  %151 = and i1 %150, %149
  br i1 %151, label %152, label %168

; <label>:152:                                    ; preds = %141
  %153 = sub i64 0, %120
  %154 = ptrtoint i8* %148 to i64
  %155 = sub i64 %154, %128
  %156 = icmp ult i64 %155, %153
  %157 = select i1 %156, i64 %153, i64 %155
  %158 = sub i64 0, %157
  tail call void @llvm.memset.p0i8.i64(i8* %148, i8 32, i64 %158, i32 1, i1 false) #12
  %159 = sub i64 0, %114
  %160 = sub i64 1, %7
  %161 = sub i64 %160, %2
  %162 = getelementptr i8, i8* %148, i64 %161
  %163 = ptrtoint i8* %162 to i64
  %164 = icmp ult i64 %163, %159
  %165 = select i1 %164, i64 %159, i64 %163
  %166 = sub i64 0, %165
  %167 = getelementptr i8, i8* %148, i64 %166
  br label %168

; <label>:168:                                    ; preds = %152, %141
  %169 = phi i8* [ %148, %141 ], [ %167, %152 ]
  store i8 0, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %112, %168
  %171 = add i64 %117, %103
  %172 = add i64 %171, %120
  br label %173

; <label>:173:                                    ; preds = %43, %63, %170
  %174 = phi i64 [ %172, %170 ], [ -1, %63 ], [ -1, %43 ]
  %175 = phi i8* [ %95, %170 ], [ null, %63 ], [ null, %43 ]
  %176 = phi i8* [ %96, %170 ], [ %20, %63 ], [ null, %43 ]
  tail call void @free(i8* %176) #12
  tail call void @free(i8* %175) #12
  ret i64 %174
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcswidth(i32*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @wcstombs(i8*, i32*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @ambsalign(i8*, i64* nocapture, i32, i32) local_unnamed_addr #6 {
  %5 = load i64, i64* %1, align 8
  br label %6

; <label>:6:                                      ; preds = %16, %4
  %7 = phi i64 [ %5, %4 ], [ %17, %16 ]
  %8 = phi i8* [ null, %4 ], [ %13, %16 ]
  %9 = phi i64 [ %5, %4 ], [ %12, %16 ]
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %20, label %11

; <label>:11:                                     ; preds = %6
  %12 = add i64 %7, 1
  %13 = tail call i8* @realloc(i8* %8, i64 %12) #12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %11
  tail call void @free(i8* %8) #12
  br label %21

; <label>:16:                                     ; preds = %11
  store i64 %5, i64* %1, align 8
  %17 = tail call i64 @mbsalign(i8* %0, i8* nonnull %13, i64 %12, i64* %1, i32 %2, i32 %3)
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %6

; <label>:19:                                     ; preds = %16
  tail call void @free(i8* nonnull %13) #12
  br label %21

; <label>:20:                                     ; preds = %6
  br label %21

; <label>:21:                                     ; preds = %20, %19, %15
  %22 = phi i8* [ null, %15 ], [ null, %19 ], [ %8, %20 ]
  ret i8* %22
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.169, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.170, i64 0, i64 0), i64 7) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.171, i64 0, i64 0), i64 3) #9
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.182, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #9
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.184, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.184, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.184, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.184, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #9
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #9
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
  %311 = call i64 @strlen(i8* nonnull %2) #9
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.185, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.186, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.187, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.188, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.184, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
  tail call void @abort() #14
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
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.198, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.199, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.200, i64 0, i64 0), i32 5) #12
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
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.201, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.202, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.203, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.204, i64 0, i64 0), i32 5) #12
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.205, i64 0, i64 0), i32 5) #12
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.206, i64 0, i64 0), i32 5) #12
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.207, i64 0, i64 0), i32 5) #12
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.208, i64 0, i64 0), i32 5) #12
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.209, i64 0, i64 0), i32 5) #12
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.210, i64 0, i64 0), i32 5) #12
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.213, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.214, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.215, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.216, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.217, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.218, i64 0, i64 0), i32 5) #12
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
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #12
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
  %2 = tail call noalias i8* @malloc(i64 %0) #12
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
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 {
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
  tail call void @free(i8* nonnull %0) #12
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12
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
  tail call void @xalloc_die() #14
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
  tail call void @xalloc_die() #14
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
  tail call void @xalloc_die() #14
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12
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
  %3 = tail call noalias i8* @malloc(i64 %1) #12
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
  %2 = tail call i64 @strlen(i8* %0) #9
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #12
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.231, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.232, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #12
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.237, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.238, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #1
  store i32 0, i32* %13, align 4
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #12
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, %0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null
  br i1 %18, label %196, label %19

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %196, label %22

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #12
  %25 = icmp eq i8* %24, null
  br i1 %25, label %196, label %33

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ]

; <label>:28:                                     ; preds = %26
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  %31 = icmp eq i8* %4, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i64 %14, i64* %3, align 8
  br label %196

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %193, label %38

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %39) #12
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i64 %35, i64* %3, align 8
  %43 = or i32 %34, 2
  br label %196

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ]

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #12
  %47 = icmp eq i8* %46, null
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ]

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 66
  %56 = select i1 %55, i64 3, i64 1
  br label %58

; <label>:57:                                     ; preds = %48, %48
  br label %58

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ]

; <label>:61:                                     ; preds = %58
  %62 = icmp slt i64 %35, -18014398509481984
  br i1 %62, label %184, label %63

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65
  %67 = zext i1 %64 to i32
  br label %184

; <label>:68:                                     ; preds = %58
  %69 = icmp slt i64 %35, -9007199254740992
  br i1 %69, label %184, label %70

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72
  %74 = zext i1 %71 to i32
  br label %184

; <label>:75:                                     ; preds = %58
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59
  %80 = icmp slt i64 %79, %35
  %81 = mul nsw i64 %35, %59
  %82 = select i1 %80, i64 9223372036854775807, i64 %81
  %83 = zext i1 %80 to i32
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  %87 = icmp slt i64 %85, %76
  br i1 %87, label %204, label %198

; <label>:88:                                     ; preds = %58, %58
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59
  %93 = icmp slt i64 %92, %35
  %94 = mul nsw i64 %35, %59
  %95 = select i1 %93, i64 9223372036854775807, i64 %94
  %96 = zext i1 %93 to i32
  br label %97

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  %100 = icmp slt i64 %98, %89
  br i1 %100, label %258, label %252

; <label>:101:                                    ; preds = %58, %58
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102
  br i1 %103, label %184, label %104

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59
  %106 = icmp slt i64 %105, %35
  %107 = mul nsw i64 %35, %59
  %108 = select i1 %106, i64 9223372036854775807, i64 %107
  %109 = zext i1 %106 to i32
  br label %184

; <label>:110:                                    ; preds = %58, %58
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59
  %115 = icmp slt i64 %114, %35
  %116 = mul nsw i64 %35, %59
  %117 = select i1 %115, i64 9223372036854775807, i64 %116
  %118 = zext i1 %115 to i32
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  %122 = icmp slt i64 %120, %111
  br i1 %122, label %279, label %273

; <label>:123:                                    ; preds = %58
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59
  %128 = icmp slt i64 %127, %35
  %129 = mul nsw i64 %35, %59
  %130 = select i1 %128, i64 9223372036854775807, i64 %129
  %131 = zext i1 %128 to i32
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  %135 = icmp slt i64 %133, %124
  br i1 %135, label %289, label %283

; <label>:136:                                    ; preds = %58, %58
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59
  %141 = icmp slt i64 %140, %35
  %142 = mul nsw i64 %35, %59
  %143 = select i1 %141, i64 9223372036854775807, i64 %142
  %144 = zext i1 %141 to i32
  br label %145

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  %148 = icmp slt i64 %146, %137
  br i1 %148, label %332, label %326

; <label>:149:                                    ; preds = %58
  %150 = icmp slt i64 %35, -4611686018427387904
  br i1 %150, label %184, label %151

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903
  %153 = shl nsw i64 %35, 1
  %154 = select i1 %152, i64 9223372036854775807, i64 %153
  %155 = zext i1 %152 to i32
  br label %184

; <label>:156:                                    ; preds = %58
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59
  %161 = icmp slt i64 %160, %35
  %162 = mul nsw i64 %35, %59
  %163 = select i1 %161, i64 9223372036854775807, i64 %162
  %164 = zext i1 %161 to i32
  br label %165

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  %168 = icmp slt i64 %166, %157
  br i1 %168, label %364, label %358

; <label>:169:                                    ; preds = %58
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59
  %174 = icmp slt i64 %173, %35
  %175 = mul nsw i64 %35, %59
  %176 = select i1 %174, i64 9223372036854775807, i64 %175
  %177 = zext i1 %174 to i32
  br label %178

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  %181 = icmp slt i64 %179, %170
  br i1 %181, label %440, label %434

; <label>:182:                                    ; preds = %58
  store i64 %35, i64* %3, align 8
  %183 = or i32 %34, 2
  br label %196

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  %187 = or i32 %186, %34
  %188 = getelementptr inbounds i8, i8* %15, i64 %60
  store i8* %188, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = or i32 %187, 2
  %192 = select i1 %190, i32 %187, i32 %191
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  store i64 %194, i64* %3, align 8
  br label %196

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #12
  ret i32 %197

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59
  %200 = icmp slt i64 %199, %85
  %201 = mul nsw i64 %85, %59
  %202 = select i1 %200, i64 9223372036854775807, i64 %201
  %203 = zext i1 %200 to i32
  br label %204

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86
  %208 = icmp slt i64 %205, %76
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59
  %211 = icmp slt i64 %210, %205
  %212 = mul nsw i64 %205, %59
  %213 = select i1 %211, i64 9223372036854775807, i64 %212
  %214 = zext i1 %211 to i32
  br label %215

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207
  %219 = icmp slt i64 %216, %76
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59
  %222 = icmp slt i64 %221, %216
  %223 = mul nsw i64 %216, %59
  %224 = select i1 %222, i64 9223372036854775807, i64 %223
  %225 = zext i1 %222 to i32
  br label %226

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218
  %230 = icmp slt i64 %227, %76
  br i1 %230, label %237, label %231

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59
  %233 = icmp slt i64 %232, %227
  %234 = mul nsw i64 %227, %59
  %235 = select i1 %233, i64 9223372036854775807, i64 %234
  %236 = zext i1 %233 to i32
  br label %237

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229
  %241 = icmp slt i64 %238, %76
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59
  %244 = icmp slt i64 %243, %238
  %245 = mul nsw i64 %238, %59
  %246 = select i1 %244, i64 9223372036854775807, i64 %245
  %247 = zext i1 %244 to i32
  br label %248

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240
  br label %184

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59
  %254 = icmp slt i64 %253, %98
  %255 = mul nsw i64 %98, %59
  %256 = select i1 %254, i64 9223372036854775807, i64 %255
  %257 = zext i1 %254 to i32
  br label %258

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99
  %262 = icmp slt i64 %259, %89
  br i1 %262, label %269, label %263

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59
  %265 = icmp slt i64 %264, %259
  %266 = mul nsw i64 %259, %59
  %267 = select i1 %265, i64 9223372036854775807, i64 %266
  %268 = zext i1 %265 to i32
  br label %269

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261
  br label %184

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59
  %275 = icmp slt i64 %274, %120
  %276 = mul nsw i64 %120, %59
  %277 = select i1 %275, i64 9223372036854775807, i64 %276
  %278 = zext i1 %275 to i32
  br label %279

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121
  br label %184

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59
  %285 = icmp slt i64 %284, %133
  %286 = mul nsw i64 %133, %59
  %287 = select i1 %285, i64 9223372036854775807, i64 %286
  %288 = zext i1 %285 to i32
  br label %289

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134
  %293 = icmp slt i64 %290, %124
  br i1 %293, label %300, label %294

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59
  %296 = icmp slt i64 %295, %290
  %297 = mul nsw i64 %290, %59
  %298 = select i1 %296, i64 9223372036854775807, i64 %297
  %299 = zext i1 %296 to i32
  br label %300

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292
  %304 = icmp slt i64 %301, %124
  br i1 %304, label %311, label %305

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59
  %307 = icmp slt i64 %306, %301
  %308 = mul nsw i64 %301, %59
  %309 = select i1 %307, i64 9223372036854775807, i64 %308
  %310 = zext i1 %307 to i32
  br label %311

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303
  %315 = icmp slt i64 %312, %124
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59
  %318 = icmp slt i64 %317, %312
  %319 = mul nsw i64 %312, %59
  %320 = select i1 %318, i64 9223372036854775807, i64 %319
  %321 = zext i1 %318 to i32
  br label %322

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314
  br label %184

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59
  %328 = icmp slt i64 %327, %146
  %329 = mul nsw i64 %146, %59
  %330 = select i1 %328, i64 9223372036854775807, i64 %329
  %331 = zext i1 %328 to i32
  br label %332

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147
  %336 = icmp slt i64 %333, %137
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59
  %339 = icmp slt i64 %338, %333
  %340 = mul nsw i64 %333, %59
  %341 = select i1 %339, i64 9223372036854775807, i64 %340
  %342 = zext i1 %339 to i32
  br label %343

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335
  %347 = icmp slt i64 %344, %137
  br i1 %347, label %354, label %348

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59
  %350 = icmp slt i64 %349, %344
  %351 = mul nsw i64 %344, %59
  %352 = select i1 %350, i64 9223372036854775807, i64 %351
  %353 = zext i1 %350 to i32
  br label %354

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346
  br label %184

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59
  %360 = icmp slt i64 %359, %166
  %361 = mul nsw i64 %166, %59
  %362 = select i1 %360, i64 9223372036854775807, i64 %361
  %363 = zext i1 %360 to i32
  br label %364

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167
  %368 = icmp slt i64 %365, %157
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59
  %371 = icmp slt i64 %370, %365
  %372 = mul nsw i64 %365, %59
  %373 = select i1 %371, i64 9223372036854775807, i64 %372
  %374 = zext i1 %371 to i32
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367
  %379 = icmp slt i64 %376, %157
  br i1 %379, label %386, label %380

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59
  %382 = icmp slt i64 %381, %376
  %383 = mul nsw i64 %376, %59
  %384 = select i1 %382, i64 9223372036854775807, i64 %383
  %385 = zext i1 %382 to i32
  br label %386

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378
  %390 = icmp slt i64 %387, %157
  br i1 %390, label %397, label %391

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59
  %393 = icmp slt i64 %392, %387
  %394 = mul nsw i64 %387, %59
  %395 = select i1 %393, i64 9223372036854775807, i64 %394
  %396 = zext i1 %393 to i32
  br label %397

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389
  %401 = icmp slt i64 %398, %157
  br i1 %401, label %408, label %402

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59
  %404 = icmp slt i64 %403, %398
  %405 = mul nsw i64 %398, %59
  %406 = select i1 %404, i64 9223372036854775807, i64 %405
  %407 = zext i1 %404 to i32
  br label %408

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400
  %412 = icmp slt i64 %409, %157
  br i1 %412, label %419, label %413

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59
  %415 = icmp slt i64 %414, %409
  %416 = mul nsw i64 %409, %59
  %417 = select i1 %415, i64 9223372036854775807, i64 %416
  %418 = zext i1 %415 to i32
  br label %419

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411
  %423 = icmp slt i64 %420, %157
  br i1 %423, label %430, label %424

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59
  %426 = icmp slt i64 %425, %420
  %427 = mul nsw i64 %420, %59
  %428 = select i1 %426, i64 9223372036854775807, i64 %427
  %429 = zext i1 %426 to i32
  br label %430

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422
  br label %184

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59
  %436 = icmp slt i64 %435, %179
  %437 = mul nsw i64 %179, %59
  %438 = select i1 %436, i64 9223372036854775807, i64 %437
  %439 = zext i1 %436 to i32
  br label %440

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180
  %444 = icmp slt i64 %441, %170
  br i1 %444, label %451, label %445

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59
  %447 = icmp slt i64 %446, %441
  %448 = mul nsw i64 %441, %59
  %449 = select i1 %447, i64 9223372036854775807, i64 %448
  %450 = zext i1 %447 to i32
  br label %451

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443
  %455 = icmp slt i64 %452, %170
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59
  %458 = icmp slt i64 %457, %452
  %459 = mul nsw i64 %452, %59
  %460 = select i1 %458, i64 9223372036854775807, i64 %459
  %461 = zext i1 %458 to i32
  br label %462

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454
  %466 = icmp slt i64 %463, %170
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59
  %469 = icmp slt i64 %468, %463
  %470 = mul nsw i64 %463, %59
  %471 = select i1 %469, i64 9223372036854775807, i64 %470
  %472 = zext i1 %469 to i32
  br label %473

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465
  %477 = icmp slt i64 %474, %170
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59
  %480 = icmp slt i64 %479, %474
  %481 = mul nsw i64 %474, %59
  %482 = select i1 %480, i64 9223372036854775807, i64 %481
  %483 = zext i1 %480 to i32
  br label %484

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476
  %488 = icmp slt i64 %485, %170
  br i1 %488, label %495, label %489

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59
  %491 = icmp slt i64 %490, %485
  %492 = mul nsw i64 %485, %59
  %493 = select i1 %491, i64 9223372036854775807, i64 %492
  %494 = zext i1 %491 to i32
  br label %495

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487
  br label %184
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.241, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.242, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.251, i64 0, i64 0)) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #12
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.255, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.256, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #9
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.257, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.257, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.258, i64 0, i64 0)) #12
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.259, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #9
  %83 = call i64 @strlen(i8* nonnull %45) #9
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), %24 ]
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
  %144 = call i64 @strlen(i8* %134) #9
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #9
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #9
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.260, i64 0, i64 0), i8* %158
  ret i8* %161
}

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
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
